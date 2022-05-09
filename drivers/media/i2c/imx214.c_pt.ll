; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/imx214.c_pt.bc'
source_filename = "../drivers/media/i2c/imx214.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_area = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_8 = type { i16, i8 }
%struct.imx214_mode = type { i32, i32, ptr }
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
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.imx214 = type { ptr, ptr, ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, %struct.mutex, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__initcall__kmod_imx214__296_1121_imx214_i2c_driver_init6 = internal global ptr @imx214_i2c_driver_init, section ".initcall6.init", align 4
@imx214_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @imx214_remove, ptr @imx214_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx214_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx214_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_imx214_i2c_driver_exit = internal global ptr @imx214_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [45 x i8] c"imx214.description=Sony IMX214 Camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [51 x i8] c"imx214.author=Ricardo Ribalda <ribalda@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [37 x i8] c"imx214.file=drivers/media/i2c/imx214\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [22 x i8] c"imx214.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx214\00", [25 x i8] zeroinitializer }, align 32
@imx214_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,imx214\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx214_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx214_suspend, ptr @imx214_resume, ptr @imx214_suspend, ptr @imx214_resume, ptr @imx214_suspend, ptr @imx214_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx214_power_off, ptr @imx214_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx214_probe.link_freq = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 480000000], [24 x i8] zeroinitializer }, align 32
@imx214_probe.unit_size = internal constant { %struct.v4l2_area, [24 x i8] } { %struct.v4l2_area { i32 1120, i32 1120 }, [24 x i8] zeroinitializer }, align 32
@imx214_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not get xclk\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx214_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/imx214.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx214_probe._entry_ptr = internal global ptr @imx214_probe._entry, section ".printk_index", align 4
@imx214_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not set xclk frequency\0A\00", [34 x i8] zeroinitializer }, align 32
@imx214_probe._entry_ptr.8 = internal global ptr @imx214_probe._entry.6, section ".printk_index", align 4
@imx214_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get regulators\0A\00", [41 x i8] zeroinitializer }, align 32
@imx214_probe._entry_ptr.11 = internal global ptr @imx214_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@imx214_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 988, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot get enable gpio\0A\00", [40 x i8] zeroinitializer }, align 32
@imx214_probe._entry_ptr.15 = internal global ptr @imx214_probe._entry.13, section ".printk_index", align 4
@imx214_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sensor_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"imx214:992:(&sensor_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@imx214_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 994, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@imx214_probe._entry_ptr.19 = internal global ptr @imx214_probe._entry.17, section ".printk_index", align 4
@imx214_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @imx214_core_ops, ptr null, ptr null, ptr @imx214_video_ops, ptr null, ptr null, ptr null, ptr @imx214_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@imx214_probe._key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"imx214:1010:(&imx214->ctrls)->_lock\00", [60 x i8] zeroinitializer }, align 32
@imx214_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @imx214_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@imx214_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1044, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s control init failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@imx214_probe._entry_ptr.24 = internal global ptr @imx214_probe._entry.22, section ".printk_index", align 4
@imx214_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&imx214->mutex\00", [17 x i8] zeroinitializer }, align 32
@imx214_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1059, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register media entity\0A\00", [63 x i8] zeroinitializer }, align 32
@imx214_probe._entry_ptr.28 = internal global ptr @imx214_probe._entry.26, section ".printk_index", align 4
@imx214_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1067, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@imx214_probe._entry_ptr.31 = internal global ptr @imx214_probe._entry.29, section ".printk_index", align 4
@imx214_parse_fwnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 885, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"endpoint node not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx214_parse_fwnode\00", [44 x i8] zeroinitializer }, align 32
@imx214_parse_fwnode._entry_ptr = internal global ptr @imx214_parse_fwnode._entry, section ".printk_index", align 4
@imx214_parse_fwnode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"parsing endpoint node failed\0A\00", [34 x i8] zeroinitializer }, align 32
@imx214_parse_fwnode._entry_ptr.36 = internal global ptr @imx214_parse_fwnode._entry.34, section ".printk_index", align 4
@imx214_parse_fwnode._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 901, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"link-frequencies %d not supported, Please review your DT\0A\00", [38 x i8] zeroinitializer }, align 32
@imx214_parse_fwnode._entry_ptr.39 = internal global ptr @imx214_parse_fwnode._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddd\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdddo\00", [26 x i8] zeroinitializer }, align 32
@imx214_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx214_g_register, ptr @imx214_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@imx214_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx214_s_stream, ptr null, ptr @imx214_g_frame_interval, ptr @imx214_g_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx214_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx214_entity_init_cfg, ptr @imx214_enum_mbus_code, ptr @imx214_enum_frame_size, ptr @imx214_enum_frame_interval, ptr @imx214_get_format, ptr @imx214_set_format, ptr @imx214_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mode_table_common = internal constant { [90 x %struct.reg_8], [88 x i8] } { [90 x %struct.reg_8] [%struct.reg_8 { i16 256, i8 0 }, %struct.reg_8 { i16 -27904, i8 2 }, %struct.reg_8 { i16 310, i8 24 }, %struct.reg_8 { i16 311, i8 0 }, %struct.reg_8 { i16 257, i8 0 }, %struct.reg_8 { i16 261, i8 1 }, %struct.reg_8 { i16 262, i8 1 }, %struct.reg_8 { i16 17744, i8 2 }, %struct.reg_8 { i16 17921, i8 0 }, %struct.reg_8 { i16 17986, i8 5 }, %struct.reg_8 { i16 25127, i8 17 }, %struct.reg_8 { i16 25206, i8 0 }, %struct.reg_8 { i16 -28658, i8 6 }, %struct.reg_8 { i16 -22526, i8 -112 }, %struct.reg_8 { i16 -22525, i8 17 }, %struct.reg_8 { i16 -22524, i8 98 }, %struct.reg_8 { i16 -22523, i8 119 }, %struct.reg_8 { i16 -22522, i8 -82 }, %struct.reg_8 { i16 -22521, i8 52 }, %struct.reg_8 { i16 -22520, i8 -82 }, %struct.reg_8 { i16 -22519, i8 53 }, %struct.reg_8 { i16 -22518, i8 98 }, %struct.reg_8 { i16 -22517, i8 -125 }, %struct.reg_8 { i16 -20941, i8 0 }, %struct.reg_8 { i16 16756, i8 0 }, %struct.reg_8 { i16 16757, i8 17 }, %struct.reg_8 { i16 17938, i8 41 }, %struct.reg_8 { i16 17947, i8 18 }, %struct.reg_8 { i16 17951, i8 6 }, %struct.reg_8 { i16 17973, i8 7 }, %struct.reg_8 { i16 17975, i8 48 }, %struct.reg_8 { i16 17983, i8 24 }, %struct.reg_8 { i16 17985, i8 13 }, %struct.reg_8 { i16 18011, i8 18 }, %struct.reg_8 { i16 18015, i8 17 }, %struct.reg_8 { i16 18019, i8 17 }, %struct.reg_8 { i16 18023, i8 15 }, %struct.reg_8 { i16 18031, i8 15 }, %struct.reg_8 { i16 18190, i8 9 }, %struct.reg_8 { i16 18697, i8 -85 }, %struct.reg_8 { i16 18699, i8 -107 }, %struct.reg_8 { i16 18709, i8 93 }, %struct.reg_8 { i16 19039, i8 -1 }, %struct.reg_8 { i16 19041, i8 -1 }, %struct.reg_8 { i16 19059, i8 98 }, %struct.reg_8 { i16 19077, i8 0 }, %struct.reg_8 { i16 19079, i8 -1 }, %struct.reg_8 { i16 20545, i8 4 }, %struct.reg_8 { i16 22588, i8 4 }, %struct.reg_8 { i16 25102, i8 4 }, %struct.reg_8 { i16 28338, i8 1 }, %struct.reg_8 { i16 28339, i8 0 }, %struct.reg_8 { i16 -27904, i8 2 }, %struct.reg_8 { i16 12289, i8 7 }, %struct.reg_8 { i16 27922, i8 63 }, %struct.reg_8 { i16 27923, i8 -1 }, %struct.reg_8 { i16 -27836, i8 3 }, %struct.reg_8 { i16 -26874, i8 16 }, %struct.reg_8 { i16 -26873, i8 3 }, %struct.reg_8 { i16 -26872, i8 3 }, %struct.reg_8 { i16 -25084, i8 1 }, %struct.reg_8 { i16 -25083, i8 0 }, %struct.reg_8 { i16 -25076, i8 1 }, %struct.reg_8 { i16 -25075, i8 2 }, %struct.reg_8 { i16 -25052, i8 0 }, %struct.reg_8 { i16 -25051, i8 -116 }, %struct.reg_8 { i16 -25050, i8 0 }, %struct.reg_8 { i16 -25049, i8 -108 }, %struct.reg_8 { i16 -25048, i8 0 }, %struct.reg_8 { i16 -25047, i8 -106 }, %struct.reg_8 { i16 27099, i8 1 }, %struct.reg_8 { i16 26967, i8 1 }, %struct.reg_8 { i16 27015, i8 23 }, %struct.reg_8 { i16 27018, i8 3 }, %struct.reg_8 { i16 27019, i8 3 }, %struct.reg_8 { i16 2958, i8 1 }, %struct.reg_8 { i16 2959, i8 0 }, %struct.reg_8 { i16 2960, i8 1 }, %struct.reg_8 { i16 2961, i8 0 }, %struct.reg_8 { i16 2962, i8 1 }, %struct.reg_8 { i16 2963, i8 0 }, %struct.reg_8 { i16 2964, i8 1 }, %struct.reg_8 { i16 2965, i8 0 }, %struct.reg_8 { i16 28240, i8 0 }, %struct.reg_8 { i16 28241, i8 50 }, %struct.reg_8 { i16 -27840, i8 0 }, %struct.reg_8 { i16 -27839, i8 60 }, %struct.reg_8 { i16 -27838, i8 3 }, %struct.reg_8 { i16 -27837, i8 -1 }, %struct.reg_8 { i16 1, i8 0 }], [88 x i8] zeroinitializer }, align 32
@imx214_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 731, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not sent common table %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx214_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@imx214_start_streaming._entry_ptr = internal global ptr @imx214_start_streaming._entry, section ".printk_index", align 4
@imx214_modes = internal constant { [2 x %struct.imx214_mode], [40 x i8] } { [2 x %struct.imx214_mode] [%struct.imx214_mode { i32 4096, i32 2304, ptr @mode_4096x2304 }, %struct.imx214_mode { i32 1920, i32 1080, ptr @mode_1920x1080 }], [40 x i8] zeroinitializer }, align 32
@imx214_start_streaming._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 740, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not sent mode table %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx214_start_streaming._entry_ptr.47 = internal global ptr @imx214_start_streaming._entry.45, section ".printk_index", align 4
@imx214_start_streaming._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not sync v4l2 controls\0A\00", [34 x i8] zeroinitializer }, align 32
@imx214_start_streaming._entry_ptr.50 = internal global ptr @imx214_start_streaming._entry.48, section ".printk_index", align 4
@imx214_start_streaming._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.3, i32 750, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not sent start table %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imx214_start_streaming._entry_ptr.53 = internal global ptr @imx214_start_streaming._entry.51, section ".printk_index", align 4
@imx214_write_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write_table error: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx214_write_table\00", [45 x i8] zeroinitializer }, align 32
@imx214_write_table._entry_ptr = internal global ptr @imx214_write_table._entry, section ".printk_index", align 4
@mode_4096x2304 = internal constant { [89 x %struct.reg_8], [92 x i8] } { [89 x %struct.reg_8] [%struct.reg_8 { i16 276, i8 3 }, %struct.reg_8 { i16 544, i8 0 }, %struct.reg_8 { i16 545, i8 17 }, %struct.reg_8 { i16 546, i8 1 }, %struct.reg_8 { i16 832, i8 12 }, %struct.reg_8 { i16 833, i8 122 }, %struct.reg_8 { i16 834, i8 19 }, %struct.reg_8 { i16 835, i8 -112 }, %struct.reg_8 { i16 836, i8 0 }, %struct.reg_8 { i16 837, i8 56 }, %struct.reg_8 { i16 838, i8 1 }, %struct.reg_8 { i16 839, i8 -104 }, %struct.reg_8 { i16 840, i8 16 }, %struct.reg_8 { i16 841, i8 55 }, %struct.reg_8 { i16 842, i8 10 }, %struct.reg_8 { i16 843, i8 -105 }, %struct.reg_8 { i16 897, i8 1 }, %struct.reg_8 { i16 899, i8 1 }, %struct.reg_8 { i16 901, i8 1 }, %struct.reg_8 { i16 903, i8 1 }, %struct.reg_8 { i16 2304, i8 0 }, %struct.reg_8 { i16 2305, i8 0 }, %struct.reg_8 { i16 2306, i8 0 }, %struct.reg_8 { i16 12288, i8 53 }, %struct.reg_8 { i16 12372, i8 1 }, %struct.reg_8 { i16 12380, i8 17 }, %struct.reg_8 { i16 274, i8 10 }, %struct.reg_8 { i16 275, i8 10 }, %struct.reg_8 { i16 844, i8 16 }, %struct.reg_8 { i16 845, i8 0 }, %struct.reg_8 { i16 846, i8 9 }, %struct.reg_8 { i16 847, i8 0 }, %struct.reg_8 { i16 1025, i8 0 }, %struct.reg_8 { i16 1028, i8 0 }, %struct.reg_8 { i16 1029, i8 16 }, %struct.reg_8 { i16 1032, i8 0 }, %struct.reg_8 { i16 1033, i8 0 }, %struct.reg_8 { i16 1034, i8 0 }, %struct.reg_8 { i16 1035, i8 0 }, %struct.reg_8 { i16 1036, i8 16 }, %struct.reg_8 { i16 1037, i8 0 }, %struct.reg_8 { i16 1038, i8 9 }, %struct.reg_8 { i16 1039, i8 0 }, %struct.reg_8 { i16 769, i8 5 }, %struct.reg_8 { i16 771, i8 2 }, %struct.reg_8 { i16 773, i8 3 }, %struct.reg_8 { i16 774, i8 0 }, %struct.reg_8 { i16 775, i8 -106 }, %struct.reg_8 { i16 777, i8 10 }, %struct.reg_8 { i16 779, i8 1 }, %struct.reg_8 { i16 784, i8 0 }, %struct.reg_8 { i16 2080, i8 18 }, %struct.reg_8 { i16 2081, i8 -64 }, %struct.reg_8 { i16 2082, i8 0 }, %struct.reg_8 { i16 2083, i8 0 }, %struct.reg_8 { i16 14851, i8 9 }, %struct.reg_8 { i16 14852, i8 80 }, %struct.reg_8 { i16 14853, i8 1 }, %struct.reg_8 { i16 2822, i8 1 }, %struct.reg_8 { i16 12450, i8 0 }, %struct.reg_8 { i16 12468, i8 0 }, %struct.reg_8 { i16 14850, i8 -1 }, %struct.reg_8 { i16 12305, i8 0 }, %struct.reg_8 { i16 12307, i8 1 }, %struct.reg_8 { i16 514, i8 12 }, %struct.reg_8 { i16 515, i8 112 }, %struct.reg_8 { i16 548, i8 1 }, %struct.reg_8 { i16 549, i8 -12 }, %struct.reg_8 { i16 516, i8 0 }, %struct.reg_8 { i16 517, i8 0 }, %struct.reg_8 { i16 526, i8 1 }, %struct.reg_8 { i16 527, i8 0 }, %struct.reg_8 { i16 528, i8 1 }, %struct.reg_8 { i16 529, i8 0 }, %struct.reg_8 { i16 530, i8 1 }, %struct.reg_8 { i16 531, i8 0 }, %struct.reg_8 { i16 532, i8 1 }, %struct.reg_8 { i16 533, i8 0 }, %struct.reg_8 { i16 534, i8 0 }, %struct.reg_8 { i16 535, i8 0 }, %struct.reg_8 { i16 16752, i8 0 }, %struct.reg_8 { i16 16753, i8 16 }, %struct.reg_8 { i16 16758, i8 0 }, %struct.reg_8 { i16 16759, i8 60 }, %struct.reg_8 { i16 -20960, i8 4 }, %struct.reg_8 { i16 -20959, i8 92 }, %struct.reg_8 { i16 0, i8 10 }, %struct.reg_8 { i16 312, i8 1 }, %struct.reg_8 { i16 1, i8 0 }], [92 x i8] zeroinitializer }, align 32
@mode_1920x1080 = internal constant { [89 x %struct.reg_8], [92 x i8] } { [89 x %struct.reg_8] [%struct.reg_8 { i16 276, i8 3 }, %struct.reg_8 { i16 544, i8 0 }, %struct.reg_8 { i16 545, i8 17 }, %struct.reg_8 { i16 546, i8 1 }, %struct.reg_8 { i16 832, i8 12 }, %struct.reg_8 { i16 833, i8 122 }, %struct.reg_8 { i16 834, i8 19 }, %struct.reg_8 { i16 835, i8 -112 }, %struct.reg_8 { i16 836, i8 4 }, %struct.reg_8 { i16 837, i8 120 }, %struct.reg_8 { i16 838, i8 3 }, %struct.reg_8 { i16 839, i8 -4 }, %struct.reg_8 { i16 840, i8 11 }, %struct.reg_8 { i16 841, i8 -9 }, %struct.reg_8 { i16 842, i8 8 }, %struct.reg_8 { i16 843, i8 51 }, %struct.reg_8 { i16 897, i8 1 }, %struct.reg_8 { i16 899, i8 1 }, %struct.reg_8 { i16 901, i8 1 }, %struct.reg_8 { i16 903, i8 1 }, %struct.reg_8 { i16 2304, i8 0 }, %struct.reg_8 { i16 2305, i8 0 }, %struct.reg_8 { i16 2306, i8 0 }, %struct.reg_8 { i16 12288, i8 53 }, %struct.reg_8 { i16 12372, i8 1 }, %struct.reg_8 { i16 12380, i8 17 }, %struct.reg_8 { i16 274, i8 10 }, %struct.reg_8 { i16 275, i8 10 }, %struct.reg_8 { i16 844, i8 7 }, %struct.reg_8 { i16 845, i8 -128 }, %struct.reg_8 { i16 846, i8 4 }, %struct.reg_8 { i16 847, i8 56 }, %struct.reg_8 { i16 1025, i8 0 }, %struct.reg_8 { i16 1028, i8 0 }, %struct.reg_8 { i16 1029, i8 16 }, %struct.reg_8 { i16 1032, i8 0 }, %struct.reg_8 { i16 1033, i8 0 }, %struct.reg_8 { i16 1034, i8 0 }, %struct.reg_8 { i16 1035, i8 0 }, %struct.reg_8 { i16 1036, i8 7 }, %struct.reg_8 { i16 1037, i8 -128 }, %struct.reg_8 { i16 1038, i8 4 }, %struct.reg_8 { i16 1039, i8 56 }, %struct.reg_8 { i16 769, i8 5 }, %struct.reg_8 { i16 771, i8 2 }, %struct.reg_8 { i16 773, i8 3 }, %struct.reg_8 { i16 774, i8 0 }, %struct.reg_8 { i16 775, i8 -106 }, %struct.reg_8 { i16 777, i8 10 }, %struct.reg_8 { i16 779, i8 1 }, %struct.reg_8 { i16 784, i8 0 }, %struct.reg_8 { i16 2080, i8 18 }, %struct.reg_8 { i16 2081, i8 -64 }, %struct.reg_8 { i16 2082, i8 0 }, %struct.reg_8 { i16 2083, i8 0 }, %struct.reg_8 { i16 14851, i8 4 }, %struct.reg_8 { i16 14852, i8 -8 }, %struct.reg_8 { i16 14853, i8 2 }, %struct.reg_8 { i16 2822, i8 1 }, %struct.reg_8 { i16 12450, i8 0 }, %struct.reg_8 { i16 12468, i8 0 }, %struct.reg_8 { i16 14850, i8 -1 }, %struct.reg_8 { i16 12305, i8 0 }, %struct.reg_8 { i16 12307, i8 1 }, %struct.reg_8 { i16 514, i8 12 }, %struct.reg_8 { i16 515, i8 112 }, %struct.reg_8 { i16 548, i8 1 }, %struct.reg_8 { i16 549, i8 -12 }, %struct.reg_8 { i16 516, i8 0 }, %struct.reg_8 { i16 517, i8 0 }, %struct.reg_8 { i16 526, i8 1 }, %struct.reg_8 { i16 527, i8 0 }, %struct.reg_8 { i16 528, i8 1 }, %struct.reg_8 { i16 529, i8 0 }, %struct.reg_8 { i16 530, i8 1 }, %struct.reg_8 { i16 531, i8 0 }, %struct.reg_8 { i16 532, i8 1 }, %struct.reg_8 { i16 533, i8 0 }, %struct.reg_8 { i16 534, i8 0 }, %struct.reg_8 { i16 535, i8 0 }, %struct.reg_8 { i16 16752, i8 0 }, %struct.reg_8 { i16 16753, i8 16 }, %struct.reg_8 { i16 16758, i8 0 }, %struct.reg_8 { i16 16759, i8 60 }, %struct.reg_8 { i16 -20960, i8 4 }, %struct.reg_8 { i16 -20959, i8 92 }, %struct.reg_8 { i16 0, i8 10 }, %struct.reg_8 { i16 312, i8 1 }, %struct.reg_8 { i16 1, i8 0 }], [92 x i8] zeroinitializer }, align 32
@imx214_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not sent stop table %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx214_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@imx214_stop_streaming._entry_ptr = internal global ptr @imx214_stop_streaming._entry, section ".printk_index", align 4
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@imx214_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx214_power_on\00", [16 x i8] zeroinitializer }, align 32
@imx214_power_on._entry_ptr = internal global ptr @imx214_power_on._entry, section ".printk_index", align 4
@imx214_power_on._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk prepare enable failed\0A\00", [37 x i8] zeroinitializer }, align 32
@imx214_power_on._entry_ptr.63 = internal global ptr @imx214_power_on._entry.61, section ".printk_index", align 4
@imx214_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 672, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Error %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx214_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@imx214_set_ctrl._entry_ptr = internal global ptr @imx214_set_ctrl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"imx214_i2c_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1111, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1115, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"imx214_of_match\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1100, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"imx214_pm_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1106, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"link_freq\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 949, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"unit_size\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 952, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 970, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 976, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 982, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 986, i32 44 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 988, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"sensor_regmap_config\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 857, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 992, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 994, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"imx214_subdev_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 851, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1010, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"imx214_ctrl_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 685, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1043, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1049, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1059, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1067, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 885, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 891, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 900, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 29, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 30, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 31, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"imx214_core_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 528, i32 42 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"imx214_video_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 835, i32 43 }
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"imx214_subdev_pad_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 841, i32 41 }
@___asan_gen_.217 = private unnamed_addr constant [18 x i8] c"mode_table_common\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 286, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 731, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [13 x i8] c"imx214_modes\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 414, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 740, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 745, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 750, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 713, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant [15 x i8] c"mode_4096x2304\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 78, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant [15 x i8] c"mode_1920x1080\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 182, i32 27 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 768, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 998, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 441, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 450, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [30 x i8] c"../drivers/media/i2c/imx214.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 672, i32 4 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_imx214_i2c_driver_exit, ptr @__initcall__kmod_imx214__296_1121_imx214_i2c_driver_init6, ptr @imx214_i2c_driver_exit, ptr @imx214_parse_fwnode._entry, ptr @imx214_parse_fwnode._entry.34, ptr @imx214_parse_fwnode._entry.37, ptr @imx214_parse_fwnode._entry_ptr, ptr @imx214_parse_fwnode._entry_ptr.36, ptr @imx214_parse_fwnode._entry_ptr.39, ptr @imx214_power_on._entry, ptr @imx214_power_on._entry.61, ptr @imx214_power_on._entry_ptr, ptr @imx214_power_on._entry_ptr.63, ptr @imx214_probe._entry, ptr @imx214_probe._entry.13, ptr @imx214_probe._entry.17, ptr @imx214_probe._entry.22, ptr @imx214_probe._entry.26, ptr @imx214_probe._entry.29, ptr @imx214_probe._entry.6, ptr @imx214_probe._entry.9, ptr @imx214_probe._entry_ptr, ptr @imx214_probe._entry_ptr.11, ptr @imx214_probe._entry_ptr.15, ptr @imx214_probe._entry_ptr.19, ptr @imx214_probe._entry_ptr.24, ptr @imx214_probe._entry_ptr.28, ptr @imx214_probe._entry_ptr.31, ptr @imx214_probe._entry_ptr.8, ptr @imx214_set_ctrl._entry, ptr @imx214_set_ctrl._entry_ptr, ptr @imx214_start_streaming._entry, ptr @imx214_start_streaming._entry.45, ptr @imx214_start_streaming._entry.48, ptr @imx214_start_streaming._entry.51, ptr @imx214_start_streaming._entry_ptr, ptr @imx214_start_streaming._entry_ptr.47, ptr @imx214_start_streaming._entry_ptr.50, ptr @imx214_start_streaming._entry_ptr.53, ptr @imx214_stop_streaming._entry, ptr @imx214_stop_streaming._entry_ptr, ptr @imx214_write_table._entry, ptr @imx214_write_table._entry_ptr, ptr @imx214_i2c_driver, ptr @.str, ptr @imx214_of_match, ptr @imx214_pm_ops, ptr @imx214_probe.link_freq, ptr @imx214_probe.unit_size, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @imx214_probe._key, ptr @sensor_regmap_config, ptr @.str.16, ptr @.str.18, ptr @imx214_subdev_ops, ptr @imx214_probe._key.20, ptr @.str.21, ptr @imx214_ctrl_ops, ptr @.str.23, ptr @imx214_probe.__key, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @imx214_core_ops, ptr @imx214_video_ops, ptr @imx214_subdev_pad_ops, ptr @mode_table_common, ptr @.str.43, ptr @.str.44, ptr @imx214_modes, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @mode_4096x2304, ptr @mode_1920x1080, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe.link_freq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe.unit_size to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_parse_fwnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_parse_fwnode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_parse_fwnode._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_table_common to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_modes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_start_streaming._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_start_streaming._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_start_streaming._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_write_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_4096x2304 to i32), i32 356, i32 448, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1920x1080 to i32), i32 356, i32 448, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_power_on._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx214_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @imx214_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx214_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @imx214_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrls = getelementptr i8, ptr %1, i32 292
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  %mutex = getelementptr i8, ptr %1, i32 532
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_probe(ptr noundef %client) #2 align 64 {
entry:
  %fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %call.i = tail call ptr @dev_fwnode(ptr noundef %dev1) #8
  %call1.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call.i, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %imx214_parse_fwnode.exit.thread, label %if.end.i

