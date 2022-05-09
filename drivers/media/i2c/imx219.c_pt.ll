; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/imx219.c_pt.bc'
source_filename = "../drivers/media/i2c/imx219.c"
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
%struct.imx219_mode = type { i32, i32, %struct.v4l2_rect, i32, %struct.imx219_reg_list }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.imx219_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.imx219_reg = type { i16, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.imx219 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_mbus_framefmt, ptr, i32, ptr, [3 x %struct.regulator_bulk_data], %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_fwnode_device_properties = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_imx219__294_1603_imx219_i2c_driver_init6 = internal global ptr @imx219_i2c_driver_init, section ".initcall6.init", align 4
@imx219_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @imx219_remove, ptr @imx219_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx219_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx219_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_imx219_i2c_driver_exit = internal global ptr @imx219_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [61 x i8] c"imx219.author=Dave Stevenson <dave.stevenson@raspberrypi.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [45 x i8] c"imx219.description=Sony IMX219 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [37 x i8] c"imx219.file=drivers/media/i2c/imx219\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [22 x i8] c"imx219.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx219\00", [25 x i8] zeroinitializer }, align 32
@imx219_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,imx219\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx219_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx219_suspend, ptr @imx219_resume, ptr @imx219_suspend, ptr @imx219_resume, ptr @imx219_suspend, ptr @imx219_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx219_power_off, ptr @imx219_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx219_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @imx219_core_ops, ptr null, ptr null, ptr @imx219_video_ops, ptr null, ptr null, ptr null, ptr @imx219_pad_ops }, [32 x i8] zeroinitializer }, align 32
@imx219_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get xclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx219_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/imx219.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx219_probe._entry_ptr = internal global ptr @imx219_probe._entry, section ".printk_index", align 4
@imx219_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xclk frequency not supported: %d Hz\0A\00", [59 x i8] zeroinitializer }, align 32
@imx219_probe._entry_ptr.8 = internal global ptr @imx219_probe._entry.6, section ".printk_index", align 4
@imx219_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@imx219_probe._entry_ptr.11 = internal global ptr @imx219_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [4 x %struct.imx219_mode], [48 x i8] } { [4 x %struct.imx219_mode] [%struct.imx219_mode { i32 3280, i32 2464, %struct.v4l2_rect { i32 8, i32 8, i32 3280, i32 2464 }, i32 3526, %struct.imx219_reg_list { i32 54, ptr @mode_3280x2464_regs } }, %struct.imx219_mode { i32 1920, i32 1080, %struct.v4l2_rect { i32 688, i32 700, i32 1920, i32 1080 }, i32 1763, %struct.imx219_reg_list { i32 54, ptr @mode_1920_1080_regs } }, %struct.imx219_mode { i32 1640, i32 1232, %struct.v4l2_rect { i32 8, i32 8, i32 3280, i32 2464 }, i32 1763, %struct.imx219_reg_list { i32 54, ptr @mode_1640_1232_regs } }, %struct.imx219_mode { i32 640, i32 480, %struct.v4l2_rect { i32 1008, i32 760, i32 1280, i32 960 }, i32 1763, %struct.imx219_reg_list { i32 54, ptr @mode_640_480_regs } }], [48 x i8] zeroinitializer }, align 32
@imx219_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @imx219_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@imx219_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to init entity pads: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@imx219_probe._entry_ptr.15 = internal global ptr @imx219_probe._entry.13, section ".printk_index", align 4
@imx219_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to register sensor sub-device: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx219_probe._entry_ptr.18 = internal global ptr @imx219_probe._entry.16, section ".printk_index", align 4
@imx219_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@imx219_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx219_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx219_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @imx219_enum_mbus_code, ptr @imx219_enum_frame_size, ptr null, ptr @imx219_get_pad_format, ptr @imx219_set_pad_format, ptr @imx219_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx219_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 1048, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx219_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@imx219_start_streaming._entry_ptr = internal global ptr @imx219_start_streaming._entry, section ".printk_index", align 4
@imx219_start_streaming._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 1055, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s failed to set frame format: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@imx219_start_streaming._entry_ptr.23 = internal global ptr @imx219_start_streaming._entry.21, section ".printk_index", align 4
@imx219_write_regs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.imx219_write_regs = private unnamed_addr constant [18 x i8] c"imx219_write_regs\00", align 1
@imx219_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.imx219_write_regs, ptr @.str.3, i32 642, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write reg 0x%4.4x. error = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@imx219_write_regs._entry_ptr = internal global ptr @imx219_write_regs._entry, section ".printk_index", align 4
@imx219_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1090, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s failed to set stream\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx219_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@imx219_stop_streaming._entry_ptr = internal global ptr @imx219_stop_streaming._entry, section ".printk_index", align 4
@codes = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 12303, i32 12298, i32 12302, i32 12295, i32 12308, i32 12290, i32 12307, i32 12289], [32 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@imx219_check_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"endpoint node not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx219_check_hwcfg\00", [45 x i8] zeroinitializer }, align 32
@imx219_check_hwcfg._entry_ptr = internal global ptr @imx219_check_hwcfg._entry, section ".printk_index", align 4
@imx219_check_hwcfg._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 1414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not parse endpoint\0A\00", [38 x i8] zeroinitializer }, align 32
@imx219_check_hwcfg._entry_ptr.33 = internal global ptr @imx219_check_hwcfg._entry.31, section ".printk_index", align 4
@imx219_check_hwcfg._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 1420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"only 2 data lanes are currently supported\0A\00", [53 x i8] zeroinitializer }, align 32
@imx219_check_hwcfg._entry_ptr.36 = internal global ptr @imx219_check_hwcfg._entry.34, section ".printk_index", align 4
@imx219_check_hwcfg._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.3, i32 1426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"link-frequency property not found in DT\0A\00", [55 x i8] zeroinitializer }, align 32
@imx219_check_hwcfg._entry_ptr.39 = internal global ptr @imx219_check_hwcfg._entry.37, section ".printk_index", align 4
@imx219_check_hwcfg._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.3, i32 1433, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Link frequency not supported: %lld\0A\00", [60 x i8] zeroinitializer }, align 32
@imx219_check_hwcfg._entry_ptr.42 = internal global ptr @imx219_check_hwcfg._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VANA\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDIG\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDDL\00", [27 x i8] zeroinitializer }, align 32
@imx219_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 1144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to enable regulators\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx219_power_on\00", [16 x i8] zeroinitializer }, align 32
@imx219_power_on._entry_ptr = internal global ptr @imx219_power_on._entry, section ".printk_index", align 4
@imx219_power_on._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 1151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@imx219_power_on._entry_ptr.50 = internal global ptr @imx219_power_on._entry.48, section ".printk_index", align 4
@imx219_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 1235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read chip id %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx219_identify_module\00", [41 x i8] zeroinitializer }, align 32
@imx219_identify_module._entry_ptr = internal global ptr @imx219_identify_module._entry, section ".printk_index", align 4
@imx219_identify_module._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 1241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip id mismatch: %x!=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@imx219_identify_module._entry_ptr.55 = internal global ptr @imx219_identify_module._entry.53, section ".printk_index", align 4
@mode_3280x2464_regs = internal constant { [54 x %struct.imx219_reg], [40 x i8] } { [54 x %struct.imx219_reg] [%struct.imx219_reg { i16 256, i8 0 }, %struct.imx219_reg { i16 12523, i8 12 }, %struct.imx219_reg { i16 12523, i8 5 }, %struct.imx219_reg { i16 12298, i8 -1 }, %struct.imx219_reg { i16 12299, i8 -1 }, %struct.imx219_reg { i16 12523, i8 5 }, %struct.imx219_reg { i16 12523, i8 9 }, %struct.imx219_reg { i16 276, i8 1 }, %struct.imx219_reg { i16 296, i8 0 }, %struct.imx219_reg { i16 298, i8 24 }, %struct.imx219_reg { i16 299, i8 0 }, %struct.imx219_reg { i16 356, i8 0 }, %struct.imx219_reg { i16 357, i8 0 }, %struct.imx219_reg { i16 358, i8 12 }, %struct.imx219_reg { i16 359, i8 -49 }, %struct.imx219_reg { i16 360, i8 0 }, %struct.imx219_reg { i16 361, i8 0 }, %struct.imx219_reg { i16 362, i8 9 }, %struct.imx219_reg { i16 363, i8 -97 }, %struct.imx219_reg { i16 364, i8 12 }, %struct.imx219_reg { i16 365, i8 -48 }, %struct.imx219_reg { i16 366, i8 9 }, %struct.imx219_reg { i16 367, i8 -96 }, %struct.imx219_reg { i16 368, i8 1 }, %struct.imx219_reg { i16 369, i8 1 }, %struct.imx219_reg { i16 372, i8 0 }, %struct.imx219_reg { i16 373, i8 0 }, %struct.imx219_reg { i16 769, i8 5 }, %struct.imx219_reg { i16 771, i8 1 }, %struct.imx219_reg { i16 772, i8 3 }, %struct.imx219_reg { i16 773, i8 3 }, %struct.imx219_reg { i16 774, i8 0 }, %struct.imx219_reg { i16 775, i8 57 }, %struct.imx219_reg { i16 779, i8 1 }, %struct.imx219_reg { i16 780, i8 0 }, %struct.imx219_reg { i16 781, i8 114 }, %struct.imx219_reg { i16 1572, i8 12 }, %struct.imx219_reg { i16 1573, i8 -48 }, %struct.imx219_reg { i16 1574, i8 9 }, %struct.imx219_reg { i16 1575, i8 -96 }, %struct.imx219_reg { i16 17758, i8 0 }, %struct.imx219_reg { i16 18206, i8 75 }, %struct.imx219_reg { i16 18279, i8 15 }, %struct.imx219_reg { i16 18256, i8 20 }, %struct.imx219_reg { i16 17728, i8 0 }, %struct.imx219_reg { i16 18356, i8 20 }, %struct.imx219_reg { i16 18195, i8 48 }, %struct.imx219_reg { i16 18315, i8 16 }, %struct.imx219_reg { i16 18319, i8 16 }, %struct.imx219_reg { i16 18323, i8 16 }, %struct.imx219_reg { i16 18327, i8 14 }, %struct.imx219_reg { i16 18331, i8 14 }, %struct.imx219_reg { i16 354, i8 13 }, %struct.imx219_reg { i16 355, i8 120 }], [40 x i8] zeroinitializer }, align 32
@mode_1920_1080_regs = internal constant { [54 x %struct.imx219_reg], [40 x i8] } { [54 x %struct.imx219_reg] [%struct.imx219_reg { i16 256, i8 0 }, %struct.imx219_reg { i16 12523, i8 5 }, %struct.imx219_reg { i16 12523, i8 12 }, %struct.imx219_reg { i16 12298, i8 -1 }, %struct.imx219_reg { i16 12299, i8 -1 }, %struct.imx219_reg { i16 12523, i8 5 }, %struct.imx219_reg { i16 12523, i8 9 }, %struct.imx219_reg { i16 276, i8 1 }, %struct.imx219_reg { i16 296, i8 0 }, %struct.imx219_reg { i16 298, i8 24 }, %struct.imx219_reg { i16 299, i8 0 }, %struct.imx219_reg { i16 354, i8 13 }, %struct.imx219_reg { i16 355, i8 120 }, %struct.imx219_reg { i16 356, i8 2 }, %struct.imx219_reg { i16 357, i8 -88 }, %struct.imx219_reg { i16 358, i8 10 }, %struct.imx219_reg { i16 359, i8 39 }, %struct.imx219_reg { i16 360, i8 2 }, %struct.imx219_reg { i16 361, i8 -76 }, %struct.imx219_reg { i16 362, i8 6 }, %struct.imx219_reg { i16 363, i8 -21 }, %struct.imx219_reg { i16 364, i8 7 }, %struct.imx219_reg { i16 365, i8 -128 }, %struct.imx219_reg { i16 366, i8 4 }, %struct.imx219_reg { i16 367, i8 56 }, %struct.imx219_reg { i16 368, i8 1 }, %struct.imx219_reg { i16 369, i8 1 }, %struct.imx219_reg { i16 372, i8 0 }, %struct.imx219_reg { i16 373, i8 0 }, %struct.imx219_reg { i16 769, i8 5 }, %struct.imx219_reg { i16 771, i8 1 }, %struct.imx219_reg { i16 772, i8 3 }, %struct.imx219_reg { i16 773, i8 3 }, %struct.imx219_reg { i16 774, i8 0 }, %struct.imx219_reg { i16 775, i8 57 }, %struct.imx219_reg { i16 779, i8 1 }, %struct.imx219_reg { i16 780, i8 0 }, %struct.imx219_reg { i16 781, i8 114 }, %struct.imx219_reg { i16 1572, i8 7 }, %struct.imx219_reg { i16 1573, i8 -128 }, %struct.imx219_reg { i16 1574, i8 4 }, %struct.imx219_reg { i16 1575, i8 56 }, %struct.imx219_reg { i16 17758, i8 0 }, %struct.imx219_reg { i16 18206, i8 75 }, %struct.imx219_reg { i16 18279, i8 15 }, %struct.imx219_reg { i16 18256, i8 20 }, %struct.imx219_reg { i16 17728, i8 0 }, %struct.imx219_reg { i16 18356, i8 20 }, %struct.imx219_reg { i16 18195, i8 48 }, %struct.imx219_reg { i16 18315, i8 16 }, %struct.imx219_reg { i16 18319, i8 16 }, %struct.imx219_reg { i16 18323, i8 16 }, %struct.imx219_reg { i16 18327, i8 14 }, %struct.imx219_reg { i16 18331, i8 14 }], [40 x i8] zeroinitializer }, align 32
@mode_1640_1232_regs = internal constant { [54 x %struct.imx219_reg], [40 x i8] } { [54 x %struct.imx219_reg] [%struct.imx219_reg { i16 256, i8 0 }, %struct.imx219_reg { i16 12523, i8 12 }, %struct.imx219_reg { i16 12523, i8 5 }, %struct.imx219_reg { i16 12298, i8 -1 }, %struct.imx219_reg { i16 12299, i8 -1 }, %struct.imx219_reg { i16 12523, i8 5 }, %struct.imx219_reg { i16 12523, i8 9 }, %struct.imx219_reg { i16 276, i8 1 }, %struct.imx219_reg { i16 296, i8 0 }, %struct.imx219_reg { i16 298, i8 24 }, %struct.imx219_reg { i16 299, i8 0 }, %struct.imx219_reg { i16 356, i8 0 }, %struct.imx219_reg { i16 357, i8 0 }, %struct.imx219_reg { i16 358, i8 12 }, %struct.imx219_reg { i16 359, i8 -49 }, %struct.imx219_reg { i16 360, i8 0 }, %struct.imx219_reg { i16 361, i8 0 }, %struct.imx219_reg { i16 362, i8 9 }, %struct.imx219_reg { i16 363, i8 -97 }, %struct.imx219_reg { i16 364, i8 6 }, %struct.imx219_reg { i16 365, i8 104 }, %struct.imx219_reg { i16 366, i8 4 }, %struct.imx219_reg { i16 367, i8 -48 }, %struct.imx219_reg { i16 368, i8 1 }, %struct.imx219_reg { i16 369, i8 1 }, %struct.imx219_reg { i16 372, i8 1 }, %struct.imx219_reg { i16 373, i8 1 }, %struct.imx219_reg { i16 769, i8 5 }, %struct.imx219_reg { i16 771, i8 1 }, %struct.imx219_reg { i16 772, i8 3 }, %struct.imx219_reg { i16 773, i8 3 }, %struct.imx219_reg { i16 774, i8 0 }, %struct.imx219_reg { i16 775, i8 57 }, %struct.imx219_reg { i16 779, i8 1 }, %struct.imx219_reg { i16 780, i8 0 }, %struct.imx219_reg { i16 781, i8 114 }, %struct.imx219_reg { i16 1572, i8 6 }, %struct.imx219_reg { i16 1573, i8 104 }, %struct.imx219_reg { i16 1574, i8 4 }, %struct.imx219_reg { i16 1575, i8 -48 }, %struct.imx219_reg { i16 17758, i8 0 }, %struct.imx219_reg { i16 18206, i8 75 }, %struct.imx219_reg { i16 18279, i8 15 }, %struct.imx219_reg { i16 18256, i8 20 }, %struct.imx219_reg { i16 17728, i8 0 }, %struct.imx219_reg { i16 18356, i8 20 }, %struct.imx219_reg { i16 18195, i8 48 }, %struct.imx219_reg { i16 18315, i8 16 }, %struct.imx219_reg { i16 18319, i8 16 }, %struct.imx219_reg { i16 18323, i8 16 }, %struct.imx219_reg { i16 18327, i8 14 }, %struct.imx219_reg { i16 18331, i8 14 }, %struct.imx219_reg { i16 354, i8 13 }, %struct.imx219_reg { i16 355, i8 120 }], [40 x i8] zeroinitializer }, align 32
@mode_640_480_regs = internal constant { [54 x %struct.imx219_reg], [40 x i8] } { [54 x %struct.imx219_reg] [%struct.imx219_reg { i16 256, i8 0 }, %struct.imx219_reg { i16 12523, i8 5 }, %struct.imx219_reg { i16 12523, i8 12 }, %struct.imx219_reg { i16 12298, i8 -1 }, %struct.imx219_reg { i16 12299, i8 -1 }, %struct.imx219_reg { i16 12523, i8 5 }, %struct.imx219_reg { i16 12523, i8 9 }, %struct.imx219_reg { i16 276, i8 1 }, %struct.imx219_reg { i16 296, i8 0 }, %struct.imx219_reg { i16 298, i8 24 }, %struct.imx219_reg { i16 299, i8 0 }, %struct.imx219_reg { i16 354, i8 13 }, %struct.imx219_reg { i16 355, i8 120 }, %struct.imx219_reg { i16 356, i8 3 }, %struct.imx219_reg { i16 357, i8 -24 }, %struct.imx219_reg { i16 358, i8 8 }, %struct.imx219_reg { i16 359, i8 -25 }, %struct.imx219_reg { i16 360, i8 2 }, %struct.imx219_reg { i16 361, i8 -16 }, %struct.imx219_reg { i16 362, i8 6 }, %struct.imx219_reg { i16 363, i8 -81 }, %struct.imx219_reg { i16 364, i8 2 }, %struct.imx219_reg { i16 365, i8 -128 }, %struct.imx219_reg { i16 366, i8 1 }, %struct.imx219_reg { i16 367, i8 -32 }, %struct.imx219_reg { i16 368, i8 1 }, %struct.imx219_reg { i16 369, i8 1 }, %struct.imx219_reg { i16 372, i8 3 }, %struct.imx219_reg { i16 373, i8 3 }, %struct.imx219_reg { i16 769, i8 5 }, %struct.imx219_reg { i16 771, i8 1 }, %struct.imx219_reg { i16 772, i8 3 }, %struct.imx219_reg { i16 773, i8 3 }, %struct.imx219_reg { i16 774, i8 0 }, %struct.imx219_reg { i16 775, i8 57 }, %struct.imx219_reg { i16 779, i8 1 }, %struct.imx219_reg { i16 780, i8 0 }, %struct.imx219_reg { i16 781, i8 114 }, %struct.imx219_reg { i16 1572, i8 6 }, %struct.imx219_reg { i16 1573, i8 104 }, %struct.imx219_reg { i16 1574, i8 4 }, %struct.imx219_reg { i16 1575, i8 -48 }, %struct.imx219_reg { i16 17758, i8 0 }, %struct.imx219_reg { i16 18206, i8 75 }, %struct.imx219_reg { i16 18279, i8 15 }, %struct.imx219_reg { i16 18256, i8 20 }, %struct.imx219_reg { i16 17728, i8 0 }, %struct.imx219_reg { i16 18356, i8 20 }, %struct.imx219_reg { i16 18195, i8 48 }, %struct.imx219_reg { i16 18315, i8 16 }, %struct.imx219_reg { i16 18319, i8 16 }, %struct.imx219_reg { i16 18323, i8 16 }, %struct.imx219_reg { i16 18327, i8 14 }, %struct.imx219_reg { i16 18331, i8 14 }], [40 x i8] zeroinitializer }, align 32
@imx219_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"imx219:1286:(ctrl_hdlr)->_lock\00", [33 x i8] zeroinitializer }, align 32
@imx219_init_controls.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&imx219->mutex\00", [17 x i8] zeroinitializer }, align 32
@imx219_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @imx219_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@imx219_link_freq_menu = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 456000000], [24 x i8] zeroinitializer }, align 32
@imx219_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], [44 x i8] zeroinitializer }, align 32
@imx219_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s control init failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx219_init_controls\00", [43 x i8] zeroinitializer }, align 32
@imx219_init_controls._entry_ptr = internal global ptr @imx219_init_controls._entry, section ".printk_index", align 4
@imx219_test_pattern_val = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 2, i32 1, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@imx219_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 791, ptr @.str.62, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ctrl(id:0x%x,val:0x%x) is not handled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx219_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx219_set_ctrl._entry_ptr = internal global ptr @imx219_set_ctrl._entry, section ".printk_index", align 4
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color Bars\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Solid Color\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Grey Color Bars\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PN9\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [10 x i64] [i64 8, i64 32, i64 12289, i64 12290, i64 12295, i64 12298, i64 12302, i64 12303, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.69 = internal global [9 x i64] [i64 7, i64 32, i64 12289, i64 12290, i64 12295, i64 12298, i64 12302, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.73 = internal global [13 x i64] [i64 11, i64 32, i64 9963793, i64 9963796, i64 9963797, i64 10356993, i64 10356995, i64 10356996, i64 10356997, i64 10356998, i64 10356999, i64 10422531, i64 10422533]
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"imx219_i2c_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1593, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1595, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"imx219_dt_ids\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1582, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"imx219_pm_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1588, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"imx219_subdev_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1265, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1465, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1471, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1478, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1483, i32 52 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 472, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"imx219_internal_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1271, i32 46 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1536, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1542, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"imx219_core_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1248, i32 42 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"imx219_video_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1253, i32 43 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"imx219_pad_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1257, i32 41 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1048, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1054, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 640, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1090, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 432, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 998, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1409, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1414, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1420, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1426, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1432, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 416, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 417, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 418, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1143, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1150, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1234, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1240, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c"mode_3280x2464_regs\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 153, i32 32 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c"mode_1920_1080_regs\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 210, i32 32 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c"mode_1640_1232_regs\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 267, i32 32 }
@___asan_gen_.272 = private unnamed_addr constant [18 x i8] c"mode_640_480_regs\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 324, i32 32 }
@___asan_gen_.275 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1286, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1290, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [16 x i8] c"imx219_ctrl_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 801, i32 35 }
@___asan_gen_.290 = private unnamed_addr constant [22 x i8] c"imx219_link_freq_menu\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 393, i32 18 }
@___asan_gen_.293 = private unnamed_addr constant [25 x i8] c"imx219_test_pattern_menu\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 397, i32 27 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1368, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [24 x i8] c"imx219_test_pattern_val\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 405, i32 18 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 789, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 398, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 399, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 400, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 401, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private constant [30 x i8] c"../drivers/media/i2c/imx219.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 402, i32 2 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_imx219_i2c_driver_exit, ptr @__initcall__kmod_imx219__294_1603_imx219_i2c_driver_init6, ptr @imx219_check_hwcfg._entry, ptr @imx219_check_hwcfg._entry.31, ptr @imx219_check_hwcfg._entry.34, ptr @imx219_check_hwcfg._entry.37, ptr @imx219_check_hwcfg._entry.40, ptr @imx219_check_hwcfg._entry_ptr, ptr @imx219_check_hwcfg._entry_ptr.33, ptr @imx219_check_hwcfg._entry_ptr.36, ptr @imx219_check_hwcfg._entry_ptr.39, ptr @imx219_check_hwcfg._entry_ptr.42, ptr @imx219_i2c_driver_exit, ptr @imx219_identify_module._entry, ptr @imx219_identify_module._entry.53, ptr @imx219_identify_module._entry_ptr, ptr @imx219_identify_module._entry_ptr.55, ptr @imx219_init_controls._entry, ptr @imx219_init_controls._entry_ptr, ptr @imx219_power_on._entry, ptr @imx219_power_on._entry.48, ptr @imx219_power_on._entry_ptr, ptr @imx219_power_on._entry_ptr.50, ptr @imx219_probe._entry, ptr @imx219_probe._entry.13, ptr @imx219_probe._entry.16, ptr @imx219_probe._entry.6, ptr @imx219_probe._entry.9, ptr @imx219_probe._entry_ptr, ptr @imx219_probe._entry_ptr.11, ptr @imx219_probe._entry_ptr.15, ptr @imx219_probe._entry_ptr.18, ptr @imx219_probe._entry_ptr.8, ptr @imx219_set_ctrl._entry, ptr @imx219_set_ctrl._entry_ptr, ptr @imx219_start_streaming._entry, ptr @imx219_start_streaming._entry.21, ptr @imx219_start_streaming._entry_ptr, ptr @imx219_start_streaming._entry_ptr.23, ptr @imx219_stop_streaming._entry, ptr @imx219_stop_streaming._entry_ptr, ptr @imx219_write_regs._entry, ptr @imx219_write_regs._entry_ptr, ptr @imx219_i2c_driver, ptr @.str, ptr @imx219_dt_ids, ptr @imx219_pm_ops, ptr @imx219_subdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @supported_modes, ptr @imx219_internal_ops, ptr @.str.14, ptr @.str.17, ptr @imx219_core_ops, ptr @imx219_video_ops, ptr @imx219_pad_ops, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @imx219_write_regs._rs, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @codes, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @mode_3280x2464_regs, ptr @mode_1920_1080_regs, ptr @mode_1640_1232_regs, ptr @mode_640_480_regs, ptr @imx219_init_controls._key, ptr @.str.56, ptr @imx219_init_controls.__key, ptr @.str.57, ptr @imx219_ctrl_ops, ptr @imx219_link_freq_menu, ptr @imx219_test_pattern_menu, ptr @.str.58, ptr @.str.59, ptr @imx219_test_pattern_val, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_start_streaming._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_write_regs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_check_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_check_hwcfg._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_check_hwcfg._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_check_hwcfg._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_check_hwcfg._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_power_on._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_identify_module._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_3280x2464_regs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1920_1080_regs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1640_1232_regs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_640_480_regs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_init_controls.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_link_freq_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_test_pattern_val to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx219_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @imx219_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx219_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @imx219_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler.i, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  %mutex.i = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 16
  tail call void @mutex_destroy(ptr noundef %mutex.i) #7
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
  %reset_gpio.i = getelementptr inbounds %struct.imx219, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #7
  %supplies.i = getelementptr inbounds %struct.imx219, ptr %7, i32 0, i32 6
  %call2.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  %xclk.i = getelementptr inbounds %struct.imx219, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %xclk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xclk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf.i140 = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 1
  %data_buf.i.i = alloca [4 x i8], align 4
  %ep_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 636, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @imx219_subdev_ops) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep_cfg.i) #7
  %0 = call ptr @memset(ptr %ep_cfg.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %ep_cfg.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %call.i131 = tail call ptr @dev_fwnode(ptr noundef %dev1) #7
  %call1.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call.i131, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %imx219_check_hwcfg.exit.thread, label %if.end.i

imx219_check_hwcfg.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep_cfg.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call2.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %ep_cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end8.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #10
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %ep_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep_cfg.i) #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep_cfg.i, i32 0, i32 2, i32 2, i32 3
  %3 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 2
  br i1 %cmp.not.i, label %if.end14.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #10
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %ep_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep_cfg.i) #7
  br label %cleanup

