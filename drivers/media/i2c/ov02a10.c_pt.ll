; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov02a10.c_pt.bc'
source_filename = "../drivers/media/i2c/ov02a10.c"
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
%struct.ov02a10_mode = type { i32, i32, i32, i32, i32, %struct.ov02a10_reg_list }
%struct.ov02a10_reg_list = type { i32, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov02a10_reg = type { i8, i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.ov02a10 = type { i32, i32, ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], i8, i8, %struct.mutex, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_mbus_framefmt, %struct.v4l2_ctrl_handler, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@__initcall__kmod_ov02a10__293_1010_ov02a10_i2c_driver_init6 = internal global ptr @ov02a10_i2c_driver_init, section ".initcall6.init", align 4
@ov02a10_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov02a10_remove, ptr @ov02a10_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov02a10_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov02a10_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov02a10_i2c_driver_exit = internal global ptr @ov02a10_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [56 x i8] c"ov02a10.author=Dongchun Zhu <dongchun.zhu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [53 x i8] c"ov02a10.description=OmniVision OV02A10 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [39 x i8] c"ov02a10.file=drivers/media/i2c/ov02a10\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [23 x i8] c"ov02a10.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ov02a10\00", [24 x i8] zeroinitializer }, align 32
@ov02a10_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov02a10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov02a10_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov02a10_power_off, ptr @ov02a10_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to check HW configuration\0A\00", [62 x i8] zeroinitializer }, align 32
@ov02a10_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov02a10_video_ops, ptr null, ptr null, ptr null, ptr @ov02a10_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get eclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get eclk frequency\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set eclk frequency (24MHz)\0A\00", [58 x i8] zeroinitializer }, align 32
@ov02a10_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 903, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"eclk mismatched, mode is based on 24MHz\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov02a10_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/ov02a10.c\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov02a10_probe._entry_ptr = internal global ptr @ov02a10_probe._entry, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get powerdown-gpios\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get reset-gpios\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@ov02a10_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ov02a10->mutex\00", [16 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [1 x %struct.ov02a10_mode], [36 x i8] } { [1 x %struct.ov02a10_mode] [%struct.ov02a10_mode { i32 1600, i32 1200, i32 430, i32 934, i32 1390, %struct.ov02a10_reg_list { i32 93, ptr @ov02a10_1600x1200_regs } }], [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to initialize controls\0A\00", [33 x i8] zeroinitializer }, align 32
@ov02a10_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to initialize entity pads\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to power on\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register V4L2 subdev\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ovti,mipi-clock-voltage\00", [40 x i8] zeroinitializer }, align 32
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 390000000], [24 x i8] zeroinitializer }, align 32
@ov02a10_check_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.10, i32 845, ptr @.str.26, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no link frequency %lld supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ov02a10_check_hwcfg\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ov02a10_check_hwcfg._entry_ptr = internal global ptr @ov02a10_check_hwcfg._entry, section ".printk_index", align 4
@ov02a10_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov02a10_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov02a10_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @ov02a10_entity_init_cfg, ptr @ov02a10_enum_mbus_code, ptr @ov02a10_enum_frame_sizes, ptr null, ptr @ov02a10_get_fmt, ptr @ov02a10_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__ov02a10_start_stream._entry = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.10, i32 484, ptr @.str.26, ptr @.str.12 }, align 1
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set orientation\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__ov02a10_start_stream\00", [41 x i8] zeroinitializer }, align 32
@__ov02a10_start_stream._entry_ptr = internal global ptr @__ov02a10_start_stream._entry, section ".printk_index", align 4
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dovdd\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@ov02a10_1600x1200_regs = internal constant { [93 x %struct.ov02a10_reg], [38 x i8] } { [93 x %struct.ov02a10_reg] [%struct.ov02a10_reg { i8 -3, i8 1 }, %struct.ov02a10_reg { i8 -84, i8 0 }, %struct.ov02a10_reg { i8 -3, i8 0 }, %struct.ov02a10_reg { i8 47, i8 41 }, %struct.ov02a10_reg { i8 52, i8 0 }, %struct.ov02a10_reg { i8 53, i8 33 }, %struct.ov02a10_reg { i8 48, i8 21 }, %struct.ov02a10_reg { i8 51, i8 1 }, %struct.ov02a10_reg { i8 -3, i8 1 }, %struct.ov02a10_reg { i8 68, i8 0 }, %struct.ov02a10_reg { i8 42, i8 76 }, %struct.ov02a10_reg { i8 43, i8 30 }, %struct.ov02a10_reg { i8 44, i8 96 }, %struct.ov02a10_reg { i8 37, i8 17 }, %struct.ov02a10_reg { i8 3, i8 1 }, %struct.ov02a10_reg { i8 4, i8 -82 }, %struct.ov02a10_reg { i8 9, i8 0 }, %struct.ov02a10_reg { i8 10, i8 2 }, %struct.ov02a10_reg { i8 6, i8 -90 }, %struct.ov02a10_reg { i8 49, i8 0 }, %struct.ov02a10_reg { i8 36, i8 64 }, %struct.ov02a10_reg { i8 1, i8 1 }, %struct.ov02a10_reg { i8 -5, i8 115 }, %struct.ov02a10_reg { i8 -3, i8 1 }, %struct.ov02a10_reg { i8 22, i8 4 }, %struct.ov02a10_reg { i8 28, i8 9 }, %struct.ov02a10_reg { i8 33, i8 66 }, %struct.ov02a10_reg { i8 18, i8 4 }, %struct.ov02a10_reg { i8 19, i8 16 }, %struct.ov02a10_reg { i8 17, i8 64 }, %struct.ov02a10_reg { i8 51, i8 -127 }, %struct.ov02a10_reg { i8 -48, i8 0 }, %struct.ov02a10_reg { i8 -47, i8 1 }, %struct.ov02a10_reg { i8 -46, i8 0 }, %struct.ov02a10_reg { i8 80, i8 16 }, %struct.ov02a10_reg { i8 81, i8 35 }, %struct.ov02a10_reg { i8 82, i8 32 }, %struct.ov02a10_reg { i8 83, i8 16 }, %struct.ov02a10_reg { i8 84, i8 2 }, %struct.ov02a10_reg { i8 85, i8 32 }, %struct.ov02a10_reg { i8 86, i8 2 }, %struct.ov02a10_reg { i8 88, i8 72 }, %struct.ov02a10_reg { i8 93, i8 21 }, %struct.ov02a10_reg { i8 94, i8 5 }, %struct.ov02a10_reg { i8 102, i8 102 }, %struct.ov02a10_reg { i8 104, i8 104 }, %struct.ov02a10_reg { i8 107, i8 0 }, %struct.ov02a10_reg { i8 108, i8 0 }, %struct.ov02a10_reg { i8 111, i8 64 }, %struct.ov02a10_reg { i8 112, i8 64 }, %struct.ov02a10_reg { i8 113, i8 10 }, %struct.ov02a10_reg { i8 114, i8 -16 }, %struct.ov02a10_reg { i8 115, i8 16 }, %struct.ov02a10_reg { i8 117, i8 -128 }, %struct.ov02a10_reg { i8 118, i8 16 }, %struct.ov02a10_reg { i8 -124, i8 0 }, %struct.ov02a10_reg { i8 -123, i8 16 }, %struct.ov02a10_reg { i8 -122, i8 16 }, %struct.ov02a10_reg { i8 -121, i8 0 }, %struct.ov02a10_reg { i8 -118, i8 34 }, %struct.ov02a10_reg { i8 -117, i8 34 }, %struct.ov02a10_reg { i8 25, i8 -15 }, %struct.ov02a10_reg { i8 41, i8 1 }, %struct.ov02a10_reg { i8 -3, i8 1 }, %struct.ov02a10_reg { i8 -99, i8 22 }, %struct.ov02a10_reg { i8 -96, i8 41 }, %struct.ov02a10_reg { i8 -95, i8 4 }, %struct.ov02a10_reg { i8 -83, i8 98 }, %struct.ov02a10_reg { i8 -82, i8 0 }, %struct.ov02a10_reg { i8 -81, i8 -123 }, %struct.ov02a10_reg { i8 -79, i8 1 }, %struct.ov02a10_reg { i8 -114, i8 6 }, %struct.ov02a10_reg { i8 -113, i8 64 }, %struct.ov02a10_reg { i8 -112, i8 4 }, %struct.ov02a10_reg { i8 -111, i8 -80 }, %struct.ov02a10_reg { i8 69, i8 1 }, %struct.ov02a10_reg { i8 70, i8 0 }, %struct.ov02a10_reg { i8 71, i8 108 }, %struct.ov02a10_reg { i8 72, i8 3 }, %struct.ov02a10_reg { i8 73, i8 -117 }, %struct.ov02a10_reg { i8 74, i8 0 }, %struct.ov02a10_reg { i8 75, i8 7 }, %struct.ov02a10_reg { i8 76, i8 4 }, %struct.ov02a10_reg { i8 77, i8 -73 }, %struct.ov02a10_reg { i8 -16, i8 64 }, %struct.ov02a10_reg { i8 -15, i8 64 }, %struct.ov02a10_reg { i8 -14, i8 64 }, %struct.ov02a10_reg { i8 -13, i8 64 }, %struct.ov02a10_reg { i8 63, i8 0 }, %struct.ov02a10_reg { i8 -3, i8 1 }, %struct.ov02a10_reg { i8 5, i8 0 }, %struct.ov02a10_reg { i8 6, i8 -90 }, %struct.ov02a10_reg { i8 -3, i8 1 }], [38 x i8] zeroinitializer }, align 32
@ov02a10_initialize_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ov02a10:748:(handler)->_lock\00", [35 x i8] zeroinitializer }, align 32
@ov02a10_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov02a10_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov02a10_test_pattern_menu = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.36, ptr @.str.37], [24 x i8] zeroinitializer }, align 32
@ov02a10_initialize_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.10, i32 792, ptr @.str.26, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to init controls(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ov02a10_initialize_controls\00", [36 x i8] zeroinitializer }, align 32
@ov02a10_initialize_controls._entry_ptr = internal global ptr @ov02a10_initialize_controls._entry, section ".printk_index", align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Eight Vertical Colour Bars\00", [37 x i8] zeroinitializer }, align 32
@ov02a10_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.10, i32 414, ptr @.str.26, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable eclk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov02a10_power_on\00", [47 x i8] zeroinitializer }, align 32
@ov02a10_power_on._entry_ptr = internal global ptr @ov02a10_power_on._entry, section ".printk_index", align 4
@ov02a10_power_on._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.10, i32 421, ptr @.str.26, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@ov02a10_power_on._entry_ptr.42 = internal global ptr @ov02a10_power_on._entry.40, section ".printk_index", align 4
@ov02a10_check_sensor_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.10, i32 395, ptr @.str.26, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unexpected sensor id(0x%04x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov02a10_check_sensor_id\00", [40 x i8] zeroinitializer }, align 32
@ov02a10_check_sensor_id._entry_ptr = internal global ptr @ov02a10_check_sensor_id._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963793, i64 10356993, i64 10356995, i64 10422531]
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"ov02a10_i2c_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1001, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1003, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"ov02a10_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 995, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"ov02a10_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 572, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 871, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"ov02a10_subdev_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 721, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 880, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 886, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 889, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 891, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 895, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 900, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 903, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 905, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 908, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 910, i32 42 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 913, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 921, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 923, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 258, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 930, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"ov02a10_subdev_entity_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 726, i32 45 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 942, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 950, i32 28 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 957, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 830, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 245, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 844, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"ov02a10_video_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 709, i32 43 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"ov02a10_pad_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 713, i32 41 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 484, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 998, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 78, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 79, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 80, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [23 x i8] c"ov02a10_1600x1200_regs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 144, i32 33 }
@___asan_gen_.183 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 748, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"ov02a10_ctrl_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 730, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant [26 x i8] c"ov02a10_test_pattern_menu\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 240, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 792, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 241, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 242, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 414, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 421, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [31 x i8] c"../drivers/media/i2c/ov02a10.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 395, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ov02a10_i2c_driver_exit, ptr @__initcall__kmod_ov02a10__293_1010_ov02a10_i2c_driver_init6, ptr @__ov02a10_start_stream._entry, ptr @__ov02a10_start_stream._entry_ptr, ptr @ov02a10_check_hwcfg._entry, ptr @ov02a10_check_hwcfg._entry_ptr, ptr @ov02a10_check_sensor_id._entry, ptr @ov02a10_check_sensor_id._entry_ptr, ptr @ov02a10_i2c_driver_exit, ptr @ov02a10_initialize_controls._entry, ptr @ov02a10_initialize_controls._entry_ptr, ptr @ov02a10_power_on._entry, ptr @ov02a10_power_on._entry.40, ptr @ov02a10_power_on._entry_ptr, ptr @ov02a10_power_on._entry_ptr.42, ptr @ov02a10_probe._entry, ptr @ov02a10_probe._entry_ptr, ptr @ov02a10_i2c_driver, ptr @.str, ptr @ov02a10_of_match, ptr @ov02a10_pm_ops, ptr @.str.1, ptr @ov02a10_subdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ov02a10_probe.__key, ptr @.str.18, ptr @supported_modes, ptr @.str.19, ptr @ov02a10_subdev_entity_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @link_freq_menu_items, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ov02a10_video_ops, ptr @ov02a10_pad_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ov02a10_1600x1200_regs, ptr @ov02a10_initialize_controls._key, ptr @.str.33, ptr @ov02a10_ctrl_ops, ptr @ov02a10_test_pattern_menu, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_check_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_1600x1200_regs to i32), i32 186, i32 224, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_initialize_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_test_pattern_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_initialize_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_power_on._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov02a10_check_sensor_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov02a10_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov02a10_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ov02a10_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %rst_gpio.i = getelementptr i8, ptr %7, i32 -136
  %8 = ptrtoint ptr %rst_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #7
  %eclk.i = getelementptr i8, ptr %7, i32 -144
  %10 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eclk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %pd_gpio.i = getelementptr i8, ptr %7, i32 -140
  %12 = ptrtoint ptr %pd_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 1) #7
  %supplies.i = getelementptr i8, ptr %7, i32 -132
  %call2.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %mutex = getelementptr i8, ptr %1, i32 -92
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_probe(ptr noundef %client) #2 align 64 {
entry:
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %clk_volt.i = alloca i32, align 4
  %rotation = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 620, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i187 = tail call ptr @dev_fwnode(ptr noundef %dev1) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_volt.i) #7
  %3 = ptrtoint ptr %clk_volt.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %clk_volt.i, align 4, !annotation !137
  %tobool.not.i = icmp eq ptr %call.i187, null
  br i1 %tobool.not.i, label %if.end.ov02a10_check_hwcfg.exit.thread_crit_edge, label %if.end.i

