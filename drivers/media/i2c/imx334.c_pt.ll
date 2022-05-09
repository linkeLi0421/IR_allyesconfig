; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/imx334.c_pt.bc'
source_filename = "../drivers/media/i2c/imx334.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.imx334_mode = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.imx334_reg_list }
%struct.imx334_reg_list = type { i32, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx334_reg = type { i16, i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.103, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.103 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.imx334 = type { ptr, ptr, %struct.v4l2_subdev, %struct.media_pad, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.100, i32, ptr, %struct.mutex, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@__initcall__kmod_imx334__296_1130_imx334_driver_init6 = internal global ptr @imx334_driver_init, section ".initcall6.init", align 4
@imx334_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @imx334_remove, ptr @imx334_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx334_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx334_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_imx334_driver_exit = internal global ptr @imx334_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [45 x i8] c"imx334.description=Sony imx334 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [37 x i8] c"imx334.file=drivers/media/i2c/imx334\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [19 x i8] c"imx334.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx334\00", [25 x i8] zeroinitializer }, align 32
@imx334_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,imx334\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx334_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx334_power_off, ptr @imx334_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx334_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @imx334_video_ops, ptr null, ptr null, ptr null, ptr @imx334_pad_ops }, [32 x i8] zeroinitializer }, align 32
@imx334_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1020, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HW configuration is not supported\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx334_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/imx334.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx334_probe._entry_ptr = internal global ptr @imx334_probe._entry, section ".printk_index", align 4
@imx334_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&imx334->mutex\00", [17 x i8] zeroinitializer }, align 32
@imx334_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1028, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to power-on the sensor\00", [34 x i8] zeroinitializer }, align 32
@imx334_probe._entry_ptr.9 = internal global ptr @imx334_probe._entry.7, section ".printk_index", align 4
@imx334_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1035, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find sensor: %d\00", [38 x i8] zeroinitializer }, align 32
@imx334_probe._entry_ptr.12 = internal global ptr @imx334_probe._entry.10, section ".printk_index", align 4
@supported_mode = internal constant { %struct.imx334_mode, [40 x i8] } { %struct.imx334_mode { i32 3840, i32 2160, i32 12306, i32 560, i32 2340, i32 90, i32 132840, i64 594000000, i32 0, %struct.imx334_reg_list { i32 92, ptr @mode_3840x2160_regs } }, [40 x i8] zeroinitializer }, align 32
@imx334_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@imx334_probe._entry_ptr.15 = internal global ptr @imx334_probe._entry.13, section ".printk_index", align 4
@imx334_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1057, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init entity pads: %d\00", [33 x i8] zeroinitializer }, align 32
@imx334_probe._entry_ptr.18 = internal global ptr @imx334_probe._entry.16, section ".printk_index", align 4
@imx334_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1064, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register async subdev: %d\00", [60 x i8] zeroinitializer }, align 32
@imx334_probe._entry_ptr.21 = internal global ptr @imx334_probe._entry.19, section ".printk_index", align 4
@imx334_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx334_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx334_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx334_init_pad_cfg, ptr @imx334_enum_mbus_code, ptr @imx334_enum_frame_size, ptr null, ptr @imx334_get_pad_format, ptr @imx334_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx334_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fail to write initial registers\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx334_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@imx334_start_streaming._entry_ptr = internal global ptr @imx334_start_streaming._entry, section ".printk_index", align 4
@imx334_start_streaming._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fail to setup handler\00", [42 x i8] zeroinitializer }, align 32
@imx334_start_streaming._entry_ptr.26 = internal global ptr @imx334_start_streaming._entry.24, section ".printk_index", align 4
@imx334_start_streaming._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fail to start streaming\00", [40 x i8] zeroinitializer }, align 32
@imx334_start_streaming._entry_ptr.29 = internal global ptr @imx334_start_streaming._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@imx334_parse_hw_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get reset gpio %ld\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx334_parse_hw_config\00", [41 x i8] zeroinitializer }, align 32
@imx334_parse_hw_config._entry_ptr = internal global ptr @imx334_parse_hw_config._entry, section ".printk_index", align 4
@imx334_parse_hw_config._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"could not get inclk\00", [44 x i8] zeroinitializer }, align 32
@imx334_parse_hw_config._entry_ptr.36 = internal global ptr @imx334_parse_hw_config._entry.34, section ".printk_index", align 4
@imx334_parse_hw_config._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 808, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"inclk frequency mismatch\00", [39 x i8] zeroinitializer }, align 32
@imx334_parse_hw_config._entry_ptr.39 = internal global ptr @imx334_parse_hw_config._entry.37, section ".printk_index", align 4
@imx334_parse_hw_config._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.3, i32 824, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"number of CSI2 data lanes %d is not supported\00", [50 x i8] zeroinitializer }, align 32
@imx334_parse_hw_config._entry_ptr.42 = internal global ptr @imx334_parse_hw_config._entry.40, section ".printk_index", align 4
@imx334_parse_hw_config._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.3, i32 830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequencies defined\00", [36 x i8] zeroinitializer }, align 32
@imx334_parse_hw_config._entry_ptr.45 = internal global ptr @imx334_parse_hw_config._entry.43, section ".printk_index", align 4
@imx334_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 881, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fail to enable inclk\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx334_power_on\00", [16 x i8] zeroinitializer }, align 32
@imx334_power_on._entry_ptr = internal global ptr @imx334_power_on._entry, section ".printk_index", align 4
@imx334_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 763, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip id mismatch: %x!=%x\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx334_detect\00", [18 x i8] zeroinitializer }, align 32
@imx334_detect._entry_ptr = internal global ptr @imx334_detect._entry, section ".printk_index", align 4
@mode_3840x2160_regs = internal constant { [92 x %struct.imx334_reg], [80 x i8] } { [92 x %struct.imx334_reg] [%struct.imx334_reg { i16 12288, i8 1 }, %struct.imx334_reg { i16 12290, i8 0 }, %struct.imx334_reg { i16 12312, i8 4 }, %struct.imx334_reg { i16 14256, i8 54 }, %struct.imx334_reg { i16 12364, i8 0 }, %struct.imx334_reg { i16 12300, i8 59 }, %struct.imx334_reg { i16 12301, i8 42 }, %struct.imx334_reg { i16 12340, i8 38 }, %struct.imx334_reg { i16 12341, i8 2 }, %struct.imx334_reg { i16 12620, i8 41 }, %struct.imx334_reg { i16 12621, i8 1 }, %struct.imx334_reg { i16 12634, i8 2 }, %struct.imx334_reg { i16 12648, i8 -96 }, %struct.imx334_reg { i16 12650, i8 126 }, %struct.imx334_reg { i16 12936, i8 33 }, %struct.imx334_reg { i16 12938, i8 2 }, %struct.imx334_reg { i16 12332, i8 60 }, %struct.imx334_reg { i16 12334, i8 0 }, %struct.imx334_reg { i16 12335, i8 15 }, %struct.imx334_reg { i16 12406, i8 112 }, %struct.imx334_reg { i16 12407, i8 8 }, %struct.imx334_reg { i16 12432, i8 112 }, %struct.imx334_reg { i16 12433, i8 8 }, %struct.imx334_reg { i16 12504, i8 32 }, %struct.imx334_reg { i16 12505, i8 18 }, %struct.imx334_reg { i16 13064, i8 112 }, %struct.imx334_reg { i16 13065, i8 8 }, %struct.imx334_reg { i16 13332, i8 5 }, %struct.imx334_reg { i16 13334, i8 24 }, %struct.imx334_reg { i16 13740, i8 14 }, %struct.imx334_reg { i16 13896, i8 1 }, %struct.imx334_reg { i16 13898, i8 4 }, %struct.imx334_reg { i16 13900, i8 4 }, %struct.imx334_reg { i16 13944, i8 1 }, %struct.imx334_reg { i16 13948, i8 49 }, %struct.imx334_reg { i16 13950, i8 49 }, %struct.imx334_reg { i16 14088, i8 2 }, %struct.imx334_reg { i16 14100, i8 1 }, %struct.imx334_reg { i16 14101, i8 2 }, %struct.imx334_reg { i16 14102, i8 2 }, %struct.imx334_reg { i16 14103, i8 2 }, %struct.imx334_reg { i16 14108, i8 61 }, %struct.imx334_reg { i16 14109, i8 63 }, %struct.imx334_reg { i16 14124, i8 0 }, %struct.imx334_reg { i16 14125, i8 0 }, %struct.imx334_reg { i16 14126, i8 70 }, %struct.imx334_reg { i16 14127, i8 0 }, %struct.imx334_reg { i16 14128, i8 -119 }, %struct.imx334_reg { i16 14129, i8 0 }, %struct.imx334_reg { i16 14130, i8 8 }, %struct.imx334_reg { i16 14131, i8 1 }, %struct.imx334_reg { i16 14132, i8 -2 }, %struct.imx334_reg { i16 14133, i8 5 }, %struct.imx334_reg { i16 14173, i8 0 }, %struct.imx334_reg { i16 14174, i8 0 }, %struct.imx334_reg { i16 14175, i8 97 }, %struct.imx334_reg { i16 14176, i8 6 }, %struct.imx334_reg { i16 14184, i8 27 }, %struct.imx334_reg { i16 14185, i8 27 }, %struct.imx334_reg { i16 14186, i8 26 }, %struct.imx334_reg { i16 14187, i8 25 }, %struct.imx334_reg { i16 14188, i8 24 }, %struct.imx334_reg { i16 14189, i8 20 }, %struct.imx334_reg { i16 14190, i8 15 }, %struct.imx334_reg { i16 14198, i8 0 }, %struct.imx334_reg { i16 14199, i8 0 }, %struct.imx334_reg { i16 14200, i8 70 }, %struct.imx334_reg { i16 14201, i8 0 }, %struct.imx334_reg { i16 14202, i8 8 }, %struct.imx334_reg { i16 14203, i8 1 }, %struct.imx334_reg { i16 14204, i8 69 }, %struct.imx334_reg { i16 14205, i8 1 }, %struct.imx334_reg { i16 14206, i8 35 }, %struct.imx334_reg { i16 14207, i8 2 }, %struct.imx334_reg { i16 14208, i8 -39 }, %struct.imx334_reg { i16 14209, i8 3 }, %struct.imx334_reg { i16 14210, i8 -11 }, %struct.imx334_reg { i16 14211, i8 6 }, %struct.imx334_reg { i16 14212, i8 -91 }, %struct.imx334_reg { i16 14216, i8 15 }, %struct.imx334_reg { i16 14218, i8 -39 }, %struct.imx334_reg { i16 14219, i8 3 }, %struct.imx334_reg { i16 14220, i8 -21 }, %struct.imx334_reg { i16 14221, i8 5 }, %struct.imx334_reg { i16 14222, i8 -121 }, %struct.imx334_reg { i16 14223, i8 6 }, %struct.imx334_reg { i16 14224, i8 -11 }, %struct.imx334_reg { i16 14226, i8 67 }, %struct.imx334_reg { i16 14228, i8 122 }, %struct.imx334_reg { i16 14230, i8 -95 }, %struct.imx334_reg { i16 15876, i8 14 }, %struct.imx334_reg { i16 14848, i8 1 }], [80 x i8] zeroinitializer }, align 32
@imx334_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"imx334:926:(ctrl_hdlr)->_lock\00", [34 x i8] zeroinitializer }, align 32
@imx334_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @imx334_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@link_freq = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 891000000], [24 x i8] zeroinitializer }, align 32
@imx334_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 988, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"control init failed: %d\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx334_init_controls\00", [43 x i8] zeroinitializer }, align 32
@imx334_init_controls._entry_ptr = internal global ptr @imx334_init_controls._entry, section ".printk_index", align 4
@imx334_set_ctrl.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx334_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Received vblank %u, new lpfr %u\00", [32 x i8] zeroinitializer }, align 32
@imx334_set_ctrl.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.55, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Received exp %u analog gain %u\00", [33 x i8] zeroinitializer }, align 32
@imx334_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.53, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid control %d\00", [45 x i8] zeroinitializer }, align 32
@imx334_set_ctrl._entry_ptr = internal global ptr @imx334_set_ctrl._entry, section ".printk_index", align 4
@imx334_update_exp_gain.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx334_update_exp_gain\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Set long exp %u analog gain %u sh0 %u lpfr %u\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963793, i64 10356993]
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"imx334_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1120, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1124, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"imx334_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1113, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"imx334_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1109, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"imx334_subdev_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 860, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1020, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1024, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1028, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1035, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"supported_mode\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 247, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1045, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1057, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1063, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"imx334_video_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 848, i32 43 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"imx334_pad_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 852, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 666, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 673, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 681, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 998, i32 6 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 791, i32 60 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 794, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 802, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 808, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 822, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 830, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 881, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 762, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"mode_3840x2160_regs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 151, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 926, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant [16 x i8] c"imx334_ctrl_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 493, i32 35 }
@___asan_gen_.227 = private unnamed_addr constant [10 x i8] c"link_freq\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 146, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 987, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 456, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 476, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 485, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [30 x i8] c"../drivers/media/i2c/imx334.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 409, i32 2 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_imx334_driver_exit, ptr @__initcall__kmod_imx334__296_1130_imx334_driver_init6, ptr @imx334_detect._entry, ptr @imx334_detect._entry_ptr, ptr @imx334_driver_exit, ptr @imx334_init_controls._entry, ptr @imx334_init_controls._entry_ptr, ptr @imx334_parse_hw_config._entry, ptr @imx334_parse_hw_config._entry.34, ptr @imx334_parse_hw_config._entry.37, ptr @imx334_parse_hw_config._entry.40, ptr @imx334_parse_hw_config._entry.43, ptr @imx334_parse_hw_config._entry_ptr, ptr @imx334_parse_hw_config._entry_ptr.36, ptr @imx334_parse_hw_config._entry_ptr.39, ptr @imx334_parse_hw_config._entry_ptr.42, ptr @imx334_parse_hw_config._entry_ptr.45, ptr @imx334_power_on._entry, ptr @imx334_power_on._entry_ptr, ptr @imx334_probe._entry, ptr @imx334_probe._entry.10, ptr @imx334_probe._entry.13, ptr @imx334_probe._entry.16, ptr @imx334_probe._entry.19, ptr @imx334_probe._entry.7, ptr @imx334_probe._entry_ptr, ptr @imx334_probe._entry_ptr.12, ptr @imx334_probe._entry_ptr.15, ptr @imx334_probe._entry_ptr.18, ptr @imx334_probe._entry_ptr.21, ptr @imx334_probe._entry_ptr.9, ptr @imx334_set_ctrl._entry, ptr @imx334_set_ctrl._entry_ptr, ptr @imx334_start_streaming._entry, ptr @imx334_start_streaming._entry.24, ptr @imx334_start_streaming._entry.27, ptr @imx334_start_streaming._entry_ptr, ptr @imx334_start_streaming._entry_ptr.26, ptr @imx334_start_streaming._entry_ptr.29, ptr @imx334_driver, ptr @.str, ptr @imx334_of_match, ptr @imx334_pm_ops, ptr @imx334_subdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @imx334_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @supported_mode, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @imx334_video_ops, ptr @imx334_pad_ops, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @mode_3840x2160_regs, ptr @imx334_init_controls._key, ptr @.str.50, ptr @imx334_ctrl_ops, ptr @link_freq, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_mode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_start_streaming._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_start_streaming._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_parse_hw_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_parse_hw_config._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_parse_hw_config._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_parse_hw_config._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_parse_hw_config._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_3840x2160_regs to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx334_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @imx334_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx334_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @imx334_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_remove(ptr noundef %client) #2 align 64 {
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
  %mutex = getelementptr i8, ptr %1, i32 452
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_probe(ptr noundef %client) #2 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 556, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %sd = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 2
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @imx334_subdev_ops) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %call.i114 = tail call ptr @dev_fwnode(ptr noundef %2) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  %3 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %4 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %call.i114, null
  br i1 %tobool.not.i, label %if.end.imx334_parse_hw_config.exit.thread_crit_edge, label %if.end.i