if.end14.i:                                       ; preds = %if.end8.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep_cfg.i, i32 0, i32 4
  %5 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_of_link_frequencies.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end14.i.do.end29.i_crit_edge [
    i32 0, label %do.end19.i
    i32 1, label %lor.lhs.false.i
  ]

if.end14.i.do.end29.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i

do.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #10
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %ep_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep_cfg.i) #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep_cfg.i, i32 0, i32 3
  %8 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_frequencies.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 456000000, i64 %11)
  %cmp24.not.i = icmp eq i64 %11, 456000000
  br i1 %cmp24.not.i, label %if.end6.critedge, label %lor.lhs.false.i.do.end29.i_crit_edge

lor.lhs.false.i.do.end29.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i

do.end29.i:                                       ; preds = %lor.lhs.false.i.do.end29.i_crit_edge, %if.end14.i.do.end29.i_crit_edge
  %link_frequencies30.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep_cfg.i, i32 0, i32 3
  %12 = ptrtoint ptr %link_frequencies30.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_frequencies30.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41, i64 noundef %15) #10
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %ep_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep_cfg.i) #7
  br label %cleanup

if.end6.critedge:                                 ; preds = %lor.lhs.false.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %ep_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep_cfg.i) #7
  %call7 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %xclk = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %xclk, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6.critedge
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %17 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xclk, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6.critedge
  %call15 = call i32 @clk_get_rate(ptr noundef %call7) #7
  %xclk_freq = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %xclk_freq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call15, ptr %xclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call15)
  %cmp.not = icmp eq i32 %call15, 24000000
  br i1 %cmp.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call15) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %21 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx1.i = getelementptr %struct.imx219, ptr %call.i, i32 0, i32 6, i32 0
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.43, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.imx219, ptr %call.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.44, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.imx219, ptr %call.i, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.45, ptr %arrayidx1.2.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %call3.i = call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef 3, ptr noundef %arrayidx1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool24.not = icmp eq i32 %call3.i, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %call30 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call30, ptr %reset_gpio, align 4
  %call31 = call i32 @imx219_power_on(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %27 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %29 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  %31 = getelementptr inbounds [2 x i8], ptr %addr_buf.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %addr_buf.i.i, align 1
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %34 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data_buf.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %35 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i.i, align 2
  %37 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i.i, align 2
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %29, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %41 = load i16, ptr %addr.i.i, align 2
  %arrayidx11.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx11.i.i, align 4
  %flags14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %flags14.i.i, align 2
  %len17.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %len17.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %len17.i.i, align 4
  %arrayidx18.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 2
  %buf20.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %buf20.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx18.i.i, ptr %buf20.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %46 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter.i.i, align 8
  %call22.i.i = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call22.i.i)
  %cmp23.not.i.i = icmp eq i32 %call22.i.i, 2
  br i1 %cmp23.not.i.i, label %if.end.i136, label %do.end.i134