if.end.ov02a10_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov02a10_check_hwcfg.exit.thread

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call.i187, ptr noundef null) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.ov02a10_check_hwcfg.exit.thread_crit_edge, label %if.end4.i

if.end.i.ov02a10_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov02a10_check_hwcfg.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %bus_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.ov02a10_check_hwcfg.exit.thread_crit_edge

if.end4.i.ov02a10_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov02a10_check_hwcfg.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.23, ptr noundef nonnull %clk_volt.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.if.end12.i_crit_edge

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %clk_volt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_volt.i, align 4
  %mipi_clock_voltage.i = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %mipi_clock_voltage.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mipi_clock_voltage.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end12.i_crit_edge
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %7 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1448.not.i = icmp eq i32 %8, 0
  br i1 %cmp1448.not.i, label %if.end12.i.for.end.i_crit_edge, label %for.body15.lr.ph.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body15.lr.ph.i:                               ; preds = %if.end12.i
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %9 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.inc.i.for.body15.i_crit_edge, %for.body15.lr.ph.i
  %j.049.i = phi i32 [ 0, %for.body15.lr.ph.i ], [ %inc.i, %for.inc.i.for.body15.i_crit_edge ]
  %arrayidx16.i = getelementptr i64, ptr %10, i32 %j.049.i
  %11 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 390000000, i64 %12)
  %cmp17.i = icmp eq i64 %12, 390000000
  br i1 %cmp17.i, label %for.body15.i.for.end.i_crit_edge, label %for.inc.i