if.end.imx334_parse_hw_config.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx334_parse_hw_config.exit.thread

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %call2.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %7, ptr noundef nonnull @.str.31, i32 noundef 3) #8
  %reset_gpio.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2.i, ptr %reset_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call2.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.32, i32 noundef %11) #11
  %12 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio.i, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %imx334_parse_hw_config.exit

if.end11.i:                                       ; preds = %if.end.i
  %call13.i = tail call ptr @devm_clk_get(ptr noundef %10, ptr noundef null) #8
  %inclk.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %inclk.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13.i, ptr %inclk.i, align 4
  %cmp.i93.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93.i, label %do.end19.i, label %if.end23.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.35) #11
  %18 = ptrtoint ptr %inclk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inclk.i, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %imx334_parse_hw_config.exit

if.end23.i:                                       ; preds = %if.end11.i
  %call25.i = tail call i32 @clk_get_rate(ptr noundef %call13.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call25.i)
  %cmp.not.i = icmp eq i32 %call25.i, 24000000
  br i1 %cmp.not.i, label %if.end31.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.38) #11
  br label %imx334_parse_hw_config.exit.thread

if.end31.i:                                       ; preds = %if.end23.i
  %call32.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call.i114, ptr noundef null) #8
  %tobool33.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool33.not.i, label %if.end31.i.imx334_parse_hw_config.exit.thread_crit_edge, label %if.end35.i

