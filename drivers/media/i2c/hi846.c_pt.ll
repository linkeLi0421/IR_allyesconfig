; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/hi846.c_pt.bc'
source_filename = "../drivers/media/i2c/hi846.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hi846_mode = type { i32, i32, i32, i8, i16, i16, %struct.hi846_reg_list, %struct.hi846_reg_list, %struct.hi846_reg_list, %struct.v4l2_rect }
%struct.hi846_reg_list = type { i32, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hi846_reg = type { i16, i16 }
%struct.hi846_datafmt = type { i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_fwnode_device_properties = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.hi846 = type { ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, i8, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__initcall__kmod_hi846__302_2187_hi846_i2c_driver_init6 = internal global ptr @hi846_i2c_driver_init, section ".initcall6.init", align 4
@hi846_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @hi846_remove, ptr @hi846_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi846_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi846_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_hi846_i2c_driver_exit = internal global ptr @hi846_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [44 x i8] c"hi846.author=Angus Ainslie <angus@akkea.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [59 x i8] c"hi846.author=Martin Kepplinger <martin.kepplinger@puri.sm>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [44 x i8] c"hi846.description=Hynix HI846 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [35 x i8] c"hi846.file=drivers/media/i2c/hi846\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [21 x i8] c"hi846.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hi846\00", [26 x i8] zeroinitializer }, align 32
@hi846_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hynix,hi846\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hi846_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi846_suspend, ptr @hi846_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@hi846_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to stop stream\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi846_stop_streaming\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/media/i2c/hi846.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi846_stop_streaming._entry_ptr = internal global ptr @hi846_stop_streaming._entry, section ".printk_index", align 4
@hi846_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c write error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hi846_write_reg\00", [16 x i8] zeroinitializer }, align 32
@hi846_write_reg._entry_ptr = internal global ptr @hi846_write_reg._entry, section ".printk_index", align 4
@hi846_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 2063, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to check HW configuration: %d\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hi846_probe\00", [20 x i8] zeroinitializer }, align 32
@hi846_probe._entry_ptr = internal global ptr @hi846_probe._entry, section ".printk_index", align 4
@hi846_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 2070, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock: %pe\0A\00", [38 x i8] zeroinitializer }, align 32
@hi846_probe._entry_ptr.12 = internal global ptr @hi846_probe._entry.10, section ".printk_index", align 4
@hi846_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 2078, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"External clock freq should be 25000000, not %u.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hi846_probe._entry_ptr.16 = internal global ptr @hi846_probe._entry.13, section ".printk_index", align 4
@hi846_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @hi846_video_ops, ptr null, ptr null, ptr null, ptr @hi846_pad_ops }, [32 x i8] zeroinitializer }, align 32
@hi846_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hi846->mutex\00", [18 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [3 x %struct.hi846_mode], [44 x i8] } { [3 x %struct.hi846_mode] [%struct.hi846_mode { i32 640, i32 480, i32 3800, i8 0, i16 120, i16 631, %struct.hi846_reg_list { i32 24, ptr @mode_640x480_config }, %struct.hi846_reg_list { i32 16, ptr @mode_640x480_mipi_2lane }, %struct.hi846_reg_list zeroinitializer, %struct.v4l2_rect { i32 88, i32 328, i32 2560, i32 1920 } }, %struct.hi846_mode { i32 1280, i32 720, i32 3800, i8 1, i16 90, i16 842, %struct.hi846_reg_list { i32 25, ptr @mode_1280x720_config }, %struct.hi846_reg_list { i32 16, ptr @mode_1280x720_mipi_2lane }, %struct.hi846_reg_list { i32 16, ptr @mode_1280x720_mipi_4lane }, %struct.v4l2_rect { i32 176, i32 568, i32 2560, i32 1440 } }, %struct.hi846_mode { i32 1632, i32 1224, i32 3800, i8 1, i16 30, i16 2526, %struct.hi846_reg_list { i32 25, ptr @mode_1632x1224_config }, %struct.hi846_reg_list { i32 16, ptr @mode_1632x1224_mipi_2lane }, %struct.hi846_reg_list { i32 16, ptr @mode_1632x1224_mipi_4lane }, %struct.v4l2_rect { i32 0, i32 0, i32 3264, i32 2448 } }], [44 x i8] zeroinitializer }, align 32
@hi846_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.3, i32 2104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@hi846_probe._entry_ptr.20 = internal global ptr @hi846_probe._entry.18, section ".printk_index", align 4
@hi846_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@hi846_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.3, i32 2114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init entity pads: %d\00", [33 x i8] zeroinitializer }, align 32
@hi846_probe._entry_ptr.23 = internal global ptr @hi846_probe._entry.21, section ".printk_index", align 4
@hi846_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.3, i32 2121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register V4L2 subdev: %d\00", [61 x i8] zeroinitializer }, align 32
@hi846_probe._entry_ptr.26 = internal global ptr @hi846_probe._entry.24, section ".printk_index", align 4
@hi846_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1996, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to find endpoint node\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hi846_parse_dt\00", [17 x i8] zeroinitializer }, align 32
@hi846_parse_dt._entry_ptr = internal global ptr @hi846_parse_dt._entry, section ".printk_index", align 4
@hi846_parse_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 2003, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse endpoint node: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hi846_parse_dt._entry_ptr.31 = internal global ptr @hi846_parse_dt._entry.29, section ".printk_index", align 4
@hi846_parse_dt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 2010, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"number of CSI2 data lanes %d is not supported\00", [50 x i8] zeroinitializer }, align 32
@hi846_parse_dt._entry_ptr.34 = internal global ptr @hi846_parse_dt._entry.32, section ".printk_index", align 4
@hi846_parse_dt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.3, i32 2018, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"link-frequency property not found in DT\0A\00", [55 x i8] zeroinitializer }, align 32
@hi846_parse_dt._entry_ptr.37 = internal global ptr @hi846_parse_dt._entry.35, section ".printk_index", align 4
@hi846_parse_dt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.3, i32 2025, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Link frequency of %lld is not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@hi846_parse_dt._entry_ptr.40 = internal global ptr @hi846_parse_dt._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@hi846_parse_dt._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.28, ptr @.str.3, i32 2034, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get reset gpio: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@hi846_parse_dt._entry_ptr.44 = internal global ptr @hi846_parse_dt._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@hi846_parse_dt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.28, ptr @.str.3, i32 2042, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get shutdown gpio: %pe\0A\00", [62 x i8] zeroinitializer }, align 32
@hi846_parse_dt._entry_ptr.48 = internal global ptr @hi846_parse_dt._entry.46, section ".printk_index", align 4
@hi846_link_freqs = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 80000000, i64 200000000], [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddd\00", [27 x i8] zeroinitializer }, align 32
@hi846_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi846_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@hi846_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @hi846_init_cfg, ptr @hi846_enum_mbus_code, ptr @hi846_enum_frame_size, ptr null, ptr @hi846_get_format, ptr @hi846_set_format, ptr @hi846_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hi846_init_regs_list_2lane = internal constant { %struct.hi846_reg_list, [24 x i8] } { %struct.hi846_reg_list { i32 212, ptr @hi846_init_2lane }, [24 x i8] zeroinitializer }, align 32
@hi846_init_regs_list_4lane = internal constant { %struct.hi846_reg_list, [24 x i8] } { %struct.hi846_reg_list { i32 381, ptr @hi846_init_4lane }, [24 x i8] zeroinitializer }, align 32
@hi846_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 1533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set plls: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi846_start_streaming\00", [42 x i8] zeroinitializer }, align 32
@hi846_start_streaming._entry_ptr = internal global ptr @hi846_start_streaming._entry, section ".printk_index", align 4
@hi846_start_streaming._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 1539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set mode: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@hi846_start_streaming._entry_ptr.56 = internal global ptr @hi846_start_streaming._entry.54, section ".printk_index", align 4
@hi846_start_streaming._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.3, i32 1550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set mipi mode: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@hi846_start_streaming._entry_ptr.59 = internal global ptr @hi846_start_streaming._entry.57, section ".printk_index", align 4
@hi846_start_streaming._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.3, i32 1572, ptr @.str.62, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"visible pixel width and height is 0\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hi846_start_streaming._entry_ptr.63 = internal global ptr @hi846_start_streaming._entry.60, section ".printk_index", align 4
@hi846_start_streaming._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.53, ptr @.str.3, i32 1577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to start stream\00", [41 x i8] zeroinitializer }, align 32
@hi846_start_streaming._entry_ptr.66 = internal global ptr @hi846_start_streaming._entry.64, section ".printk_index", align 4
@hi846_start_streaming.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.67, i8 1, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: started streaming successfully\0A\00", [60 x i8] zeroinitializer }, align 32
@hi846_write_reg_list._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.68, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hi846_write_reg_list = private unnamed_addr constant [21 x i8] c"hi846_write_reg_list\00", align 1
@hi846_write_reg_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__.hi846_write_reg_list, ptr @.str.3, i32 1297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to write reg 0x%4.4x: %d\00", [32 x i8] zeroinitializer }, align 32
@hi846_write_reg_list._entry_ptr = internal global ptr @hi846_write_reg_list._entry, section ".printk_index", align 4
@hi846_write_reg_16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 1279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2c_master_send != %zu: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hi846_write_reg_16\00", [45 x i8] zeroinitializer }, align 32
@hi846_write_reg_16._entry_ptr = internal global ptr @hi846_write_reg_16._entry, section ".printk_index", align 4
@hi846_init_2lane = internal constant { [212 x %struct.hi846_reg], [208 x i8] } { [212 x %struct.hi846_reg] [%struct.hi846_reg { i16 2560, i16 0 }, %struct.hi846_reg { i16 8192, i16 4106 }, %struct.hi846_reg { i16 8194, i16 255 }, %struct.hi846_reg { i16 8196, i16 7 }, %struct.hi846_reg { i16 8198, i16 16383 }, %struct.hi846_reg { i16 8200, i16 16383 }, %struct.hi846_reg { i16 8202, i16 -15850 }, %struct.hi846_reg { i16 8204, i16 4754 }, %struct.hi846_reg { i16 8206, i16 -16358 }, %struct.hi846_reg { i16 8208, i16 16445 }, %struct.hi846_reg { i16 8210, i16 14 }, %struct.hi846_reg { i16 8212, i16 16446 }, %struct.hi846_reg { i16 8214, i16 2944 }, %struct.hi846_reg { i16 8216, i16 16447 }, %struct.hi846_reg { i16 8218, i16 -32082 }, %struct.hi846_reg { i16 8220, i16 4754 }, %struct.hi846_reg { i16 8222, i16 -16372 }, %struct.hi846_reg { i16 8224, i16 16688 }, %struct.hi846_reg { i16 8226, i16 17378 }, %struct.hi846_reg { i16 8228, i16 384 }, %struct.hi846_reg { i16 8230, i16 16688 }, %struct.hi846_reg { i16 8232, i16 29696 }, %struct.hi846_reg { i16 8234, i16 20480 }, %struct.hi846_reg { i16 8236, i16 595 }, %struct.hi846_reg { i16 8238, i16 2769 }, %struct.hi846_reg { i16 8240, i16 9056 }, %struct.hi846_reg { i16 8242, i16 9 }, %struct.hi846_reg { i16 8244, i16 20512 }, %struct.hi846_reg { i16 8246, i16 11 }, %struct.hi846_reg { i16 8248, i16 2 }, %struct.hi846_reg { i16 8250, i16 68 }, %struct.hi846_reg { i16 8252, i16 22 }, %struct.hi846_reg { i16 8254, i16 6034 }, %struct.hi846_reg { i16 8256, i16 28674 }, %struct.hi846_reg { i16 8258, i16 5455 }, %struct.hi846_reg { i16 8260, i16 213 }, %struct.hi846_reg { i16 8262, i16 11 }, %struct.hi846_reg { i16 8264, i16 25 }, %struct.hi846_reg { i16 8266, i16 5784 }, %struct.hi846_reg { i16 8268, i16 14 }, %struct.hi846_reg { i16 8270, i16 2458 }, %struct.hi846_reg { i16 8272, i16 88 }, %struct.hi846_reg { i16 8274, i16 28672 }, %struct.hi846_reg { i16 8276, i16 6041 }, %struct.hi846_reg { i16 8278, i16 784 }, %struct.hi846_reg { i16 8280, i16 963 }, %struct.hi846_reg { i16 8282, i16 76 }, %struct.hi846_reg { i16 8284, i16 1610 }, %struct.hi846_reg { i16 8286, i16 1 }, %struct.hi846_reg { i16 8288, i16 7 }, %struct.hi846_reg { i16 8290, i16 3015 }, %struct.hi846_reg { i16 8292, i16 85 }, %struct.hi846_reg { i16 8294, i16 28672 }, %struct.hi846_reg { i16 8296, i16 5456 }, %struct.hi846_reg { i16 8298, i16 5514 }, %struct.hi846_reg { i16 8300, i16 4 }, %struct.hi846_reg { i16 8302, i16 5256 }, %struct.hi846_reg { i16 8304, i16 28688 }, %struct.hi846_reg { i16 8306, i16 5384 }, %struct.hi846_reg { i16 8308, i16 4 }, %struct.hi846_reg { i16 8310, i16 22 }, %struct.hi846_reg { i16 8312, i16 981 }, %struct.hi846_reg { i16 8314, i16 85 }, %struct.hi846_reg { i16 8316, i16 2250 }, %struct.hi846_reg { i16 8318, i16 8217 }, %struct.hi846_reg { i16 8320, i16 7 }, %struct.hi846_reg { i16 8322, i16 28759 }, %struct.hi846_reg { i16 8324, i16 4039 }, %struct.hi846_reg { i16 8326, i16 20545 }, %struct.hi846_reg { i16 8328, i16 4808 }, %struct.hi846_reg { i16 8330, i16 20576 }, %struct.hi846_reg { i16 8332, i16 20608 }, %struct.hi846_reg { i16 8334, i16 8324 }, %struct.hi846_reg { i16 8336, i16 4808 }, %struct.hi846_reg { i16 8338, i16 30720 }, %struct.hi846_reg { i16 8340, i16 2050 }, %struct.hi846_reg { i16 8342, i16 1039 }, %struct.hi846_reg { i16 8344, i16 4103 }, %struct.hi846_reg { i16 8346, i16 2051 }, %struct.hi846_reg { i16 8348, i16 2059 }, %struct.hi846_reg { i16 8350, i16 14339 }, %struct.hi846_reg { i16 8352, i16 2055 }, %struct.hi846_reg { i16 8354, i16 1028 }, %struct.hi846_reg { i16 8356, i16 1024 }, %struct.hi846_reg { i16 8358, i16 -1 }, %struct.hi846_reg { i16 8360, i16 -3918 }, %struct.hi846_reg { i16 8362, i16 -17 }, %struct.hi846_reg { i16 8364, i16 2692 }, %struct.hi846_reg { i16 8366, i16 4754 }, %struct.hi846_reg { i16 8368, i16 -16338 }, %struct.hi846_reg { i16 8370, i16 16688 }, %struct.hi846_reg { i16 9214, i16 -16298 }, %struct.hi846_reg { i16 12850, i16 -1012 }, %struct.hi846_reg { i16 12854, i16 -990 }, %struct.hi846_reg { i16 12872, i16 -856 }, %struct.hi846_reg { i16 12906, i16 -31998 }, %struct.hi846_reg { i16 12908, i16 -31990 }, %struct.hi846_reg { i16 12910, i16 0 }, %struct.hi846_reg { i16 13002, i16 -984 }, %struct.hi846_reg { i16 13004, i16 -15428 }, %struct.hi846_reg { i16 13006, i16 -15540 }, %struct.hi846_reg { i16 13008, i16 -15526 }, %struct.hi846_reg { i16 13010, i16 -15512 }, %struct.hi846_reg { i16 13012, i16 -15498 }, %struct.hi846_reg { i16 13014, i16 -15422 }, %struct.hi846_reg { i16 13016, i16 -15386 }, %struct.hi846_reg { i16 13018, i16 3 }, %struct.hi846_reg { i16 13020, i16 3 }, %struct.hi846_reg { i16 13022, i16 199 }, %struct.hi846_reg { i16 13024, i16 49 }, %struct.hi846_reg { i16 13026, i16 49 }, %struct.hi846_reg { i16 13028, i16 49 }, %struct.hi846_reg { i16 13030, i16 -984 }, %struct.hi846_reg { i16 13032, i16 -15428 }, %struct.hi846_reg { i16 13034, i16 -15484 }, %struct.hi846_reg { i16 13036, i16 -15470 }, %struct.hi846_reg { i16 13038, i16 -15456 }, %struct.hi846_reg { i16 13040, i16 -15442 }, %struct.hi846_reg { i16 13042, i16 -15420 }, %struct.hi846_reg { i16 13044, i16 -15386 }, %struct.hi846_reg { i16 13046, i16 3 }, %struct.hi846_reg { i16 13048, i16 3 }, %struct.hi846_reg { i16 13050, i16 199 }, %struct.hi846_reg { i16 13052, i16 49 }, %struct.hi846_reg { i16 13054, i16 49 }, %struct.hi846_reg { i16 13056, i16 49 }, %struct.hi846_reg { i16 13058, i16 -32054 }, %struct.hi846_reg { i16 13060, i16 -16028 }, %struct.hi846_reg { i16 13062, i16 -32026 }, %struct.hi846_reg { i16 13064, i16 -15972 }, %struct.hi846_reg { i16 13066, i16 31 }, %struct.hi846_reg { i16 13068, i16 26 }, %struct.hi846_reg { i16 13070, i16 52 }, %struct.hi846_reg { i16 13072, i16 0 }, %struct.hi846_reg { i16 13074, i16 0 }, %struct.hi846_reg { i16 13076, i16 -876 }, %struct.hi846_reg { i16 13078, i16 -15400 }, %struct.hi846_reg { i16 2560, i16 0 }, %struct.hi846_reg { i16 3588, i16 18 }, %struct.hi846_reg { i16 46, i16 4369 }, %struct.hi846_reg { i16 50, i16 4369 }, %struct.hi846_reg { i16 34, i16 8 }, %struct.hi846_reg { i16 38, i16 64 }, %struct.hi846_reg { i16 40, i16 23 }, %struct.hi846_reg { i16 44, i16 2511 }, %struct.hi846_reg { i16 92, i16 8449 }, %struct.hi846_reg { i16 6, i16 2526 }, %struct.hi846_reg { i16 8, i16 3800 }, %struct.hi846_reg { i16 14, i16 256 }, %struct.hi846_reg { i16 12, i16 34 }, %struct.hi846_reg { i16 2594, i16 0 }, %struct.hi846_reg { i16 2596, i16 0 }, %struct.hi846_reg { i16 2052, i16 0 }, %struct.hi846_reg { i16 2578, i16 3264 }, %struct.hi846_reg { i16 2580, i16 2448 }, %struct.hi846_reg { i16 116, i16 2520 }, %struct.hi846_reg { i16 119, i16 0 }, %struct.hi846_reg { i16 70, i16 0 }, %struct.hi846_reg { i16 1310, i16 0 }, %struct.hi846_reg { i16 512, i16 1024 }, %struct.hi846_reg { i16 2586, i16 3072 }, %struct.hi846_reg { i16 2572, i16 16 }, %struct.hi846_reg { i16 2590, i16 3279 }, %struct.hi846_reg { i16 1026, i16 272 }, %struct.hi846_reg { i16 1028, i16 244 }, %struct.hi846_reg { i16 1032, i16 0 }, %struct.hi846_reg { i16 1040, i16 141 }, %struct.hi846_reg { i16 1042, i16 282 }, %struct.hi846_reg { i16 1044, i16 -31156 }, %struct.hi846_reg { i16 540, i16 3 }, %struct.hi846_reg { i16 542, i16 565 }, %struct.hi846_reg { i16 3072, i16 -28336 }, %struct.hi846_reg { i16 3078, i16 33 }, %struct.hi846_reg { i16 3088, i16 64 }, %struct.hi846_reg { i16 3090, i16 64 }, %struct.hi846_reg { i16 3092, i16 64 }, %struct.hi846_reg { i16 3094, i16 64 }, %struct.hi846_reg { i16 2562, i16 256 }, %struct.hi846_reg { i16 2564, i16 330 }, %struct.hi846_reg { i16 1048, i16 0 }, %struct.hi846_reg { i16 298, i16 948 }, %struct.hi846_reg { i16 288, i16 70 }, %struct.hi846_reg { i16 290, i16 886 }, %struct.hi846_reg { i16 2818, i16 -8115 }, %struct.hi846_reg { i16 2832, i16 26657 }, %struct.hi846_reg { i16 2834, i16 288 }, %struct.hi846_reg { i16 2836, i16 1 }, %struct.hi846_reg { i16 8200, i16 14589 }, %struct.hi846_reg { i16 12910, i16 0 }, %struct.hi846_reg { i16 2304, i16 800 }, %struct.hi846_reg { i16 2306, i16 -15590 }, %struct.hi846_reg { i16 2324, i16 -16119 }, %struct.hi846_reg { i16 2326, i16 1562 }, %struct.hi846_reg { i16 2328, i16 774 }, %struct.hi846_reg { i16 2330, i16 2825 }, %struct.hi846_reg { i16 2332, i16 3079 }, %struct.hi846_reg { i16 2334, i16 2560 }, %struct.hi846_reg { i16 2316, i16 1066 }, %struct.hi846_reg { i16 2318, i16 107 }, %struct.hi846_reg { i16 2388, i16 137 }, %struct.hi846_reg { i16 2390, i16 0 }, %struct.hi846_reg { i16 2392, i16 -13824 }, %struct.hi846_reg { i16 2394, i16 -28096 }, %struct.hi846_reg { i16 3848, i16 12036 }, %struct.hi846_reg { i16 3888, i16 31 }, %struct.hi846_reg { i16 3894, i16 31 }, %struct.hi846_reg { i16 3844, i16 14848 }, %struct.hi846_reg { i16 3890, i16 602 }, %struct.hi846_reg { i16 3896, i16 602 }, %struct.hi846_reg { i16 3882, i16 36 }, %struct.hi846_reg { i16 106, i16 256 }, %struct.hi846_reg { i16 76, i16 256 }], [208 x i8] zeroinitializer }, align 32
@hi846_init_4lane = internal constant { [381 x %struct.hi846_reg], [364 x i8] } { [381 x %struct.hi846_reg] [%struct.hi846_reg { i16 8192, i16 -26502 }, %struct.hi846_reg { i16 8194, i16 255 }, %struct.hi846_reg { i16 8196, i16 71 }, %struct.hi846_reg { i16 8198, i16 16383 }, %struct.hi846_reg { i16 8200, i16 16383 }, %struct.hi846_reg { i16 8202, i16 -15850 }, %struct.hi846_reg { i16 8204, i16 4754 }, %struct.hi846_reg { i16 8206, i16 -16358 }, %struct.hi846_reg { i16 8208, i16 16445 }, %struct.hi846_reg { i16 8210, i16 14 }, %struct.hi846_reg { i16 8212, i16 16446 }, %struct.hi846_reg { i16 8214, i16 2944 }, %struct.hi846_reg { i16 8216, i16 16447 }, %struct.hi846_reg { i16 8218, i16 -32082 }, %struct.hi846_reg { i16 8220, i16 4754 }, %struct.hi846_reg { i16 8222, i16 -16372 }, %struct.hi846_reg { i16 8224, i16 16688 }, %struct.hi846_reg { i16 8226, i16 17378 }, %struct.hi846_reg { i16 8228, i16 384 }, %struct.hi846_reg { i16 8230, i16 16688 }, %struct.hi846_reg { i16 8232, i16 29696 }, %struct.hi846_reg { i16 8234, i16 20480 }, %struct.hi846_reg { i16 8236, i16 595 }, %struct.hi846_reg { i16 8238, i16 2769 }, %struct.hi846_reg { i16 8240, i16 9056 }, %struct.hi846_reg { i16 8242, i16 9 }, %struct.hi846_reg { i16 8244, i16 20512 }, %struct.hi846_reg { i16 8246, i16 11 }, %struct.hi846_reg { i16 8248, i16 2 }, %struct.hi846_reg { i16 8250, i16 68 }, %struct.hi846_reg { i16 8252, i16 22 }, %struct.hi846_reg { i16 8254, i16 6034 }, %struct.hi846_reg { i16 8256, i16 28674 }, %struct.hi846_reg { i16 8258, i16 5455 }, %struct.hi846_reg { i16 8260, i16 213 }, %struct.hi846_reg { i16 8262, i16 11 }, %struct.hi846_reg { i16 8264, i16 25 }, %struct.hi846_reg { i16 8266, i16 5784 }, %struct.hi846_reg { i16 8268, i16 14 }, %struct.hi846_reg { i16 8270, i16 2458 }, %struct.hi846_reg { i16 8272, i16 88 }, %struct.hi846_reg { i16 8274, i16 28672 }, %struct.hi846_reg { i16 8276, i16 6041 }, %struct.hi846_reg { i16 8278, i16 784 }, %struct.hi846_reg { i16 8280, i16 963 }, %struct.hi846_reg { i16 8282, i16 76 }, %struct.hi846_reg { i16 8284, i16 1610 }, %struct.hi846_reg { i16 8286, i16 1 }, %struct.hi846_reg { i16 8288, i16 7 }, %struct.hi846_reg { i16 8290, i16 3015 }, %struct.hi846_reg { i16 8292, i16 85 }, %struct.hi846_reg { i16 8294, i16 28672 }, %struct.hi846_reg { i16 8296, i16 5456 }, %struct.hi846_reg { i16 8298, i16 5514 }, %struct.hi846_reg { i16 8300, i16 4 }, %struct.hi846_reg { i16 8302, i16 5256 }, %struct.hi846_reg { i16 8304, i16 28688 }, %struct.hi846_reg { i16 8306, i16 5384 }, %struct.hi846_reg { i16 8308, i16 4 }, %struct.hi846_reg { i16 8310, i16 22 }, %struct.hi846_reg { i16 8312, i16 981 }, %struct.hi846_reg { i16 8314, i16 85 }, %struct.hi846_reg { i16 8316, i16 2250 }, %struct.hi846_reg { i16 8318, i16 8217 }, %struct.hi846_reg { i16 8320, i16 7 }, %struct.hi846_reg { i16 8322, i16 28759 }, %struct.hi846_reg { i16 8324, i16 4039 }, %struct.hi846_reg { i16 8326, i16 20545 }, %struct.hi846_reg { i16 8328, i16 4808 }, %struct.hi846_reg { i16 8330, i16 20576 }, %struct.hi846_reg { i16 8332, i16 20608 }, %struct.hi846_reg { i16 8334, i16 8324 }, %struct.hi846_reg { i16 8336, i16 4808 }, %struct.hi846_reg { i16 8338, i16 30720 }, %struct.hi846_reg { i16 8340, i16 2050 }, %struct.hi846_reg { i16 8342, i16 1039 }, %struct.hi846_reg { i16 8344, i16 4103 }, %struct.hi846_reg { i16 8346, i16 2051 }, %struct.hi846_reg { i16 8348, i16 2059 }, %struct.hi846_reg { i16 8350, i16 14339 }, %struct.hi846_reg { i16 8352, i16 2055 }, %struct.hi846_reg { i16 8354, i16 1028 }, %struct.hi846_reg { i16 8356, i16 1024 }, %struct.hi846_reg { i16 8358, i16 -1 }, %struct.hi846_reg { i16 8360, i16 -3918 }, %struct.hi846_reg { i16 8362, i16 -17 }, %struct.hi846_reg { i16 8364, i16 2692 }, %struct.hi846_reg { i16 8366, i16 4754 }, %struct.hi846_reg { i16 8368, i16 -16338 }, %struct.hi846_reg { i16 8370, i16 16688 }, %struct.hi846_reg { i16 8372, i16 -3918 }, %struct.hi846_reg { i16 8374, i16 -65 }, %struct.hi846_reg { i16 8376, i16 8196 }, %struct.hi846_reg { i16 8378, i16 16447 }, %struct.hi846_reg { i16 8380, i16 195 }, %struct.hi846_reg { i16 8382, i16 20450 }, %struct.hi846_reg { i16 8384, i16 -31976 }, %struct.hi846_reg { i16 8386, i16 17359 }, %struct.hi846_reg { i16 8388, i16 0 }, %struct.hi846_reg { i16 8390, i16 -27774 }, %struct.hi846_reg { i16 8392, i16 -15596 }, %struct.hi846_reg { i16 8394, i16 8195 }, %struct.hi846_reg { i16 8396, i16 4784 }, %struct.hi846_reg { i16 8398, i16 -13648 }, %struct.hi846_reg { i16 8400, i16 16688 }, %struct.hi846_reg { i16 8402, i16 4784 }, %struct.hi846_reg { i16 8404, i16 -14070 }, %struct.hi846_reg { i16 8406, i16 16688 }, %struct.hi846_reg { i16 8408, i16 17106 }, %struct.hi846_reg { i16 8410, i16 -31976 }, %struct.hi846_reg { i16 8412, i16 195 }, %struct.hi846_reg { i16 8414, i16 -27774 }, %struct.hi846_reg { i16 8416, i16 -15596 }, %struct.hi846_reg { i16 8418, i16 8201 }, %struct.hi846_reg { i16 8420, i16 4619 }, %struct.hi846_reg { i16 8422, i16 4618 }, %struct.hi846_reg { i16 8424, i16 4617 }, %struct.hi846_reg { i16 8426, i16 4616 }, %struct.hi846_reg { i16 8428, i16 4615 }, %struct.hi846_reg { i16 8430, i16 4614 }, %struct.hi846_reg { i16 8432, i16 16432 }, %struct.hi846_reg { i16 8434, i16 -16034 }, %struct.hi846_reg { i16 8436, i16 16688 }, %struct.hi846_reg { i16 8438, i16 4754 }, %struct.hi846_reg { i16 8440, i16 -16376 }, %struct.hi846_reg { i16 8442, i16 16688 }, %struct.hi846_reg { i16 8444, i16 17106 }, %struct.hi846_reg { i16 8446, i16 -32095 }, %struct.hi846_reg { i16 8448, i16 194 }, %struct.hi846_reg { i16 8450, i16 4754 }, %struct.hi846_reg { i16 8452, i16 -16320 }, %struct.hi846_reg { i16 8454, i16 16688 }, %struct.hi846_reg { i16 8456, i16 4754 }, %struct.hi846_reg { i16 8458, i16 -16378 }, %struct.hi846_reg { i16 8460, i16 17058 }, %struct.hi846_reg { i16 8462, i16 29476 }, %struct.hi846_reg { i16 8464, i16 -27774 }, %struct.hi846_reg { i16 8466, i16 -15596 }, %struct.hi846_reg { i16 8468, i16 8209 }, %struct.hi846_reg { i16 8470, i16 16991 }, %struct.hi846_reg { i16 8472, i16 -32095 }, %struct.hi846_reg { i16 8474, i16 -3489 }, %struct.hi846_reg { i16 8476, i16 193 }, %struct.hi846_reg { i16 8478, i16 -3233 }, %struct.hi846_reg { i16 8480, i16 9222 }, %struct.hi846_reg { i16 8482, i16 16991 }, %struct.hi846_reg { i16 8484, i16 192 }, %struct.hi846_reg { i16 8486, i16 -3201 }, %struct.hi846_reg { i16 8488, i16 21039 }, %struct.hi846_reg { i16 8490, i16 20354 }, %struct.hi846_reg { i16 8492, i16 29476 }, %struct.hi846_reg { i16 8494, i16 16991 }, %struct.hi846_reg { i16 8496, i16 -32044 }, %struct.hi846_reg { i16 8498, i16 -3233 }, %struct.hi846_reg { i16 8500, i16 20418 }, %struct.hi846_reg { i16 8502, i16 435 }, %struct.hi846_reg { i16 8504, i16 -27710 }, %struct.hi846_reg { i16 8506, i16 -32097 }, %struct.hi846_reg { i16 8508, i16 9249 }, %struct.hi846_reg { i16 8510, i16 16446 }, %struct.hi846_reg { i16 8512, i16 -2 }, %struct.hi846_reg { i16 8514, i16 16562 }, %struct.hi846_reg { i16 8516, i16 -5000 }, %struct.hi846_reg { i16 8518, i16 -31972 }, %struct.hi846_reg { i16 8520, i16 16562 }, %struct.hi846_reg { i16 8522, i16 -5000 }, %struct.hi846_reg { i16 8524, i16 -31970 }, %struct.hi846_reg { i16 8526, i16 16562 }, %struct.hi846_reg { i16 8528, i16 -5000 }, %struct.hi846_reg { i16 8530, i16 -31968 }, %struct.hi846_reg { i16 8532, i16 -19502 }, %struct.hi846_reg { i16 8534, i16 140 }, %struct.hi846_reg { i16 8536, i16 9221 }, %struct.hi846_reg { i16 8538, i16 19983 }, %struct.hi846_reg { i16 8540, i16 20543 }, %struct.hi846_reg { i16 8542, i16 -40 }, %struct.hi846_reg { i16 8544, i16 20354 }, %struct.hi846_reg { i16 8546, i16 -31972 }, %struct.hi846_reg { i16 8548, i16 -28430 }, %struct.hi846_reg { i16 8550, i16 3 }, %struct.hi846_reg { i16 8552, i16 140 }, %struct.hi846_reg { i16 8554, i16 9217 }, %struct.hi846_reg { i16 8556, i16 16688 }, %struct.hi846_reg { i16 8558, i16 16927 }, %struct.hi846_reg { i16 8560, i16 -31972 }, %struct.hi846_reg { i16 8562, i16 24079 }, %struct.hi846_reg { i16 8564, i16 20354 }, %struct.hi846_reg { i16 8566, i16 -31970 }, %struct.hi846_reg { i16 8568, i16 24079 }, %struct.hi846_reg { i16 8570, i16 20354 }, %struct.hi846_reg { i16 8572, i16 -31968 }, %struct.hi846_reg { i16 8574, i16 16374 }, %struct.hi846_reg { i16 8576, i16 17198 }, %struct.hi846_reg { i16 8578, i16 16351 }, %struct.hi846_reg { i16 8580, i16 16927 }, %struct.hi846_reg { i16 8582, i16 28928 }, %struct.hi846_reg { i16 8584, i16 20238 }, %struct.hi846_reg { i16 8586, i16 20542 }, %struct.hi846_reg { i16 8588, i16 -40 }, %struct.hi846_reg { i16 8590, i16 20098 }, %struct.hi846_reg { i16 8592, i16 31236 }, %struct.hi846_reg { i16 8594, i16 16926 }, %struct.hi846_reg { i16 8596, i16 -31972 }, %struct.hi846_reg { i16 8598, i16 24334 }, %struct.hi846_reg { i16 8600, i16 20098 }, %struct.hi846_reg { i16 8602, i16 31238 }, %struct.hi846_reg { i16 8604, i16 2816 }, %struct.hi846_reg { i16 8606, i16 29444 }, %struct.hi846_reg { i16 8608, i16 80 }, %struct.hi846_reg { i16 8610, i16 16562 }, %struct.hi846_reg { i16 8612, i16 -12159 }, %struct.hi846_reg { i16 8614, i16 2952 }, %struct.hi846_reg { i16 8616, i16 16926 }, %struct.hi846_reg { i16 8618, i16 -31970 }, %struct.hi846_reg { i16 8620, i16 24334 }, %struct.hi846_reg { i16 8622, i16 20098 }, %struct.hi846_reg { i16 8624, i16 31246 }, %struct.hi846_reg { i16 8626, i16 21023 }, %struct.hi846_reg { i16 8628, i16 -31968 }, %struct.hi846_reg { i16 8630, i16 20354 }, %struct.hi846_reg { i16 8632, i16 31248 }, %struct.hi846_reg { i16 8634, i16 2816 }, %struct.hi846_reg { i16 8636, i16 29444 }, %struct.hi846_reg { i16 8638, i16 122 }, %struct.hi846_reg { i16 8640, i16 16562 }, %struct.hi846_reg { i16 8642, i16 129 }, %struct.hi846_reg { i16 8644, i16 2952 }, %struct.hi846_reg { i16 8646, i16 17298 }, %struct.hi846_reg { i16 8648, i16 31242 }, %struct.hi846_reg { i16 8650, i16 2048 }, %struct.hi846_reg { i16 8652, i16 31244 }, %struct.hi846_reg { i16 8654, i16 2816 }, %struct.hi846_reg { i16 8656, i16 29444 }, %struct.hi846_reg { i16 8658, i16 555 }, %struct.hi846_reg { i16 8660, i16 16562 }, %struct.hi846_reg { i16 8662, i16 -12159 }, %struct.hi846_reg { i16 8664, i16 2952 }, %struct.hi846_reg { i16 8666, i16 2816 }, %struct.hi846_reg { i16 8668, i16 29444 }, %struct.hi846_reg { i16 8670, i16 597 }, %struct.hi846_reg { i16 8672, i16 16562 }, %struct.hi846_reg { i16 8674, i16 129 }, %struct.hi846_reg { i16 8676, i16 2952 }, %struct.hi846_reg { i16 8678, i16 16688 }, %struct.hi846_reg { i16 9214, i16 -16298 }, %struct.hi846_reg { i16 12850, i16 -1012 }, %struct.hi846_reg { i16 12854, i16 -990 }, %struct.hi846_reg { i16 12856, i16 -772 }, %struct.hi846_reg { i16 12858, i16 -636 }, %struct.hi846_reg { i16 12860, i16 -760 }, %struct.hi846_reg { i16 12870, i16 -808 }, %struct.hi846_reg { i16 12872, i16 -856 }, %struct.hi846_reg { i16 12878, i16 -844 }, %struct.hi846_reg { i16 12906, i16 -31998 }, %struct.hi846_reg { i16 12908, i16 -31990 }, %struct.hi846_reg { i16 12910, i16 0 }, %struct.hi846_reg { i16 13002, i16 -984 }, %struct.hi846_reg { i16 13004, i16 -15428 }, %struct.hi846_reg { i16 13006, i16 -15540 }, %struct.hi846_reg { i16 13008, i16 -15526 }, %struct.hi846_reg { i16 13010, i16 -15512 }, %struct.hi846_reg { i16 13012, i16 -15498 }, %struct.hi846_reg { i16 13014, i16 -15422 }, %struct.hi846_reg { i16 13016, i16 -15386 }, %struct.hi846_reg { i16 13018, i16 3 }, %struct.hi846_reg { i16 13020, i16 3 }, %struct.hi846_reg { i16 13022, i16 199 }, %struct.hi846_reg { i16 13024, i16 49 }, %struct.hi846_reg { i16 13026, i16 49 }, %struct.hi846_reg { i16 13028, i16 49 }, %struct.hi846_reg { i16 13030, i16 -984 }, %struct.hi846_reg { i16 13032, i16 -15428 }, %struct.hi846_reg { i16 13034, i16 -15484 }, %struct.hi846_reg { i16 13036, i16 -15470 }, %struct.hi846_reg { i16 13038, i16 -15456 }, %struct.hi846_reg { i16 13040, i16 -15442 }, %struct.hi846_reg { i16 13042, i16 -15420 }, %struct.hi846_reg { i16 13044, i16 -15386 }, %struct.hi846_reg { i16 13046, i16 3 }, %struct.hi846_reg { i16 13048, i16 3 }, %struct.hi846_reg { i16 13050, i16 199 }, %struct.hi846_reg { i16 13052, i16 49 }, %struct.hi846_reg { i16 13054, i16 49 }, %struct.hi846_reg { i16 13056, i16 49 }, %struct.hi846_reg { i16 13058, i16 -32054 }, %struct.hi846_reg { i16 13060, i16 -16028 }, %struct.hi846_reg { i16 13062, i16 -32026 }, %struct.hi846_reg { i16 13064, i16 -15972 }, %struct.hi846_reg { i16 13066, i16 31 }, %struct.hi846_reg { i16 13068, i16 26 }, %struct.hi846_reg { i16 13070, i16 52 }, %struct.hi846_reg { i16 13072, i16 0 }, %struct.hi846_reg { i16 13074, i16 0 }, %struct.hi846_reg { i16 13076, i16 -876 }, %struct.hi846_reg { i16 13078, i16 -15400 }, %struct.hi846_reg { i16 2560, i16 0 }, %struct.hi846_reg { i16 3588, i16 18 }, %struct.hi846_reg { i16 46, i16 4369 }, %struct.hi846_reg { i16 50, i16 4369 }, %struct.hi846_reg { i16 34, i16 8 }, %struct.hi846_reg { i16 38, i16 64 }, %struct.hi846_reg { i16 40, i16 23 }, %struct.hi846_reg { i16 44, i16 2511 }, %struct.hi846_reg { i16 92, i16 8449 }, %struct.hi846_reg { i16 6, i16 2526 }, %struct.hi846_reg { i16 8, i16 3800 }, %struct.hi846_reg { i16 14, i16 256 }, %struct.hi846_reg { i16 12, i16 34 }, %struct.hi846_reg { i16 2594, i16 0 }, %struct.hi846_reg { i16 2596, i16 0 }, %struct.hi846_reg { i16 2052, i16 0 }, %struct.hi846_reg { i16 2578, i16 3264 }, %struct.hi846_reg { i16 2580, i16 2448 }, %struct.hi846_reg { i16 116, i16 2520 }, %struct.hi846_reg { i16 118, i16 0 }, %struct.hi846_reg { i16 1310, i16 0 }, %struct.hi846_reg { i16 512, i16 1024 }, %struct.hi846_reg { i16 2586, i16 3072 }, %struct.hi846_reg { i16 2572, i16 16 }, %struct.hi846_reg { i16 2590, i16 3279 }, %struct.hi846_reg { i16 1026, i16 272 }, %struct.hi846_reg { i16 1028, i16 244 }, %struct.hi846_reg { i16 1032, i16 0 }, %struct.hi846_reg { i16 1040, i16 141 }, %struct.hi846_reg { i16 1042, i16 282 }, %struct.hi846_reg { i16 1044, i16 -31156 }, %struct.hi846_reg { i16 540, i16 3 }, %struct.hi846_reg { i16 542, i16 565 }, %struct.hi846_reg { i16 3072, i16 -26288 }, %struct.hi846_reg { i16 3078, i16 33 }, %struct.hi846_reg { i16 3088, i16 64 }, %struct.hi846_reg { i16 3090, i16 64 }, %struct.hi846_reg { i16 3092, i16 64 }, %struct.hi846_reg { i16 3094, i16 64 }, %struct.hi846_reg { i16 2562, i16 256 }, %struct.hi846_reg { i16 2564, i16 346 }, %struct.hi846_reg { i16 1048, i16 0 }, %struct.hi846_reg { i16 296, i16 40 }, %struct.hi846_reg { i16 298, i16 -1 }, %struct.hi846_reg { i16 288, i16 70 }, %struct.hi846_reg { i16 290, i16 886 }, %struct.hi846_reg { i16 300, i16 32 }, %struct.hi846_reg { i16 302, i16 -1 }, %struct.hi846_reg { i16 292, i16 64 }, %struct.hi846_reg { i16 294, i16 888 }, %struct.hi846_reg { i16 1862, i16 80 }, %struct.hi846_reg { i16 1864, i16 469 }, %struct.hi846_reg { i16 1866, i16 555 }, %struct.hi846_reg { i16 1868, i16 944 }, %struct.hi846_reg { i16 1878, i16 1087 }, %struct.hi846_reg { i16 1880, i16 16157 }, %struct.hi846_reg { i16 2818, i16 -8115 }, %struct.hi846_reg { i16 2832, i16 26657 }, %struct.hi846_reg { i16 2834, i16 288 }, %struct.hi846_reg { i16 2836, i16 1 }, %struct.hi846_reg { i16 8200, i16 14589 }, %struct.hi846_reg { i16 12910, i16 0 }, %struct.hi846_reg { i16 2304, i16 768 }, %struct.hi846_reg { i16 2306, i16 -15591 }, %struct.hi846_reg { i16 2324, i16 -16119 }, %struct.hi846_reg { i16 2326, i16 1562 }, %struct.hi846_reg { i16 2328, i16 1031 }, %struct.hi846_reg { i16 2330, i16 2571 }, %struct.hi846_reg { i16 2332, i16 3592 }, %struct.hi846_reg { i16 2334, i16 2560 }, %struct.hi846_reg { i16 2316, i16 1063 }, %struct.hi846_reg { i16 2318, i16 89 }, %struct.hi846_reg { i16 2388, i16 137 }, %struct.hi846_reg { i16 2390, i16 0 }, %struct.hi846_reg { i16 2392, i16 -13696 }, %struct.hi846_reg { i16 2394, i16 -28096 }, %struct.hi846_reg { i16 3848, i16 12036 }, %struct.hi846_reg { i16 3888, i16 31 }, %struct.hi846_reg { i16 3894, i16 31 }, %struct.hi846_reg { i16 3844, i16 14848 }, %struct.hi846_reg { i16 3890, i16 602 }, %struct.hi846_reg { i16 3896, i16 602 }, %struct.hi846_reg { i16 3882, i16 16676 }, %struct.hi846_reg { i16 106, i16 256 }, %struct.hi846_reg { i16 76, i16 256 }, %struct.hi846_reg { i16 68, i16 1 }], [364 x i8] zeroinitializer }, align 32
@hi846_set_video_mode.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 1, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi846_set_video_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: link freq: %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@hi846_set_video_mode.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.3, ptr @.str.74, i8 1, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: frame length calculated: %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@hi846_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 1237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c read error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hi846_read_reg\00", [17 x i8] zeroinitializer }, align 32
@hi846_read_reg._entry_ptr = internal global ptr @hi846_read_reg._entry, section ".printk_index", align 4
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@hi846_enum_frame_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 1848, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"frame size enum not matching\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi846_enum_frame_size\00", [42 x i8] zeroinitializer }, align 32
@hi846_enum_frame_size._entry_ptr = internal global ptr @hi846_enum_frame_size._entry, section ".printk_index", align 4
@hi846_enum_frame_size.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 1, i8 -48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: max width: %d max height: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@hi846_get_format.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 1, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hi846_get_format\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Get format w=%d h=%d code=0x%x colorspace=0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@hi846_colour_fmts = internal constant { [1 x %struct.hi846_datafmt], [24 x i8] } { [1 x %struct.hi846_datafmt] [%struct.hi846_datafmt { i32 12302, i32 11 }], [24 x i8] zeroinitializer }, align 32
@hi846_set_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 1735, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"this mode is not supported for 2 lanes\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hi846_set_format\00", [47 x i8] zeroinitializer }, align 32
@hi846_set_format._entry_ptr = internal global ptr @hi846_set_format._entry, section ".printk_index", align 4
@hi846_set_format._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 1741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"this mode is not supported for 4 lanes\0A\00", [56 x i8] zeroinitializer }, align 32
@hi846_set_format._entry_ptr.87 = internal global ptr @hi846_set_format._entry.85, section ".printk_index", align 4
@hi846_set_format.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.88, i8 1, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: found mode: %dx%d\0A\00", [41 x i8] zeroinitializer }, align 32
@hi846_set_format.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.89, i8 1, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: target fps: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@hi846_set_format.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.90, i8 1, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Set fmt w=%d h=%d code=0x%x colorspace=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@hi846_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 1947, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wrong chip id low byte: %x\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi846_identify_module\00", [42 x i8] zeroinitializer }, align 32
@hi846_identify_module._entry_ptr = internal global ptr @hi846_identify_module._entry, section ".printk_index", align 4
@hi846_identify_module._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 1956, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wrong chip id high byte: %x\00", [36 x i8] zeroinitializer }, align 32
@hi846_identify_module._entry_ptr.95 = internal global ptr @hi846_identify_module._entry.93, section ".printk_index", align 4
@hi846_identify_module._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.3, i32 1961, ptr @.str.62, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"chip id %02X %02X using %d mipi lanes\0A\00", [57 x i8] zeroinitializer }, align 32
@hi846_identify_module._entry_ptr.98 = internal global ptr @hi846_identify_module._entry.96, section ".printk_index", align 4
@mode_640x480_config = internal constant { [24 x %struct.hi846_reg], [32 x i8] } { [24 x %struct.hi846_reg] [%struct.hi846_reg { i16 2560, i16 0 }, %struct.hi846_reg { i16 46, i16 30481 }, %struct.hi846_reg { i16 50, i16 30481 }, %struct.hi846_reg { i16 38, i16 328 }, %struct.hi846_reg { i16 44, i16 2247 }, %struct.hi846_reg { i16 92, i16 17412 }, %struct.hi846_reg { i16 6, i16 631 }, %struct.hi846_reg { i16 8, i16 3800 }, %struct.hi846_reg { i16 12, i16 802 }, %struct.hi846_reg { i16 2594, i16 512 }, %struct.hi846_reg { i16 2596, i16 0 }, %struct.hi846_reg { i16 2052, i16 88 }, %struct.hi846_reg { i16 2578, i16 640 }, %struct.hi846_reg { i16 2580, i16 480 }, %struct.hi846_reg { i16 540, i16 3 }, %struct.hi846_reg { i16 542, i16 565 }, %struct.hi846_reg { i16 2564, i16 362 }, %struct.hi846_reg { i16 1048, i16 528 }, %struct.hi846_reg { i16 2818, i16 -8115 }, %struct.hi846_reg { i16 2832, i16 28705 }, %struct.hi846_reg { i16 2834, i16 288 }, %struct.hi846_reg { i16 2836, i16 1 }, %struct.hi846_reg { i16 8200, i16 14589 }, %struct.hi846_reg { i16 12910, i16 0 }], [32 x i8] zeroinitializer }, align 32
@mode_640x480_mipi_2lane = internal constant { [16 x %struct.hi846_reg], [32 x i8] } { [16 x %struct.hi846_reg] [%struct.hi846_reg { i16 2304, i16 768 }, %struct.hi846_reg { i16 2306, i16 17177 }, %struct.hi846_reg { i16 2324, i16 -16123 }, %struct.hi846_reg { i16 2326, i16 780 }, %struct.hi846_reg { i16 2328, i16 772 }, %struct.hi846_reg { i16 2330, i16 1800 }, %struct.hi846_reg { i16 2332, i16 2820 }, %struct.hi846_reg { i16 2334, i16 1280 }, %struct.hi846_reg { i16 2316, i16 520 }, %struct.hi846_reg { i16 2318, i16 154 }, %struct.hi846_reg { i16 2388, i16 137 }, %struct.hi846_reg { i16 2390, i16 0 }, %struct.hi846_reg { i16 2392, i16 -13696 }, %struct.hi846_reg { i16 2394, i16 -28096 }, %struct.hi846_reg { i16 3882, i16 18724 }, %struct.hi846_reg { i16 76, i16 256 }], [32 x i8] zeroinitializer }, align 32
@mode_1280x720_config = internal constant { [25 x %struct.hi846_reg], [60 x i8] } { [25 x %struct.hi846_reg] [%struct.hi846_reg { i16 2560, i16 0 }, %struct.hi846_reg { i16 46, i16 13073 }, %struct.hi846_reg { i16 50, i16 13073 }, %struct.hi846_reg { i16 38, i16 568 }, %struct.hi846_reg { i16 44, i16 2007 }, %struct.hi846_reg { i16 92, i16 16898 }, %struct.hi846_reg { i16 6, i16 842 }, %struct.hi846_reg { i16 8, i16 3800 }, %struct.hi846_reg { i16 12, i16 290 }, %struct.hi846_reg { i16 2594, i16 256 }, %struct.hi846_reg { i16 2596, i16 0 }, %struct.hi846_reg { i16 2052, i16 176 }, %struct.hi846_reg { i16 2578, i16 1280 }, %struct.hi846_reg { i16 2580, i16 720 }, %struct.hi846_reg { i16 116, i16 836 }, %struct.hi846_reg { i16 540, i16 3 }, %struct.hi846_reg { i16 542, i16 565 }, %struct.hi846_reg { i16 2564, i16 362 }, %struct.hi846_reg { i16 1048, i16 1040 }, %struct.hi846_reg { i16 2818, i16 -8115 }, %struct.hi846_reg { i16 2832, i16 27681 }, %struct.hi846_reg { i16 2834, i16 288 }, %struct.hi846_reg { i16 2836, i16 5 }, %struct.hi846_reg { i16 8200, i16 14589 }, %struct.hi846_reg { i16 12910, i16 0 }], [60 x i8] zeroinitializer }, align 32
@mode_1280x720_mipi_2lane = internal constant { [16 x %struct.hi846_reg], [32 x i8] } { [16 x %struct.hi846_reg] [%struct.hi846_reg { i16 2304, i16 768 }, %struct.hi846_reg { i16 2306, i16 17177 }, %struct.hi846_reg { i16 2324, i16 -16119 }, %struct.hi846_reg { i16 2326, i16 1562 }, %struct.hi846_reg { i16 2328, i16 1031 }, %struct.hi846_reg { i16 2330, i16 2571 }, %struct.hi846_reg { i16 2332, i16 3592 }, %struct.hi846_reg { i16 2334, i16 2560 }, %struct.hi846_reg { i16 2316, i16 1063 }, %struct.hi846_reg { i16 2318, i16 325 }, %struct.hi846_reg { i16 2388, i16 137 }, %struct.hi846_reg { i16 2390, i16 0 }, %struct.hi846_reg { i16 2392, i16 -13696 }, %struct.hi846_reg { i16 2394, i16 -28096 }, %struct.hi846_reg { i16 3882, i16 16676 }, %struct.hi846_reg { i16 76, i16 256 }], [32 x i8] zeroinitializer }, align 32
@mode_1280x720_mipi_4lane = internal constant { [16 x %struct.hi846_reg], [32 x i8] } { [16 x %struct.hi846_reg] [%struct.hi846_reg { i16 2304, i16 768 }, %struct.hi846_reg { i16 2306, i16 -15591 }, %struct.hi846_reg { i16 2324, i16 -16123 }, %struct.hi846_reg { i16 2326, i16 780 }, %struct.hi846_reg { i16 2328, i16 772 }, %struct.hi846_reg { i16 2330, i16 1800 }, %struct.hi846_reg { i16 2332, i16 2820 }, %struct.hi846_reg { i16 2334, i16 1280 }, %struct.hi846_reg { i16 2316, i16 520 }, %struct.hi846_reg { i16 2318, i16 138 }, %struct.hi846_reg { i16 2388, i16 137 }, %struct.hi846_reg { i16 2390, i16 0 }, %struct.hi846_reg { i16 2392, i16 -13696 }, %struct.hi846_reg { i16 2394, i16 -28096 }, %struct.hi846_reg { i16 3882, i16 18724 }, %struct.hi846_reg { i16 76, i16 256 }], [32 x i8] zeroinitializer }, align 32
@mode_1632x1224_config = internal constant { [25 x %struct.hi846_reg], [60 x i8] } { [25 x %struct.hi846_reg] [%struct.hi846_reg { i16 2560, i16 0 }, %struct.hi846_reg { i16 46, i16 13073 }, %struct.hi846_reg { i16 50, i16 13073 }, %struct.hi846_reg { i16 38, i16 64 }, %struct.hi846_reg { i16 44, i16 2511 }, %struct.hi846_reg { i16 92, i16 16898 }, %struct.hi846_reg { i16 6, i16 2526 }, %struct.hi846_reg { i16 8, i16 3800 }, %struct.hi846_reg { i16 12, i16 290 }, %struct.hi846_reg { i16 2594, i16 256 }, %struct.hi846_reg { i16 2596, i16 0 }, %struct.hi846_reg { i16 2052, i16 0 }, %struct.hi846_reg { i16 2578, i16 1632 }, %struct.hi846_reg { i16 2580, i16 1224 }, %struct.hi846_reg { i16 116, i16 2520 }, %struct.hi846_reg { i16 540, i16 3 }, %struct.hi846_reg { i16 542, i16 565 }, %struct.hi846_reg { i16 2564, i16 362 }, %struct.hi846_reg { i16 1048, i16 0 }, %struct.hi846_reg { i16 2818, i16 -8115 }, %struct.hi846_reg { i16 2832, i16 27681 }, %struct.hi846_reg { i16 2834, i16 288 }, %struct.hi846_reg { i16 2836, i16 5 }, %struct.hi846_reg { i16 8200, i16 14589 }, %struct.hi846_reg { i16 12910, i16 0 }], [60 x i8] zeroinitializer }, align 32
@mode_1632x1224_mipi_2lane = internal constant { [16 x %struct.hi846_reg], [32 x i8] } { [16 x %struct.hi846_reg] [%struct.hi846_reg { i16 2304, i16 768 }, %struct.hi846_reg { i16 2306, i16 17177 }, %struct.hi846_reg { i16 2324, i16 -16119 }, %struct.hi846_reg { i16 2326, i16 1562 }, %struct.hi846_reg { i16 2328, i16 1031 }, %struct.hi846_reg { i16 2330, i16 2571 }, %struct.hi846_reg { i16 2332, i16 3592 }, %struct.hi846_reg { i16 2334, i16 2560 }, %struct.hi846_reg { i16 2316, i16 1063 }, %struct.hi846_reg { i16 2318, i16 105 }, %struct.hi846_reg { i16 2388, i16 137 }, %struct.hi846_reg { i16 2390, i16 0 }, %struct.hi846_reg { i16 2392, i16 -13696 }, %struct.hi846_reg { i16 2394, i16 -28096 }, %struct.hi846_reg { i16 3882, i16 16676 }, %struct.hi846_reg { i16 76, i16 256 }], [32 x i8] zeroinitializer }, align 32
@mode_1632x1224_mipi_4lane = internal constant { [16 x %struct.hi846_reg], [32 x i8] } { [16 x %struct.hi846_reg] [%struct.hi846_reg { i16 2304, i16 768 }, %struct.hi846_reg { i16 2306, i16 -15591 }, %struct.hi846_reg { i16 2324, i16 -16123 }, %struct.hi846_reg { i16 2326, i16 780 }, %struct.hi846_reg { i16 2328, i16 772 }, %struct.hi846_reg { i16 2330, i16 1800 }, %struct.hi846_reg { i16 2332, i16 2820 }, %struct.hi846_reg { i16 2334, i16 1280 }, %struct.hi846_reg { i16 2316, i16 520 }, %struct.hi846_reg { i16 2318, i16 28 }, %struct.hi846_reg { i16 2388, i16 137 }, %struct.hi846_reg { i16 2390, i16 0 }, %struct.hi846_reg { i16 2392, i16 -13696 }, %struct.hi846_reg { i16 2394, i16 -28096 }, %struct.hi846_reg { i16 3882, i16 18724 }, %struct.hi846_reg { i16 76, i16 256 }], [32 x i8] zeroinitializer }, align 32
@hi846_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hi846:1420:(ctrl_hdlr)->_lock\00", [34 x i8] zeroinitializer }, align 32
@hi846_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @hi846_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@hi846_test_pattern_menu = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], [56 x i8] zeroinitializer }, align 32
@hi846_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 1474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"v4l ctrl handler error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hi846_init_controls\00", [44 x i8] zeroinitializer }, align 32
@hi846_init_controls._entry_ptr = internal global ptr @hi846_init_controls._entry, section ".printk_index", align 4
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Solid Colour\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"100% Colour Bars\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Fade To Grey Colour Bars\00", [39 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PN9\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Gradient Horizontal\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Gradient Vertical\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Check Board\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Slant Pattern\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Resolution Pattern\00", [45 x i8] zeroinitializer }, align 32
@hi846_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.3, i32 1698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: start streaming failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hi846_resume\00", [19 x i8] zeroinitializer }, align 32
@hi846_resume._entry_ptr = internal global ptr @hi846_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [7 x i64] [i64 5, i64 32, i64 9963793, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"hi846_i2c_driver\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2177, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2179, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"hi846_of_match\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2171, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant [13 x i8] c"hi846_pm_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2165, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1593, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1258, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2062, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2069, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2076, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"hi846_subdev_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1927, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2090, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1060, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2104, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [24 x i8] c"hi846_subdev_entity_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1932, i32 45 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2114, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2120, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1996, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2003, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2009, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2018, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2025, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2031, i32 49 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2033, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2038, i32 54 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2041, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"hi846_link_freqs\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1045, i32 18 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1146, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1147, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1148, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [16 x i8] c"hi846_video_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1914, i32 43 }
@___asan_gen_.279 = private unnamed_addr constant [14 x i8] c"hi846_pad_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1918, i32 41 }
@___asan_gen_.282 = private unnamed_addr constant [27 x i8] c"hi846_init_regs_list_2lane\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1050, i32 36 }
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"hi846_init_regs_list_4lane\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1055, i32 36 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1533, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1539, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1550, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1572, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1577, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1583, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1295, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1278, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"hi846_init_2lane\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 238, i32 31 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"hi846_init_4lane\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 455, i32 31 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1500, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1512, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1237, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 998, i32 6 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1848, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1857, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1819, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [18 x i8] c"hi846_colour_fmts\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1180, i32 35 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1734, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1740, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1759, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1763, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1788, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1947, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1956, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1960, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [20 x i8] c"mode_640x480_config\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 842, i32 31 }
@___asan_gen_.444 = private unnamed_addr constant [24 x i8] c"mode_640x480_mipi_2lane\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 872, i32 31 }
@___asan_gen_.447 = private unnamed_addr constant [21 x i8] c"mode_1280x720_config\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 891, i32 31 }
@___asan_gen_.450 = private unnamed_addr constant [25 x i8] c"mode_1280x720_mipi_2lane\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 922, i32 31 }
@___asan_gen_.453 = private unnamed_addr constant [25 x i8] c"mode_1280x720_mipi_4lane\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 941, i32 31 }
@___asan_gen_.456 = private unnamed_addr constant [22 x i8] c"mode_1632x1224_config\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 961, i32 31 }
@___asan_gen_.459 = private unnamed_addr constant [26 x i8] c"mode_1632x1224_mipi_2lane\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 992, i32 31 }
@___asan_gen_.462 = private unnamed_addr constant [26 x i8] c"mode_1632x1224_mipi_4lane\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1011, i32 31 }
@___asan_gen_.465 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1420, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant [15 x i8] c"hi846_ctrl_ops\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1407, i32 35 }
@___asan_gen_.474 = private unnamed_addr constant [24 x i8] c"hi846_test_pattern_menu\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1030, i32 27 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1473, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1031, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1032, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1033, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1034, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1035, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1036, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1037, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1038, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1039, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1040, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.523 = private constant [29 x i8] c"../drivers/media/i2c/hi846.c\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1697, i32 4 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_hi846_i2c_driver_exit, ptr @__initcall__kmod_hi846__302_2187_hi846_i2c_driver_init6, ptr @hi846_enum_frame_size._entry, ptr @hi846_enum_frame_size._entry_ptr, ptr @hi846_i2c_driver_exit, ptr @hi846_identify_module._entry, ptr @hi846_identify_module._entry.93, ptr @hi846_identify_module._entry.96, ptr @hi846_identify_module._entry_ptr, ptr @hi846_identify_module._entry_ptr.95, ptr @hi846_identify_module._entry_ptr.98, ptr @hi846_init_controls._entry, ptr @hi846_init_controls._entry_ptr, ptr @hi846_parse_dt._entry, ptr @hi846_parse_dt._entry.29, ptr @hi846_parse_dt._entry.32, ptr @hi846_parse_dt._entry.35, ptr @hi846_parse_dt._entry.38, ptr @hi846_parse_dt._entry.42, ptr @hi846_parse_dt._entry.46, ptr @hi846_parse_dt._entry_ptr, ptr @hi846_parse_dt._entry_ptr.31, ptr @hi846_parse_dt._entry_ptr.34, ptr @hi846_parse_dt._entry_ptr.37, ptr @hi846_parse_dt._entry_ptr.40, ptr @hi846_parse_dt._entry_ptr.44, ptr @hi846_parse_dt._entry_ptr.48, ptr @hi846_probe._entry, ptr @hi846_probe._entry.10, ptr @hi846_probe._entry.13, ptr @hi846_probe._entry.18, ptr @hi846_probe._entry.21, ptr @hi846_probe._entry.24, ptr @hi846_probe._entry_ptr, ptr @hi846_probe._entry_ptr.12, ptr @hi846_probe._entry_ptr.16, ptr @hi846_probe._entry_ptr.20, ptr @hi846_probe._entry_ptr.23, ptr @hi846_probe._entry_ptr.26, ptr @hi846_read_reg._entry, ptr @hi846_read_reg._entry_ptr, ptr @hi846_resume._entry, ptr @hi846_resume._entry_ptr, ptr @hi846_set_format._entry, ptr @hi846_set_format._entry.85, ptr @hi846_set_format._entry_ptr, ptr @hi846_set_format._entry_ptr.87, ptr @hi846_start_streaming._entry, ptr @hi846_start_streaming._entry.54, ptr @hi846_start_streaming._entry.57, ptr @hi846_start_streaming._entry.60, ptr @hi846_start_streaming._entry.64, ptr @hi846_start_streaming._entry_ptr, ptr @hi846_start_streaming._entry_ptr.56, ptr @hi846_start_streaming._entry_ptr.59, ptr @hi846_start_streaming._entry_ptr.63, ptr @hi846_start_streaming._entry_ptr.66, ptr @hi846_stop_streaming._entry, ptr @hi846_stop_streaming._entry_ptr, ptr @hi846_write_reg._entry, ptr @hi846_write_reg._entry_ptr, ptr @hi846_write_reg_16._entry, ptr @hi846_write_reg_16._entry_ptr, ptr @hi846_write_reg_list._entry, ptr @hi846_write_reg_list._entry_ptr, ptr @hi846_i2c_driver, ptr @.str, ptr @hi846_of_match, ptr @hi846_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @hi846_subdev_ops, ptr @hi846_probe.__key, ptr @.str.17, ptr @supported_modes, ptr @.str.19, ptr @hi846_subdev_entity_ops, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @hi846_link_freqs, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @hi846_video_ops, ptr @hi846_pad_ops, ptr @hi846_init_regs_list_2lane, ptr @hi846_init_regs_list_4lane, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @hi846_write_reg_list._rs, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @hi846_init_2lane, ptr @hi846_init_4lane, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @hi846_colour_fmts, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @mode_640x480_config, ptr @mode_640x480_mipi_2lane, ptr @mode_1280x720_config, ptr @mode_1280x720_mipi_2lane, ptr @mode_1280x720_mipi_4lane, ptr @mode_1632x1224_config, ptr @mode_1632x1224_mipi_2lane, ptr @mode_1632x1224_mipi_4lane, ptr @hi846_init_controls._key, ptr @.str.99, ptr @hi846_ctrl_ops, ptr @hi846_test_pattern_menu, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_parse_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_parse_dt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_parse_dt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_parse_dt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_parse_dt._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_parse_dt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_link_freqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_init_regs_list_2lane to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_init_regs_list_4lane to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_start_streaming._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_start_streaming._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_start_streaming._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_start_streaming._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_write_reg_list._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_write_reg_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_write_reg_16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_init_2lane to i32), i32 848, i32 1056, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_init_4lane to i32), i32 1524, i32 1888, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_enum_frame_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_colour_fmts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_set_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_set_format._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_identify_module._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_identify_module._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_640x480_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_640x480_mipi_2lane to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1280x720_config to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1280x720_mipi_2lane to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1280x720_mipi_4lane to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1632x1224_config to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1632x1224_mipi_2lane to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1632x1224_mipi_4lane to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_test_pattern_menu to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi846_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @hi846_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi846_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @hi846_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @hi846_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  %mutex = getelementptr i8, ptr %1, i32 436
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_probe(ptr noundef %client) #2 align 64 {
entry:
  %props.i = alloca %struct.v4l2_fwnode_device_properties, align 4
  %msgs.i38.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i39.i = alloca [2 x i8], align 2
  %data_buf.i40.i = alloca [1 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [1 x i8], align 1
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 588, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i148 = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %call1.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call.i148, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %hi846_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.end
  %call2.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %bus_cfg.i) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end8.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call2.i) #11
  br label %hi846_parse_dt.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2, i32 2, i32 3
  %3 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_data_lanes.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %do.end19.i [
    i8 2, label %if.end8.i.if.end24.i_crit_edge
    i8 4, label %if.end8.i.if.end24.i_crit_edge202
  ]