do.end.i134:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %dev.i133 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i133, ptr noundef nonnull @.str.51, i32 noundef 537) #10
  br label %error_power_off

if.end.i136:                                      ; preds = %if.end34
  %48 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 537, i32 %49)
  %cmp.not.i135 = icmp eq i32 %49, 537
  br i1 %cmp.not.i135, label %if.end38, label %do.end5.i

do.end5.i:                                        ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.54, i32 noundef 537, i32 noundef %49) #10
  br label %error_power_off

if.end38:                                         ; preds = %if.end.i136
  %mode = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 15
  %50 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @supported_modes, ptr %mode, align 4
  %51 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %53 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 256, ptr %buf.i, align 2
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 16777216, ptr %53, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %52, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp5.not.i.not = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp5.not.i.not, label %if.end42, label %if.end38.error_power_off_crit_edge

if.end38.error_power_off_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_off

if.end42:                                         ; preds = %if.end38
  call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #7
  %56 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i140) #7
  %58 = getelementptr inbounds [6 x i8], ptr %buf.i140, i32 0, i32 2
  %59 = ptrtoint ptr %buf.i140 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 256, ptr %buf.i140, align 2
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 0, ptr %58, align 2
  %call.i.i142 = call i32 @i2c_transfer_buffer_flags(ptr noundef %57, ptr noundef nonnull %buf.i140, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i142)
  %cmp5.not.i143.not = icmp eq i32 %call.i.i142, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i140) #7
  br i1 %cmp5.not.i143.not, label %if.end46, label %if.end42.error_power_off_crit_edge