for.body15.i.for.end.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body15.i
  %inc.i = add nuw i32 %j.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.ov02a10_check_hwcfg.exit.thread199_crit_edge, label %for.inc.i.for.body15.i_crit_edge

for.inc.i.for.body15.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15.i

for.inc.i.ov02a10_check_hwcfg.exit.thread199_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov02a10_check_hwcfg.exit.thread199

for.end.i:                                        ; preds = %for.body15.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.end12.i.for.end.i_crit_edge ], [ %j.049.i, %for.body15.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %8)
  %cmp21.i = icmp eq i32 %j.0.lcssa.i, %8
  br i1 %cmp21.i, label %for.end.i.ov02a10_check_hwcfg.exit.thread199_crit_edge, label %ov02a10_check_hwcfg.exit

for.end.i.ov02a10_check_hwcfg.exit.thread199_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov02a10_check_hwcfg.exit.thread199

ov02a10_check_hwcfg.exit.thread199:               ; preds = %for.end.i.ov02a10_check_hwcfg.exit.thread199_crit_edge, %for.inc.i.ov02a10_check_hwcfg.exit.thread199_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i64 noundef 390000000) #10
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_volt.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %if.then4

ov02a10_check_hwcfg.exit.thread:                  ; preds = %if.end4.i.ov02a10_check_hwcfg.exit.thread_crit_edge, %if.end.i.ov02a10_check_hwcfg.exit.thread_crit_edge, %if.end.ov02a10_check_hwcfg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i, %if.end4.i.ov02a10_check_hwcfg.exit.thread_crit_edge ], [ -6, %if.end.i.ov02a10_check_hwcfg.exit.thread_crit_edge ], [ -22, %if.end.ov02a10_check_hwcfg.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_volt.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %if.then4

ov02a10_check_hwcfg.exit:                         ; preds = %for.end.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_volt.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br i1 %tobool10.not.i, label %if.end6, label %ov02a10_check_hwcfg.exit.if.then4_crit_edge

ov02a10_check_hwcfg.exit.if.then4_crit_edge:      ; preds = %ov02a10_check_hwcfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %ov02a10_check_hwcfg.exit.if.then4_crit_edge, %ov02a10_check_hwcfg.exit.thread, %ov02a10_check_hwcfg.exit.thread199
  %retval.0.i198 = phi i32 [ %retval.0.i.ph, %ov02a10_check_hwcfg.exit.thread ], [ %call.i.i, %ov02a10_check_hwcfg.exit.if.then4_crit_edge ], [ -22, %ov02a10_check_hwcfg.exit.thread199 ]
  %call5 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %retval.0.i198, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end6:                                          ; preds = %ov02a10_check_hwcfg.exit
  %subdev = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 9
  call void @v4l2_i2c_subdev_init(ptr noundef %subdev, ptr noundef %client, ptr noundef nonnull @ov02a10_subdev_ops) #7
  %mipi_clock_voltage = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %mipi_clock_voltage to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %mipi_clock_voltage, align 4
  %code = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12295, ptr %code, align 4
  %15 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rotation, align 4
  %call.i188 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %rotation, i32 noundef 1) #7
  %16 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rotation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %17)
  %cmp = icmp eq i32 %17, 180
  br i1 %cmp, label %if.then8, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %upside_down = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %upside_down to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %upside_down, align 1
  %19 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12303, ptr %code, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %call12 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #7
  %eclk = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %eclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call12, ptr %eclk, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call12 to i32
  %call18 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %21, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call.i189 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %cmp21 = icmp slt i32 %call.i189, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i189, ptr noundef nonnull @.str.6) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %22 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eclk, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call.i, align 4
  %call27 = call i32 @clk_set_rate(ptr noundef %23, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call27, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %26 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eclk, align 4
  %call33 = call i32 @clk_get_rate(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 24000000
  br i1 %cmp34.not, label %if.end31.if.end36_crit_edge, label %do.end

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end, %if.end31.if.end36_crit_edge
  %call37 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 7) #7
  %pd_gpio = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %pd_gpio to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call37, ptr %pd_gpio, align 4
  %cmp.i190 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call37 to i32
  %call43 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %29, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %call45 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 7) #7
  %rst_gpio = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call45, ptr %rst_gpio, align 4
  %cmp.i191 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then48, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end44
  %arrayidx54 = getelementptr %struct.ov02a10, ptr %call.i, i32 0, i32 5, i32 0
  %31 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.30, ptr %arrayidx54, align 4
  %arrayidx54.1 = getelementptr %struct.ov02a10, ptr %call.i, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.31, ptr %arrayidx54.1, align 4
  %arrayidx54.2 = getelementptr %struct.ov02a10, ptr %call.i, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.32, ptr %arrayidx54.2, align 4
  %call56 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.body61, label %if.then58

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call45 to i32
  %call51 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %34, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.then58:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call56, ptr noundef nonnull @.str.17) #7
  br label %cleanup