if.end31.i.imx334_parse_hw_config.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx334_parse_hw_config.exit.thread

if.end35.i:                                       ; preds = %if.end31.i
  %call36.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call32.i, ptr noundef nonnull %bus_cfg.i) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end35.i.imx334_parse_hw_config.exit.thread_crit_edge

if.end35.i.imx334_parse_hw_config.exit.thread_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx334_parse_hw_config.exit.thread

if.end39.i:                                       ; preds = %if.end35.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2, i32 2, i32 3
  %23 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %cmp40.not.i = icmp eq i8 %24, 4
  br i1 %cmp40.not.i, label %if.end51.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.41, i32 noundef %conv.i) #11
  br label %done_endpoint_free.i

if.end51.i:                                       ; preds = %if.end39.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %27 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool52.not.i = icmp eq i32 %28, 0
  br i1 %tobool52.not.i, label %do.end56.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end51.i
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %29 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body.i

do.end56.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.44) #11
  br label %done_endpoint_free.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %for.cond.i.done_endpoint_free.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.done_endpoint_free.i_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_endpoint_free.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %30, i32 %i.095.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 891000000, i64 %34)
  %cmp62.i = icmp eq i64 %34, 891000000
  br i1 %cmp62.i, label %for.body.i.done_endpoint_free.i_crit_edge, label %for.cond.i