if.end8.i.if.end24.i_crit_edge202:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.end8.i.if.end24.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %conv.i) #11
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #8
  br label %hi846_parse_dt.exit.thread

if.end24.i:                                       ; preds = %if.end8.i.if.end24.i_crit_edge, %if.end8.i.if.end24.i_crit_edge202
  %nr_lanes.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %nr_lanes.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %nr_lanes.i, align 4
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %7 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool28.not.i = icmp eq i32 %8, 0
  br i1 %tobool28.not.i, label %do.end32.i, label %for.body3.lr.ph.i.i

do.end32.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #11
  br label %hi846_parse_dt.exit.thread

for.body3.lr.ph.i.i:                              ; preds = %if.end24.i
  %link_frequencies.i.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %9 = ptrtoint ptr %link_frequencies.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link_frequencies.i.i, align 4
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc.i.i.for.body3.i.i_crit_edge, %for.body3.lr.ph.i.i
  %j.03.i.i = phi i32 [ 0, %for.body3.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body3.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr i64, ptr %10, i32 %j.03.i.i
  %11 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx4.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 80000000, i64 %12)
  %cmp5.i.i = icmp eq i64 %12, 80000000
  br i1 %cmp5.i.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body3.i.i
  %inc.i.i = add nuw i32 %j.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.inc.i.i.hi846_check_link_freqs.exit.i_crit_edge, label %for.inc.i.i.for.body3.i.i_crit_edge