if.end42.error_power_off_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_off

if.end46:                                         ; preds = %if.end42
  call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #7
  %call47 = call fastcc i32 @imx219_init_controls(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.error_power_off_crit_edge

if.end46.error_power_off_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_power_off

if.end50:                                         ; preds = %if.end46
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %61 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @imx219_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %or = or i32 %63, 12
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %64 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 1
  %flags54 = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 1, i32 4
  %65 = ptrtoint ptr %flags54 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %flags54, align 4
  %code.i = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 12303, ptr %code.i, align 4
  %colorspace.i = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 2, i32 4
  %67 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8, ptr %colorspace.i, align 4
  %68 = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 2, i32 5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %68, align 4
  %quantization.i = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 2, i32 6
  %70 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %quantization.i, align 2
  %fmt1.i = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 2
  %xfer_func.i = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 2, i32 7
  %71 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 2, ptr %xfer_func.i, align 4
  %72 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3280, ptr %fmt1.i, align 4
  %height.i = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2464, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 2, i32 3
  %74 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %field.i, align 4
  %call58 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end64, label %do.end63

do.end63:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call58) #10
  br label %error_handler_free

if.end64:                                         ; preds = %if.end50
  %call66 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end71, label %if.end72

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call66) #10
  br label %error_handler_free

if.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %call.i145 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i146 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 0) #7
  br label %cleanup

error_handler_free:                               ; preds = %do.end71, %do.end63
  %ret.0 = phi i32 [ %call58, %do.end63 ], [ %call66, %do.end71 ]
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %75 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctrl_handler.i, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %76) #7
  %mutex.i = getelementptr inbounds %struct.imx219, ptr %call.i, i32 0, i32 16
  call void @mutex_destroy(ptr noundef %mutex.i) #7
  br label %error_power_off

error_power_off:                                  ; preds = %error_handler_free, %if.end46.error_power_off_crit_edge, %if.end42.error_power_off_crit_edge, %if.end38.error_power_off_crit_edge, %do.end5.i, %do.end.i134
  %ret.1 = phi i32 [ -5, %if.end38.error_power_off_crit_edge ], [ -5, %if.end42.error_power_off_crit_edge ], [ %call47, %if.end46.error_power_off_crit_edge ], [ %ret.0, %error_handler_free ], [ -5, %do.end.i134 ], [ -5, %do.end5.i ]
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %77 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio.i = getelementptr inbounds %struct.imx219, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %80, i32 noundef 0) #7
  %supplies.i = getelementptr inbounds %struct.imx219, ptr %78, i32 0, i32 6
  %call2.i147 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  %xclk.i = getelementptr inbounds %struct.imx219, ptr %78, i32 0, i32 3
  %81 = ptrtoint ptr %xclk.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %xclk.i, align 4
  call void @clk_disable(ptr noundef %82) #7
  call void @clk_unprepare(ptr noundef %82) #7
  br label %cleanup

cleanup:                                          ; preds = %error_power_off, %if.end72, %if.end29.cleanup_crit_edge, %do.end28, %do.end20, %do.end, %do.end29.i, %do.end19.i, %do.end13.i, %do.end7.i, %imx219_check_hwcfg.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %do.end ], [ -22, %do.end20 ], [ %call3.i, %do.end28 ], [ %ret.1, %error_power_off ], [ 0, %if.end72 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %do.end29.i ], [ %call31, %if.end29.cleanup_crit_edge ], [ -22, %imx219_check_hwcfg.exit.thread ], [ -22, %do.end7.i ], [ -22, %do.end13.i ], [ -22, %do.end19.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_power_off(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset_gpio = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  %supplies = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  %xclk = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_power_on(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplies = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %xclk = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i, %if.end.do.end8_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #10
  %call12 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %reset_gpio = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 6200, i32 noundef 7200, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end8, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval.0.i.ph, %do.end8 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx219_init_controls(ptr noundef %imx219) unnamed_addr #2 align 64 {
entry:
  %props = alloca %struct.v4l2_fwnode_device_properties, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %imx219, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mode = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 15
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode, align 4
  %height1 = getelementptr inbounds %struct.imx219_mode, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %height1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props) #7
  %6 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %props, align 4, !annotation !184
  %7 = getelementptr inbounds %struct.v4l2_fwnode_device_properties, ptr %props, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !184
  %ctrl_handler = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 7
  %call2 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 12, ptr noundef nonnull @imx219_init_controls._key, ptr noundef nonnull @.str.56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.57, ptr noundef nonnull @imx219_init_controls.__key) #7
  %lock = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mutex, ptr %lock, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10422530, i64 noundef 182400000, i64 noundef 182400000, i64 noundef 1, i64 noundef 182400000) #7
  %pixel_rate = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 8
  %10 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %pixel_rate, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @imx219_link_freq_menu) #7
  %link_freq = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 9
  %11 = ptrtoint ptr %link_freq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5, ptr %link_freq, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %do.body.if.end10_crit_edge, label %if.then8

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call5, i32 0, i32 20
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body.if.end10_crit_edge
  %sub = sub i32 65535, %5
  %conv = zext i32 %sub to i64
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mode, align 4
  %vts_def = getelementptr inbounds %struct.imx219_mode, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vts_def, align 4
  %sub12 = sub i32 %17, %5
  %conv13 = zext i32 %sub12 to i64
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10356993, i64 noundef 4, i64 noundef %conv, i64 noundef 1, i64 noundef %conv13) #7
  %vblank = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 13
  %18 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call14, ptr %vblank, align 4
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mode, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %sub16 = sub i32 3448, %22
  %conv17 = sext i32 %sub16 to i64
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10356994, i64 noundef %conv17, i64 noundef %conv17, i64 noundef 1, i64 noundef %conv17) #7
  %hblank21 = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 14
  %23 = ptrtoint ptr %hblank21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call20, ptr %hblank21, align 4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %if.end10.if.end28_crit_edge, label %if.then24

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %flags26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call20, i32 0, i32 20
  %24 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags26, align 4
  %or27 = or i32 %25, 4
  store i32 %or27, ptr %flags26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end10.if.end28_crit_edge
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mode, align 4
  %vts_def30 = getelementptr inbounds %struct.imx219_mode, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %vts_def30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vts_def30, align 4
  %sub31 = add i32 %29, -4
  %30 = tail call i32 @llvm.smin.i32(i32 %sub31, i32 1600)
  %conv33 = sext i32 %sub31 to i64
  %conv34 = sext i32 %30 to i64
  %call35 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv33, i64 noundef 1, i64 noundef %conv34) #7
  %exposure = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 10
  %31 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call35, ptr %exposure, align 4
  %call36 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 232, i64 noundef 1, i64 noundef 0) #7
  %call37 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10422533, i64 noundef 256, i64 noundef 4095, i64 noundef 1, i64 noundef 256) #7
  %call38 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %hflip = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 12
  %32 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call38, ptr %hflip, align 4
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.end28.if.end45_crit_edge, label %if.then41

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then41:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %flags43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call38, i32 0, i32 20
  %33 = ptrtoint ptr %flags43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags43, align 4
  %or44 = or i32 %34, 1024
  store i32 %or44, ptr %flags43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end28.if.end45_crit_edge
  %call46 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 11
  %35 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call46, ptr %vflip, align 4
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %if.end45.if.end53_crit_edge, label %if.then49

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %flags51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call46, i32 0, i32 20
  %36 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags51, align 4
  %or52 = or i32 %37, 1024
  store i32 %or52, ptr %flags51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end45.if.end53_crit_edge
  %call54 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @imx219_test_pattern_menu) #7
  %call57 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10356996, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 1023) #7
  %call57.1 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10356997, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 1023) #7
  %call57.2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10356998, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 1023) #7
  %call57.3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, i32 noundef 10356999, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 1023) #7
  %error = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 7, i32 9
  %38 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool58.not = icmp eq i32 %39, 0
  %dev65 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br i1 %tobool58.not, label %if.end64, label %if.then59

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %39) #10
  br label %error76

if.end64:                                         ; preds = %if.end53
  %call66 = call i32 @v4l2_fwnode_device_parse(ptr noundef %dev65, ptr noundef nonnull %props) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end64.error76_crit_edge

if.end64.error76_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %error76

if.end69:                                         ; preds = %if.end64
  %call70 = call i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef %ctrl_handler, ptr noundef nonnull @imx219_ctrl_ops, ptr noundef nonnull %props) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.error76_crit_edge

if.end69.error76_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %error76

if.end73:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_handler75 = getelementptr inbounds %struct.v4l2_subdev, ptr %imx219, i32 0, i32 8
  %40 = ptrtoint ptr %ctrl_handler75 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ctrl_handler, ptr %ctrl_handler75, align 4
  br label %cleanup

error76:                                          ; preds = %if.end69.error76_crit_edge, %if.end64.error76_crit_edge, %if.then59
  %ret.0 = phi i32 [ %39, %if.then59 ], [ %call66, %if.end64.error76_crit_edge ], [ %call70, %if.end69.error76_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %error76, %if.end73, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error76 ], [ 0, %if.end73 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props) #7
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
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 17
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !185
  %2 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %enable)
  %cmp = icmp eq i32 %2, %enable
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3 = icmp ne i32 %enable, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @imx219_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %err_unlock

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.else:                                          ; preds = %if.end
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %5 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 256, ptr %buf.i.i, align 2
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %5, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %if.else.imx219_stop_streaming.exit_crit_edge, label %do.end.i

if.else.imx219_stop_streaming.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx219_stop_streaming.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #10
  br label %imx219_stop_streaming.exit