for.body.i.done_endpoint_free.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_endpoint_free.i

done_endpoint_free.i:                             ; preds = %for.body.i.done_endpoint_free.i_crit_edge, %for.cond.i.done_endpoint_free.i_crit_edge, %do.end56.i, %do.end45.i
  %ret.0.i = phi i32 [ -22, %do.end45.i ], [ -22, %do.end56.i ], [ -22, %for.cond.i.done_endpoint_free.i_crit_edge ], [ 0, %for.body.i.done_endpoint_free.i_crit_edge ]
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #8
  br label %imx334_parse_hw_config.exit

imx334_parse_hw_config.exit.thread:               ; preds = %if.end35.i.imx334_parse_hw_config.exit.thread_crit_edge, %if.end31.i.imx334_parse_hw_config.exit.thread_crit_edge, %do.end29.i, %if.end.imx334_parse_hw_config.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call36.i, %if.end35.i.imx334_parse_hw_config.exit.thread_crit_edge ], [ -6, %if.end31.i.imx334_parse_hw_config.exit.thread_crit_edge ], [ -6, %if.end.imx334_parse_hw_config.exit.thread_crit_edge ], [ -22, %do.end29.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %do.end

imx334_parse_hw_config.exit:                      ; preds = %done_endpoint_free.i, %do.end19.i, %do.end.i
  %retval.0.i = phi i32 [ %14, %do.end.i ], [ %20, %do.end19.i ], [ %ret.0.i, %done_endpoint_free.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %do.body8, label %imx334_parse_hw_config.exit.do.end_crit_edge

imx334_parse_hw_config.exit.do.end_crit_edge:     ; preds = %imx334_parse_hw_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %imx334_parse_hw_config.exit.do.end_crit_edge, %imx334_parse_hw_config.exit.thread
  %retval.0.i133 = phi i32 [ %retval.0.i.ph, %imx334_parse_hw_config.exit.thread ], [ %retval.0.i, %imx334_parse_hw_config.exit.do.end_crit_edge ]
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1) #11
  br label %cleanup

do.body8:                                         ; preds = %imx334_parse_hw_config.exit
  %mutex = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 14
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @imx334_probe.__key) #8
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %call12 = call i32 @imx334_power_on(ptr noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.8) #11
  br label %error_mutex_destroy

if.end19:                                         ; preds = %do.body8
  %dev_priv.i.i.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 2, i32 11
  %41 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %43 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  %45 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %data_buf.i.i, align 4
  %46 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 12356, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr.i.i, align 2
  %49 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i.i, align 2
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 2, ptr %43, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %53 = load i16, ptr %addr.i.i, align 2
  %arrayidx29.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx29.i.i, align 4
  %flags32.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %flags32.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %flags32.i.i, align 2
  %len34.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %len34.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 2, ptr %len34.i.i, align 4
  %buf37.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %buf37.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %data_buf.i.i, ptr %buf37.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 3
  %58 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter.i.i, align 8
  %call39.i.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call39.i.i)
  %cmp40.not.i.i = icmp eq i32 %call39.i.i, 2
  br i1 %cmp40.not.i.i, label %if.end.i116, label %imx334_read_reg.exit.i

imx334_read_reg.exit.i:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  br label %do.end25

if.end.i116:                                      ; preds = %if.end19
  %60 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 503316480, i32 %61)
  %cmp.not.i115 = icmp eq i32 %61, 503316480
  br i1 %cmp.not.i115, label %if.end27, label %do.end.i117

do.end.i117:                                      ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #10
  %62 = call i32 @llvm.bswap.i32(i32 %61) #8
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.48, i32 noundef 30, i32 noundef %62) #11
  br label %do.end25

do.end25:                                         ; preds = %do.end.i117, %imx334_read_reg.exit.i
  %retval.0.i118.ph = phi i32 [ -5, %imx334_read_reg.exit.i ], [ -6, %do.end.i117 ]
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i118.ph) #11
  br label %error_power_off

if.end27:                                         ; preds = %if.end.i116
  %cur_mode = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 13
  %67 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @supported_mode, ptr %cur_mode, align 4
  %vblank29 = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 12
  %68 = ptrtoint ptr %vblank29 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2340, ptr %vblank29, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 6
  %call.i119 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 6, ptr noundef nonnull @imx334_init_controls._key, ptr noundef nonnull @.str.50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %if.end.i124, label %if.end27.do.end35_crit_edge

if.end27.do.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

if.end.i124:                                      ; preds = %if.end27
  %lock.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %mutex, ptr %lock.i, align 4
  %call1.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx334_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 4495, i64 noundef 1, i64 noundef 1608) #8
  %70 = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 11
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call1.i, ptr %70, align 4
  %call2.i122 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx334_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 240, i64 noundef 1, i64 noundef 0) #8
  %again_ctrl.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 11, i32 1
  %72 = ptrtoint ptr %again_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call2.i122, ptr %again_ctrl.i, align 4
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %70) #8
  %call8.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx334_ctrl_ops, i32 noundef 10356993, i64 noundef 90, i64 noundef 132840, i64 noundef 1, i64 noundef 2340) #8
  %vblank_ctrl.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 10
  %73 = ptrtoint ptr %vblank_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call8.i, ptr %vblank_ctrl.i, align 4
  %call11.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx334_ctrl_ops, i32 noundef 10422530, i64 noundef 594000000, i64 noundef 594000000, i64 noundef 1, i64 noundef 594000000) #8
  %pclk_ctrl.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 8
  %74 = ptrtoint ptr %pclk_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call11.i, ptr %pclk_ctrl.i, align 4
  %call13.i123 = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx334_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq) #8
  %link_freq_ctrl.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 7
  %75 = ptrtoint ptr %link_freq_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call13.i123, ptr %link_freq_ctrl.i, align 4
  %tobool15.not.i = icmp eq ptr %call13.i123, null
  br i1 %tobool15.not.i, label %if.end.i124.if.end18.i_crit_edge, label %if.then16.i