for.inc.i.i.for.body3.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i.i

for.inc.i.i.hi846_check_link_freqs.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_check_link_freqs.exit.i

for.end.i.i:                                      ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.03.i.i, i32 %8)
  %cmp7.i.i = icmp eq i32 %j.03.i.i, %8
  br i1 %cmp7.i.i, label %for.end.i.i.hi846_check_link_freqs.exit.i_crit_edge, label %for.end.i.i.for.body3.1.i.i_crit_edge

for.end.i.i.for.body3.1.i.i_crit_edge:            ; preds = %for.end.i.i
  br label %for.body3.1.i.i

for.end.i.i.hi846_check_link_freqs.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_check_link_freqs.exit.i

for.body3.1.i.i:                                  ; preds = %for.inc.1.i.i.for.body3.1.i.i_crit_edge, %for.end.i.i.for.body3.1.i.i_crit_edge
  %j.03.1.i.i = phi i32 [ %inc.1.i.i, %for.inc.1.i.i.for.body3.1.i.i_crit_edge ], [ 0, %for.end.i.i.for.body3.1.i.i_crit_edge ]
  %arrayidx4.1.i.i = getelementptr i64, ptr %10, i32 %j.03.1.i.i
  %13 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx4.1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 200000000, i64 %14)
  %cmp5.1.i.i = icmp eq i64 %14, 200000000
  br i1 %cmp5.1.i.i, label %for.end.1.i.i, label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %for.body3.1.i.i
  %inc.1.i.i = add nuw i32 %j.03.1.i.i, 1
  %exitcond.1.not.i.i = icmp eq i32 %inc.1.i.i, %8
  br i1 %exitcond.1.not.i.i, label %for.inc.1.i.i.hi846_check_link_freqs.exit.i_crit_edge, label %for.inc.1.i.i.for.body3.1.i.i_crit_edge