do.body61:                                        ; preds = %for.body.preheader
  %mutex = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 8
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @ov02a10_probe.__key) #7
  %cur_mode = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 14
  %35 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %call64 = call fastcc i32 @ov02a10_initialize_controls(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call64, ptr noundef nonnull @.str.19) #7
  br label %err_destroy_mutex

if.end68:                                         ; preds = %do.body61
  %flags = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 9, i32 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %or = or i32 %37, 4
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 9, i32 0, i32 11
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ov02a10_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  %39 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 10
  %flags73 = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 10, i32 4
  %40 = ptrtoint ptr %flags73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %flags73, align 4
  %call77 = call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call77, ptr noundef nonnull @.str.20) #7
  br label %err_free_handler

if.end81:                                         ; preds = %if.end68
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 15
  %41 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i192 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i192, label %if.end81.if.end89_crit_edge, label %if.then83

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then83:                                        ; preds = %if.end81
  %call84 = call i32 @ov02a10_power_on(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then86, label %if.then83.if.end89_crit_edge

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then86:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call84, ptr noundef nonnull @.str.21) #7
  br label %err_free_handler

if.end89:                                         ; preds = %if.then83.if.end89_crit_edge, %if.end81.if.end89_crit_edge
  %call91 = call i32 @v4l2_async_register_subdev(ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end89.cleanup_crit_edge, label %if.then93

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then93:                                        ; preds = %if.end89
  %call94 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call91, ptr noundef nonnull @.str.22) #7
  %42 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i194 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i194)
  %tobool.not.i195 = icmp ult i16 %bf.load.i194, 8192
  br i1 %tobool.not.i195, label %if.then97, label %if.else

if.then97:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %err_free_handler

if.else:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = call i32 @ov02a10_power_off(ptr noundef %dev1)
  br label %err_free_handler

err_free_handler:                                 ; preds = %if.else, %if.then97, %if.then86, %if.then79
  %ret.1 = phi i32 [ %call77, %if.then79 ], [ %call91, %if.then97 ], [ %call91, %if.else ], [ %call84, %if.then86 ]
  %ctrl_handler = getelementptr inbounds %struct.ov02a10, ptr %call.i, i32 0, i32 9, i32 8
  %43 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %44) #7
  br label %err_destroy_mutex