imx214_parse_fwnode.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %bus_cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.preheader.i, label %do.end7.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %3 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp31.not.i = icmp eq i32 %4, 0
  br i1 %cmp31.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %5 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #11
  br label %imx214_parse_fwnode.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %6, i32 %i.032.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 480000000, i64 %8)
  %cmp9.i = icmp eq i64 %8, 480000000
  br i1 %cmp9.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.do.end17.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end17.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.032.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %4)
  %cmp13.i = icmp eq i32 %i.0.lcssa.i, %4
  br i1 %cmp13.i, label %for.end.i.do.end17.i_crit_edge, label %for.end.i.imx214_parse_fwnode.exit_crit_edge

for.end.i.imx214_parse_fwnode.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx214_parse_fwnode.exit

for.end.i.do.end17.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i

do.end17.i:                                       ; preds = %for.end.i.do.end17.i_crit_edge, %for.inc.i.do.end17.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef 480000000) #11
  br label %imx214_parse_fwnode.exit

imx214_parse_fwnode.exit:                         ; preds = %do.end17.i, %for.end.i.imx214_parse_fwnode.exit_crit_edge, %do.end7.i
  %ret.0.i = phi i32 [ %call2.i, %do.end7.i ], [ -22, %do.end17.i ], [ 0, %for.end.i.imx214_parse_fwnode.exit_crit_edge ]
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %if.end, label %imx214_parse_fwnode.exit.cleanup_crit_edge