for.inc.1.i.i.for.body3.1.i.i_crit_edge:          ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.1.i.i

for.inc.1.i.i.hi846_check_link_freqs.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_check_link_freqs.exit.i

for.end.1.i.i:                                    ; preds = %for.body3.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.03.1.i.i, i32 %8)
  %cmp7.1.i.i = icmp eq i32 %j.03.1.i.i, %8
  br i1 %cmp7.1.i.i, label %for.end.1.i.i.hi846_check_link_freqs.exit.i_crit_edge, label %for.end.1.i.i.if.end40.i_crit_edge

for.end.1.i.i.if.end40.i_crit_edge:               ; preds = %for.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

for.end.1.i.i.hi846_check_link_freqs.exit.i_crit_edge: ; preds = %for.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_check_link_freqs.exit.i

hi846_check_link_freqs.exit.i:                    ; preds = %for.end.1.i.i.hi846_check_link_freqs.exit.i_crit_edge, %for.inc.1.i.i.hi846_check_link_freqs.exit.i_crit_edge, %for.end.i.i.hi846_check_link_freqs.exit.i_crit_edge, %for.inc.i.i.hi846_check_link_freqs.exit.i_crit_edge
  %i.07.lcssa.i.i = phi i32 [ 0, %for.end.i.i.hi846_check_link_freqs.exit.i_crit_edge ], [ 1, %for.end.1.i.i.hi846_check_link_freqs.exit.i_crit_edge ], [ 1, %for.inc.1.i.i.hi846_check_link_freqs.exit.i_crit_edge ], [ 0, %for.inc.i.i.hi846_check_link_freqs.exit.i_crit_edge ]
  %arrayidx9.i.i = getelementptr i64, ptr @hi846_link_freqs, i32 %i.07.lcssa.i.i
  %15 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool35.not.i = icmp eq i64 %16, 0
  br i1 %tobool35.not.i, label %hi846_check_link_freqs.exit.i.if.end40.i_crit_edge, label %do.end39.i