imx219_stop_streaming.exit:                       ; preds = %do.end.i, %if.else.imx219_stop_streaming.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 11
  %8 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vflip.i, align 4
  call void @__v4l2_ctrl_grab(ptr noundef %9, i1 noundef zeroext false) #7
  %hflip.i = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 12
  %10 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hflip.i, align 4
  call void @__v4l2_ctrl_grab(ptr noundef %11, i1 noundef zeroext false) #7
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %call.i.i = call i32 @__pm_runtime_idle(ptr noundef %dev2.i, i32 noundef 5) #7
  br label %if.end9

if.end9:                                          ; preds = %imx219_stop_streaming.exit, %if.then4.if.end9_crit_edge
  %frombool = zext i1 %tobool3 to i8
  %12 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

err_unlock:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.end9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5, %err_unlock ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx219_start_streaming(ptr nocapture noundef readonly %imx219) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  %buf.i.i5.i = alloca [6 x i8], align 2
  %buf.i.i.i = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %imx219, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !187
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !188
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 15
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode, align 4
  %reg_list2 = getelementptr inbounds %struct.imx219_mode, ptr %4, i32 0, i32 4
  %regs = getelementptr inbounds %struct.imx219_mode, ptr %4, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = ptrtoint ptr %reg_list2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_list2, align 4
  %9 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp24.not.i = icmp eq i32 %8, 0
  br i1 %cmp24.not.i, label %if.end.if.end6_crit_edge, label %for.body.lr.ph.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body.lr.ph.i:                                 ; preds = %if.end
  %11 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.cond.i.if.end6_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.end6_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx219_reg, ptr %6, i32 %i.025.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  %val.i = getelementptr %struct.imx219_reg, ptr %6, i32 %i.025.i, i32 1
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i, align 2
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %buf.i.i, align 2
  %shl.i.i = shl nuw i32 %conv.i, 24
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %shl.i.i, ptr %11, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %for.cond.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @imx219_write_regs._rs, ptr noundef nonnull @__func__.imx219_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end_crit_edge, label %do.end.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %conv9.i = zext i16 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %conv9.i, i32 noundef -5) #10
  br label %do.end

do.end:                                           ; preds = %do.end.i, %do.body.i.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #10
  br label %err_rpm_put

if.end6:                                          ; preds = %for.cond.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %code.i = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %23, label %if.end6.do.end12_crit_edge [
    i32 12308, label %if.end6.sw.bb.i_crit_edge
    i32 12290, label %if.end6.sw.bb.i_crit_edge65
    i32 12307, label %if.end6.sw.bb.i_crit_edge66
    i32 12289, label %if.end6.sw.bb.i_crit_edge67
    i32 12303, label %if.end6.sw.bb1.i_crit_edge
    i32 12298, label %if.end6.sw.bb1.i_crit_edge68
    i32 12302, label %if.end6.sw.bb1.i_crit_edge69
    i32 12295, label %if.end6.sw.bb1.i_crit_edge70
  ]

if.end6.sw.bb1.i_crit_edge70:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end6.sw.bb1.i_crit_edge69:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end6.sw.bb1.i_crit_edge68:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end6.sw.bb1.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end6.sw.bb.i_crit_edge67:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end6.sw.bb.i_crit_edge66:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end6.sw.bb.i_crit_edge65:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end6.sw.bb.i_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end6.do.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

sw.bb.i:                                          ; preds = %if.end6.sw.bb.i_crit_edge, %if.end6.sw.bb.i_crit_edge65, %if.end6.sw.bb.i_crit_edge66, %if.end6.sw.bb.i_crit_edge67
  %25 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i, align 4
  %27 = getelementptr inbounds [6 x i8], ptr %buf.i.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  %28 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 396, ptr %buf.i.i.i, align 2
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 134217728, ptr %27, align 2
  %call.i.i.i.i47 = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buf.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i47)
  %cmp5.not.i.i.i = icmp eq i32 %call.i.i.i.i47, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  br i1 %cmp5.not.i.i.i, label %for.cond.i.i, label %sw.bb.i.do.body.i.i_crit_edge

sw.bb.i.do.body.i.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.cond.i.i:                                     ; preds = %sw.bb.i
  %30 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  %32 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 397, ptr %buf.i.i.i, align 2
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 134217728, ptr %27, align 2
  %call.i.i.i.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %buf.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.1.i)
  %cmp5.not.i.i.1.i = icmp eq i32 %call.i.i.i.1.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  br i1 %cmp5.not.i.i.1.i, label %for.cond.i.1.i, label %for.cond.i.i.do.body.i.i_crit_edge

for.cond.i.i.do.body.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.cond.i.1.i:                                   ; preds = %for.cond.i.i
  %34 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  %36 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 777, ptr %buf.i.i.i, align 2
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 134217728, ptr %27, align 2
  %call.i.i.i.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %buf.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.2.i)
  %cmp5.not.i.i.2.i = icmp eq i32 %call.i.i.i.2.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  br i1 %cmp5.not.i.i.2.i, label %for.cond.i.1.i.if.end14_crit_edge, label %for.cond.i.1.i.do.body.i.i_crit_edge

for.cond.i.1.i.do.body.i.i_crit_edge:             ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.cond.i.1.i.if.end14_crit_edge:                ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body.i.i:                                      ; preds = %for.cond.i.1.i.do.body.i.i_crit_edge, %for.cond.i.i.do.body.i.i_crit_edge, %sw.bb.i.do.body.i.i_crit_edge
  %.lcssa.i = phi i32 [ 396, %sw.bb.i.do.body.i.i_crit_edge ], [ 397, %for.cond.i.i.do.body.i.i_crit_edge ], [ 777, %for.cond.i.1.i.do.body.i.i_crit_edge ]
  %call3.i.i = call i32 @___ratelimit(ptr noundef nonnull @imx219_write_regs._rs, ptr noundef nonnull @__func__.imx219_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.do.end12_crit_edge, label %do.body.i.i.return.sink.split.i_crit_edge

do.body.i.i.return.sink.split.i_crit_edge:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

do.body.i.i.do.end12_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

sw.bb1.i:                                         ; preds = %if.end6.sw.bb1.i_crit_edge, %if.end6.sw.bb1.i_crit_edge68, %if.end6.sw.bb1.i_crit_edge69, %if.end6.sw.bb1.i_crit_edge70
  %38 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i, align 4
  %40 = getelementptr inbounds [6 x i8], ptr %buf.i.i5.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i5.i) #7
  %41 = ptrtoint ptr %buf.i.i5.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 396, ptr %buf.i.i5.i, align 2
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 167772160, ptr %40, align 2
  %call.i.i.i15.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %buf.i.i5.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i15.i)
  %cmp5.not.i.i16.i = icmp eq i32 %call.i.i.i15.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i5.i) #7
  br i1 %cmp5.not.i.i16.i, label %for.cond.i9.i, label %sw.bb1.i.do.body.i20.i_crit_edge

sw.bb1.i.do.body.i20.i_crit_edge:                 ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i20.i

for.cond.i9.i:                                    ; preds = %sw.bb1.i
  %43 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i5.i) #7
  %45 = ptrtoint ptr %buf.i.i5.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 397, ptr %buf.i.i5.i, align 2
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 167772160, ptr %40, align 2
  %call.i.i.i15.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %44, ptr noundef nonnull %buf.i.i5.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i15.1.i)
  %cmp5.not.i.i16.1.i = icmp eq i32 %call.i.i.i15.1.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i5.i) #7
  br i1 %cmp5.not.i.i16.1.i, label %for.cond.i9.1.i, label %for.cond.i9.i.do.body.i20.i_crit_edge

for.cond.i9.i.do.body.i20.i_crit_edge:            ; preds = %for.cond.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i20.i

for.cond.i9.1.i:                                  ; preds = %for.cond.i9.i
  %47 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i5.i) #7
  %49 = ptrtoint ptr %buf.i.i5.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 777, ptr %buf.i.i5.i, align 2
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 167772160, ptr %40, align 2
  %call.i.i.i15.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buf.i.i5.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i15.2.i)
  %cmp5.not.i.i16.2.i = icmp eq i32 %call.i.i.i15.2.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i5.i) #7
  br i1 %cmp5.not.i.i16.2.i, label %for.cond.i9.1.i.if.end14_crit_edge, label %for.cond.i9.1.i.do.body.i20.i_crit_edge

for.cond.i9.1.i.do.body.i20.i_crit_edge:          ; preds = %for.cond.i9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i20.i

for.cond.i9.1.i.if.end14_crit_edge:               ; preds = %for.cond.i9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body.i20.i:                                    ; preds = %for.cond.i9.1.i.do.body.i20.i_crit_edge, %for.cond.i9.i.do.body.i20.i_crit_edge, %sw.bb1.i.do.body.i20.i_crit_edge
  %.lcssa32.i = phi i32 [ 396, %sw.bb1.i.do.body.i20.i_crit_edge ], [ 397, %for.cond.i9.i.do.body.i20.i_crit_edge ], [ 777, %for.cond.i9.1.i.do.body.i20.i_crit_edge ]
  %call3.i18.i = call i32 @___ratelimit(ptr noundef nonnull @imx219_write_regs._rs, ptr noundef nonnull @__func__.imx219_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i18.i)
  %tobool4.not.i19.i = icmp eq i32 %call3.i18.i, 0
  br i1 %tobool4.not.i19.i, label %do.body.i20.i.do.end12_crit_edge, label %do.body.i20.i.return.sink.split.i_crit_edge

do.body.i20.i.return.sink.split.i_crit_edge:      ; preds = %do.body.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

do.body.i20.i.do.end12_crit_edge:                 ; preds = %do.body.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

return.sink.split.i:                              ; preds = %do.body.i20.i.return.sink.split.i_crit_edge, %do.body.i.i.return.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %26, %do.body.i.i.return.sink.split.i_crit_edge ], [ %39, %do.body.i20.i.return.sink.split.i_crit_edge ]
  %.lcssa32.sink.i = phi i32 [ %.lcssa.i, %do.body.i.i.return.sink.split.i_crit_edge ], [ %.lcssa32.i, %do.body.i20.i.return.sink.split.i_crit_edge ]
  %dev.i21.i = getelementptr inbounds %struct.i2c_client, ptr %.sink.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i21.i, ptr noundef nonnull @.str.25, i32 noundef %.lcssa32.sink.i, i32 noundef -5) #10
  br label %do.end12