if.end.i124.if.end18.i_crit_edge:                 ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call13.i123, i32 0, i32 20
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %77, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end.i124.if.end18.i_crit_edge
  %call20.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx334_ctrl_ops, i32 noundef 10356994, i64 noundef 0, i64 noundef 1048575, i64 noundef 1, i64 noundef 560) #8
  %hblank_ctrl.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 9
  %78 = ptrtoint ptr %hblank_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call20.i, ptr %hblank_ctrl.i, align 4
  %tobool22.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool22.not.i, label %if.end18.i.if.end27.i_crit_edge, label %if.then23.i

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags25.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call20.i, i32 0, i32 20
  %79 = ptrtoint ptr %flags25.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags25.i, align 4
  %or26.i = or i32 %80, 4
  store i32 %or26.i, ptr %flags25.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end18.i.if.end27.i_crit_edge
  %error.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 6, i32 9
  %81 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool28.not.i = icmp eq i32 %82, 0
  br i1 %tobool28.not.i, label %imx334_init_controls.exit.thread, label %imx334_init_controls.exit

imx334_init_controls.exit.thread:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_handler33.i = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 2, i32 8
  %83 = ptrtoint ptr %ctrl_handler33.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %ctrl_handler.i, ptr %ctrl_handler33.i, align 4
  br label %if.end37

imx334_init_controls.exit:                        ; preds = %if.end27.i
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.51, i32 noundef %82) #11
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #8
  %86 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool31.not = icmp eq i32 %87, 0
  br i1 %tobool31.not, label %imx334_init_controls.exit.if.end37_crit_edge, label %imx334_init_controls.exit.do.end35_crit_edge

imx334_init_controls.exit.do.end35_crit_edge:     ; preds = %imx334_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

imx334_init_controls.exit.if.end37_crit_edge:     ; preds = %imx334_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end35:                                         ; preds = %imx334_init_controls.exit.do.end35_crit_edge, %if.end27.do.end35_crit_edge
  %retval.0.i126142 = phi i32 [ %87, %imx334_init_controls.exit.do.end35_crit_edge ], [ %call.i119, %if.end27.do.end35_crit_edge ]
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i126142) #11
  br label %error_power_off

if.end37:                                         ; preds = %imx334_init_controls.exit.if.end37_crit_edge, %imx334_init_controls.exit.thread
  %flags = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 2, i32 4
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags, align 4
  %or = or i32 %91, 4
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %92 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 3
  %flags40 = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 3, i32 4
  %93 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %flags40, align 4
  %call44 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.17, i32 noundef %call44) #11
  br label %error_handler_free

if.end51:                                         ; preds = %if.end37
  %call53 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef %sd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp = icmp slt i32 %call53, 0
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i, align 4
  br i1 %cmp, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.20, i32 noundef %call53) #11
  br label %error_handler_free

if.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %call.i127 = call i32 @__pm_runtime_set_status(ptr noundef %97, i32 noundef 0) #8
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_enable(ptr noundef %99) #8
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 4
  %call.i128 = call i32 @__pm_runtime_idle(ptr noundef %101, i32 noundef 0) #8
  br label %cleanup

error_handler_free:                               ; preds = %do.end57, %do.end49
  %ret.0 = phi i32 [ %call44, %do.end49 ], [ %call53, %do.end57 ]
  %ctrl_handler = getelementptr inbounds %struct.imx334, ptr %call.i, i32 0, i32 2, i32 8
  %102 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %103) #8
  br label %error_power_off

error_power_off:                                  ; preds = %error_handler_free, %do.end35, %do.end25
  %ret.1 = phi i32 [ %retval.0.i118.ph, %do.end25 ], [ %retval.0.i126142, %do.end35 ], [ %ret.0, %error_handler_free ]
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio.i129 = getelementptr i8, ptr %107, i32 228
  %108 = ptrtoint ptr %reset_gpio.i129 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reset_gpio.i129, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %109, i32 noundef 0) #8
  %inclk.i130 = getelementptr i8, ptr %107, i32 232
  %110 = ptrtoint ptr %inclk.i130 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %inclk.i130, align 4
  call void @clk_disable(ptr noundef %111) #8
  call void @clk_unprepare(ptr noundef %111) #8
  br label %error_mutex_destroy

error_mutex_destroy:                              ; preds = %error_power_off, %do.end17
  %ret.2 = phi i32 [ %call12, %do.end17 ], [ %ret.1, %error_power_off ]
  call void @mutex_destroy(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %error_mutex_destroy, %if.end59, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i133, %do.end ], [ %ret.2, %error_mutex_destroy ], [ 0, %if.end59 ], [ -12, %entry.cleanup_crit_edge ]
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
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_power_on(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %reset_gpio = getelementptr i8, ptr %1, i32 228
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #8
  %inclk = getelementptr i8, ptr %1, i32 232
  %4 = ptrtoint ptr %inclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.46) #11
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 18000, i32 noundef 20000, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_power_off(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset_gpio = getelementptr i8, ptr %1, i32 228
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  %inclk = getelementptr i8, ptr %1, i32 232
  %4 = ptrtoint ptr %inclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inclk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i41 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  %buf.i.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %mutex = getelementptr i8, ptr %sd, i32 452
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streaming = getelementptr i8, ptr %sd, i32 544
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !141
  %2 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %enable)
  %cmp = icmp eq i32 %2, %enable
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3 = icmp ne i32 %enable, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then4
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.error_unlock_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.error_unlock_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unlock

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !144
  br label %error_unlock