hi846_check_link_freqs.exit.i.if.end40.i_crit_edge: ; preds = %hi846_check_link_freqs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

do.end39.i:                                       ; preds = %hi846_check_link_freqs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i64 noundef %16) #11
  br label %hi846_parse_dt.exit.thread

if.end40.i:                                       ; preds = %hi846_check_link_freqs.exit.i.if.end40.i_crit_edge, %for.end.1.i.i.if.end40.i_crit_edge
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #8
  %call41.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef 3) #8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call41.i, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end47.i, label %if.end51.i

do.end47.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull %call41.i) #11
  br label %hi846_parse_dt.exit

if.end51.i:                                       ; preds = %if.end40.i
  %call52.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef 3) #8
  %shutdown_gpio.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %shutdown_gpio.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call52.i, ptr %shutdown_gpio.i, align 4
  %cmp.i90.i = icmp ugt ptr %call52.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90.i, label %do.end58.i, label %hi846_parse_dt.exit.thread173

hi846_parse_dt.exit.thread173:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %if.end6

do.end58.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull %call52.i) #11
  br label %hi846_parse_dt.exit

hi846_parse_dt.exit.thread:                       ; preds = %do.end39.i, %do.end32.i, %do.end19.i, %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -6, %do.end.i ], [ -22, %do.end32.i ], [ -22, %do.end39.i ], [ -22, %do.end19.i ], [ %call2.i, %do.end7.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %do.end

hi846_parse_dt.exit:                              ; preds = %do.end58.i, %do.end47.i
  %retval.0.i.in.in = phi ptr [ %call.i, %do.end47.i ], [ %shutdown_gpio.i, %do.end58.i ]
  %19 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  %tobool3.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool3.not, label %hi846_parse_dt.exit.if.end6_crit_edge, label %hi846_parse_dt.exit.do.end_crit_edge

hi846_parse_dt.exit.do.end_crit_edge:             ; preds = %hi846_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

hi846_parse_dt.exit.if.end6_crit_edge:            ; preds = %hi846_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %hi846_parse_dt.exit.do.end_crit_edge, %hi846_parse_dt.exit.thread
  %retval.0.i172 = phi i32 [ %retval.0.i.ph, %hi846_parse_dt.exit.thread ], [ %retval.0.i, %hi846_parse_dt.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i172) #11
  br label %cleanup

if.end6:                                          ; preds = %hi846_parse_dt.exit.if.end6_crit_edge, %hi846_parse_dt.exit.thread173
  %call8 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clock = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8, ptr %clock, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end19

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull %call8) #11
  %21 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clock, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %call21 = call i32 @clk_get_rate(ptr noundef %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %call21)
  %cmp.not = icmp eq i32 %call21, 25000000
  br i1 %cmp.not, label %if.end19.if.end27_crit_edge, label %do.end25

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call21) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.end19.if.end27_crit_edge
  %arrayidx29 = getelementptr %struct.hi846, ptr %call.i, i32 0, i32 2, i32 0
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.49, ptr %arrayidx29, align 4
  %arrayidx29.1 = getelementptr %struct.hi846, ptr %call.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.50, ptr %arrayidx29.1, align 4
  %arrayidx29.2 = getelementptr %struct.hi846, ptr %call.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.51, ptr %arrayidx29.2, align 4
  %call32 = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end27.cleanup_crit_edge, label %if.end35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %sd = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 5
  call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @hi846_subdev_ops) #8
  %mutex = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 14
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @hi846_probe.__key) #8
  %call39 = call fastcc i32 @hi846_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end35.err_mutex_crit_edge

if.end35.err_mutex_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mutex

if.end42:                                         ; preds = %if.end35
  %dev_priv.i.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 5, i32 11
  %27 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %29 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data_buf.i.i) #8
  %31 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %data_buf.i.i, align 1
  %32 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 3862, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.i.i, align 2
  %35 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i.i, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %29, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %39 = load i16, ptr %addr.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len12.i.i, align 4
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %data_buf.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %44 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i.i, align 8
  %call17.i.i = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17.i.i)
  %cmp.not.i.i = icmp eq i32 %call17.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i149, label %hi846_read_reg.exit.i

hi846_read_reg.exit.i:                            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.75, i32 noundef %call17.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  br label %err_power_off

if.end.i149:                                      ; preds = %if.end42
  %46 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data_buf.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %47)
  %cmp.not.i = icmp eq i8 %47, 70
  br i1 %cmp.not.i, label %if.end5.i, label %do.end.i151

do.end.i151:                                      ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i150 = zext i8 %47 to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.91, i32 noundef %conv.i150) #11
  br label %err_power_off

if.end5.i:                                        ; preds = %if.end.i149
  %48 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i38.i) #8
  %50 = getelementptr inbounds i8, ptr %msgs.i38.i, i32 4
  %51 = call ptr @memset(ptr %50, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i39.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data_buf.i40.i) #8
  %52 = ptrtoint ptr %data_buf.i40.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %data_buf.i40.i, align 1
  %53 = ptrtoint ptr %addr_buf.i39.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 3863, ptr %addr_buf.i39.i, align 2
  %addr.i42.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %addr.i42.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr.i42.i, align 2
  %56 = ptrtoint ptr %msgs.i38.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %msgs.i38.i, align 4
  %flags.i43.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i38.i, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i43.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i43.i, align 2
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 2, ptr %50, align 4
  %buf.i45.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i38.i, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i45.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %addr_buf.i39.i, ptr %buf.i45.i, align 4
  %60 = load i16, ptr %addr.i42.i, align 2
  %arrayidx7.i46.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i38.i, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx7.i46.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayidx7.i46.i, align 4
  %flags10.i47.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i38.i, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %flags10.i47.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %flags10.i47.i, align 2
  %len12.i48.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i38.i, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %len12.i48.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %len12.i48.i, align 4
  %buf15.i49.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i38.i, i32 0, i32 1, i32 3
  %64 = ptrtoint ptr %buf15.i49.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %data_buf.i40.i, ptr %buf15.i49.i, align 4
  %adapter.i50.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 3
  %65 = ptrtoint ptr %adapter.i50.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter.i50.i, align 8
  %call17.i51.i = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msgs.i38.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17.i51.i)
  %cmp.not.i52.i = icmp eq i32 %call17.i51.i, 2
  br i1 %cmp.not.i52.i, label %if.end9.i, label %hi846_read_reg.exit57.i

hi846_read_reg.exit57.i:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i53.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i53.i, ptr noundef nonnull @.str.75, i32 noundef %call17.i51.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_buf.i40.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i39.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i38.i) #8
  br label %err_power_off

if.end9.i:                                        ; preds = %if.end5.i
  %67 = ptrtoint ptr %data_buf.i40.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %data_buf.i40.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_buf.i40.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i39.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i38.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %68)
  %cmp11.not.i = icmp eq i8 %68, 8
  br i1 %cmp11.not.i, label %if.end46, label %do.end16.i

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv10.i = zext i8 %68 to i32
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.94, i32 noundef %conv10.i) #11
  br label %err_power_off

if.end46:                                         ; preds = %if.end9.i
  %dev23.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %69 = ptrtoint ptr %nr_lanes.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nr_lanes.i, align 4
  %conv26.i = zext i8 %70 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23.i, ptr noundef nonnull @.str.97, i32 noundef 8, i32 noundef 70, i32 noundef %conv26.i) #11
  %cur_mode = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 15
  %71 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %72 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props.i) #8
  %74 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %props.i, align 4, !annotation !281
  %75 = getelementptr inbounds %struct.v4l2_fwnode_device_properties, ptr %props.i, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %75, align 4, !annotation !281
  %ctrl_handler.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 7
  %call1.i155 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 10, ptr noundef nonnull @hi846_init_controls._key, ptr noundef nonnull @.str.99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i155)
  %tobool.not.i156 = icmp eq i32 %call1.i155, 0
  br i1 %tobool.not.i156, label %if.end.i158, label %if.end46.hi846_init_controls.exit.thread_crit_edge

if.end46.hi846_init_controls.exit.thread_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_init_controls.exit.thread

if.end.i158:                                      ; preds = %if.end46
  %lock.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 7, i32 1
  %77 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %mutex, ptr %lock.i, align 4
  %call2.i157 = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi846_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @hi846_link_freqs) #8
  %link_freq.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 9
  %78 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call2.i157, ptr %link_freq.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i157, null
  br i1 %tobool4.not.i, label %if.end.i158.if.end7.i_crit_edge, label %if.then5.i

if.end.i158.if.end7.i_crit_edge:                  ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2.i157, i32 0, i32 20
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %80, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i158.if.end7.i_crit_edge
  %81 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur_mode, align 4
  %link_freq_index.i.i.i.i = getelementptr inbounds %struct.hi846_mode, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %link_freq_index.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %link_freq_index.i.i.i.i, align 4
  %idxprom.i.i.i = zext i8 %84 to i32
  %arrayidx.i.i.i = getelementptr [2 x i64], ptr @hi846_link_freqs, i32 0, i32 %idxprom.i.i.i
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx.i.i.i, align 8
  %mul.i.i = shl i64 %86, 1
  %87 = ptrtoint ptr %nr_lanes.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %nr_lanes.i, align 4
  %conv.i.i = zext i8 %88 to i64
  %mul1.i.i = mul i64 %mul.i.i, %conv.i.i
  %div84265.i.i = lshr exact i64 %mul1.i.i, 1
  %89 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div84265.i.i, i64 3689348814741910323) #12, !srcloc !282
  %90 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div84265.i.i, i64 %89) #12, !srcloc !283
  %call10.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi846_ctrl_ops, i32 noundef 10422530, i64 noundef 0, i64 noundef %90, i64 noundef 1, i64 noundef %90) #8
  %pixel_rate.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 10
  %91 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call10.i, ptr %pixel_rate.i, align 4
  %92 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur_mode, align 4
  %frame_len.i = getelementptr inbounds %struct.hi846_mode, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %frame_len.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %frame_len.i, align 4
  %conv.i159 = zext i16 %95 to i32
  %height.i = getelementptr inbounds %struct.hi846_mode, ptr %93, i32 0, i32 1
  %96 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %height.i, align 4
  %sub.i = sub i32 %conv.i159, %97
  %conv12.i = zext i32 %sub.i to i64
  %sub15.i = sub i32 65535, %97
  %conv16.i = zext i32 %sub15.i to i64
  %call24.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi846_ctrl_ops, i32 noundef 10356993, i64 noundef %conv12.i, i64 noundef %conv16.i, i64 noundef 1, i64 noundef %conv12.i) #8
  %vblank.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 11
  %98 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call24.i, ptr %vblank.i, align 4
  %99 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cur_mode, align 4
  %llp.i = getelementptr inbounds %struct.hi846_mode, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %llp.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %llp.i, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %100, align 4
  %sub27.i = sub i32 %102, %104
  %conv28.i = zext i32 %sub27.i to i64
  %call29.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi846_ctrl_ops, i32 noundef 10356994, i64 noundef %conv28.i, i64 noundef %conv28.i, i64 noundef 1, i64 noundef %conv28.i) #8
  %hblank.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 12
  %105 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call29.i, ptr %hblank.i, align 4
  %tobool31.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool31.not.i, label %if.end7.i.if.end36.i_crit_edge, label %if.then32.i

if.end7.i.if.end36.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then32.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags34.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call29.i, i32 0, i32 20
  %106 = ptrtoint ptr %flags34.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags34.i, align 4
  %or35.i = or i32 %107, 4
  store i32 %or35.i, ptr %flags34.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %if.end7.i.if.end36.i_crit_edge
  %call37.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi846_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 240, i64 noundef 8, i64 noundef 0) #8
  %call38.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi846_ctrl_ops, i32 noundef 10422533, i64 noundef 512, i64 noundef 8191, i64 noundef 1, i64 noundef 512) #8
  %108 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cur_mode, align 4
  %frame_len40.i = getelementptr inbounds %struct.hi846_mode, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %frame_len40.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %frame_len40.i, align 4
  %conv41.i = zext i16 %111 to i32
  %sub42.i = add nsw i32 %conv41.i, -2
  %conv43.i = sext i32 %sub42.i to i64
  %call44.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi846_ctrl_ops, i32 noundef 9963793, i64 noundef 6, i64 noundef %conv43.i, i64 noundef 1, i64 noundef %conv43.i) #8
  %exposure.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 13
  %112 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call44.i, ptr %exposure.i, align 4
  %call45.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi846_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 9, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @hi846_test_pattern_menu) #8
  %error.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 7, i32 9
  %113 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool46.not.i = icmp eq i32 %114, 0
  %dev51.i = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 4
  br i1 %tobool46.not.i, label %if.end50.i, label %hi846_init_controls.exit

if.end50.i:                                       ; preds = %if.end36.i
  %call52.i161 = call i32 @v4l2_fwnode_device_parse(ptr noundef %dev51.i, ptr noundef nonnull %props.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i161)
  %tobool53.not.i = icmp eq i32 %call52.i161, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end50.i.hi846_init_controls.exit.thread_crit_edge

if.end50.i.hi846_init_controls.exit.thread_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_init_controls.exit.thread

if.end55.i:                                       ; preds = %if.end50.i
  %call56.i = call i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi846_ctrl_ops, ptr noundef nonnull %props.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %hi846_init_controls.exit.thread181, label %if.end55.i.hi846_init_controls.exit.thread_crit_edge

if.end55.i.hi846_init_controls.exit.thread_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_init_controls.exit.thread

hi846_init_controls.exit.thread181:               ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_handler61.i = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 5, i32 8
  %115 = ptrtoint ptr %ctrl_handler61.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %ctrl_handler.i, ptr %ctrl_handler61.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #8
  br label %if.end54

hi846_init_controls.exit.thread:                  ; preds = %if.end55.i.hi846_init_controls.exit.thread_crit_edge, %if.end50.i.hi846_init_controls.exit.thread_crit_edge, %if.end46.hi846_init_controls.exit.thread_crit_edge
  %retval.0.i162.ph = phi i32 [ %call56.i, %if.end55.i.hi846_init_controls.exit.thread_crit_edge ], [ %call52.i161, %if.end50.i.hi846_init_controls.exit.thread_crit_edge ], [ %call1.i155, %if.end46.hi846_init_controls.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #8
  br label %do.end52

hi846_init_controls.exit:                         ; preds = %if.end36.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51.i, ptr noundef nonnull @.str.100, i32 noundef %114) #11
  %116 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool48.not = icmp eq i32 %117, 0
  br i1 %tobool48.not, label %hi846_init_controls.exit.if.end54_crit_edge, label %hi846_init_controls.exit.do.end52_crit_edge

hi846_init_controls.exit.do.end52_crit_edge:      ; preds = %hi846_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

hi846_init_controls.exit.if.end54_crit_edge:      ; preds = %hi846_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end52:                                         ; preds = %hi846_init_controls.exit.do.end52_crit_edge, %hi846_init_controls.exit.thread
  %retval.0.i162180 = phi i32 [ %retval.0.i162.ph, %hi846_init_controls.exit.thread ], [ %117, %hi846_init_controls.exit.do.end52_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i162180) #11
  br label %err_power_off

if.end54:                                         ; preds = %hi846_init_controls.exit.if.end54_crit_edge, %hi846_init_controls.exit.thread181
  %flags = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 5, i32 4
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags, align 4
  %or = or i32 %119, 4
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 5, i32 0, i32 11
  %120 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @hi846_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  %121 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 6
  %flags59 = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 6, i32 4
  %122 = ptrtoint ptr %flags59 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2, ptr %flags59, align 4
  %call63 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call63) #11
  br label %err_v4l2_ctrl_handler_free

if.end70:                                         ; preds = %if.end54
  %call72 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef %sd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end77, label %if.end79

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call72) #11
  br label %err_v4l2_ctrl_handler_free

if.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %call.i163 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i164 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #8
  br label %cleanup

err_v4l2_ctrl_handler_free:                       ; preds = %do.end77, %do.end68
  %ret.0 = phi i32 [ %call63, %do.end68 ], [ %call72, %do.end77 ]
  %ctrl_handler = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 5, i32 8
  %123 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %124) #8
  br label %err_power_off

err_power_off:                                    ; preds = %err_v4l2_ctrl_handler_free, %do.end52, %do.end16.i, %hi846_read_reg.exit57.i, %do.end.i151, %hi846_read_reg.exit.i
  %ret.1 = phi i32 [ %retval.0.i162180, %do.end52 ], [ %ret.0, %err_v4l2_ctrl_handler_free ], [ -5, %hi846_read_reg.exit57.i ], [ -5, %hi846_read_reg.exit.i ], [ -6, %do.end16.i ], [ -6, %do.end.i151 ]
  %125 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call.i, align 4
  %tobool.not.i165 = icmp eq ptr %126, null
  br i1 %tobool.not.i165, label %err_power_off.if.end.i167_crit_edge, label %if.then.i

err_power_off.if.end.i167_crit_edge:              ; preds = %err_power_off
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i167

if.then.i:                                        ; preds = %err_power_off
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %126, i32 noundef 1) #8
  br label %if.end.i167

if.end.i167:                                      ; preds = %if.then.i, %err_power_off.if.end.i167_crit_edge
  %shutdown_gpio.i166 = getelementptr inbounds %struct.hi846, ptr %call.i, i32 0, i32 1
  %127 = ptrtoint ptr %shutdown_gpio.i166 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %shutdown_gpio.i166, align 4
  %tobool2.not.i = icmp eq ptr %128, null
  br i1 %tobool2.not.i, label %if.end.i167.hi846_power_off.exit_crit_edge, label %if.then3.i