err_destroy_mutex:                                ; preds = %err_free_handler, %if.then66
  %ret.2 = phi i32 [ %call64, %if.then66 ], [ %ret.1, %err_free_handler ]
  call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_mutex, %if.end89.cleanup_crit_edge, %if.then58, %if.then48, %if.then40, %if.then29, %if.then22, %if.then15, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call18, %if.then15 ], [ %call23, %if.then22 ], [ %call30, %if.then29 ], [ %call43, %if.then40 ], [ %call51, %if.then48 ], [ %call59, %if.then58 ], [ %ret.2, %err_destroy_mutex ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_power_off(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rst_gpio = getelementptr i8, ptr %1, i32 -136
  %2 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  %eclk = getelementptr i8, ptr %1, i32 -144
  %4 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %pd_gpio = getelementptr i8, ptr %1, i32 -140
  %6 = ptrtoint ptr %pd_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #7
  %supplies = getelementptr i8, ptr %1, i32 -132
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov02a10_initialize_controls(ptr noundef %ov02a10) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.ov02a10, ptr %ov02a10, i32 0, i32 9, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %ctrl_handler = getelementptr inbounds %struct.ov02a10, ptr %ov02a10, i32 0, i32 12
  %cur_mode = getelementptr inbounds %struct.ov02a10, ptr %ov02a10, i32 0, i32 14
  %2 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_mode, align 4
  %call1 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 7, ptr noundef nonnull @ov02a10_initialize_controls._key, ptr noundef nonnull @.str.33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ov02a10, ptr %ov02a10, i32 0, i32 8
  %lock = getelementptr inbounds %struct.ov02a10, ptr %ov02a10, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mutex, ptr %lock, align 4
  %call2 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler, ptr noundef null, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2, i32 0, i32 20
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %7 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 390000000, i64 3689348814741910323) #11, !srcloc !138
  %8 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 390000000, i64 %7) #11, !srcloc !139
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef null, i32 noundef 10422530, i64 noundef 0, i64 noundef %8, i64 noundef 1, i64 noundef %8) #7
  %hts_def = getelementptr inbounds %struct.ov02a10_mode, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %hts_def to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hts_def, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %sub = sub i32 %10, %12
  %conv = zext i32 %sub to i64
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef null, i32 noundef 10356994, i64 noundef %conv, i64 noundef %conv, i64 noundef 1, i64 noundef %conv) #7
  %vts_def = getelementptr inbounds %struct.ov02a10_mode, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vts_def, align 4
  %height = getelementptr inbounds %struct.ov02a10_mode, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %sub9 = sub i32 %14, %16
  %conv10 = zext i32 %sub9 to i64
  %sub12 = sub i32 8351, %16
  %conv13 = zext i32 %sub12 to i64
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov02a10_ctrl_ops, i32 noundef 10356993, i64 noundef %conv10, i64 noundef %conv13, i64 noundef 1, i64 noundef %conv10) #7
  %17 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vts_def, align 4
  %sub16 = add i32 %18, -4
  %conv17 = zext i32 %sub16 to i64
  %exp_def = getelementptr inbounds %struct.ov02a10_mode, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %exp_def to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %exp_def, align 4
  %conv18 = zext i32 %20 to i64
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov02a10_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv17, i64 noundef 1, i64 noundef %conv18) #7
  %exposure = getelementptr inbounds %struct.ov02a10, ptr %ov02a10, i32 0, i32 13
  %21 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call19, ptr %exposure, align 4
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov02a10_ctrl_ops, i32 noundef 10356995, i64 noundef 16, i64 noundef 248, i64 noundef 1, i64 noundef 64) #7
  %call21 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler, ptr noundef nonnull @ov02a10_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov02a10_test_pattern_menu) #7
  %error = getelementptr inbounds %struct.ov02a10, ptr %ov02a10, i32 0, i32 12, i32 9
  %22 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %23) #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_handler27 = getelementptr inbounds %struct.ov02a10, ptr %ov02a10, i32 0, i32 9, i32 8
  %24 = ptrtoint ptr %ctrl_handler27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ctrl_handler, ptr %ctrl_handler27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then23 ], [ 0, %if.end25 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_power_on(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rst_gpio = getelementptr i8, ptr %1, i32 -136
  %2 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  %pd_gpio = getelementptr i8, ptr %1, i32 -140
  %4 = ptrtoint ptr %pd_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #7
  %eclk = getelementptr i8, ptr %1, i32 -144
  %6 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %supplies = getelementptr i8, ptr %1, i32 -132
  %call3 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %disable_clk

if.end9:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %8 = ptrtoint ptr %pd_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %10 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 152
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %13, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end9.disable_regulator_crit_edge, label %if.end.i36

if.end9.disable_regulator_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulator

if.end.i36:                                       ; preds = %if.end9
  %conv.i.i = trunc i32 %call.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 9481, i16 %conv.i.i)
  %cmp3.not.i = icmp eq i16 %conv.i.i, 9481
  br i1 %cmp3.not.i, label %if.end.i36.cleanup_crit_edge, label %do.end.i

if.end.i36.cleanup_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.i = and i32 %call.i.i, 65535
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43, i32 noundef %conv2.i) #10
  br label %disable_regulator

disable_regulator:                                ; preds = %do.end.i, %if.end9.disable_regulator_crit_edge
  %retval.0.i37.ph = phi i32 [ %call.i.i, %if.end9.disable_regulator_crit_edge ], [ -22, %do.end.i ]
  %call17 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %disable_clk

disable_clk:                                      ; preds = %disable_regulator, %do.end8
  %ret.0 = phi i32 [ %call3, %do.end8 ], [ %retval.0.i37.ph, %disable_regulator ]
  %14 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eclk, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.end.i36.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %ret.0, %disable_clk ], [ 0, %if.end.i36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mutex = getelementptr i8, ptr %sd, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr i8, ptr %sd, i32 -96
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !140
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %on)
  %cmp = icmp eq i32 %4, %on
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool3 = icmp ne i32 %on, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then4
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !142
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !143
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  %cur_mode.i = getelementptr i8, ptr %sd, i32 464
  %8 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_mode.i, align 4
  %reg_list1.i = getelementptr inbounds %struct.ov02a10_mode, ptr %9, i32 0, i32 5
  %regs.i.i = getelementptr inbounds %struct.ov02a10_mode, ptr %9, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %reg_list1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_list1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp13.not.i.i, label %if.end9.if.end.i_crit_edge, label %if.end9.for.body.i.i_crit_edge

if.end9.for.body.i.i_crit_edge:                   ; preds = %if.end9
  br label %for.body.i.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %12 = ptrtoint ptr %reg_list1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_list1.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %13
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end.i_crit_edge

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end9.for.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.for.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ov02a10_reg, ptr %15, i32 %i.014.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %val.i.i = getelementptr %struct.ov02a10_reg, ptr %15, i32 %i.014.i.i, i32 1
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i.i, align 1
  %call3.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %17, i8 noundef zeroext %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %for.body.i.i.if.then12_crit_edge, label %for.cond.i.i