imx214_parse_fwnode.exit.cleanup_crit_edge:       ; preds = %imx214_parse_fwnode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %imx214_parse_fwnode.exit
  %call.i194 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 640, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i194, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call.i194 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %call.i194, align 4
  %call7 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %xclk = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 1
  %10 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %xclk, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  %11 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xclk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call15 = call i32 @clk_set_rate(ptr noundef %call7, i32 noundef 24000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %arrayidx1.i = getelementptr %struct.imx214, ptr %call.i194, i32 0, i32 12, i32 0
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.40, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.imx214, ptr %call.i194, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.41, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.imx214, ptr %call.i194, i32 0, i32 12, i32 2
  %16 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.42, ptr %arrayidx1.2.i, align 4
  %call.i195 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %cmp = icmp slt i32 %call.i195, 0
  br i1 %cmp, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call28 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 3) #8
  %enable_gpio = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 13
  %17 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call28, ptr %enable_gpio, align 4
  %cmp.i196 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  %18 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable_gpio, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %call38 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @sensor_regmap_config, ptr noundef nonnull @imx214_probe._key, ptr noundef nonnull @.str.16) #8
  %regmap = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 2
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call38, ptr %regmap, align 4
  %cmp.i197 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %sd = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 3
  call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @imx214_subdev_ops) #8
  %25 = ptrtoint ptr %call.i194 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i194, align 4
  %call49 = call i32 @imx214_power_on(ptr noundef %26)
  %27 = ptrtoint ptr %call.i194 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i194, align 4
  %call.i198 = call i32 @__pm_runtime_set_status(ptr noundef %28, i32 noundef 0) #8
  %29 = ptrtoint ptr %call.i194 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i194, align 4
  call void @pm_runtime_enable(ptr noundef %30) #8
  %31 = ptrtoint ptr %call.i194 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i194, align 4
  %call.i199 = call i32 @__pm_runtime_idle(ptr noundef %32, i32 noundef 0) #8
  %ctrls = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 7
  %call56 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 3, ptr noundef nonnull @imx214_probe._key.20, ptr noundef nonnull @.str.21) #8
  %call58 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef null, i32 noundef 10422530, i64 noundef 0, i64 noundef 384000000, i64 noundef 1, i64 noundef 384000000) #8
  %pixel_rate = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 8
  %33 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call58, ptr %pixel_rate, align 4
  %call60 = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrls, ptr noundef null, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @imx214_probe.link_freq) #8
  %link_freq = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 9
  %34 = ptrtoint ptr %link_freq to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call60, ptr %link_freq, align 4
  %tobool62.not = icmp eq ptr %call60, null
  br i1 %tobool62.not, label %if.end47.if.end65_crit_edge, label %if.then63