if.end9:                                          ; preds = %if.then4
  %cur_mode.i = getelementptr i8, ptr %sd, i32 448
  %6 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode.i, align 4
  %reg_list1.i = getelementptr inbounds %struct.imx334_mode, ptr %7, i32 0, i32 9
  %regs.i = getelementptr inbounds %struct.imx334_mode, ptr %7, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %10 = ptrtoint ptr %reg_list1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_list1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp8.not.i.i, label %if.end9.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end9
  %dev_priv.i.i.i.i = getelementptr i8, ptr %sd, i32 152
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %buf.i.i.i, i32 2
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %11
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.imx334_reg, ptr %9, i32 %i.09.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i, align 2
  %val.i.i = getelementptr %struct.imx334_reg, ptr %9, i32 %i.09.i.i, i32 1
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i.i, align 2
  %conv.i.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #8
  %18 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %buf.i.i.i, align 2
  %19 = shl nuw i32 %conv.i.i, 24
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %add.ptr.i.i.i, align 2
  %call.i.i.i.i39 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %buf.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i39)
  %cmp26.not.i.i.i = icmp eq i32 %call.i.i.i.i39, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #8
  br i1 %cmp26.not.i.i.i, label %for.cond.i.i, label %for.body.i.i.error_power_off_crit_edge

for.body.i.i.error_power_off_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off

if.end.i:                                         ; preds = %for.cond.i.i.if.end.i_crit_edge, %if.end9.if.end.i_crit_edge
  %ctrl_handler.i = getelementptr i8, ptr %sd, i32 112
  %21 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_handler.i, align 4
  %call2.i = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %if.end.i.error_power_off_crit_edge

if.end.i.error_power_off_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off

if.end9.i:                                        ; preds = %if.end.i
  %dev_priv.i.i.i = getelementptr i8, ptr %sd, i32 152
  %23 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 12288, ptr %buf.i.i, align 2
  %add.ptr.i.i = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 0, ptr %add.ptr.i.i, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp26.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp26.not.i.i, label %if.end9.i.if.end17_crit_edge, label %if.end9.i.error_power_off_crit_edge

if.end9.i.error_power_off_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off

if.end9.i.if.end17_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev_priv.i.i.i42 = getelementptr i8, ptr %sd, i32 152
  %27 = ptrtoint ptr %dev_priv.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i.i42, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i41) #8
  %29 = ptrtoint ptr %buf.i.i41 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 12288, ptr %buf.i.i41, align 2
  %add.ptr.i.i43 = getelementptr inbounds i8, ptr %buf.i.i41, i32 2
  %30 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 16777216, ptr %add.ptr.i.i43, align 2
  %call.i.i.i44 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %buf.i.i41, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i41) #8
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %call.i45 = call i32 @__pm_runtime_idle(ptr noundef %32, i32 noundef 5) #8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end9.i.if.end17_crit_edge
  %frombool = zext i1 %tobool3 to i8
  %33 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

error_power_off:                                  ; preds = %if.end9.i.error_power_off_crit_edge, %if.end.i.error_power_off_crit_edge, %for.body.i.i.error_power_off_crit_edge
  %.str.28.sink.i = phi ptr [ @.str.25, %if.end.i.error_power_off_crit_edge ], [ @.str.28, %if.end9.i.error_power_off_crit_edge ], [ @.str.22, %for.body.i.i.error_power_off_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call2.i, %if.end.i.error_power_off_crit_edge ], [ -5, %if.end9.i.error_power_off_crit_edge ], [ -5, %for.body.i.i.error_power_off_crit_edge ]
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull %.str.28.sink.i) #11
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %call.i46 = call i32 @__pm_runtime_idle(ptr noundef %37, i32 noundef 5) #8
  br label %error_unlock

error_unlock:                                     ; preds = %error_power_off, %do.end11.i.i.i.i.i, %if.then.i.error_unlock_crit_edge
  %ret.0 = phi i32 [ %retval.0.ph.i, %error_power_off ], [ %call.i, %if.then.i.error_unlock_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %error_unlock, %if.end17, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %error_unlock ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_init_pad_cfg(ptr noundef %sd, ptr noundef readonly %sd_state) #2 align 64 {
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
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %3 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3840, ptr %format.i, align 4
  %height3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2160, ptr %height3.i, align 4
  %code5.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %code5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12306, ptr %code5.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %colorspace.i, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %9 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 5, ptr %xfer_func.i, align 4
  %call1 = call i32 @imx334_set_pad_format(ptr noundef %sd, ptr noundef %sd_state, ptr noundef nonnull %fmt)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #8
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx334_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
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
  store i32 12306, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx334_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fsize) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fsize, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12306, i32 %3)
  %cmp1.not = icmp eq i32 %3, 12306
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fsize, i32 0, i32 3
  %4 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3840, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fsize, i32 0, i32 4
  %5 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3840, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fsize, i32 0, i32 5
  %6 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2160, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fsize, i32 0, i32 6
  %7 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2160, ptr %max_height, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 452
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %3, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !145

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr i8, ptr %sd, i32 448
  %9 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_mode, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %13 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %format.i, align 4
  %height.i = getelementptr inbounds %struct.imx334_mode, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  %height3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height3.i, align 4
  %code.i = getelementptr inbounds %struct.imx334_mode, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code.i, align 8
  %code5.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %code5.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 11, ptr %colorspace.i, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %22, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 5, ptr %xfer_func.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 452
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %0 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3840, ptr %format.i, align 4
  %height3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2160, ptr %height3.i, align 4
  %code5.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12306, ptr %code5.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %colorspace.i, align 4
  %5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %5, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 5, ptr %xfer_func.i, align 4
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %11 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %13 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %12, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !145

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %12, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 %spec.select.i
  %17 = call ptr @memcpy(ptr %arrayidx.i, ptr %format.i, i32 48)
  br label %if.end4

if.else:                                          ; preds = %entry
  %link_freq_ctrl.i = getelementptr i8, ptr %sd, i32 420
  %18 = ptrtoint ptr %link_freq_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link_freq_ctrl.i, align 4
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %19, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i:                                         ; preds = %if.else
  %hblank_ctrl.i = getelementptr i8, ptr %sd, i32 428
  %20 = ptrtoint ptr %hblank_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hblank_ctrl.i, align 4
  %call1.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %21, i32 noundef 560) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %imx334_update_controls.exit, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