for.body.i.i.if.then12_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end.i:                                         ; preds = %for.cond.i.i.if.end.i_crit_edge, %if.end9.if.end.i_crit_edge
  %ctrl_handler.i = getelementptr i8, ptr %sd, i32 112
  %20 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_handler.i, align 4
  %call4.i = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.if.then12_crit_edge

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end7.i:                                        ; preds = %if.end.i
  %upside_down.i = getelementptr i8, ptr %sd, i32 -95
  %22 = ptrtoint ptr %upside_down.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %upside_down.i, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not.i = icmp eq i8 %23, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end17.i_crit_edge, label %if.then9.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then9.i:                                       ; preds = %if.end7.i
  %call10.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 63, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i46 = icmp slt i32 %call10.i, 0
  br i1 %cmp.i46, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27) #10
  br label %if.then12

if.end12.i:                                       ; preds = %if.then9.i
  %call13.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end12.i.if.then12_crit_edge, label %if.end12.i.if.end17.i_crit_edge

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end12.i.if.then12_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end17.i:                                       ; preds = %if.end12.i.if.end17.i_crit_edge, %if.end7.i.if.end17.i_crit_edge
  %mipi_clock_voltage.i = getelementptr i8, ptr %sd, i32 -148
  %24 = ptrtoint ptr %mipi_clock_voltage.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mipi_clock_voltage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp18.not.i = icmp eq i32 %25, 4
  br i1 %cmp18.not.i, label %if.end17.i.__ov02a10_start_stream.exit_crit_edge, label %if.then19.i

if.end17.i.__ov02a10_start_stream.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov02a10_start_stream.exit

if.then19.i:                                      ; preds = %if.end17.i
  %conv.i = trunc i32 %25 to i8
  %call21.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -95, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then19.i.if.then12_crit_edge, label %if.then19.i.__ov02a10_start_stream.exit_crit_edge

if.then19.i.__ov02a10_start_stream.exit_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov02a10_start_stream.exit

if.then19.i.if.then12_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

__ov02a10_start_stream.exit:                      ; preds = %if.then19.i.__ov02a10_start_stream.exit_crit_edge, %if.end17.i.__ov02a10_start_stream.exit_crit_edge
  %call27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -84, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool11.not = icmp eq i32 %call27.i, 0
  br i1 %tobool11.not, label %__ov02a10_start_stream.exit.if.end20_crit_edge, label %__ov02a10_start_stream.exit.if.then12_crit_edge

__ov02a10_start_stream.exit.if.then12_crit_edge:  ; preds = %__ov02a10_start_stream.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

__ov02a10_start_stream.exit.if.end20_crit_edge:   ; preds = %__ov02a10_start_stream.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then12:                                        ; preds = %__ov02a10_start_stream.exit.if.then12_crit_edge, %if.then19.i.if.then12_crit_edge, %if.end12.i.if.then12_crit_edge, %do.end.i, %if.end.i.if.then12_crit_edge, %for.body.i.i.if.then12_crit_edge
  %retval.0.i4757 = phi i32 [ %call27.i, %__ov02a10_start_stream.exit.if.then12_crit_edge ], [ %call21.i, %if.then19.i.if.then12_crit_edge ], [ %call13.i, %if.end12.i.if.then12_crit_edge ], [ %call4.i, %if.end.i.if.then12_crit_edge ], [ %call10.i, %do.end.i ], [ %call3.i.i, %for.body.i.i.if.then12_crit_edge ]
  %26 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -84, i8 noundef zeroext 0) #7
  %28 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %streaming, align 4
  %call.i49 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i, align 4
  %call1.i51 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext -84, i8 noundef zeroext 0) #7
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i52 = tail call i32 @__pm_runtime_idle(ptr noundef %dev18, i32 noundef 5) #7
  br label %if.end20