if.end47.if.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then63:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call60, i32 0, i32 20
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %or = or i32 %36, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end47.if.end65_crit_edge
  %call67 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @imx214_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 3184, i64 noundef 1, i64 noundef 3184) #8
  %exposure = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 10
  %37 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call67, ptr %exposure, align 4
  %call71 = call ptr @v4l2_ctrl_new_std_compound(ptr noundef %ctrls, ptr noundef null, i32 noundef 10357000, [1 x i32] [i32 ptrtoint (ptr @imx214_probe.unit_size to i32)]) #8
  %unit_size = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 11
  %38 = ptrtoint ptr %unit_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call71, ptr %unit_size, align 4
  %error = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 7, i32 9
  %39 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool73.not = icmp eq i32 %40, 0
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef %40) #11
  br label %free_ctrl

if.end79:                                         ; preds = %if.end65
  %ctrl_handler = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %mutex = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 14
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.25, ptr noundef nonnull @imx214_probe.__key) #8
  %lock = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %mutex, ptr %lock, align 4
  %flags88 = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags88, align 4
  %or89 = or i32 %44, 4
  store i32 %or89, ptr %flags88, align 4
  %pad = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 4
  %flags90 = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %flags90 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %flags90, align 4
  %dev93 = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 3, i32 14
  %46 = ptrtoint ptr %dev93 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev1, ptr %dev93, align 4
  %function = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 3, i32 0, i32 3
  %47 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 131073, ptr %function, align 4
  %call98 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end103, label %if.end104