imx334_update_controls.exit:                      ; preds = %if.end.i
  %vblank_ctrl.i = getelementptr i8, ptr %sd, i32 432
  %22 = ptrtoint ptr %vblank_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vblank_ctrl.i, align 4
  %call7.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %23, i64 noundef 90, i64 noundef 132840, i64 noundef 1, i64 noundef 2340) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %if.then3, label %imx334_update_controls.exit.if.end4_crit_edge

imx334_update_controls.exit.if.end4_crit_edge:    ; preds = %imx334_update_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %imx334_update_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr i8, ptr %sd, i32 448
  %24 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @supported_mode, ptr %cur_mode, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %imx334_update_controls.exit.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %if.else.if.end4_crit_edge, %v4l2_subdev_get_try_format.exit
  %ret.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ %call7.i, %imx334_update_controls.exit.if.end4_crit_edge ], [ 0, %if.then3 ], [ %call1.i, %if.end.i.if.end4_crit_edge ], [ %call.i, %if.else.if.end4_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx334_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -244
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end41 [
    i32 10356993, label %sw.bb
    i32 9963793, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %vblank_ctrl = getelementptr i8, ptr %1, i32 196
  %5 = ptrtoint ptr %vblank_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vblank_ctrl, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %vblank = getelementptr i8, ptr %1, i32 208
  %9 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %vblank, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx334_set_ctrl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx334_set_ctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !146

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %12 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vblank, align 4
  %cur_mode = getelementptr i8, ptr %1, i32 212
  %14 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.imx334_mode, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %add = add i32 %17, %13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx334_set_ctrl.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.54, i32 noundef %13, i32 noundef %add) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.bb
  %18 = getelementptr i8, ptr %1, i32 200
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vblank, align 4
  %cur_mode7 = getelementptr i8, ptr %1, i32 212
  %23 = ptrtoint ptr %cur_mode7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_mode7, align 4
  %height8 = getelementptr inbounds %struct.imx334_mode, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height8, align 4
  %add9 = add i32 %22, -5
  %sub = add i32 %add9, %26
  %conv = zext i32 %sub to i64
  %call10 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %20, i64 noundef 1, i64 noundef %conv, i64 noundef 1, i64 noundef 1608) #8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %28, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %sw.bb11.cleanup_crit_edge, label %if.end16

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %sw.bb11
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val17, align 4
  %again_ctrl = getelementptr i8, ptr %1, i32 204
  %31 = ptrtoint ptr %again_ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %again_ctrl, align 4
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val18, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx334_set_ctrl.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx334_set_ctrl, %if.then31)) #8
          to label %do.end35 [label %if.then31], !srcloc !146

if.then31:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx334_set_ctrl.__UNIQUE_ID_ddebug295, ptr noundef %36, ptr noundef nonnull @.str.55, i32 noundef %30, i32 noundef %34) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %if.end16
  %call36 = tail call fastcc i32 @imx334_update_exp_gain(ptr noundef %add.ptr, i32 noundef %30, i32 noundef %34)
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %call.i69 = tail call i32 @__pm_runtime_idle(ptr noundef %38, i32 noundef 5) #8
  br label %cleanup

do.end41:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.56, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end35, %sw.bb11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %sw.bb11.cleanup_crit_edge ], [ -22, %do.end41 ], [ %call36, %do.end35 ], [ %call10, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx334_update_exp_gain(ptr nocapture noundef readonly %imx334, i32 noundef %exposure, i32 noundef %gain) unnamed_addr #2 align 64 {
entry:
  %buf.i54 = alloca [6 x i8], align 2
  %buf.i48 = alloca [6 x i8], align 2
  %buf.i42 = alloca [6 x i8], align 2
  %buf.i36 = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank = getelementptr inbounds %struct.imx334, ptr %imx334, i32 0, i32 12
  %0 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vblank, align 4
  %cur_mode = getelementptr inbounds %struct.imx334, ptr %imx334, i32 0, i32 13
  %2 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.imx334_mode, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %add = add i32 %5, %1
  %sub = sub i32 %add, %exposure
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx334_update_exp_gain.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx334_update_exp_gain, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %imx334 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imx334, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx334_update_exp_gain.__UNIQUE_ID_ddebug293, ptr noundef %7, ptr noundef nonnull @.str.58, i32 noundef %exposure, i32 noundef %gain, i32 noundef %sub, i32 noundef %add) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_priv.i.i = getelementptr inbounds %struct.imx334, ptr %imx334, i32 0, i32 2, i32 11
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 12289, ptr %buf.i, align 2
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.i, i32 2
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 16777216, ptr %add.ptr.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp26.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br i1 %cmp26.not.i, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i36) #8
  %14 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 12336, ptr %buf.i36, align 2
  %add.ptr.i38 = getelementptr inbounds i8, ptr %buf.i36, i32 2
  %15 = call i32 @llvm.bswap.i32(i32 %add) #8
  %16 = ptrtoint ptr %add.ptr.i38 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %add.ptr.i38, align 2
  %call.i.i39 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %buf.i36, i32 noundef 5, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i39)
  %cmp26.not.i40 = icmp eq i32 %call.i.i39, 5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i36) #8
  br i1 %cmp26.not.i40, label %if.end10, label %if.end6.error_release_group_hold_crit_edge

if.end6.error_release_group_hold_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_group_hold

if.end10:                                         ; preds = %if.end6
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i42) #8
  %19 = ptrtoint ptr %buf.i42 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 12376, ptr %buf.i42, align 2
  %add.ptr.i44 = getelementptr inbounds i8, ptr %buf.i42, i32 2
  %20 = call i32 @llvm.bswap.i32(i32 %sub) #8
  %21 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %add.ptr.i44, align 2
  %call.i.i45 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %buf.i42, i32 noundef 5, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i45)
  %cmp26.not.i46 = icmp eq i32 %call.i.i45, 5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i42) #8
  br i1 %cmp26.not.i46, label %if.end14, label %if.end10.error_release_group_hold_crit_edge