do.end12:                                         ; preds = %return.sink.split.i, %do.body.i20.i.do.end12_crit_edge, %do.body.i.i.do.end12_crit_edge, %if.end6.do.end12_crit_edge
  %retval.0.i48.ph = phi i32 [ -5, %return.sink.split.i ], [ -5, %do.body.i20.i.do.end12_crit_edge ], [ -5, %do.body.i.i.do.end12_crit_edge ], [ -22, %if.end6.do.end12_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i48.ph) #10
  br label %err_rpm_put

if.end14:                                         ; preds = %for.cond.i9.1.i.if.end14_crit_edge, %for.cond.i.1.i.if.end14_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %imx219, i32 0, i32 8
  %51 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctrl_handler, align 4
  %call16 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.err_rpm_put_crit_edge

if.end14.err_rpm_put_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rpm_put

if.end19:                                         ; preds = %if.end14
  %53 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %55 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %56 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 256, ptr %buf.i, align 2
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 16777216, ptr %55, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %54, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp5.not.i, label %if.end23, label %if.end19.err_rpm_put_crit_edge

if.end19.err_rpm_put_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rpm_put

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %vflip = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 11
  %58 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vflip, align 4
  call void @__v4l2_ctrl_grab(ptr noundef %59, i1 noundef zeroext true) #7
  %hflip = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 12
  %60 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hflip, align 4
  call void @__v4l2_ctrl_grab(ptr noundef %61, i1 noundef zeroext true) #7
  br label %cleanup

err_rpm_put:                                      ; preds = %if.end19.err_rpm_put_crit_edge, %if.end14.err_rpm_put_crit_edge, %do.end12, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ %retval.0.i48.ph, %do.end12 ], [ %call16, %if.end14.err_rpm_put_crit_edge ], [ -5, %if.end19.err_rpm_put_crit_edge ]
  %call.i51 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %err_rpm_put, %if.end23, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_rpm_put ], [ 0, %if.end23 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_enum_mbus_code(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mutex = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mul = shl i32 %3, 2
  %arrayidx = getelementptr [8 x i32], ptr @codes, i32 0, i32 %mul
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call2 = tail call fastcc i32 @imx219_get_format_code(ptr noundef %sd, i32 noundef %5)
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %code3, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_enum_frame_size(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %code1 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code1, align 4
  %call2 = tail call fastcc i32 @imx219_get_format_code(ptr noundef %sd, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call2)
  %cmp5.not = icmp eq i32 %5, %call2
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fse, align 4
  %arrayidx = getelementptr [4 x %struct.imx219_mode], ptr @supported_modes, i32 0, i32 %7
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
  %height = getelementptr [4 x %struct.imx219_mode], ptr @supported_modes, i32 0, i32 %7, i32 1
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
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad.i, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !189

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code.i, align 4
  %call1.i = tail call fastcc i32 @imx219_get_format_code(ptr noundef %sd, i32 noundef %9) #7
  %10 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call1.i, ptr %code.i, align 4
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %format.i, ptr %arrayidx.i.i, i32 48)
  br label %__imx219_get_pad_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 15
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %format.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %16 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %format.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.imx219_mode, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height.i.i, align 4
  %height3.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %height3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height3.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field.i.i, align 4
  %colorspace.i.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %colorspace.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %colorspace.i.i.i, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %22, align 4
  %quantization.i.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %quantization.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %quantization.i.i.i, align 2
  %xfer_func.i.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %xfer_func.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %xfer_func.i.i.i, align 4
  %code4.i = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %code4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code4.i, align 4
  %call5.i = tail call fastcc i32 @imx219_get_format_code(ptr noundef %sd, i32 noundef %27) #7
  %code7.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %code7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call5.i, ptr %code7.i, align 4
  br label %__imx219_get_pad_format.exit

__imx219_get_pad_format.exit:                     ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %1, label %entry.for.end_crit_edge [
    i32 12289, label %for.end.fold.split102
    i32 12298, label %for.end.fold.split
    i32 12302, label %for.end.fold.split97
    i32 12295, label %for.end.fold.split98
    i32 12308, label %for.end.fold.split99
    i32 12290, label %for.end.fold.split100
    i32 12307, label %for.end.fold.split101
  ]

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split97:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split98:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split99:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split100:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split101:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split102:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split102, %for.end.fold.split101, %for.end.fold.split100, %for.end.fold.split99, %for.end.fold.split98, %for.end.fold.split97, %for.end.fold.split, %entry.for.end_crit_edge
  %cmp2 = phi i32 [ 1, %for.end.fold.split ], [ 2, %for.end.fold.split97 ], [ 3, %for.end.fold.split98 ], [ 4, %for.end.fold.split99 ], [ 5, %for.end.fold.split100 ], [ 6, %for.end.fold.split101 ], [ 7, %for.end.fold.split102 ], [ 0, %entry.for.end_crit_edge ]
  %arrayidx5 = getelementptr [8 x i32], ptr @codes, i32 0, i32 %cmp2
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call fastcc i32 @imx219_get_format_code(ptr noundef %sd, i32 noundef %4)
  %format7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call6, ptr %code, align 4
  %6 = ptrtoint ptr %format7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format7, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %call11 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 4, i32 noundef 36, i32 noundef 0, i32 noundef 4, i32 noundef %7, i32 noundef %9) #7
  %10 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call11, align 4
  %12 = ptrtoint ptr %format7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %format7, align 4
  %height.i = getelementptr inbounds %struct.imx219_mode, ptr %call11, i32 0, i32 1
  %13 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height.i, align 4
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %field.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %colorspace.i.i, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %18, align 4
  %quantization.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %quantization.i.i, align 2
  %xfer_func.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %21 = ptrtoint ptr %xfer_func.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %xfer_func.i.i, align 4
  %22 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp12 = icmp eq i32 %23, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.end
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %24 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %26 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %25, %conv.i
  br i1 %cmp.not.i, label %if.then13.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !189

if.then13.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then13.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %25, %if.then13.v4l2_subdev_get_try_format.exit_crit_edge ]
  %28 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %29, i32 %spec.select.i
  %30 = call ptr @memcpy(ptr %arrayidx.i, ptr %format7, i32 48)
  br label %if.end54

if.else:                                          ; preds = %for.end
  %mode16 = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 15
  %31 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mode16, align 4
  %cmp17.not = icmp eq ptr %32, %call11
  br i1 %cmp17.not, label %lor.lhs.false, label %if.else.if.then23_crit_edge

if.else.if.then23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.else
  %code19 = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %code19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %code19, align 4
  %35 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp22.not = icmp eq i32 %34, %36
  br i1 %cmp22.not, label %lor.lhs.false.if.end54_crit_edge, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.else.if.then23_crit_edge
  %fmt24 = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 2
  %37 = call ptr @memcpy(ptr %fmt24, ptr %format7, i32 48)
  %38 = ptrtoint ptr %mode16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call11, ptr %mode16, align 4
  %vblank = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 13
  %39 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vblank, align 4
  %41 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height.i, align 4
  %sub = sub i32 65535, %42
  %conv = zext i32 %sub to i64
  %vts_def = getelementptr inbounds %struct.imx219_mode, ptr %call11, i32 0, i32 3
  %43 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vts_def, align 4
  %sub29 = sub i32 %44, %42
  %conv30 = zext i32 %sub29 to i64
  %call31 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %40, i64 noundef 4, i64 noundef %conv, i64 noundef 1, i64 noundef %conv30) #7
  %45 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vblank, align 4
  %47 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vts_def, align 4
  %49 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height.i, align 4
  %sub35 = sub i32 %48, %50
  %call36 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %46, i32 noundef %sub35) #7
  %51 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vts_def, align 4
  %sub38 = add i32 %52, -4
  %53 = tail call i32 @llvm.smin.i32(i32 %sub38, i32 1600)
  %exposure = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 10
  %54 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %minimum, align 8
  %conv42 = sext i32 %sub38 to i64
  %58 = getelementptr inbounds %struct.v4l2_ctrl, ptr %55, i32 0, i32 18
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %58, align 8
  %conv44 = sext i32 %53 to i64
  %call45 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %55, i64 noundef %57, i64 noundef %conv42, i64 noundef %60, i64 noundef %conv44) #7
  %61 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call11, align 4
  %sub47 = sub i32 3448, %62
  %hblank48 = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 14
  %63 = ptrtoint ptr %hblank48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hblank48, align 4
  %conv49 = sext i32 %sub47 to i64
  %call52 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %64, i64 noundef %conv49, i64 noundef %conv49, i64 noundef 1, i64 noundef %conv49) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then23, %lor.lhs.false.if.end54_crit_edge, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb3
    i32 1, label %entry.sw.bb8_crit_edge
    i32 2, label %entry.sw.bb8_crit_edge30
  ]

entry.sw.bb8_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %3 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %4, label %sw.bb.__imx219_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.__imx219_get_pad_crop.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %__imx219_get_pad_crop.exit

sw.bb.i:                                          ; preds = %sw.bb
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %7, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !189

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %7, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i.i, i32 1
  br label %__imx219_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 15
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode.i, align 4
  %crop.i = getelementptr inbounds %struct.imx219_mode, ptr %13, i32 0, i32 2
  br label %__imx219_get_pad_crop.exit

__imx219_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %sw.bb.__imx219_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %sw.bb.__imx219_get_pad_crop.exit_crit_edge ]
  %14 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %r4 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %top, align 4
  %16 = ptrtoint ptr %r4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %r4, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3296, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2480, ptr %height, align 4
  br label %return

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge30
  %r9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top10 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %top10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %top10, align 4
  %20 = ptrtoint ptr %r9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %r9, align 4
  %width14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %width14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3280, ptr %width14, align 4
  %height16 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2464, ptr %height16, align 4
  br label %return