do.end103:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #11
  br label %free_ctrl

if.end104:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i) #8
  %48 = getelementptr inbounds i8, ptr %fmt.i, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 84)
  %50 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %fmt.i, align 4
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2
  %51 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4096, ptr %format.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2304, ptr %height.i, align 4
  %call.i200 = call i32 @imx214_set_format(ptr noundef %sd, ptr noundef null, ptr noundef nonnull %fmt.i) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #8
  %call108 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef %sd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %do.end113, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end113:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #11
  br label %free_ctrl

free_ctrl:                                        ; preds = %do.end113, %do.end103, %do.end77
  %ret.0 = phi i32 [ %40, %do.end77 ], [ %call98, %do.end103 ], [ %call108, %do.end113 ]
  %mutex117 = getelementptr inbounds %struct.imx214, ptr %call.i194, i32 0, i32 14
  call void @mutex_destroy(ptr noundef %mutex117) #8
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #8
  %53 = ptrtoint ptr %call.i194 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i194, align 4
  call void @__pm_runtime_disable(ptr noundef %54, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %free_ctrl, %if.end104.cleanup_crit_edge, %do.end44, %do.end34, %do.end26, %do.end20, %do.end, %if.end.cleanup_crit_edge, %imx214_parse_fwnode.exit.cleanup_crit_edge, %imx214_parse_fwnode.exit.thread
  %retval.0 = phi i32 [ %13, %do.end ], [ %call15, %do.end20 ], [ %call.i195, %do.end26 ], [ %20, %do.end34 ], [ %24, %do.end44 ], [ %ret.0, %free_ctrl ], [ %ret.0.i, %imx214_parse_fwnode.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ], [ -22, %imx214_parse_fwnode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_power_on(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %supplies = getelementptr i8, ptr %1, i32 492
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #8
  %xclk = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.then3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp5 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp5, label %if.then6, label %clk_prepare_enable.exit.if.end14_crit_edge

clk_prepare_enable.exit.if.end14_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then6:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.62) #11
  br label %cleanup

if.end14:                                         ; preds = %clk_prepare_enable.exit.if.end14_crit_edge, %if.end.i.if.end14_crit_edge
  %enable_gpio = getelementptr i8, ptr %1, i32 528
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 12000, i32 noundef 15000, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval.0.i, %if.then6 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_compound(ptr noundef, ptr noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_entity_init_cfg(ptr noundef %subdev, ptr noundef readonly %sd_state) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #8
  %0 = getelementptr inbounds i8, ptr %fmt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %tobool.not = icmp eq ptr %sd_state, null
  %cond = zext i1 %tobool.not to i32
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %fmt, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %3 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2304, ptr %height, align 4
  %call = call i32 @imx214_set_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef nonnull %fmt)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_g_register(ptr nocapture noundef readonly %subdev, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %aux = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aux) #8
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %aux, align 4, !annotation !162
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 1, ptr %size, align 1
  %regmap = getelementptr i8, ptr %subdev, i32 -4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %5 to i32
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %conv, ptr noundef nonnull %aux) #8
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aux, align 4
  %conv2 = zext i32 %7 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %8 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %conv2, ptr %val, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aux) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_s_register(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %3 to i32
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  %conv2 = trunc i64 %5 to i32
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv, i32 noundef %conv2) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_s_stream(ptr noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -12
  %streaming = getelementptr i8, ptr %subdev, i32 624
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !163
  %2 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %enable)
  %cmp = icmp eq i32 %2, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2 = icmp ne i32 %enable, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8