if.end10.error_release_group_hold_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_group_hold

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i48) #8
  %24 = ptrtoint ptr %buf.i48 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 12520, ptr %buf.i48, align 2
  %add.ptr.i50 = getelementptr inbounds i8, ptr %buf.i48, i32 2
  %25 = call i32 @llvm.bswap.i32(i32 %gain) #8
  %26 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %add.ptr.i50, align 2
  %call.i.i51 = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %buf.i48, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i51)
  %cmp26.not.i52 = icmp eq i32 %call.i.i51, 3
  %retval.0.i53 = select i1 %cmp26.not.i52, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i48) #8
  br label %error_release_group_hold

error_release_group_hold:                         ; preds = %if.end14, %if.end10.error_release_group_hold_crit_edge, %if.end6.error_release_group_hold_crit_edge
  %ret.0 = phi i32 [ -5, %if.end6.error_release_group_hold_crit_edge ], [ -5, %if.end10.error_release_group_hold_crit_edge ], [ %retval.0.i53, %if.end14 ]
  %27 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i54) #8
  %29 = ptrtoint ptr %buf.i54 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 12289, ptr %buf.i54, align 2
  %add.ptr.i56 = getelementptr inbounds i8, ptr %buf.i54, i32 2
  %30 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %add.ptr.i56, align 2
  %call.i.i57 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %buf.i54, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i54) #8
  br label %cleanup

cleanup:                                          ; preds = %error_release_group_hold, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_release_group_hold ], [ -5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !104, !106, !107, !108, !109, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__initcall__kmod_imx334__296_1130_imx334_driver_init6, !1, !"__initcall__kmod_imx334__296_1130_imx334_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/imx334.c", i32 1130, i32 1}
!2 = !{ptr @__exitcall_imx334_driver_exit, !1, !"__exitcall_imx334_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/imx334.c", i32 1132, i32 1}
!5 = !{ptr @__UNIQUE_ID_file298, !6, !"__UNIQUE_ID_file298", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/imx334.c", i32 1133, i32 1}
!7 = !{ptr @__UNIQUE_ID_license299, !6, !"__UNIQUE_ID_license299", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/imx334.c", i32 1124, i32 11}
!10 = !{ptr @imx334_driver, !11, !"imx334_driver", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/imx334.c", i32 1120, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/imx334.c", i32 1020, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @imx334_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @imx334_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @imx334_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/imx334.c", i32 1024, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/imx334.c", i32 1028, i32 3}
!25 = !{ptr @imx334_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @imx334_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/imx334.c", i32 1035, i32 3}
!29 = !{ptr @imx334_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @imx334_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/imx334.c", i32 1045, i32 3}
!33 = !{ptr @imx334_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @imx334_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/imx334.c", i32 1057, i32 3}
!37 = !{ptr @imx334_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @imx334_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/imx334.c", i32 1063, i32 3}
!41 = !{ptr @imx334_probe._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @imx334_probe._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @imx334_subdev_ops, !44, !"imx334_subdev_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/imx334.c", i32 860, i32 37}
!45 = !{ptr @imx334_video_ops, !46, !"imx334_video_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/imx334.c", i32 848, i32 43}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/imx334.c", i32 666, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @imx334_start_streaming._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @imx334_start_streaming._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/imx334.c", i32 673, i32 3}
!54 = !{ptr @imx334_start_streaming._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @imx334_start_streaming._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/imx334.c", i32 681, i32 3}
!58 = !{ptr @imx334_start_streaming._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @imx334_start_streaming._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @imx334_pad_ops, !61, !"imx334_pad_ops", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/imx334.c", i32 852, i32 41}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/imx334.c", i32 791, i32 60}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/imx334.c", i32 794, i32 3}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @imx334_parse_hw_config._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @imx334_parse_hw_config._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/imx334.c", i32 802, i32 3}
!73 = !{ptr @imx334_parse_hw_config._entry.34, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @imx334_parse_hw_config._entry_ptr.36, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/imx334.c", i32 808, i32 3}
!77 = !{ptr @imx334_parse_hw_config._entry.37, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @imx334_parse_hw_config._entry_ptr.39, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/imx334.c", i32 822, i32 3}
!81 = !{ptr @imx334_parse_hw_config._entry.40, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @imx334_parse_hw_config._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/imx334.c", i32 830, i32 3}
!85 = !{ptr @imx334_parse_hw_config._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @imx334_parse_hw_config._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/imx334.c", i32 881, i32 3}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @imx334_power_on._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @imx334_power_on._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/imx334.c", i32 762, i32 3}
!94 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @imx334_detect._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @imx334_detect._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @supported_mode, !98, !"supported_mode", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/imx334.c", i32 247, i32 33}
!99 = !{ptr @mode_3840x2160_regs, !100, !"mode_3840x2160_regs", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/imx334.c", i32 151, i32 32}
!101 = !{ptr @imx334_init_controls._key, !102, !"_key", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/imx334.c", i32 926, i32 8}
!103 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/imx334.c", i32 987, i32 3}
!106 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @imx334_init_controls._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @imx334_init_controls._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @imx334_ctrl_ops, !110, !"imx334_ctrl_ops", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/imx334.c", i32 493, i32 35}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/imx334.c", i32 456, i32 3}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @imx334_set_ctrl.__UNIQUE_ID_ddebug294, !112, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/imx334.c", i32 476, i32 3}
!117 = !{ptr @imx334_set_ctrl.__UNIQUE_ID_ddebug295, !116, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/imx334.c", i32 485, i32 3}
!120 = !{ptr @imx334_set_ctrl._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @imx334_set_ctrl._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/imx334.c", i32 409, i32 2}
!124 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @imx334_update_exp_gain.__UNIQUE_ID_ddebug293, !123, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!126 = !{ptr @link_freq, !127, !"link_freq", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/imx334.c", i32 146, i32 18}
!128 = !{ptr @imx334_of_match, !129, !"imx334_of_match", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/imx334.c", i32 1113, i32 34}
!130 = !{ptr @imx334_pm_ops, !131, !"imx334_pm_ops", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/imx334.c", i32 1109, i32 32}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i8 0, i8 2}
!142 = !{i64 2148308169}
!143 = !{i64 792992, i64 793017, i64 793039, i64 793055, i64 793067, i64 793087, i64 793111, i64 793127, i64 793139}
!144 = !{i64 2148308357}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2148759174, i64 2148759179, i64 2148759192, i64 2148759236, i64 2148759270, i64 2148759291}