return:                                           ; preds = %sw.bb8, %sw.bb3, %__imx219_get_pad_crop.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb8 ], [ 0, %sw.bb3 ], [ 0, %__imx219_get_pad_crop.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx219_get_format_code(ptr noundef %imx219, i32 noundef %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 16, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !190

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 656, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %code, label %if.end.for.end_crit_edge [
    i32 12289, label %for.end.fold.split48
    i32 12307, label %for.end.fold.split47
    i32 12290, label %for.end.fold.split46
    i32 12308, label %for.end.fold.split
  ]

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split46:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split47:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split48:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split48, %for.end.fold.split47, %for.end.fold.split46, %for.end.fold.split, %if.end.for.end_crit_edge
  %cmp28 = phi i32 [ 4, %for.end.fold.split ], [ 4, %for.end.fold.split46 ], [ 4, %for.end.fold.split47 ], [ 4, %for.end.fold.split48 ], [ 0, %if.end.for.end_crit_edge ]
  %vflip = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 11
  %2 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vflip, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool31.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool31.not, i32 0, i32 2
  %or = or i32 %cond, %cmp28
  %hflip = getelementptr inbounds %struct.imx219, ptr %imx219, i32 0, i32 12
  %6 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hflip, align 4
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool33.not = icmp ne i32 %9, 0
  %cond34 = zext i1 %tobool33.not to i32
  %or35 = or i32 %or, %cond34
  %arrayidx36 = getelementptr [8 x i32], ptr @codes, i32 0, i32 %or35
  %10 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx36, align 4
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_device_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i135 = alloca [6 x i8], align 2
  %buf.i129 = alloca [6 x i8], align 2
  %buf.i123 = alloca [6 x i8], align 2
  %buf.i117 = alloca [6 x i8], align 2
  %buf.i111 = alloca [6 x i8], align 2
  %buf.i105 = alloca [6 x i8], align 2
  %buf.i99 = alloca [6 x i8], align 2
  %buf.i93 = alloca [6 x i8], align 2
  %buf.i87 = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -172
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
  %mode = getelementptr i8, ptr %1, i32 212
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode, align 4
  %height = getelementptr inbounds %struct.imx219_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -4
  %sub = add i32 %add, %11
  %12 = tail call i32 @llvm.smin.i32(i32 %sub, i32 1600)
  %exposure = getelementptr i8, ptr %1, i32 192
  %13 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %minimum, align 8
  %conv = sext i32 %sub to i64
  %17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 18
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %conv4 = sext i32 %12 to i64
  %call5 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %14, i64 noundef %16, i64 noundef %conv, i64 noundef %19, i64 noundef %conv4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp eq i32 %call.i, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %21, label %do.end [
    i32 10356995, label %sw.bb
    i32 9963793, label %sw.bb14
    i32 10422533, label %sw.bb17
    i32 10422531, label %sw.bb20
    i32 9963796, label %if.end10.sw.bb23_crit_edge
    i32 9963797, label %if.end10.sw.bb23_crit_edge142
    i32 10356993, label %sw.bb27
    i32 10356996, label %sw.bb33
    i32 10356997, label %sw.bb36
    i32 10356998, label %sw.bb39
    i32 10356999, label %sw.bb42
  ]

if.end10.sw.bb23_crit_edge142:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.end10.sw.bb23_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val12, align 4
  %25 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %27 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 343, ptr %buf.i, align 2
  %shl.i = shl i32 %24, 24
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %shl.i, ptr %27, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 3
  %retval.0.i = select i1 %cmp5.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %30 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val15, align 4
  %32 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i87) #7
  %34 = getelementptr inbounds [6 x i8], ptr %buf.i87, i32 0, i32 2
  %35 = ptrtoint ptr %buf.i87 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 346, ptr %buf.i87, align 2
  %shl.i89 = shl i32 %31, 16
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %shl.i89, ptr %34, align 2
  %call.i.i90 = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %buf.i87, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i90)
  %cmp5.not.i91 = icmp eq i32 %call.i.i90, 4
  %retval.0.i92 = select i1 %cmp5.not.i91, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i87) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val18, align 4
  %39 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i93) #7
  %41 = getelementptr inbounds [6 x i8], ptr %buf.i93, i32 0, i32 2
  %42 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 344, ptr %buf.i93, align 2
  %shl.i95 = shl i32 %38, 16
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %shl.i95, ptr %41, align 2
  %call.i.i96 = call i32 @i2c_transfer_buffer_flags(ptr noundef %40, ptr noundef nonnull %buf.i93, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i96)
  %cmp5.not.i97 = icmp eq i32 %call.i.i96, 4
  %retval.0.i98 = select i1 %cmp5.not.i97, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i93) #7
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val21, align 4
  %arrayidx = getelementptr [5 x i32], ptr @imx219_test_pattern_val, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %48 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i99) #7
  %50 = getelementptr inbounds [6 x i8], ptr %buf.i99, i32 0, i32 2
  %51 = ptrtoint ptr %buf.i99 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1536, ptr %buf.i99, align 2
  %shl.i101 = shl i32 %47, 16
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %shl.i101, ptr %50, align 2
  %call.i.i102 = call i32 @i2c_transfer_buffer_flags(ptr noundef %49, ptr noundef nonnull %buf.i99, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i102)
  %cmp5.not.i103 = icmp eq i32 %call.i.i102, 4
  %retval.0.i104 = select i1 %cmp5.not.i103, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i99) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end10.sw.bb23_crit_edge, %if.end10.sw.bb23_crit_edge142
  %hflip = getelementptr i8, ptr %1, i32 200
  %53 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hflip, align 4
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val24, align 4
  %vflip = getelementptr i8, ptr %1, i32 196
  %57 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vflip, align 4
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %58, i32 0, i32 22
  %59 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val25, align 4
  %61 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i105) #7
  %63 = getelementptr inbounds [6 x i8], ptr %buf.i105, i32 0, i32 2
  %64 = ptrtoint ptr %buf.i105 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 370, ptr %buf.i105, align 2
  %65 = shl i32 %60, 25
  %66 = shl i32 %56, 24
  %shl.i107 = or i32 %65, %66
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %shl.i107, ptr %63, align 2
  %call.i.i108 = call i32 @i2c_transfer_buffer_flags(ptr noundef %62, ptr noundef nonnull %buf.i105, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i108)
  %cmp5.not.i109 = icmp eq i32 %call.i.i108, 3
  %retval.0.i110 = select i1 %cmp5.not.i109, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i105) #7
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %mode28 = getelementptr i8, ptr %1, i32 212
  %68 = ptrtoint ptr %mode28 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mode28, align 4
  %height29 = getelementptr inbounds %struct.imx219_mode, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height29, align 4
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val30, align 4
  %add31 = add i32 %73, %71
  %74 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i111) #7
  %76 = getelementptr inbounds [6 x i8], ptr %buf.i111, i32 0, i32 2
  %77 = ptrtoint ptr %buf.i111 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 352, ptr %buf.i111, align 2
  %shl.i113 = shl i32 %add31, 16
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %shl.i113, ptr %76, align 2
  %call.i.i114 = call i32 @i2c_transfer_buffer_flags(ptr noundef %75, ptr noundef nonnull %buf.i111, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i114)
  %cmp5.not.i115 = icmp eq i32 %call.i.i114, 4
  %retval.0.i116 = select i1 %cmp5.not.i115, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i111) #7
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %79 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val34, align 4
  %81 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i117) #7
  %83 = getelementptr inbounds [6 x i8], ptr %buf.i117, i32 0, i32 2
  %84 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1538, ptr %buf.i117, align 2
  %shl.i119 = shl i32 %80, 16
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %shl.i119, ptr %83, align 2
  %call.i.i120 = call i32 @i2c_transfer_buffer_flags(ptr noundef %82, ptr noundef nonnull %buf.i117, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i120)
  %cmp5.not.i121 = icmp eq i32 %call.i.i120, 4
  %retval.0.i122 = select i1 %cmp5.not.i121, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i117) #7
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %86 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %val37, align 4
  %88 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i123) #7
  %90 = getelementptr inbounds [6 x i8], ptr %buf.i123, i32 0, i32 2
  %91 = ptrtoint ptr %buf.i123 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1540, ptr %buf.i123, align 2
  %shl.i125 = shl i32 %87, 16
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %shl.i125, ptr %90, align 2
  %call.i.i126 = call i32 @i2c_transfer_buffer_flags(ptr noundef %89, ptr noundef nonnull %buf.i123, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i126)
  %cmp5.not.i127 = icmp eq i32 %call.i.i126, 4
  %retval.0.i128 = select i1 %cmp5.not.i127, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i123) #7
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %93 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val40, align 4
  %95 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i129) #7
  %97 = getelementptr inbounds [6 x i8], ptr %buf.i129, i32 0, i32 2
  %98 = ptrtoint ptr %buf.i129 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1542, ptr %buf.i129, align 2
  %shl.i131 = shl i32 %94, 16
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %shl.i131, ptr %97, align 2
  %call.i.i132 = call i32 @i2c_transfer_buffer_flags(ptr noundef %96, ptr noundef nonnull %buf.i129, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i132)
  %cmp5.not.i133 = icmp eq i32 %call.i.i132, 4
  %retval.0.i134 = select i1 %cmp5.not.i133, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i129) #7
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %100 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val43, align 4
  %102 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i135) #7
  %104 = getelementptr inbounds [6 x i8], ptr %buf.i135, i32 0, i32 2
  %105 = ptrtoint ptr %buf.i135 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 1544, ptr %buf.i135, align 2
  %shl.i137 = shl i32 %101, 16
  %106 = ptrtoint ptr %104 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %shl.i137, ptr %104, align 2
  %call.i.i138 = call i32 @i2c_transfer_buffer_flags(ptr noundef %103, ptr noundef nonnull %buf.i135, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i138)
  %cmp5.not.i139 = icmp eq i32 %call.i.i138, 4
  %retval.0.i140 = select i1 %cmp5.not.i139, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i135) #7
  br label %sw.epilog

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %val47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %107 = ptrtoint ptr %val47 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val47, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %21, i32 noundef %108) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb42, %sw.bb39, %sw.bb36, %sw.bb33, %sw.bb27, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end ], [ %retval.0.i140, %sw.bb42 ], [ %retval.0.i134, %sw.bb39 ], [ %retval.0.i128, %sw.bb36 ], [ %retval.0.i122, %sw.bb33 ], [ %retval.0.i116, %sw.bb27 ], [ %retval.0.i110, %sw.bb23 ], [ %retval.0.i104, %sw.bb20 ], [ %retval.0.i98, %sw.bb17 ], [ %retval.0.i92, %sw.bb14 ], [ %retval.0.i, %sw.bb ]
  %call.i141 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !190

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3280, ptr %5, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2464, ptr %height, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %v4l2_subdev_get_try_format.exit.imx219_get_format_code.exit_crit_edge, label %land.rhs.i

v4l2_subdev_get_try_format.exit.imx219_get_format_code.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx219_get_format_code.exit

land.rhs.i:                                       ; preds = %v4l2_subdev_get_try_format.exit
  %dep_map.i = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 16, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i19 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i19, label %do.end.i20, label %land.rhs.i.imx219_get_format_code.exit_crit_edge, !prof !190

land.rhs.i.imx219_get_format_code.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx219_get_format_code.exit