if.then.i:                                        ; preds = %if.then3
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !165
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !166
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %call9 = tail call fastcc i32 @imx214_start_streaming(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.err_rpm_put_crit_edge, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end8.err_rpm_put_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rpm_put

if.else:                                          ; preds = %if.end
  %regmap.i = getelementptr i8, ptr %subdev, i32 -4
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i39 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp.i40 = icmp slt i32 %call.i39, 0
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  br i1 %cmp.i40, label %imx214_stop_streaming.exit.thread, label %if.end18

imx214_stop_streaming.exit.thread:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.56, i32 noundef %call.i39) #11
  br label %err_rpm_put

if.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i41 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 5) #8
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %if.end8.if.end21_crit_edge
  %frombool = zext i1 %tobool2 to i8
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %streaming, align 4
  br label %cleanup

err_rpm_put:                                      ; preds = %imx214_stop_streaming.exit.thread, %if.end8.err_rpm_put_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8.err_rpm_put_crit_edge ], [ %call.i39, %imx214_stop_streaming.exit.thread ]
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %call.i42 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %err_rpm_put, %if.end21, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_rpm_put ], [ 0, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @imx214_g_frame_interval(ptr nocapture noundef readnone %subdev, ptr nocapture noundef writeonly %fival) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fival, i32 0, i32 1
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fival, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 30, ptr %denominator, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx214_start_streaming(ptr noundef %imx214) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx214, ptr %imx214, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call fastcc i32 @imx214_write_table(ptr noundef %imx214, ptr noundef nonnull @mode_table_common)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %imx214 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imx214, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %call) #11
  br label %cleanup

do.end3:                                          ; preds = %entry
  %fmt = getelementptr inbounds %struct.imx214, ptr %imx214, i32 0, i32 5
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.imx214, ptr %imx214, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %call5 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @imx214_modes, i32 noundef 2, i32 noundef 12, i32 noundef 0, i32 noundef 4, i32 noundef %3, i32 noundef %5) #8
  %reg_table = getelementptr inbounds %struct.imx214_mode, ptr %call5, i32 0, i32 2
  %6 = ptrtoint ptr %reg_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_table, align 4
  %call6 = tail call fastcc i32 @imx214_write_table(ptr noundef %imx214, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %imx214 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imx214, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.46, i32 noundef %call6) #11
  br label %cleanup

if.end13:                                         ; preds = %do.end3
  %ctrls = getelementptr inbounds %struct.imx214, ptr %imx214, i32 0, i32 7
  %call14 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %ctrls) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %imx214 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %imx214, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %regmap = getelementptr inbounds %struct.imx214, ptr %imx214, i32 0, i32 2
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 256, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %imx214 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %imx214, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.52, i32 noundef %call22) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end21.cleanup_crit_edge, %do.end19, %do.end11, %do.end
  %retval.0 = phi i32 [ 0, %if.end21.cleanup_crit_edge ], [ %call, %do.end ], [ %call6, %do.end11 ], [ %call14, %do.end19 ], [ %call22, %do.end27 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx214_write_table(ptr nocapture noundef readonly %imx214, ptr nocapture noundef readonly %table) unnamed_addr #2 align 64 {
entry:
  %vals = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vals) #8
  %0 = getelementptr inbounds [4 x i8], ptr %vals, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %vals, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %vals, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.imx214, ptr %imx214, i32 0, i32 2
  %3 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %vals, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %table.addr.0 = phi ptr [ %table, %entry ], [ %incdec.ptr, %for.inc31 ]
  %4 = ptrtoint ptr %table.addr.0 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %table.addr.0, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end23 [
    i16 1, label %for.cond.cleanup_crit_edge
    i16 0, label %if.then
  ]

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %val = getelementptr inbounds %struct.reg_8, ptr %table.addr.0, i32 0, i32 1
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 2
  %conv6 = zext i8 %8 to i32
  %mul = mul nuw nsw i32 %conv6, 1000
  %add = add nuw nsw i32 %mul, 500
  call void @usleep_range_state(i32 noundef %mul, i32 noundef %add, i32 noundef 2) #8
  br label %for.inc31

if.end23:                                         ; preds = %for.cond
  %val25 = getelementptr %struct.reg_8, ptr %table.addr.0, i32 0, i32 1
  %9 = ptrtoint ptr %val25 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val25, align 2
  %11 = ptrtoint ptr %vals to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %vals, align 4
  %arrayidx.1 = getelementptr %struct.reg_8, ptr %table.addr.0, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.1, align 2
  %conv15.1 = zext i16 %13 to i32
  %14 = ptrtoint ptr %table.addr.0 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %table.addr.0, align 2
  %conv18.1 = zext i16 %15 to i32
  %add19.1 = add nuw nsw i32 %conv18.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.1, i32 %conv15.1)
  %cmp20.not.1 = icmp eq i32 %add19.1, %conv15.1
  br i1 %cmp20.not.1, label %if.end23.1, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end23.1:                                       ; preds = %if.end23
  %val25.1 = getelementptr %struct.reg_8, ptr %table.addr.0, i32 1, i32 1
  %16 = ptrtoint ptr %val25.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val25.1, align 2
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %0, align 1
  %arrayidx.2 = getelementptr %struct.reg_8, ptr %table.addr.0, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.2, align 2
  %conv15.2 = zext i16 %20 to i32
  %21 = ptrtoint ptr %table.addr.0 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %table.addr.0, align 2
  %conv18.2 = zext i16 %22 to i32
  %add19.2 = add nuw nsw i32 %conv18.2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.2, i32 %conv15.2)
  %cmp20.not.2 = icmp eq i32 %add19.2, %conv15.2
  br i1 %cmp20.not.2, label %if.end23.2, label %if.end23.1.for.end_crit_edge