if.end20:                                         ; preds = %if.else, %__ov02a10_start_stream.exit.if.end20_crit_edge
  %frombool23 = zext i1 %tobool3 to i8
  %31 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool23, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then12, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ %retval.0.i4757, %if.then12 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
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
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_entity_init_cfg(ptr noundef %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr i8, ptr %sd, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %code.i = getelementptr i8, ptr %sd, i32 236
  %0 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code.i, align 4
  %cur_mode.i = getelementptr i8, ptr %sd, i32 464
  %2 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_mode.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %height.i.i = getelementptr inbounds %struct.ov02a10_mode, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height.i.i, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i.not.i = icmp eq i16 %9, 0
  br i1 %cmp.not.i.not.i, label %do.end.i.i, label %entry.ov02a10_set_fmt.exit_crit_edge, !prof !144

entry.ov02a10_set_fmt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov02a10_set_fmt.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %ov02a10_set_fmt.exit

ov02a10_set_fmt.exit:                             ; preds = %do.end.i.i, %entry.ov02a10_set_fmt.exit_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %11, align 4
  %fmt.sroa.8.8.frame_fmt.0.i.sroa_idx = getelementptr inbounds i8, ptr %11, i32 4
  %13 = ptrtoint ptr %fmt.sroa.8.8.frame_fmt.0.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %fmt.sroa.8.8.frame_fmt.0.i.sroa_idx, align 4
  %fmt.sroa.10.8.frame_fmt.0.i.sroa_idx = getelementptr inbounds i8, ptr %11, i32 8
  %14 = ptrtoint ptr %fmt.sroa.10.8.frame_fmt.0.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %1, ptr %fmt.sroa.10.8.frame_fmt.0.i.sroa_idx, align 4
  %fmt.sroa.11.8.frame_fmt.0.i.sroa_idx = getelementptr inbounds i8, ptr %11, i32 12
  %15 = ptrtoint ptr %fmt.sroa.11.8.frame_fmt.0.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %fmt.sroa.11.8.frame_fmt.0.i.sroa_idx, align 4
  %fmt.sroa.12.8.frame_fmt.0.i.sroa_idx = getelementptr inbounds i8, ptr %11, i32 16
  %16 = call ptr @memset(ptr %fmt.sroa.12.8.frame_fmt.0.i.sroa_idx, i32 0, i32 32)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov02a10_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
  %code1 = getelementptr i8, ptr %sd, i32 236
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
define internal i32 @ov02a10_enum_frame_sizes(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %2 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1600, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %3 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1600, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %4 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1200, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %5 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1200, ptr %min_height, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %mutex = getelementptr i8, ptr %sd, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %8 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fmt4 = getelementptr i8, ptr %sd, i32 228
  %9 = call ptr @memcpy(ptr %format, ptr %fmt4, i32 48)
  %code = getelementptr i8, ptr %sd, i32 236
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  %code6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code6, align 4
  %cur_mode = getelementptr i8, ptr %sd, i32 464
  %13 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_mode, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov02a10_mode, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %mutex = getelementptr i8, ptr %sd, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr i8, ptr %sd, i32 -96
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true.out_unlock_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %code = getelementptr i8, ptr %sd, i32 236
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code2, align 4
  %cur_mode = getelementptr i8, ptr %sd, i32 464
  %7 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_mode, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov02a10_mode, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %field.i, align 4
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4 = icmp eq i32 %17, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %18 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.not.i.not = icmp eq i16 %19, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then5.v4l2_subdev_get_try_format.exit_crit_edge, !prof !144

if.then5.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then5.v4l2_subdev_get_try_format.exit_crit_edge
  %20 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd_state, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fmt1 = getelementptr i8, ptr %sd, i32 228
  br label %if.end8

if.end8:                                          ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %frame_fmt.0 = phi ptr [ %21, %v4l2_subdev_get_try_format.exit ], [ %fmt1, %if.else ]
  %22 = call ptr @memcpy(ptr %frame_fmt.0, ptr %format, i32 48)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end8, %land.lhs.true.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end8 ], [ -16, %land.lhs.true.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov02a10_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -124
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr i8, ptr %1, i32 188
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov02a10_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -4
  %sub = add i32 %add, %11
  %conv = zext i32 %sub to i64
  %exposure = getelementptr i8, ptr %1, i32 184
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
  %default_value = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 13
  %19 = ptrtoint ptr %default_value to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %default_value, align 8
  %call4 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %13, i64 noundef %15, i64 noundef %conv, i64 noundef %18, i64 noundef %20) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end7.sw.epilog_crit_edge [
    i32 9963793, label %sw.bb
    i32 10356995, label %sw.bb11
    i32 10356993, label %sw.bb14
    i32 10422531, label %sw.bb17
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val9, align 4
  %26 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %28 = lshr i32 %25, 8
  %conv.i = trunc i32 %28 to i8
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 3, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.sw.epilog_crit_edge, label %if.end6.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end.i
  %conv7.i = trunc i32 %25 to i8
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 4, i8 noundef zeroext %conv7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end6.i.sw.epilog_crit_edge, label %if.end12.i

if.end6.i.sw.epilog_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end7
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val12, align 4
  %31 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i, align 4
  %call1.i43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %cmp.i44 = icmp slt i32 %call1.i43, 0
  br i1 %cmp.i44, label %sw.bb11.sw.epilog_crit_edge, label %if.end.i48

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i48:                                       ; preds = %sw.bb11
  %conv.i45 = trunc i32 %30 to i8
  %call2.i46 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 36, i8 noundef zeroext %conv.i45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i46)
  %cmp3.i47 = icmp slt i32 %call2.i46, 0
  br i1 %cmp3.i47, label %if.end.i48.sw.epilog_crit_edge, label %if.end6.i49

if.end.i48.sw.epilog_crit_edge:                   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i49:                                      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end7
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val15, align 4
  %35 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i, align 4
  %cur_mode.i = getelementptr i8, ptr %1, i32 188
  %37 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur_mode.i, align 4
  %height.i = getelementptr inbounds %struct.ov02a10_mode, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height.i, align 4
  %add.i = add i32 %34, -1224
  %sub.i = add i32 %add.i, %40
  %call1.i52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext -3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %cmp.i53 = icmp slt i32 %call1.i52, 0
  br i1 %cmp.i53, label %sw.bb14.sw.epilog_crit_edge, label %if.end.i57

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i57:                                       ; preds = %sw.bb14
  %shr.i = lshr i32 %sub.i, 8
  %conv.i54 = trunc i32 %shr.i to i8
  %call2.i55 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 5, i8 noundef zeroext %conv.i54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i55)
  %cmp3.i56 = icmp slt i32 %call2.i55, 0
  br i1 %cmp3.i56, label %if.end.i57.sw.epilog_crit_edge, label %if.end6.i61

if.end.i57.sw.epilog_crit_edge:                   ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i61:                                      ; preds = %if.end.i57
  %conv7.i58 = trunc i32 %sub.i to i8
  %call8.i59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 6, i8 noundef zeroext %conv7.i58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i59)
  %cmp9.i60 = icmp slt i32 %call8.i59, 0
  br i1 %cmp9.i60, label %if.end6.i61.sw.epilog_crit_edge, label %if.end12.i63

if.end6.i61.sw.epilog_crit_edge:                  ; preds = %if.end6.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end12.i63:                                     ; preds = %if.end6.i61
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i62 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end7
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %41 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val18, align 4
  %43 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i, align 4
  %call1.i66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %cmp.i67 = icmp slt i32 %call1.i66, 0
  br i1 %cmp.i67, label %sw.bb17.sw.epilog_crit_edge, label %if.end.i71

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i71:                                       ; preds = %sw.bb17
  %conv.i68 = trunc i32 %42 to i8
  %call2.i69 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -74, i8 noundef zeroext %conv.i68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i69)
  %cmp3.i70 = icmp slt i32 %call2.i69, 0
  br i1 %cmp3.i70, label %if.end.i71.sw.epilog_crit_edge, label %if.end6.i73

if.end.i71.sw.epilog_crit_edge:                   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i73:                                      ; preds = %if.end.i71
  %call7.i72 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i72)
  %cmp8.i = icmp slt i32 %call7.i72, 0
  br i1 %cmp8.i, label %if.end6.i73.sw.epilog_crit_edge, label %if.end11.i