if.end.i167.hi846_power_off.exit_crit_edge:       ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_power_off.exit

if.then3.i:                                       ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %128, i32 noundef 1) #8
  br label %hi846_power_off.exit

hi846_power_off.exit:                             ; preds = %if.then3.i, %if.end.i167.hi846_power_off.exit_crit_edge
  %129 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clock, align 4
  call void @clk_disable(ptr noundef %130) #8
  call void @clk_unprepare(ptr noundef %130) #8
  %call.i168 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %arrayidx29) #8
  br label %err_mutex

err_mutex:                                        ; preds = %hi846_power_off.exit, %if.end35.err_mutex_crit_edge
  %ret.2 = phi i32 [ %call39, %if.end35.err_mutex_crit_edge ], [ %ret.1, %hi846_power_off.exit ]
  call void @mutex_destroy(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %err_mutex, %if.end79, %if.end27.cleanup_crit_edge, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i172, %do.end ], [ %23, %do.end14 ], [ %ret.2, %err_mutex ], [ 0, %if.end79 ], [ -12, %entry.cleanup_crit_edge ], [ %call32, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -52
  %streaming = getelementptr i8, ptr %1, i32 532
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 152
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #8
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %buf.i.i, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %6, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262143, ptr %11, align 4
  %addr6.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %addr6.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr6.i.i, align 2
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i.i, align 8
  %call9.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp.not.i.i = icmp eq i32 %call9.i.i, 1
  br i1 %cmp.not.i.i, label %hi846_write_reg.exit.thread.i, label %do.end.i

hi846_write_reg.exit.thread.i:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #8
  br label %hi846_stop_streaming.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.1) #11
  br label %hi846_stop_streaming.exit

hi846_stop_streaming.exit:                        ; preds = %do.end.i, %hi846_write_reg.exit.thread.i
  %20 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %streaming, align 4
  br label %if.end

if.end:                                           ; preds = %hi846_stop_streaming.exit, %entry.if.end_crit_edge
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %22, i32 noundef 1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %shutdown_gpio.i = getelementptr i8, ptr %1, i32 -48
  %23 = ptrtoint ptr %shutdown_gpio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shutdown_gpio.i, align 4
  %tobool2.not.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i, label %if.end.i.hi846_power_off.exit_crit_edge, label %if.then3.i

if.end.i.hi846_power_off.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_power_off.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %24, i32 noundef 1) #8
  br label %hi846_power_off.exit

hi846_power_off.exit:                             ; preds = %if.then3.i, %if.end.i.hi846_power_off.exit_crit_edge
  %clock.i = getelementptr i8, ptr %1, i32 -8
  %25 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clock.i, align 4
  call void @clk_disable(ptr noundef %26) #8
  call void @clk_unprepare(ptr noundef %26) #8
  %supplies.i = getelementptr i8, ptr %1, i32 -44
  %call.i = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #8
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi846_power_off(ptr noundef %hi846) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hi846 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hi846, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shutdown_gpio = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 1
  %2 = ptrtoint ptr %shutdown_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shutdown_gpio, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %clock = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 3
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %supplies = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 2
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi846_power_on(ptr noundef %hi846) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 2
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clock = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 3
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %err_reg, label %clk_prepare_enable.exit.if.end4_crit_edge

clk_prepare_enable.exit.if.end4_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %clk_prepare_enable.exit.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %shutdown_gpio = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 1
  %2 = ptrtoint ptr %shutdown_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shutdown_gpio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end4.if.end7_crit_edge, label %if.then5

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 0) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end4.if.end7_crit_edge
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 60, i32 noundef 2) #8
  %4 = ptrtoint ptr %hi846 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hi846, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 60, i32 noundef 2) #8
  br label %cleanup

err_reg:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  br label %cleanup

cleanup:                                          ; preds = %err_reg, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %err_reg ], [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -52
  %dev_priv.i = getelementptr %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %streaming = getelementptr i8, ptr %sd, i32 532
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !284
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %sd, i32 436
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  br i1 %tobool3.not, label %if.end.if.then15_crit_edge, label %if.then4

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then4:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then4
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !286
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then8.out_crit_edge, label %do.end11.i.i.i.i

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end11.i.i.i.i:                                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !287
  br label %out

if.end12:                                         ; preds = %if.then4
  %call11 = tail call fastcc i32 @hi846_start_streaming(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool14.not = icmp eq i32 %call11, 0
  br i1 %tobool14.not, label %if.end12.out_crit_edge, label %if.end12.if.then15_crit_edge

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then15:                                        ; preds = %if.end12.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %ret.038 = phi i32 [ %call11, %if.end12.if.then15_crit_edge ], [ 0, %if.end.if.then15_crit_edge ]
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #8
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %buf.i.i, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262143, ptr %13, align 4
  %addr6.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %addr6.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr6.i.i, align 2
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i, align 2
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i, align 8
  %call9.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp.not.i.i = icmp eq i32 %call9.i.i, 1
  br i1 %cmp.not.i.i, label %hi846_write_reg.exit.thread.i, label %do.end.i

hi846_write_reg.exit.thread.i:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #8
  br label %hi846_stop_streaming.exit

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.1) #11
  br label %hi846_stop_streaming.exit

hi846_stop_streaming.exit:                        ; preds = %do.end.i, %hi846_write_reg.exit.thread.i
  %22 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %streaming, align 4
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i33 = call i32 @__pm_runtime_idle(ptr noundef %dev16, i32 noundef 5) #8
  br label %out

out:                                              ; preds = %hi846_stop_streaming.exit, %if.end12.out_crit_edge, %do.end11.i.i.i.i, %if.then8.out_crit_edge
  %ret.1 = phi i32 [ %ret.038, %hi846_stop_streaming.exit ], [ 0, %if.end12.out_crit_edge ], [ %call.i, %if.then8.out_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi846_start_streaming(ptr nocapture noundef %hi846) unnamed_addr #2 align 64 {
entry:
  %buf.i109 = alloca [3 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i = alloca [2 x i8], align 2
  %data_buf.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 5, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %nr_lanes = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 8
  %2 = ptrtoint ptr %nr_lanes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  %hi846_init_regs_list_2lane.hi846_init_regs_list_4lane = select i1 %cmp, ptr @hi846_init_regs_list_2lane, ptr @hi846_init_regs_list_4lane
  %call3 = tail call fastcc i32 @hi846_write_reg_list(ptr noundef %hi846, ptr noundef nonnull %hi846_init_regs_list_2lane.hi846_init_regs_list_4lane)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %call3) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %cur_mode = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 15
  %4 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_mode, align 4
  %reg_list_config = getelementptr inbounds %struct.hi846_mode, ptr %5, i32 0, i32 6
  %call6 = tail call fastcc i32 @hi846_write_reg_list(ptr noundef %hi846, ptr noundef %reg_list_config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.55, i32 noundef %call6) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %nr_lanes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp16 = icmp eq i8 %7, 2
  %8 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_mode, align 4
  %reg_list_4lane = getelementptr inbounds %struct.hi846_mode, ptr %9, i32 0, i32 8
  %reg_list_2lane = getelementptr inbounds %struct.hi846_mode, ptr %9, i32 0, i32 7
  %reg_list_4lane.sink = select i1 %cmp16, ptr %reg_list_2lane, ptr %reg_list_4lane
  %call23 = tail call fastcc i32 @hi846_write_reg_list(ptr noundef %hi846, ptr noundef %reg_list_4lane.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.58, i32 noundef %call23) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end13
  %10 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_mode, align 4
  %fps = getelementptr inbounds %struct.hi846_mode, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %fps to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fps, align 2
  %conv33 = zext i16 %13 to i32
  tail call fastcc void @hi846_set_video_mode(ptr noundef %hi846, i32 noundef %conv33)
  %ctrl_handler = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_handler, align 4
  %call36 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %16 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %18 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data_buf.i) #8
  %20 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %data_buf.i, align 1
  %21 = ptrtoint ptr %addr_buf.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 52, ptr %addr_buf.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr.i, align 2
  %24 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i, align 2
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %18, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %addr_buf.i, ptr %buf.i, align 4
  %28 = load i16, ptr %addr.i, align 2
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx7.i, align 4
  %flags10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %flags10.i, align 2
  %len12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %len12.i, align 4
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data_buf.i, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call17.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17.i)
  %cmp.not.i = icmp eq i32 %call17.i, 2
  br i1 %cmp.not.i, label %if.end43, label %hi846_read_reg.exit

hi846_read_reg.exit:                              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.75, i32 noundef %call17.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %35 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %data_buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %37 = and i8 %36, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool45.not = icmp eq i8 %37, 0
  br i1 %tobool45.not, label %do.end49, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev50, ptr noundef nonnull @.str.61) #11
  br label %if.end51

if.end51:                                         ; preds = %do.end49, %if.end43.if.end51_crit_edge
  %38 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i109) #8
  %40 = getelementptr inbounds [3 x i8], ptr %buf.i109, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i109, i32 0, i32 2
  %42 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 10, ptr %buf.i109, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %40, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %45 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262143, ptr %45, align 4
  %addr6.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr6.i, align 2
  %49 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %msg.i, align 4
  %flags.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i111 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i111, align 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %51 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i109, ptr %buf7.i, align 4
  %adapter.i113 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 3
  %52 = ptrtoint ptr %adapter.i113 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i113, align 8
  %call9.i = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp.not.i114 = icmp eq i32 %call9.i, 1
  br i1 %cmp.not.i114, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i115 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i115, ptr noundef nonnull @.str.6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i109) #8
  %dev58 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.65) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i109) #8
  %streaming = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 16
  %54 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %streaming, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi846_start_streaming.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi846_start_streaming, %if.then65)) #8
          to label %cleanup [label %if.then65], !srcloc !288

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %dev66 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi846_start_streaming.__UNIQUE_ID_ddebug295, ptr noundef %dev66, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.53) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end59, %do.end57, %hi846_read_reg.exit, %if.end31.cleanup_crit_edge, %do.end29, %do.end11, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call6, %do.end11 ], [ %call23, %do.end29 ], [ -5, %do.end57 ], [ %call36, %if.end31.cleanup_crit_edge ], [ -5, %hi846_read_reg.exit ], [ 0, %if.then65 ], [ 0, %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi846_write_reg_list(ptr nocapture noundef readonly %hi846, ptr nocapture noundef readonly %r_list) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 5, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %r_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30.not = icmp eq i32 %3, 0
  br i1 %cmp30.not, label %entry.cleanup_crit_edge, label %if.end.i.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.lr.ph:                                   ; preds = %entry
  %regs = getelementptr inbounds %struct.hi846_reg_list, ptr %r_list, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.if.end.i_crit_edge, %if.end.i.lr.ph
  %i.031 = phi i32 [ 0, %if.end.i.lr.ph ], [ %inc, %for.inc.if.end.i_crit_edge ]
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.hi846_reg, ptr %6, i32 %i.031
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %val = getelementptr %struct.hi846_reg, ptr %6, i32 %i.031, i32 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val, align 2
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %buf.i, align 2
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %10, ptr %4, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp4.not.i, label %for.inc, label %do.body

do.body:                                          ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @hi846_write_reg_list._rs, ptr noundef nonnull @__func__.hi846_write_reg_list) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %arrayidx8 = getelementptr %struct.hi846_reg, ptr %16, i32 %i.031
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx8, align 2
  %conv = zext i16 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %conv, i32 noundef -5) #11
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  %inc = add nuw i32 %i.031, 1
  %19 = ptrtoint ptr %r_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r_list, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.if.end.i_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.if.end.i_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hi846_set_video_mode(ptr nocapture noundef readonly %hi846, i32 noundef %fps) unnamed_addr #2 align 64 {
entry:
  %buf.i21 = alloca [4 x i8], align 2
  %buf.i = alloca [4 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 5, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cur_mode.i.i = getelementptr inbounds %struct.hi846, ptr %hi846, i32 0, i32 15
  %2 = ptrtoint ptr %cur_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_mode.i.i, align 4
  %link_freq_index.i.i = getelementptr inbounds %struct.hi846_mode, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %link_freq_index.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_freq_index.i.i, align 4
  %idxprom.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [2 x i64], ptr @hi846_link_freqs, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi846_set_video_mode.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi846_set_video_mode, %if.then)) #8
          to label %if.else172 [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %cur_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_mode.i.i, align 4
  %link_freq_index.i.i7 = getelementptr inbounds %struct.hi846_mode, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %link_freq_index.i.i7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_freq_index.i.i7, align 4
  %idxprom.i8 = zext i8 %11 to i32
  %arrayidx.i9 = getelementptr [2 x i64], ptr @hi846_link_freqs, i32 0, i32 %idxprom.i8
  %12 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i9, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi846_set_video_mode.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i64 noundef %13) #8
  br label %if.else172

if.else172:                                       ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %14 = icmp ult i8 %5, 2
  br i1 %14, label %if.then182, label %if.else188, !prof !289

if.then182:                                       ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #10
  %conv183 = trunc i64 %7 to i32
  %div186 = udiv i32 %conv183, %fps
  %conv187 = zext i32 %div186 to i64
  br label %if.end413

if.else188:                                       ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %fps, i64 %7) #12, !srcloc !290
  %asmresult1.i = extractvalue { i64, i64 } %15, 1
  br label %if.end413

if.end413:                                        ; preds = %if.else188, %if.then182
  %link_freq.0 = phi i64 [ %conv187, %if.then182 ], [ %asmresult1.i, %if.else188 ]
  %16 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8504919899247140640, i64 %link_freq.0, i32 0) #12, !srcloc !291
  %asmresult.i13 = extractvalue { i64, i32 } %16, 0
  %asmresult4.i14 = extractvalue { i64, i32 } %16, 1
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8504919899247140640, i64 %link_freq.0, i64 %asmresult.i13, i32 %asmresult4.i14) #12, !srcloc !292
  %asmresult10.i18 = extractvalue { i64, i32 } %17, 0
  %frame_length.0 = lshr i64 %asmresult10.i18, 11
  %18 = ptrtoint ptr %cur_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_mode.i.i, align 4
  %frame_len = getelementptr inbounds %struct.hi846_mode, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %frame_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %frame_len, align 4
  %conv415 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %frame_length.0, i64 %conv415)
  %cmp416 = icmp ugt i64 %frame_length.0, %conv415
  %sub422 = sub nsw i64 %frame_length.0, %conv415
  %extract.t = trunc i64 %sub422 to i32
  %cond425.off0 = select i1 %cmp416, i32 %extract.t, i32 0
  %conv429 = zext i16 %21 to i32
  %add430 = add i32 %cond425.off0, %conv429
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi846_set_video_mode.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi846_set_video_mode, %if.then444)) #8
          to label %if.end.i [label %if.then444], !srcloc !288

if.then444:                                       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #10
  %conv431 = sext i32 %add430 to i64
  %dev445 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi846_set_video_mode.__UNIQUE_ID_ddebug294, ptr noundef %dev445, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i64 noundef %conv431) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then444, %if.end413
  %conv450 = trunc i32 %add430 to i16
  %22 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %24 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 6, ptr %buf.i, align 2
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv450, ptr %24, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp4.not.i, label %if.end.i26, label %hi846_write_reg_16.exit.thread

hi846_write_reg_16.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i21) #8
  br label %hi846_write_reg_16.exit29

if.end.i26:                                       ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  %27 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i21) #8
  %29 = getelementptr inbounds [4 x i8], ptr %buf.i21, i32 0, i32 2
  %30 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 8, ptr %buf.i21, align 2
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 3800, ptr %29, align 2
  %call.i.i24 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %buf.i21, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i24)
  %cmp4.not.i25 = icmp eq i32 %call.i.i24, 4
  br i1 %cmp4.not.i25, label %if.end.i26.hi846_write_reg_16.exit29_crit_edge, label %do.end.i28

if.end.i26.hi846_write_reg_16.exit29_crit_edge:   ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_write_reg_16.exit29

do.end.i28:                                       ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i27 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i27, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i24) #11
  br label %hi846_write_reg_16.exit29

hi846_write_reg_16.exit29:                        ; preds = %do.end.i28, %if.end.i26.hi846_write_reg_16.exit29_crit_edge, %hi846_write_reg_16.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i21) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_init_cfg(ptr noundef %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !293

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %mutex = getelementptr i8, ptr %sd, i32 436
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12302, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field, align 4
  %cur_mode = getelementptr i8, ptr %sd, i32 528
  %7 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_mode, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %3, align 4
  %12 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.hi846_mode, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height4, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hi846_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12302, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12302, i32 %7)
  %cmp1.not = icmp eq i32 %7, 12302
  br i1 %cmp1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [3 x %struct.hi846_mode], ptr @supported_modes, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %10 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %11 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %max_width, align 4
  %height = getelementptr [3 x %struct.hi846_mode], ptr @supported_modes, i32 0, i32 %5, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %14 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %15 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %max_height, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi846_enum_frame_size.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi846_enum_frame_size, %if.then18)) #8
          to label %cleanup [label %if.then18], !srcloc !288

if.then18:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_width, align 4
  %18 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi846_enum_frame_size.__UNIQUE_ID_ddebug301, ptr noundef %dev19, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %17, i32 noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end3, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %5, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !289

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %5, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i
  %10 = call ptr @memcpy(ptr %format1, ptr %arrayidx.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mutex = getelementptr i8, ptr %sd, i32 436
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12302, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 11, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field, align 4
  %cur_mode = getelementptr i8, ptr %sd, i32 528
  %14 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_mode, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %format1, align 4
  %19 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.hi846_mode, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %height8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height8, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi846_get_format.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi846_get_format, %if.then13)) #8
          to label %cleanup [label %if.then13], !srcloc !288

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format1, align 4
  %25 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height8, align 4
  %27 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %code, align 4
  %29 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi846_get_format.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12302, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 12302
  br i1 %cmp2.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12302, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %colorspace, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %10 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %9, %conv.i
  br i1 %cmp.not.i, label %if.then5.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !289