if.end23.1.for.end_crit_edge:                     ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end23.2:                                       ; preds = %if.end23.1
  %val25.2 = getelementptr %struct.reg_8, ptr %table.addr.0, i32 2, i32 1
  %23 = ptrtoint ptr %val25.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val25.2, align 2
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %1, align 2
  %arrayidx.3 = getelementptr %struct.reg_8, ptr %table.addr.0, i32 3
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.3, align 2
  %conv15.3 = zext i16 %27 to i32
  %28 = ptrtoint ptr %table.addr.0 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %table.addr.0, align 2
  %conv18.3 = zext i16 %29 to i32
  %add19.3 = add nuw nsw i32 %conv18.3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.3, i32 %conv15.3)
  %cmp20.not.3 = icmp eq i32 %add19.3, %conv15.3
  br i1 %cmp20.not.3, label %if.end23.3, label %if.end23.2.for.end_crit_edge

if.end23.2.for.end_crit_edge:                     ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end23.3:                                       ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #10
  %val25.3 = getelementptr %struct.reg_8, ptr %table.addr.0, i32 3, i32 1
  %30 = ptrtoint ptr %val25.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val25.3, align 2
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %2, align 1
  br label %for.end

for.end:                                          ; preds = %if.end23.3, %if.end23.2.for.end_crit_edge, %if.end23.1.for.end_crit_edge, %if.end23.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %if.end23.for.end_crit_edge ], [ 2, %if.end23.1.for.end_crit_edge ], [ 3, %if.end23.2.for.end_crit_edge ], [ 4, %if.end23.3 ]
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %35 = ptrtoint ptr %table.addr.0 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %table.addr.0, align 2
  %conv28 = zext i16 %36 to i32
  %call = call i32 @regmap_bulk_write(ptr noundef %34, i32 noundef %conv28, ptr noundef nonnull %vals, i32 noundef %i.0.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end30, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %imx214 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %imx214, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.54, i32 noundef %call) #11
  br label %cleanup

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %i.0.lcssa, -1
  %add.ptr = getelementptr %struct.reg_8, ptr %table.addr.0, i32 %sub
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30, %if.then
  %table.addr.1 = phi ptr [ %table.addr.0, %if.then ], [ %add.ptr, %if.end30 ]
  %incdec.ptr = getelementptr %struct.reg_8, ptr %table.addr.1, i32 1
  br label %for.cond

cleanup:                                          ; preds = %do.end, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vals) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx214_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12303, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx214_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12303, i32 %1)
  %cmp.not = icmp eq i32 %1, 12303
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [2 x %struct.imx214_mode], ptr @imx214_modes, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %6 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %max_width, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %7 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %min_width, align 4
  %height = getelementptr [2 x %struct.imx214_mode], ptr @imx214_modes, i32 0, i32 %3, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %10 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %11 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %min_height, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_enum_frame_interval(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %call = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @imx214_modes, i32 noundef 2, i32 noundef 12, i32 noundef 0, i32 noundef 4, i32 noundef %3, i32 noundef %5) #8
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12303, ptr %code, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width, align 4
  %height3 = getelementptr inbounds %struct.imx214_mode, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height3, align 4
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %13 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 30, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 532
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %1, label %entry.__imx214_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__imx214_get_pad_format.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__imx214_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !167

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__imx214_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fmt.i = getelementptr i8, ptr %sd, i32 228
  br label %__imx214_get_pad_format.exit

__imx214_get_pad_format.exit:                     ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__imx214_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %fmt.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__imx214_get_pad_format.exit_crit_edge ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format1, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 532
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %1, label %entry.__imx214_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__imx214_get_pad_crop.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__imx214_get_pad_crop.exit

sw.bb.i:                                          ; preds = %entry
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !167

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i, i32 1
  br label %__imx214_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %crop.i = getelementptr i8, ptr %sd, i32 276
  br label %__imx214_get_pad_crop.exit

__imx214_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %entry.__imx214_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %entry.__imx214_get_pad_crop.exit_crit_edge ]
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format2, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %call4 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @imx214_modes, i32 noundef 2, i32 noundef 12, i32 noundef 0, i32 noundef 4, i32 noundef %10, i32 noundef %12) #8
  %13 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call4, align 4
  %width6 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %width6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %width6, align 4
  %height7 = getelementptr inbounds %struct.imx214_mode, ptr %call4, i32 0, i32 1
  %16 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height7, align 4
  %height8 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height8, align 4
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %20, label %__imx214_get_pad_crop.exit.cond.end61_crit_edge [
    i32 0, label %sw.bb.i103
    i32 1, label %sw.bb1.i106
  ]

__imx214_get_pad_crop.exit.cond.end61_crit_edge:  ; preds = %__imx214_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end61

sw.bb.i103:                                       ; preds = %__imx214_get_pad_crop.exit
  %22 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pad, align 4
  %num_pads.i.i100 = getelementptr i8, ptr %sd, i32 32
  %24 = ptrtoint ptr %num_pads.i.i100 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_pads.i.i100, align 4
  %conv.i.i101 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv.i.i101)
  %cmp.not.i.i102 = icmp ult i32 %23, %conv.i.i101
  br i1 %cmp.not.i.i102, label %sw.bb.i103.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i104, !prof !167

sw.bb.i103.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i104:                                    ; preds = %sw.bb.i103
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i104, %sw.bb.i103.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i105 = phi i32 [ 0, %do.end.i.i104 ], [ %23, %sw.bb.i103.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %26 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %27, i32 %spec.select.i.i105
  br label %cond.end61

sw.bb1.i106:                                      ; preds = %__imx214_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fmt.i = getelementptr i8, ptr %sd, i32 228
  br label %cond.end61

cond.end61:                                       ; preds = %sw.bb1.i106, %v4l2_subdev_get_try_format.exit.i, %__imx214_get_pad_crop.exit.cond.end61_crit_edge
  %retval.0.i107 = phi ptr [ %fmt.i, %sw.bb1.i106 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %__imx214_get_pad_crop.exit.cond.end61_crit_edge ]
  %28 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width6, align 4
  %30 = ptrtoint ptr %retval.0.i107 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %retval.0.i107, align 4
  %31 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height8, align 4
  %height15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i107, i32 0, i32 1
  %33 = ptrtoint ptr %height15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %height15, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i107, i32 0, i32 2
  %34 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 12303, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i107, i32 0, i32 3
  %35 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i107, i32 0, i32 4
  %36 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %colorspace, align 4
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i107, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %37, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i107, i32 0, i32 6
  %39 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i107, i32 0, i32 7
  %40 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2, ptr %xfer_func, align 4
  %41 = call ptr @memcpy(ptr %format2, ptr %retval.0.i107, i32 48)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %sd, i32 532
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %3, label %if.end.__imx214_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__imx214_get_pad_crop.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__imx214_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %7 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %6, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !167

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %6, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i, i32 1
  br label %__imx214_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %crop.i = getelementptr i8, ptr %sd, i32 276
  br label %__imx214_get_pad_crop.exit

__imx214_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__imx214_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__imx214_get_pad_crop.exit_crit_edge ]
  %11 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %__imx214_get_pad_crop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__imx214_get_pad_crop.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %vals = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vals) #8
  %2 = ptrtoint ptr %vals to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %vals, align 1, !annotation !162
  %3 = getelementptr inbounds [2 x i8], ptr %vals, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !162
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %6, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963793, i32 %8)
  %cond = icmp eq i32 %8, 9963793
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %3, align 1
  %12 = lshr i32 %10, 8
  %conv2 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %vals to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv2, ptr %vals, align 1
  %regmap = getelementptr i8, ptr %1, i32 -296
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef 514, ptr noundef nonnull %vals, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.64, i32 noundef %call4) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %do.end ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %call.i21 = call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vals) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %streaming = getelementptr i8, ptr %1, i32 624
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %regmap.i = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.56, i32 noundef %call.i) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %streaming = getelementptr i8, ptr %1, i32 624
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @imx214_start_streaming(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %error

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error:                                            ; preds = %if.then
  %regmap.i = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %error.imx214_stop_streaming.exit_crit_edge

error.imx214_stop_streaming.exit_crit_edge:       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx214_stop_streaming.exit

do.end.i:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.56, i32 noundef %call.i) #11
  br label %imx214_stop_streaming.exit