if.end6.i73.sw.epilog_crit_edge:                  ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -84, i8 noundef zeroext 1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end11.i, %if.end6.i73.sw.epilog_crit_edge, %if.end.i71.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %if.end12.i63, %if.end6.i61.sw.epilog_crit_edge, %if.end.i57.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %if.end6.i49, %if.end.i48.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %if.end12.i, %if.end6.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end7.sw.epilog_crit_edge ], [ %call13.i, %if.end12.i ], [ %call1.i, %sw.bb.sw.epilog_crit_edge ], [ %call2.i, %if.end.i.sw.epilog_crit_edge ], [ %call8.i, %if.end6.i.sw.epilog_crit_edge ], [ %call7.i, %if.end6.i49 ], [ %call1.i43, %sw.bb11.sw.epilog_crit_edge ], [ %call2.i46, %if.end.i48.sw.epilog_crit_edge ], [ %call13.i62, %if.end12.i63 ], [ %call1.i52, %sw.bb14.sw.epilog_crit_edge ], [ %call2.i55, %if.end.i57.sw.epilog_crit_edge ], [ %call8.i59, %if.end6.i61.sw.epilog_crit_edge ], [ %call12.i, %if.end11.i ], [ %call1.i66, %sw.bb17.sw.epilog_crit_edge ], [ %call2.i69, %if.end.i71.sw.epilog_crit_edge ], [ %call7.i72, %if.end6.i73.sw.epilog_crit_edge ]
  %call.i75 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_ov02a10__293_1010_ov02a10_i2c_driver_init6, !1, !"__initcall__kmod_ov02a10__293_1010_ov02a10_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov02a10.c", i32 1010, i32 1}
!2 = !{ptr @__exitcall_ov02a10_i2c_driver_exit, !1, !"__exitcall_ov02a10_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov02a10.c", i32 1012, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov02a10.c", i32 1013, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov02a10.c", i32 1014, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov02a10.c", i32 1003, i32 11}
!12 = !{ptr @ov02a10_i2c_driver, !13, !"ov02a10_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov02a10.c", i32 1001, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov02a10.c", i32 871, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov02a10.c", i32 880, i32 32}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ov02a10.c", i32 886, i32 36}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ov02a10.c", i32 889, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov02a10.c", i32 891, i32 38}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ov02a10.c", i32 895, i32 10}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov02a10.c", i32 900, i32 10}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/ov02a10.c", i32 903, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ov02a10_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @ov02a10_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov02a10.c", i32 905, i32 41}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/ov02a10.c", i32 908, i32 10}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ov02a10.c", i32 910, i32 42}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/ov02a10.c", i32 913, i32 10}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ov02a10.c", i32 921, i32 34}
!46 = !{ptr @ov02a10_probe.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov02a10.c", i32 923, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ov02a10.c", i32 930, i32 27}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/ov02a10.c", i32 942, i32 27}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ov02a10.c", i32 950, i32 28}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ov02a10.c", i32 957, i32 27}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/ov02a10.c", i32 830, i32 37}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/ov02a10.c", i32 844, i32 4}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ov02a10_check_hwcfg._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @ov02a10_check_hwcfg._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @link_freq_menu_items, !66, !"link_freq_menu_items", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/ov02a10.c", i32 245, i32 18}
!67 = !{ptr @ov02a10_subdev_ops, !68, !"ov02a10_subdev_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/ov02a10.c", i32 721, i32 37}
!69 = !{ptr @ov02a10_video_ops, !70, !"ov02a10_video_ops", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/ov02a10.c", i32 709, i32 43}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/ov02a10.c", i32 484, i32 4}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__ov02a10_start_stream._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @__ov02a10_start_stream._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @ov02a10_pad_ops, !77, !"ov02a10_pad_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ov02a10.c", i32 713, i32 41}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov02a10.c", i32 78, i32 2}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov02a10.c", i32 79, i32 2}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov02a10.c", i32 80, i32 2}
!86 = distinct !{null, !87, !"ov02a10_supply_names", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov02a10.c", i32 77, i32 27}
!88 = !{ptr @supported_modes, !89, !"supported_modes", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov02a10.c", i32 258, i32 34}
!90 = !{ptr @ov02a10_1600x1200_regs, !91, !"ov02a10_1600x1200_regs", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov02a10.c", i32 144, i32 33}
!92 = !{ptr @ov02a10_initialize_controls._key, !93, !"_key", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov02a10.c", i32 748, i32 8}
!94 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/ov02a10.c", i32 792, i32 3}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ov02a10_initialize_controls._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ov02a10_initialize_controls._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @ov02a10_ctrl_ops, !101, !"ov02a10_ctrl_ops", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ov02a10.c", i32 730, i32 35}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov02a10.c", i32 241, i32 2}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ov02a10.c", i32 242, i32 2}
!106 = !{ptr @ov02a10_test_pattern_menu, !107, !"ov02a10_test_pattern_menu", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ov02a10.c", i32 240, i32 27}
!108 = !{ptr @ov02a10_subdev_entity_ops, !109, !"ov02a10_subdev_entity_ops", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ov02a10.c", i32 726, i32 45}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ov02a10.c", i32 414, i32 3}
!112 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ov02a10_power_on._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @ov02a10_power_on._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ov02a10.c", i32 421, i32 3}
!117 = !{ptr @ov02a10_power_on._entry.40, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ov02a10_power_on._entry_ptr.42, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ov02a10.c", i32 395, i32 3}
!121 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ov02a10_check_sensor_id._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ov02a10_check_sensor_id._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @ov02a10_of_match, !125, !"ov02a10_of_match", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov02a10.c", i32 995, i32 34}
!126 = !{ptr @ov02a10_pm_ops, !127, !"ov02a10_pm_ops", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ov02a10.c", i32 572, i32 32}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
!138 = !{i64 1167365, i64 1167392}
!139 = !{i64 1167705, i64 1167732, i64 1167766, i64 1167787}
!140 = !{i8 0, i8 2}
!141 = !{i64 2148261911}
!142 = !{i64 746734, i64 746759, i64 746781, i64 746797, i64 746809, i64 746829, i64 746853, i64 746869, i64 746881}
!143 = !{i64 2148262099}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{!"branch_weights", i32 2000, i32 1}