if.then5.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then5.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %9, %if.then5.v4l2_subdev_get_try_format.exit_crit_edge ]
  %12 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %13, i32 %spec.select.i
  %14 = call ptr @memcpy(ptr %arrayidx.i, ptr %format1, i32 48)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %nr_lanes = getelementptr i8, ptr %sd, i32 412
  %15 = ptrtoint ptr %nr_lanes to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp8 = icmp eq i8 %16, 2
  %cur_mode = getelementptr i8, ptr %sd, i32 528
  %17 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_mode, align 4
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %reg_list_2lane = getelementptr inbounds %struct.hi846_mode, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %reg_list_2lane to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_list_2lane, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not = icmp eq i32 %20, 0
  br i1 %tobool11.not, label %do.end, label %if.then10.if.end23_crit_edge

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #11
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %reg_list_4lane = getelementptr inbounds %struct.hi846_mode, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %reg_list_4lane to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_list_4lane, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not = icmp eq i32 %22, 0
  br i1 %tobool16.not, label %do.end20, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.86) #11
  br label %cleanup

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.then10.if.end23_crit_edge
  %mutex = getelementptr i8, ptr %sd, i32 436
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streaming = getelementptr i8, ptr %sd, i32 532
  %23 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %streaming, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool24.not = icmp eq i8 %24, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %fmt28 = getelementptr i8, ptr %sd, i32 -4
  %25 = ptrtoint ptr %fmt28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hi846_colour_fmts, ptr %fmt28, align 4
  %26 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %call32 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 3, i32 noundef 60, i32 noundef 0, i32 noundef 4, i32 noundef %27, i32 noundef %29) #8
  %cur_mode33 = getelementptr i8, ptr %sd, i32 528
  %30 = ptrtoint ptr %cur_mode33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call32, ptr %cur_mode33, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi846_set_format.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi846_set_format, %if.then40)) #8
          to label %do.end48 [label %if.then40], !srcloc !288

if.then40:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %cur_mode33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_mode33, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %height45 = getelementptr inbounds %struct.hi846_mode, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %height45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi846_set_format.__UNIQUE_ID_ddebug297, ptr noundef %dev41, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.84, i32 noundef %34, i32 noundef %36) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then40, %if.end27
  %37 = ptrtoint ptr %cur_mode33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur_mode33, align 4
  %fps = getelementptr inbounds %struct.hi846_mode, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %fps to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fps, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi846_set_format.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi846_set_format, %if.then63)) #8
          to label %do.end67 [label %if.then63], !srcloc !288

if.then63:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %conv50 = zext i16 %40 to i32
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi846_set_format.__UNIQUE_ID_ddebug298, ptr noundef %dev64, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.84, i32 noundef %conv50) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.end48
  %41 = ptrtoint ptr %cur_mode33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur_mode33, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %format1, align 4
  %46 = load ptr, ptr %cur_mode33, align 4
  %height72 = getelementptr inbounds %struct.hi846_mode, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %height72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height72, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %height, align 4
  %50 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 12302, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %field, align 4
  %link_freq = getelementptr i8, ptr %sd, i32 416
  %52 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %link_freq, align 4
  %54 = load ptr, ptr %cur_mode33, align 4
  %link_freq_index.i = getelementptr inbounds %struct.hi846_mode, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %link_freq_index.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %link_freq_index.i, align 4
  %conv76 = zext i8 %56 to i32
  %call77 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %53, i32 noundef %conv76) #8
  %pixel_rate = getelementptr i8, ptr %sd, i32 420
  %57 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pixel_rate, align 4
  %59 = ptrtoint ptr %cur_mode33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur_mode33, align 4
  %link_freq_index.i.i.i = getelementptr inbounds %struct.hi846_mode, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %link_freq_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %link_freq_index.i.i.i, align 4
  %idxprom.i.i = zext i8 %62 to i32
  %arrayidx.i.i = getelementptr [2 x i64], ptr @hi846_link_freqs, i32 0, i32 %idxprom.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx.i.i, align 8
  %mul.i = shl i64 %64, 1
  %65 = ptrtoint ptr %nr_lanes to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nr_lanes, align 4
  %conv.i194 = zext i8 %66 to i64
  %mul1.i = mul i64 %mul.i, %conv.i194
  %div84265.i = lshr exact i64 %mul1.i, 1
  %67 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div84265.i, i64 3689348814741910323) #12, !srcloc !282
  %68 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div84265.i, i64 %67) #12, !srcloc !283
  %call79 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %58, i64 noundef %68) #8
  %69 = ptrtoint ptr %cur_mode33 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur_mode33, align 4
  %frame_len = getelementptr inbounds %struct.hi846_mode, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %frame_len to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %frame_len, align 4
  %conv81 = zext i16 %72 to i32
  %height83 = getelementptr inbounds %struct.hi846_mode, ptr %70, i32 0, i32 1
  %73 = ptrtoint ptr %height83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %height83, align 4
  %sub = sub i32 %conv81, %74
  %vblank = getelementptr i8, ptr %sd, i32 424
  %75 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vblank, align 4
  %conv90 = zext i32 %sub to i64
  %sub93 = sub i32 65535, %74
  %conv94 = zext i32 %sub93 to i64
  %conv95 = sext i32 %sub to i64
  %call96 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %76, i64 noundef %conv90, i64 noundef %conv94, i64 noundef 1, i64 noundef %conv95) #8
  %77 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vblank, align 4
  %call98 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %78, i32 noundef %sub) #8
  %79 = ptrtoint ptr %cur_mode33 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur_mode33, align 4
  %llp = getelementptr inbounds %struct.hi846_mode, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %llp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %llp, align 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %80, align 4
  %sub102 = sub i32 %82, %84
  %hblank = getelementptr i8, ptr %sd, i32 428
  %85 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hblank, align 4
  %conv103 = sext i32 %sub102 to i64
  %call106 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %86, i64 noundef %conv103, i64 noundef %conv103, i64 noundef 1, i64 noundef %conv103) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi846_set_format.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi846_set_format, %if.then119)) #8
          to label %do.end127 [label %if.then119], !srcloc !288

if.then119:                                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  %dev120 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %87 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %format1, align 4
  %89 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi846_set_format.__UNIQUE_ID_ddebug299, ptr noundef %dev120, ptr noundef nonnull @.str.90, i32 noundef %88, i32 noundef %90, i32 noundef 12302, i32 noundef 11) #8
  br label %do.end127

do.end127:                                        ; preds = %if.then119, %do.end67
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end127, %if.then25, %do.end20, %do.end, %v4l2_subdev_get_try_format.exit
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ -16, %if.then25 ], [ 0, %do.end127 ], [ -22, %do.end ], [ -22, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_get_selection(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge20
    i32 2, label %entry.sw.bb5_crit_edge
    i32 3, label %entry.sw.bb5_crit_edge21
  ]

entry.sw.bb5_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge20
  %mutex = getelementptr i8, ptr %sd, i32 436
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %3 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %4, label %sw.bb.sw.epilog_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb3
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %sw.bb
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %7, %conv.i
  br i1 %cmp.not.i, label %sw.bb1.sw.epilog_crit_edge, label %do.end.i, !prof !289

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %cur_mode = getelementptr i8, ptr %sd, i32 528
  %10 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_mode, align 4
  %crop = getelementptr inbounds %struct.hi846_mode, ptr %11, i32 0, i32 9
  %12 = call ptr @memcpy(ptr %r, ptr %crop, i32 16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %do.end.i, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge21
  %r6 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %top, align 4
  %14 = ptrtoint ptr %r6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %r6, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3264, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2448, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_device_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i27.i = alloca [3 x i8], align 1
  %msg.i28.i = alloca [1 x %struct.i2c_msg], align 4
  %buf.i18.i = alloca [3 x i8], align 1
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [1 x i8], align 1
  %buf.i99 = alloca [4 x i8], align 2
  %buf.i90 = alloca [4 x i8], align 2
  %buf.i86 = alloca [4 x i8], align 2
  %buf.i25.i = alloca [4 x i8], align 2
  %buf.i16.i = alloca [4 x i8], align 2
  %buf.i7.i = alloca [4 x i8], align 2
  %buf.i.i = alloca [4 x i8], align 2
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -76
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10356993, i32 %5)
  %cmp = icmp eq i32 %5, 10356993
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.hi846_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -2
  %sub = add i32 %add, %11
  %conv = zext i32 %sub to i64
  %exposure = getelementptr i8, ptr %1, i32 204
  %12 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %minimum, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 18
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %call3 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %13, i64 noundef %15, i64 noundef %conv, i64 noundef %18, i64 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %20, label %if.end6.sw.epilog_crit_edge [
    i32 10356995, label %sw.bb
    i32 10422533, label %sw.bb11
    i32 9963793, label %if.end.i
    i32 10356993, label %if.end.i104
    i32 10422531, label %sw.bb46
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val8, align 4
  %conv9 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #8
  %26 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %27 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %buf.i, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 119, ptr %26, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv9, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %31 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 262143, ptr %31, align 4
  %addr6.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr6.i, align 2
  %35 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i, align 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %37 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %38 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i, align 8
  %call9.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp.not.i = icmp eq i32 %call9.i, 1
  br i1 %cmp.not.i, label %sw.bb.hi846_write_reg.exit_crit_edge, label %do.end.i

sw.bb.hi846_write_reg.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_write_reg.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6) #11
  br label %hi846_write_reg.exit

hi846_write_reg.exit:                             ; preds = %do.end.i, %sw.bb.hi846_write_reg.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %sw.bb.hi846_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end6
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %40 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val12, align 4
  %conv13 = trunc i32 %41 to i16
  %42 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %44 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 120, ptr %buf.i.i, align 2
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv13, ptr %44, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp4.not.i.i, label %if.end.i12.i, label %hi846_write_reg_16.exit.thread.i

hi846_write_reg_16.exit.thread.i:                 ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i7.i) #8
  br label %hi846_write_reg_16.exit15.thread.i

if.end.i12.i:                                     ; preds = %sw.bb11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  %47 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i7.i) #8
  %49 = getelementptr inbounds [4 x i8], ptr %buf.i7.i, i32 0, i32 2
  %50 = ptrtoint ptr %buf.i7.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 122, ptr %buf.i7.i, align 2
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv13, ptr %49, align 2
  %call.i.i10.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buf.i7.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i10.i)
  %cmp4.not.i11.i = icmp eq i32 %call.i.i10.i, 4
  br i1 %cmp4.not.i11.i, label %if.end.i21.i, label %do.end.i14.i

do.end.i14.i:                                     ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i13.i = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i13.i, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i10.i) #11
  br label %hi846_write_reg_16.exit15.thread.i

hi846_write_reg_16.exit15.thread.i:               ; preds = %do.end.i14.i, %hi846_write_reg_16.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i7.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i16.i) #8
  br label %hi846_write_reg_16.exit24.thread.i

if.end.i21.i:                                     ; preds = %if.end.i12.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i7.i) #8
  %52 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i16.i) #8
  %54 = getelementptr inbounds [4 x i8], ptr %buf.i16.i, i32 0, i32 2
  %55 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 124, ptr %buf.i16.i, align 2
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv13, ptr %54, align 2
  %call.i.i19.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %53, ptr noundef nonnull %buf.i16.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i19.i)
  %cmp4.not.i20.i = icmp eq i32 %call.i.i19.i, 4
  br i1 %cmp4.not.i20.i, label %if.end.i30.i, label %do.end.i23.i

do.end.i23.i:                                     ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i22.i = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i19.i) #11
  br label %hi846_write_reg_16.exit24.thread.i

hi846_write_reg_16.exit24.thread.i:               ; preds = %do.end.i23.i, %hi846_write_reg_16.exit15.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i16.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i25.i) #8
  br label %hi846_update_digital_gain.exit

if.end.i30.i:                                     ; preds = %if.end.i21.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i16.i) #8
  %57 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i25.i) #8
  %59 = getelementptr inbounds [4 x i8], ptr %buf.i25.i, i32 0, i32 2
  %60 = ptrtoint ptr %buf.i25.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 126, ptr %buf.i25.i, align 2
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv13, ptr %59, align 2
  %call.i.i28.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %58, ptr noundef nonnull %buf.i25.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i28.i)
  %cmp4.not.i29.i = icmp eq i32 %call.i.i28.i, 4
  br i1 %cmp4.not.i29.i, label %if.end.i30.i.hi846_update_digital_gain.exit_crit_edge, label %do.end.i32.i

if.end.i30.i.hi846_update_digital_gain.exit_crit_edge: ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_update_digital_gain.exit

do.end.i32.i:                                     ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i31.i = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i31.i, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i28.i) #11
  br label %hi846_update_digital_gain.exit

hi846_update_digital_gain.exit:                   ; preds = %do.end.i32.i, %if.end.i30.i.hi846_update_digital_gain.exit_crit_edge, %hi846_write_reg_16.exit24.thread.i
  %ret.3.i = phi i32 [ 0, %if.end.i30.i.hi846_update_digital_gain.exit_crit_edge ], [ -5, %do.end.i32.i ], [ -5, %hi846_write_reg_16.exit24.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i25.i) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end6
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %62 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val16, align 4
  %cur_mode17 = getelementptr i8, ptr %1, i32 300
  %64 = ptrtoint ptr %cur_mode17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_mode17, align 4
  %frame_len18 = getelementptr inbounds %struct.hi846_mode, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %frame_len18 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %frame_len18, align 4
  %conv19 = zext i16 %67 to i32
  %sub20 = add nsw i32 %conv19, -6
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %sub20)
  %cmp21 = icmp ugt i32 %63, %sub20
  %add24 = add i32 %63, 6
  %68 = tail call i32 @llvm.umin.i32(i32 %add24, i32 65535)
  %frame_len.0 = select i1 %cmp21, i32 %68, i32 %conv19
  %conv38 = trunc i32 %frame_len.0 to i16
  %69 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i86) #8
  %71 = getelementptr inbounds [4 x i8], ptr %buf.i86, i32 0, i32 2
  %72 = ptrtoint ptr %buf.i86 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 6, ptr %buf.i86, align 2
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv38, ptr %71, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %70, ptr noundef nonnull %buf.i86, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp4.not.i, label %if.end.i95, label %hi846_write_reg_16.exit.thread

hi846_write_reg_16.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i88 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i88, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i86) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i90) #8
  br label %hi846_write_reg_16.exit98

if.end.i95:                                       ; preds = %if.end.i
  %74 = call i32 @llvm.umax.i32(i32 %63, i32 6)
  %75 = call i32 @llvm.umin.i32(i32 %74, i32 65529)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i86) #8
  %conv39 = trunc i32 %75 to i16
  %76 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i90) #8
  %78 = getelementptr inbounds [4 x i8], ptr %buf.i90, i32 0, i32 2
  %79 = ptrtoint ptr %buf.i90 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 116, ptr %buf.i90, align 2
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv39, ptr %78, align 2
  %call.i.i93 = call i32 @i2c_transfer_buffer_flags(ptr noundef %77, ptr noundef nonnull %buf.i90, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i93)
  %cmp4.not.i94 = icmp eq i32 %call.i.i93, 4
  br i1 %cmp4.not.i94, label %if.end.i95.hi846_write_reg_16.exit98_crit_edge, label %do.end.i97

if.end.i95.hi846_write_reg_16.exit98_crit_edge:   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_write_reg_16.exit98

do.end.i97:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i96 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i96, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i93) #11
  br label %hi846_write_reg_16.exit98

hi846_write_reg_16.exit98:                        ; preds = %do.end.i97, %if.end.i95.hi846_write_reg_16.exit98_crit_edge, %hi846_write_reg_16.exit.thread
  %ret.1 = phi i32 [ 0, %if.end.i95.hi846_write_reg_16.exit98_crit_edge ], [ -5, %do.end.i97 ], [ -5, %hi846_write_reg_16.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i90) #8
  br label %sw.epilog

if.end.i104:                                      ; preds = %if.end6
  %cur_mode41 = getelementptr i8, ptr %1, i32 300
  %81 = ptrtoint ptr %cur_mode41 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur_mode41, align 4
  %height42 = getelementptr inbounds %struct.hi846_mode, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height42, align 4
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %85 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val43, align 4
  %add44 = add i32 %86, %84
  %conv45 = trunc i32 %add44 to i16
  %87 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i99) #8
  %89 = getelementptr inbounds [4 x i8], ptr %buf.i99, i32 0, i32 2
  %90 = ptrtoint ptr %buf.i99 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 6, ptr %buf.i99, align 2
  %91 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv45, ptr %89, align 2
  %call.i.i102 = call i32 @i2c_transfer_buffer_flags(ptr noundef %88, ptr noundef nonnull %buf.i99, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i102)
  %cmp4.not.i103 = icmp eq i32 %call.i.i102, 4
  br i1 %cmp4.not.i103, label %if.end.i104.hi846_write_reg_16.exit107_crit_edge, label %do.end.i106

if.end.i104.hi846_write_reg_16.exit107_crit_edge: ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_write_reg_16.exit107

do.end.i106:                                      ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i105 = getelementptr inbounds %struct.i2c_client, ptr %88, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i105, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.i102) #11
  br label %hi846_write_reg_16.exit107

hi846_write_reg_16.exit107:                       ; preds = %do.end.i106, %if.end.i104.hi846_write_reg_16.exit107_crit_edge
  %ret.2 = phi i32 [ 0, %if.end.i104.hi846_write_reg_16.exit107_crit_edge ], [ -5, %do.end.i106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i99) #8
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end6
  %val47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %92 = ptrtoint ptr %val47 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i, label %sw.bb46.if.end8.i_crit_edge, label %if.then.i

sw.bb46.if.end8.i_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i:                                        ; preds = %sw.bb46
  %94 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %96 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %97 = call ptr @memset(ptr %96, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data_buf.i.i) #8
  %98 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %data_buf.i.i, align 1
  %99 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 2565, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 1
  %100 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %addr.i.i, align 2
  %102 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %flags.i.i, align 2
  %104 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 2, ptr %96, align 4
  %buf.i.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %buf.i.i109 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %addr_buf.i.i, ptr %buf.i.i109, align 4
  %106 = load i16, ptr %addr.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %109 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 1, ptr %len12.i.i, align 4
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %110 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %data_buf.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 3
  %111 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %adapter.i.i, align 8
  %call17.i.i = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17.i.i)
  %cmp.not.i.i = icmp eq i32 %call17.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i111, label %hi846_read_reg.exit.i

hi846_read_reg.exit.i:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i110 = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i110, ptr noundef nonnull @.str.75, i32 noundef %call17.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  br label %sw.epilog