imx214_stop_streaming.exit:                       ; preds = %do.end.i, %error.imx214_stop_streaming.exit_crit_edge
  %8 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %imx214_stop_streaming.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %imx214_stop_streaming.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx214_power_off(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enable_gpio = getelementptr i8, ptr %1, i32 528
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  %xclk = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xclk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %supplies = getelementptr i8, ptr %1, i32 492
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !124, !126, !127, !128, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_imx214__296_1121_imx214_i2c_driver_init6, !1, !"__initcall__kmod_imx214__296_1121_imx214_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/imx214.c", i32 1121, i32 1}
!2 = !{ptr @__exitcall_imx214_i2c_driver_exit, !1, !"__exitcall_imx214_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/imx214.c", i32 1123, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/imx214.c", i32 1124, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/imx214.c", i32 1125, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/imx214.c", i32 1115, i32 12}
!12 = !{ptr @imx214_i2c_driver, !13, !"imx214_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/imx214.c", i32 1111, i32 26}
!14 = !{ptr @imx214_probe.link_freq, !15, !"link_freq", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/imx214.c", i32 949, i32 19}
!16 = !{ptr @imx214_probe.unit_size, !17, !"unit_size", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/imx214.c", i32 952, i32 32}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/imx214.c", i32 970, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx214_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx214_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/imx214.c", i32 976, i32 3}
!28 = !{ptr @imx214_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @imx214_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/imx214.c", i32 982, i32 3}
!32 = !{ptr @imx214_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @imx214_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/imx214.c", i32 986, i32 44}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/imx214.c", i32 988, i32 3}
!38 = !{ptr @imx214_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @imx214_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @imx214_probe._key, !41, !"_key", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/imx214.c", i32 992, i32 19}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/imx214.c", i32 994, i32 3}
!45 = !{ptr @imx214_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @imx214_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @imx214_probe._key.20, !48, !"_key", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/imx214.c", i32 1010, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/imx214.c", i32 1043, i32 3}
!52 = !{ptr @imx214_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx214_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @imx214_probe.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/imx214.c", i32 1049, i32 2}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/imx214.c", i32 1059, i32 3}
!59 = !{ptr @imx214_probe._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @imx214_probe._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/imx214.c", i32 1067, i32 3}
!63 = !{ptr @imx214_probe._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx214_probe._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/imx214.c", i32 885, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @imx214_parse_fwnode._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @imx214_parse_fwnode._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/imx214.c", i32 891, i32 3}
!72 = !{ptr @imx214_parse_fwnode._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @imx214_parse_fwnode._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/imx214.c", i32 900, i32 3}
!76 = !{ptr @imx214_parse_fwnode._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @imx214_parse_fwnode._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/imx214.c", i32 29, i32 2}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/imx214.c", i32 30, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/imx214.c", i32 31, i32 2}
!84 = distinct !{null, !85, !"imx214_supply_name", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/imx214.c", i32 28, i32 27}
!86 = !{ptr @sensor_regmap_config, !87, !"sensor_regmap_config", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/imx214.c", i32 857, i32 35}
!88 = !{ptr @imx214_subdev_ops, !89, !"imx214_subdev_ops", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/imx214.c", i32 851, i32 37}
!90 = !{ptr @imx214_core_ops, !91, !"imx214_core_ops", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/imx214.c", i32 528, i32 42}
!92 = !{ptr @imx214_video_ops, !93, !"imx214_video_ops", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/imx214.c", i32 835, i32 43}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/imx214.c", i32 731, i32 3}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @imx214_start_streaming._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @imx214_start_streaming._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/imx214.c", i32 740, i32 3}
!101 = !{ptr @imx214_start_streaming._entry.45, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @imx214_start_streaming._entry_ptr.47, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/imx214.c", i32 745, i32 3}
!105 = !{ptr @imx214_start_streaming._entry.48, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @imx214_start_streaming._entry_ptr.50, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/imx214.c", i32 750, i32 3}
!109 = !{ptr @imx214_start_streaming._entry.51, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @imx214_start_streaming._entry_ptr.53, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/imx214.c", i32 713, i32 4}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @imx214_write_table._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @imx214_write_table._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @mode_table_common, !117, !"mode_table_common", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/imx214.c", i32 286, i32 27}
!118 = !{ptr @imx214_modes, !119, !"imx214_modes", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/imx214.c", i32 414, i32 3}
!120 = !{ptr @mode_4096x2304, !121, !"mode_4096x2304", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/imx214.c", i32 78, i32 27}
!122 = !{ptr @mode_1920x1080, !123, !"mode_1920x1080", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/imx214.c", i32 182, i32 27}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/imx214.c", i32 768, i32 3}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @imx214_stop_streaming._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @imx214_stop_streaming._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @imx214_subdev_pad_ops, !130, !"imx214_subdev_pad_ops", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/imx214.c", i32 841, i32 41}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/imx214.c", i32 441, i32 3}
!135 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @imx214_power_on._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @imx214_power_on._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/imx214.c", i32 450, i32 3}
!140 = !{ptr @imx214_power_on._entry.61, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @imx214_power_on._entry_ptr.63, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @imx214_ctrl_ops, !143, !"imx214_ctrl_ops", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/imx214.c", i32 685, i32 35}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/imx214.c", i32 672, i32 4}
!146 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @imx214_set_ctrl._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @imx214_set_ctrl._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @imx214_of_match, !150, !"imx214_of_match", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/imx214.c", i32 1100, i32 34}
!151 = !{ptr @imx214_pm_ops, !152, !"imx214_pm_ops", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/imx214.c", i32 1106, i32 32}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"auto-init"}
!163 = !{i8 0, i8 2}
!164 = !{i64 2148261360}
!165 = !{i64 746183, i64 746208, i64 746230, i64 746246, i64 746258, i64 746278, i64 746302, i64 746318, i64 746330}
!166 = !{i64 2148261548}
!167 = !{!"branch_weights", i32 2000, i32 1}