do.end.i20:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 656, i32 noundef 9, ptr noundef null) #7
  br label %imx219_get_format_code.exit

imx219_get_format_code.exit:                      ; preds = %do.end.i20, %land.rhs.i.imx219_get_format_code.exit_crit_edge, %v4l2_subdev_get_try_format.exit.imx219_get_format_code.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 11
  %9 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vflip.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool31.not.i = icmp eq i32 %12, 0
  %cond.i = select i1 %tobool31.not.i, i32 0, i32 2
  %hflip.i = getelementptr inbounds %struct.imx219, ptr %sd, i32 0, i32 12
  %13 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hflip.i, align 4
  %val32.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool33.not.i = icmp ne i32 %16, 0
  %cond34.i = zext i1 %tobool33.not.i to i32
  %or35.i = or i32 %cond.i, %cond34.i
  %arrayidx36.i = getelementptr [8 x i32], ptr @codes, i32 0, i32 %or35.i
  %17 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx36.i, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field, align 4
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %23 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.not.i23.not = icmp eq i16 %24, 0
  br i1 %cmp.not.i23.not, label %do.end.i24, label %imx219_get_format_code.exit.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !190

imx219_get_format_code.exit.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %imx219_get_format_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit

do.end.i24:                                       ; preds = %imx219_get_format_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i24, %imx219_get_format_code.exit.v4l2_subdev_get_try_crop.exit_crit_edge
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 0, i32 1
  %top = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %top, align 4
  %28 = ptrtoint ptr %try_crop.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %try_crop.i, align 4
  %width5 = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3280, ptr %width5, align 4
  %height6 = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2464, ptr %height6, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %6, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %if.then.imx219_stop_streaming.exit_crit_edge, label %do.end.i

if.then.imx219_stop_streaming.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx219_stop_streaming.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #10
  br label %imx219_stop_streaming.exit

imx219_stop_streaming.exit:                       ; preds = %do.end.i, %if.then.imx219_stop_streaming.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vflip.i, align 4
  call void @__v4l2_ctrl_grab(ptr noundef %10, i1 noundef zeroext false) #7
  %hflip.i = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hflip.i, align 4
  call void @__v4l2_ctrl_grab(ptr noundef %12, i1 noundef zeroext false) #7
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i.i = call i32 @__pm_runtime_idle(ptr noundef %dev2.i, i32 noundef 5) #7
  br label %if.end

if.end:                                           ; preds = %imx219_stop_streaming.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx219_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @imx219_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %error

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error:                                            ; preds = %if.then
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %6, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %error.imx219_stop_streaming.exit_crit_edge, label %do.end.i

error.imx219_stop_streaming.exit_crit_edge:       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx219_stop_streaming.exit

do.end.i:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #10
  br label %imx219_stop_streaming.exit

imx219_stop_streaming.exit:                       ; preds = %do.end.i, %error.imx219_stop_streaming.exit_crit_edge
  %vflip.i = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vflip.i, align 4
  call void @__v4l2_ctrl_grab(ptr noundef %10, i1 noundef zeroext false) #7
  %hflip.i = getelementptr inbounds %struct.imx219, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hflip.i, align 4
  call void @__v4l2_ctrl_grab(ptr noundef %12, i1 noundef zeroext false) #7
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i.i = call i32 @__pm_runtime_idle(ptr noundef %dev2.i, i32 noundef 5) #7
  %13 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %imx219_stop_streaming.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %imx219_stop_streaming.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !62, !64, !66, !68, !69, !70, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !128, !130, !132, !134, !136, !137, !139, !140, !142, !143, !144, !145, !147, !149, !150, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__initcall__kmod_imx219__294_1603_imx219_i2c_driver_init6, !1, !"__initcall__kmod_imx219__294_1603_imx219_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/imx219.c", i32 1603, i32 1}
!2 = !{ptr @__exitcall_imx219_i2c_driver_exit, !1, !"__exitcall_imx219_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/imx219.c", i32 1605, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/imx219.c", i32 1606, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/imx219.c", i32 1607, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/imx219.c", i32 1595, i32 11}
!12 = !{ptr @imx219_i2c_driver, !13, !"imx219_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/imx219.c", i32 1593, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/imx219.c", i32 1465, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @imx219_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @imx219_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/imx219.c", i32 1471, i32 3}
!24 = !{ptr @imx219_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx219_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/imx219.c", i32 1478, i32 3}
!28 = !{ptr @imx219_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @imx219_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/imx219.c", i32 1483, i32 52}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/imx219.c", i32 1536, i32 3}
!34 = !{ptr @imx219_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @imx219_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/imx219.c", i32 1542, i32 3}
!38 = !{ptr @imx219_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @imx219_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @imx219_subdev_ops, !41, !"imx219_subdev_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/imx219.c", i32 1265, i32 37}
!42 = !{ptr @imx219_core_ops, !43, !"imx219_core_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/imx219.c", i32 1248, i32 42}
!44 = !{ptr @imx219_video_ops, !45, !"imx219_video_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/imx219.c", i32 1253, i32 43}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/imx219.c", i32 1048, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @imx219_start_streaming._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @imx219_start_streaming._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/imx219.c", i32 1054, i32 3}
!53 = !{ptr @imx219_start_streaming._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @imx219_start_streaming._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/imx219.c", i32 640, i32 4}
!57 = !{ptr @imx219_write_regs._rs, !56, !"_rs", i1 false, i1 false}
!58 = !{ptr @__func__.imx219_write_regs, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @imx219_write_regs._entry, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @imx219_write_regs._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"raw8_framefmt_regs", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/imx219.c", i32 381, i32 32}
!64 = distinct !{null, !65, !"raw10_framefmt_regs", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/imx219.c", i32 387, i32 32}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/imx219.c", i32 1090, i32 3}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @imx219_stop_streaming._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @imx219_stop_streaming._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @imx219_pad_ops, !72, !"imx219_pad_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/imx219.c", i32 1257, i32 41}
!73 = !{ptr @codes, !74, !"codes", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/imx219.c", i32 432, i32 18}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/imx219.c", i32 1409, i32 3}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @imx219_check_hwcfg._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @imx219_check_hwcfg._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/imx219.c", i32 1414, i32 3}
!84 = !{ptr @imx219_check_hwcfg._entry.31, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @imx219_check_hwcfg._entry_ptr.33, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/imx219.c", i32 1420, i32 3}
!88 = !{ptr @imx219_check_hwcfg._entry.34, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @imx219_check_hwcfg._entry_ptr.36, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/imx219.c", i32 1426, i32 3}
!92 = !{ptr @imx219_check_hwcfg._entry.37, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @imx219_check_hwcfg._entry_ptr.39, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/imx219.c", i32 1432, i32 3}
!96 = !{ptr @imx219_check_hwcfg._entry.40, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @imx219_check_hwcfg._entry_ptr.42, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/imx219.c", i32 416, i32 2}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/imx219.c", i32 417, i32 2}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/imx219.c", i32 418, i32 2}
!104 = distinct !{null, !105, !"imx219_supply_name", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/imx219.c", i32 414, i32 27}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/imx219.c", i32 1143, i32 3}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @imx219_power_on._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @imx219_power_on._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/imx219.c", i32 1150, i32 3}
!113 = !{ptr @imx219_power_on._entry.48, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @imx219_power_on._entry_ptr.50, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/imx219.c", i32 1234, i32 3}
!117 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @imx219_identify_module._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @imx219_identify_module._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/imx219.c", i32 1240, i32 3}
!122 = !{ptr @imx219_identify_module._entry.53, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @imx219_identify_module._entry_ptr.55, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @supported_modes, !125, !"supported_modes", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/imx219.c", i32 472, i32 33}
!126 = !{ptr @mode_3280x2464_regs, !127, !"mode_3280x2464_regs", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/imx219.c", i32 153, i32 32}
!128 = !{ptr @mode_1920_1080_regs, !129, !"mode_1920_1080_regs", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/imx219.c", i32 210, i32 32}
!130 = !{ptr @mode_1640_1232_regs, !131, !"mode_1640_1232_regs", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/imx219.c", i32 267, i32 32}
!132 = !{ptr @mode_640_480_regs, !133, !"mode_640_480_regs", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/imx219.c", i32 324, i32 32}
!134 = !{ptr @imx219_init_controls._key, !135, !"_key", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/imx219.c", i32 1286, i32 8}
!136 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @imx219_init_controls.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/imx219.c", i32 1290, i32 2}
!139 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/imx219.c", i32 1368, i32 3}
!142 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @imx219_init_controls._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @imx219_init_controls._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @imx219_ctrl_ops, !146, !"imx219_ctrl_ops", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/imx219.c", i32 801, i32 35}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/imx219.c", i32 789, i32 3}
!149 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @imx219_set_ctrl._entry, !148, !"_entry", i1 false, i1 false}
!152 = !{ptr @imx219_set_ctrl._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @imx219_test_pattern_val, !154, !"imx219_test_pattern_val", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/imx219.c", i32 405, i32 18}
!155 = !{ptr @imx219_link_freq_menu, !156, !"imx219_link_freq_menu", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/imx219.c", i32 393, i32 18}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/imx219.c", i32 398, i32 2}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/imx219.c", i32 399, i32 2}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/imx219.c", i32 400, i32 2}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/imx219.c", i32 401, i32 2}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/imx219.c", i32 402, i32 2}
!167 = !{ptr @imx219_test_pattern_menu, !168, !"imx219_test_pattern_menu", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/imx219.c", i32 397, i32 27}
!169 = !{ptr @imx219_internal_ops, !170, !"imx219_internal_ops", i1 false, i1 false}
!170 = !{!"../drivers/media/i2c/imx219.c", i32 1271, i32 46}
!171 = !{ptr @imx219_dt_ids, !172, !"imx219_dt_ids", i1 false, i1 false}
!172 = !{!"../drivers/media/i2c/imx219.c", i32 1582, i32 34}
!173 = !{ptr @imx219_pm_ops, !174, !"imx219_pm_ops", i1 false, i1 false}
!174 = !{!"../drivers/media/i2c/imx219.c", i32 1588, i32 32}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{!"auto-init"}
!185 = !{i8 0, i8 2}
!186 = !{i64 2148277383}
!187 = !{i64 762206, i64 762231, i64 762253, i64 762269, i64 762281, i64 762301, i64 762325, i64 762341, i64 762353}
!188 = !{i64 2148277571}
!189 = !{!"branch_weights", i32 2000, i32 1}
!190 = !{!"branch_weights", i32 1, i32 2000}