if.end.i111:                                      ; preds = %if.then.i
  %113 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %data_buf.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %115 = or i8 %114, 1
  %116 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i18.i) #8
  %118 = getelementptr inbounds [3 x i8], ptr %buf.i18.i, i32 0, i32 1
  %119 = getelementptr inbounds [3 x i8], ptr %buf.i18.i, i32 0, i32 2
  %120 = ptrtoint ptr %buf.i18.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 10, ptr %buf.i18.i, align 1
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 5, ptr %118, align 1
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %115, ptr %119, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %123 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 262143, ptr %123, align 4
  %addr6.i.i = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 1
  %125 = ptrtoint ptr %addr6.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %addr6.i.i, align 2
  %127 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %msg.i.i, align 4
  %flags.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %flags.i20.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %flags.i20.i, align 2
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %129 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %buf.i18.i, ptr %buf7.i.i, align 4
  %adapter.i22.i = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 3
  %130 = ptrtoint ptr %adapter.i22.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %adapter.i22.i, align 8
  %call9.i.i = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp.not.i23.i = icmp eq i32 %call9.i.i, 1
  br i1 %cmp.not.i23.i, label %hi846_write_reg.exit.thread.i, label %hi846_write_reg.exit.i

hi846_write_reg.exit.thread.i:                    ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i18.i) #8
  br label %if.end8.i

hi846_write_reg.exit.i:                           ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i24.i = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i24.i, ptr noundef nonnull @.str.6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i18.i) #8
  br label %sw.epilog

if.end8.i:                                        ; preds = %hi846_write_reg.exit.thread.i, %sw.bb46.if.end8.i_crit_edge
  %conv9.i = trunc i32 %93 to i8
  %132 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i27.i) #8
  %134 = getelementptr inbounds [3 x i8], ptr %buf.i27.i, i32 0, i32 1
  %135 = getelementptr inbounds [3 x i8], ptr %buf.i27.i, i32 0, i32 2
  %136 = ptrtoint ptr %buf.i27.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 2, ptr %buf.i27.i, align 1
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 10, ptr %134, align 1
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv9.i, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i28.i) #8
  %139 = getelementptr inbounds i8, ptr %msg.i28.i, i32 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 262143, ptr %139, align 4
  %addr6.i30.i = getelementptr inbounds %struct.i2c_client, ptr %133, i32 0, i32 1
  %141 = ptrtoint ptr %addr6.i30.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %addr6.i30.i, align 2
  %143 = ptrtoint ptr %msg.i28.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %msg.i28.i, align 4
  %flags.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28.i, i32 0, i32 1
  %144 = ptrtoint ptr %flags.i31.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %flags.i31.i, align 2
  %buf7.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28.i, i32 0, i32 3
  %145 = ptrtoint ptr %buf7.i33.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %buf.i27.i, ptr %buf7.i33.i, align 4
  %adapter.i34.i = getelementptr inbounds %struct.i2c_client, ptr %133, i32 0, i32 3
  %146 = ptrtoint ptr %adapter.i34.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %adapter.i34.i, align 8
  %call9.i35.i = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %msg.i28.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i35.i)
  %cmp.not.i36.i = icmp eq i32 %call9.i35.i, 1
  br i1 %cmp.not.i36.i, label %if.end8.i.hi846_write_reg.exit40.i_crit_edge, label %do.end.i38.i

if.end8.i.hi846_write_reg.exit40.i_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi846_write_reg.exit40.i

do.end.i38.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i37.i = getelementptr inbounds %struct.i2c_client, ptr %133, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i37.i, ptr noundef nonnull @.str.6) #11
  br label %hi846_write_reg.exit40.i

hi846_write_reg.exit40.i:                         ; preds = %do.end.i38.i, %if.end8.i.hi846_write_reg.exit40.i_crit_edge
  %retval.0.i39.i = phi i32 [ -5, %do.end.i38.i ], [ 0, %if.end8.i.hi846_write_reg.exit40.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i28.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i27.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %hi846_write_reg.exit40.i, %hi846_write_reg.exit.i, %hi846_read_reg.exit.i, %hi846_write_reg_16.exit107, %hi846_write_reg_16.exit98, %hi846_update_digital_gain.exit, %hi846_write_reg.exit, %if.end6.sw.epilog_crit_edge
  %ret.3 = phi i32 [ %ret.2, %hi846_write_reg_16.exit107 ], [ %ret.1, %hi846_write_reg_16.exit98 ], [ %ret.3.i, %hi846_update_digital_gain.exit ], [ %retval.0.i, %hi846_write_reg.exit ], [ %retval.0.i39.i, %hi846_write_reg.exit40.i ], [ -5, %hi846_read_reg.exit.i ], [ -5, %hi846_write_reg.exit.i ], [ -22, %if.end6.sw.epilog_crit_edge ]
  %call.i113 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi846_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -52
  %call2 = tail call fastcc i32 @hi846_power_on(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming = getelementptr i8, ptr %1, i32 532
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @hi846_start_streaming(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef %call5) #11
  %call10 = tail call fastcc i32 @hi846_power_off(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

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

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !135, !136, !137, !139, !140, !141, !142, !144, !146, !148, !150, !152, !153, !154, !156, !157, !159, !160, !161, !162, !164, !166, !168, !169, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !195, !196, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !234, !235, !236, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !270, !271}
!llvm.module.flags = !{!272, !273, !274, !275, !276, !277, !278, !279}
!llvm.ident = !{!280}

!0 = !{ptr @__initcall__kmod_hi846__302_2187_hi846_i2c_driver_init6, !1, !"__initcall__kmod_hi846__302_2187_hi846_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/hi846.c", i32 2187, i32 1}
!2 = !{ptr @__exitcall_hi846_i2c_driver_exit, !1, !"__exitcall_hi846_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/hi846.c", i32 2189, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/hi846.c", i32 2190, i32 1}
!7 = !{ptr @__UNIQUE_ID_description305, !8, !"__UNIQUE_ID_description305", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/hi846.c", i32 2191, i32 1}
!9 = !{ptr @__UNIQUE_ID_file306, !10, !"__UNIQUE_ID_file306", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/hi846.c", i32 2192, i32 1}
!11 = !{ptr @__UNIQUE_ID_license307, !10, !"__UNIQUE_ID_license307", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/hi846.c", i32 2179, i32 11}
!14 = !{ptr @hi846_i2c_driver, !15, !"hi846_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/hi846.c", i32 2177, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/hi846.c", i32 1593, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hi846_stop_streaming._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hi846_stop_streaming._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/hi846.c", i32 1258, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @hi846_write_reg._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @hi846_write_reg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/hi846.c", i32 2062, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @hi846_probe._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @hi846_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/hi846.c", i32 2069, i32 3}
!36 = !{ptr @hi846_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @hi846_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/hi846.c", i32 2076, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hi846_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @hi846_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @hi846_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/hi846.c", i32 2090, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/hi846.c", i32 2104, i32 3}
!48 = !{ptr @hi846_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hi846_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/hi846.c", i32 2114, i32 3}
!52 = !{ptr @hi846_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hi846_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/hi846.c", i32 2120, i32 3}
!56 = !{ptr @hi846_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hi846_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/hi846.c", i32 1996, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hi846_parse_dt._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @hi846_parse_dt._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/hi846.c", i32 2003, i32 3}
!65 = !{ptr @hi846_parse_dt._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @hi846_parse_dt._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/hi846.c", i32 2009, i32 3}
!69 = !{ptr @hi846_parse_dt._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @hi846_parse_dt._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/hi846.c", i32 2018, i32 3}
!73 = !{ptr @hi846_parse_dt._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @hi846_parse_dt._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/hi846.c", i32 2025, i32 3}
!77 = !{ptr @hi846_parse_dt._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @hi846_parse_dt._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/hi846.c", i32 2031, i32 49}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/hi846.c", i32 2033, i32 3}
!83 = !{ptr @hi846_parse_dt._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @hi846_parse_dt._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/hi846.c", i32 2038, i32 54}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/hi846.c", i32 2041, i32 3}
!89 = !{ptr @hi846_parse_dt._entry.46, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @hi846_parse_dt._entry_ptr.48, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @hi846_link_freqs, !92, !"hi846_link_freqs", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/hi846.c", i32 1045, i32 18}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/hi846.c", i32 1146, i32 2}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/hi846.c", i32 1147, i32 2}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/hi846.c", i32 1148, i32 2}
!99 = distinct !{null, !100, !"hi846_supply_names", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/hi846.c", i32 1145, i32 27}
!101 = !{ptr @hi846_subdev_ops, !102, !"hi846_subdev_ops", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/hi846.c", i32 1927, i32 37}
!103 = !{ptr @hi846_video_ops, !104, !"hi846_video_ops", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/hi846.c", i32 1914, i32 43}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/hi846.c", i32 1533, i32 3}
!107 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @hi846_start_streaming._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @hi846_start_streaming._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/hi846.c", i32 1539, i32 3}
!112 = !{ptr @hi846_start_streaming._entry.54, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @hi846_start_streaming._entry_ptr.56, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/hi846.c", i32 1550, i32 3}
!116 = !{ptr @hi846_start_streaming._entry.57, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @hi846_start_streaming._entry_ptr.59, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/hi846.c", i32 1572, i32 3}
!120 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @hi846_start_streaming._entry.60, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @hi846_start_streaming._entry_ptr.63, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/hi846.c", i32 1577, i32 3}
!125 = !{ptr @hi846_start_streaming._entry.64, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @hi846_start_streaming._entry_ptr.66, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/hi846.c", i32 1583, i32 2}
!129 = !{ptr @hi846_start_streaming.__UNIQUE_ID_ddebug295, !128, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/hi846.c", i32 1295, i32 4}
!132 = !{ptr @hi846_write_reg_list._rs, !131, !"_rs", i1 false, i1 false}
!133 = !{ptr @__func__.hi846_write_reg_list, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @hi846_write_reg_list._entry, !131, !"_entry", i1 false, i1 false}
!136 = !{ptr @hi846_write_reg_list._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/hi846.c", i32 1278, i32 3}
!139 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @hi846_write_reg_16._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @hi846_write_reg_16._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @hi846_init_regs_list_2lane, !143, !"hi846_init_regs_list_2lane", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/hi846.c", i32 1050, i32 36}
!144 = !{ptr @hi846_init_2lane, !145, !"hi846_init_2lane", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/hi846.c", i32 238, i32 31}
!146 = !{ptr @hi846_init_regs_list_4lane, !147, !"hi846_init_regs_list_4lane", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/hi846.c", i32 1055, i32 36}
!148 = !{ptr @hi846_init_4lane, !149, !"hi846_init_4lane", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/hi846.c", i32 455, i32 31}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/hi846.c", i32 1500, i32 2}
!152 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @hi846_set_video_mode.__UNIQUE_ID_ddebug293, !151, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/hi846.c", i32 1512, i32 2}
!156 = !{ptr @hi846_set_video_mode.__UNIQUE_ID_ddebug294, !155, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/hi846.c", i32 1237, i32 3}
!159 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @hi846_read_reg._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @hi846_read_reg._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @hi846_pad_ops, !163, !"hi846_pad_ops", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/hi846.c", i32 1918, i32 41}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/hi846.c", i32 1848, i32 3}
!168 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @hi846_enum_frame_size._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @hi846_enum_frame_size._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/i2c/hi846.c", i32 1857, i32 2}
!173 = !{ptr @hi846_enum_frame_size.__UNIQUE_ID_ddebug301, !172, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/hi846.c", i32 1819, i32 2}
!176 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @hi846_get_format.__UNIQUE_ID_ddebug300, !175, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/hi846.c", i32 1734, i32 4}
!180 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @hi846_set_format._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @hi846_set_format._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/i2c/hi846.c", i32 1740, i32 4}
!185 = !{ptr @hi846_set_format._entry.85, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @hi846_set_format._entry_ptr.87, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/i2c/hi846.c", i32 1759, i32 2}
!189 = !{ptr @hi846_set_format.__UNIQUE_ID_ddebug297, !188, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/i2c/hi846.c", i32 1763, i32 2}
!192 = !{ptr @hi846_set_format.__UNIQUE_ID_ddebug298, !191, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/i2c/hi846.c", i32 1788, i32 2}
!195 = !{ptr @hi846_set_format.__UNIQUE_ID_ddebug299, !194, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!196 = !{ptr @hi846_colour_fmts, !197, !"hi846_colour_fmts", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/hi846.c", i32 1180, i32 35}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/hi846.c", i32 1947, i32 3}
!200 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @hi846_identify_module._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @hi846_identify_module._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/i2c/hi846.c", i32 1956, i32 3}
!205 = !{ptr @hi846_identify_module._entry.93, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @hi846_identify_module._entry_ptr.95, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/i2c/hi846.c", i32 1960, i32 2}
!209 = !{ptr @hi846_identify_module._entry.96, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @hi846_identify_module._entry_ptr.98, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @supported_modes, !212, !"supported_modes", i1 false, i1 false}
!212 = !{!"../drivers/media/i2c/hi846.c", i32 1060, i32 32}
!213 = !{ptr @mode_640x480_config, !214, !"mode_640x480_config", i1 false, i1 false}
!214 = !{!"../drivers/media/i2c/hi846.c", i32 842, i32 31}
!215 = !{ptr @mode_640x480_mipi_2lane, !216, !"mode_640x480_mipi_2lane", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/hi846.c", i32 872, i32 31}
!217 = !{ptr @mode_1280x720_config, !218, !"mode_1280x720_config", i1 false, i1 false}
!218 = !{!"../drivers/media/i2c/hi846.c", i32 891, i32 31}
!219 = !{ptr @mode_1280x720_mipi_2lane, !220, !"mode_1280x720_mipi_2lane", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/hi846.c", i32 922, i32 31}
!221 = !{ptr @mode_1280x720_mipi_4lane, !222, !"mode_1280x720_mipi_4lane", i1 false, i1 false}
!222 = !{!"../drivers/media/i2c/hi846.c", i32 941, i32 31}
!223 = !{ptr @mode_1632x1224_config, !224, !"mode_1632x1224_config", i1 false, i1 false}
!224 = !{!"../drivers/media/i2c/hi846.c", i32 961, i32 31}
!225 = !{ptr @mode_1632x1224_mipi_2lane, !226, !"mode_1632x1224_mipi_2lane", i1 false, i1 false}
!226 = !{!"../drivers/media/i2c/hi846.c", i32 992, i32 31}
!227 = !{ptr @mode_1632x1224_mipi_4lane, !228, !"mode_1632x1224_mipi_4lane", i1 false, i1 false}
!228 = !{!"../drivers/media/i2c/hi846.c", i32 1011, i32 31}
!229 = !{ptr @hi846_init_controls._key, !230, !"_key", i1 false, i1 false}
!230 = !{!"../drivers/media/i2c/hi846.c", i32 1420, i32 8}
!231 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/i2c/hi846.c", i32 1473, i32 3}
!234 = !{ptr @.str.101, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @hi846_init_controls._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @hi846_init_controls._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @hi846_ctrl_ops, !238, !"hi846_ctrl_ops", i1 false, i1 false}
!238 = !{!"../drivers/media/i2c/hi846.c", i32 1407, i32 35}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/i2c/hi846.c", i32 1031, i32 2}
!241 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/i2c/hi846.c", i32 1032, i32 2}
!243 = !{ptr @.str.104, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/i2c/hi846.c", i32 1033, i32 2}
!245 = !{ptr @.str.105, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/i2c/hi846.c", i32 1034, i32 2}
!247 = !{ptr @.str.106, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/i2c/hi846.c", i32 1035, i32 2}
!249 = !{ptr @.str.107, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/i2c/hi846.c", i32 1036, i32 2}
!251 = !{ptr @.str.108, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/i2c/hi846.c", i32 1037, i32 2}
!253 = !{ptr @.str.109, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/i2c/hi846.c", i32 1038, i32 2}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/i2c/hi846.c", i32 1039, i32 2}
!257 = !{ptr @.str.111, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/i2c/hi846.c", i32 1040, i32 2}
!259 = !{ptr @hi846_test_pattern_menu, !260, !"hi846_test_pattern_menu", i1 false, i1 false}
!260 = !{!"../drivers/media/i2c/hi846.c", i32 1030, i32 27}
!261 = !{ptr @hi846_subdev_entity_ops, !262, !"hi846_subdev_entity_ops", i1 false, i1 false}
!262 = !{!"../drivers/media/i2c/hi846.c", i32 1932, i32 45}
!263 = !{ptr @hi846_of_match, !264, !"hi846_of_match", i1 false, i1 false}
!264 = !{!"../drivers/media/i2c/hi846.c", i32 2171, i32 34}
!265 = !{ptr @hi846_pm_ops, !266, !"hi846_pm_ops", i1 false, i1 false}
!266 = !{!"../drivers/media/i2c/hi846.c", i32 2165, i32 32}
!267 = !{ptr @.str.112, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/i2c/hi846.c", i32 1697, i32 4}
!269 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @hi846_resume._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @hi846_resume._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{i32 1, !"wchar_size", i32 2}
!273 = !{i32 1, !"min_enum_size", i32 4}
!274 = !{i32 8, !"branch-target-enforcement", i32 0}
!275 = !{i32 8, !"sign-return-address", i32 0}
!276 = !{i32 8, !"sign-return-address-all", i32 0}
!277 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!278 = !{i32 7, !"uwtable", i32 1}
!279 = !{i32 7, !"frame-pointer", i32 2}
!280 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!281 = !{!"auto-init"}
!282 = !{i64 1209390, i64 1209417}
!283 = !{i64 1209730, i64 1209757, i64 1209791, i64 1209812}
!284 = !{i8 0, i8 2}
!285 = !{i64 2148335327}
!286 = !{i64 820150, i64 820175, i64 820197, i64 820213, i64 820225, i64 820245, i64 820269, i64 820285, i64 820297}
!287 = !{i64 2148335515}
!288 = !{i64 2148786332, i64 2148786337, i64 2148786350, i64 2148786394, i64 2148786428, i64 2148786449}
!289 = !{!"branch_weights", i32 2000, i32 1}
!290 = !{i64 2148695051, i64 2148695331, i64 2148695665, i64 2148695999}
!291 = !{i64 1209507, i64 1209534, i64 1209556, i64 1209584}
!292 = !{i64 1209915, i64 1209942, i64 1209975, i64 1209996, i64 1210023, i64 1210049}
!293 = !{!"branch_weights", i32 1, i32 2000}
