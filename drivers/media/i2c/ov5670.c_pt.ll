; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov5670.c_pt.bc'
source_filename = "../drivers/media/i2c/ov5670.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ov5670_mode = type { i32, i32, i32, i32, i32, %struct.ov5670_reg_list }
%struct.ov5670_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov5670_link_freq_config = type { i32, %struct.ov5670_reg_list }
%struct.ov5670_reg = type { i16, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ov5670 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_fwnode_device_properties = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_ov5670__294_2599_ov5670_i2c_driver_init6 = internal global ptr @ov5670_i2c_driver_init, section ".initcall6.init", align 4
@ov5670_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov5670_remove, ptr @ov5670_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5670_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov5670_i2c_driver_exit = internal global ptr @ov5670_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [65 x i8] c"ov5670.author=Rapolu, Chiranjeevi <chiranjeevi.rapolu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [29 x i8] c"ov5670.author=Yang, Hyungwoo\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [51 x i8] c"ov5670.description=Omnivision ov5670 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [37 x i8] c"ov5670.file=drivers/media/i2c/ov5670\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [22 x i8] c"ov5670.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov5670\00", [25 x i8] zeroinitializer }, align 32
@ov5670_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ov5670_suspend, ptr @ov5670_resume, ptr @ov5670_suspend, ptr @ov5670_resume, ptr @ov5670_suspend, ptr @ov5670_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"devm_kzalloc() error\00", [43 x i8] zeroinitializer }, align 32
@ov5670_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov5670_core_ops, ptr null, ptr null, ptr @ov5670_video_ops, ptr null, ptr null, ptr @ov5670_sensor_ops, ptr @ov5670_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ov5670_identify_module() error\00", [33 x i8] zeroinitializer }, align 32
@ov5670_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ov5670->mutex\00", [17 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [6 x %struct.ov5670_mode], [56 x i8] } { [6 x %struct.ov5670_mode] [%struct.ov5670_mode { i32 2592, i32 1944, i32 2056, i32 2056, i32 0, %struct.ov5670_reg_list { i32 263, ptr @mode_2592x1944_regs } }, %struct.ov5670_mode { i32 1296, i32 972, i32 2056, i32 996, i32 0, %struct.ov5670_reg_list { i32 263, ptr @mode_1296x972_regs } }, %struct.ov5670_mode { i32 648, i32 486, i32 2056, i32 516, i32 0, %struct.ov5670_reg_list { i32 263, ptr @mode_648x486_regs } }, %struct.ov5670_mode { i32 2560, i32 1440, i32 2056, i32 2056, i32 0, %struct.ov5670_reg_list { i32 262, ptr @mode_2560x1440_regs } }, %struct.ov5670_mode { i32 1280, i32 720, i32 2056, i32 1020, i32 0, %struct.ov5670_reg_list { i32 263, ptr @mode_1280x720_regs } }, %struct.ov5670_mode { i32 640, i32 360, i32 2056, i32 510, i32 0, %struct.ov5670_reg_list { i32 263, ptr @mode_640x360_regs } }], [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ov5670_init_controls() error\00", [35 x i8] zeroinitializer }, align 32
@ov5670_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov5670_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov5670_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"media_entity_pads_init() error\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"v4l2_async_register_subdev() error\00", [61 x i8] zeroinitializer }, align 32
@ov5670_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 2555, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %s %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5670_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov5670.c\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov5670_probe._entry_ptr = internal global ptr @ov5670_probe._entry, section ".printk_index", align 4
@ov5670_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov5670_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5670_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov5670_sensor_ops = internal constant { %struct.v4l2_subdev_sensor_ops, [24 x i8] } { %struct.v4l2_subdev_sensor_ops { ptr null, ptr @ov5670_get_skip_frames }, [24 x i8] zeroinitializer }, align 32
@ov5670_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov5670_enum_mbus_code, ptr @ov5670_enum_frame_size, ptr null, ptr @ov5670_get_pad_format, ptr @ov5670_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov5670_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.10, i32 2321, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failed to set powerup registers\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov5670_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@ov5670_start_streaming._entry_ptr = internal global ptr @ov5670_start_streaming._entry, section ".printk_index", align 4
@link_freq_configs = internal constant { [1 x %struct.ov5670_link_freq_config], [20 x i8] } { [1 x %struct.ov5670_link_freq_config] [%struct.ov5670_link_freq_config { i32 168960000, %struct.ov5670_reg_list { i32 15, ptr @mipi_data_rate_840mbps } }], [20 x i8] zeroinitializer }, align 32
@ov5670_start_streaming._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.10, i32 2330, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set plls\0A\00", [41 x i8] zeroinitializer }, align 32
@ov5670_start_streaming._entry_ptr.17 = internal global ptr @ov5670_start_streaming._entry.15, section ".printk_index", align 4
@ov5670_start_streaming._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.10, i32 2338, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set mode\0A\00", [41 x i8] zeroinitializer }, align 32
@ov5670_start_streaming._entry_ptr.20 = internal global ptr @ov5670_start_streaming._entry.18, section ".printk_index", align 4
@ov5670_start_streaming._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.10, i32 2350, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s failed to set stream\0A\00", [39 x i8] zeroinitializer }, align 32
@ov5670_start_streaming._entry_ptr.23 = internal global ptr @ov5670_start_streaming._entry.21, section ".printk_index", align 4
@mipi_data_rate_840mbps = internal constant { [15 x %struct.ov5670_reg], [36 x i8] } { [15 x %struct.ov5670_reg] [%struct.ov5670_reg { i16 768, i8 4 }, %struct.ov5670_reg { i16 769, i8 0 }, %struct.ov5670_reg { i16 770, i8 -124 }, %struct.ov5670_reg { i16 771, i8 0 }, %struct.ov5670_reg { i16 772, i8 3 }, %struct.ov5670_reg { i16 773, i8 1 }, %struct.ov5670_reg { i16 774, i8 1 }, %struct.ov5670_reg { i16 778, i8 0 }, %struct.ov5670_reg { i16 779, i8 0 }, %struct.ov5670_reg { i16 780, i8 0 }, %struct.ov5670_reg { i16 781, i8 38 }, %struct.ov5670_reg { i16 782, i8 0 }, %struct.ov5670_reg { i16 783, i8 6 }, %struct.ov5670_reg { i16 786, i8 1 }, %struct.ov5670_reg { i16 12337, i8 10 }], [36 x i8] zeroinitializer }, align 32
@ov5670_write_regs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ov5670_write_regs = private unnamed_addr constant [18 x i8] c"ov5670_write_regs\00", align 1
@ov5670_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.ov5670_write_regs, ptr @.str.10, i32 1923, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write reg 0x%4.4x. error = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ov5670_write_regs._entry_ptr = internal global ptr @ov5670_write_regs._entry, section ".printk_index", align 4
@ov5670_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.26, ptr @.str.10, i32 2365, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov5670_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@ov5670_stop_streaming._entry_ptr = internal global ptr @ov5670_stop_streaming._entry, section ".printk_index", align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov5670_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.10, i32 2295, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip id mismatch: %x!=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov5670_identify_module\00", [41 x i8] zeroinitializer }, align 32
@ov5670_identify_module._entry_ptr = internal global ptr @ov5670_identify_module._entry, section ".printk_index", align 4
@mode_2592x1944_regs = internal constant { [263 x %struct.ov5670_reg], [260 x i8] } { [263 x %struct.ov5670_reg] [%struct.ov5670_reg { i16 12288, i8 0 }, %struct.ov5670_reg { i16 12290, i8 33 }, %struct.ov5670_reg { i16 12293, i8 -16 }, %struct.ov5670_reg { i16 12295, i8 0 }, %struct.ov5670_reg { i16 12309, i8 15 }, %struct.ov5670_reg { i16 12312, i8 50 }, %struct.ov5670_reg { i16 12314, i8 -16 }, %struct.ov5670_reg { i16 12315, i8 -16 }, %struct.ov5670_reg { i16 12316, i8 -16 }, %struct.ov5670_reg { i16 12317, i8 -16 }, %struct.ov5670_reg { i16 12318, i8 -16 }, %struct.ov5670_reg { i16 12336, i8 0 }, %struct.ov5670_reg { i16 12337, i8 10 }, %struct.ov5670_reg { i16 12348, i8 -1 }, %struct.ov5670_reg { i16 12350, i8 -1 }, %struct.ov5670_reg { i16 12352, i8 -16 }, %struct.ov5670_reg { i16 12353, i8 0 }, %struct.ov5670_reg { i16 12354, i8 -16 }, %struct.ov5670_reg { i16 12550, i8 17 }, %struct.ov5670_reg { i16 13568, i8 0 }, %struct.ov5670_reg { i16 13569, i8 -128 }, %struct.ov5670_reg { i16 13570, i8 0 }, %struct.ov5670_reg { i16 13571, i8 4 }, %struct.ov5670_reg { i16 13572, i8 3 }, %struct.ov5670_reg { i16 13573, i8 -125 }, %struct.ov5670_reg { i16 13576, i8 4 }, %struct.ov5670_reg { i16 13577, i8 0 }, %struct.ov5670_reg { i16 13582, i8 4 }, %struct.ov5670_reg { i16 13583, i8 0 }, %struct.ov5670_reg { i16 13584, i8 0 }, %struct.ov5670_reg { i16 13585, i8 2 }, %struct.ov5670_reg { i16 13586, i8 0 }, %struct.ov5670_reg { i16 13825, i8 -56 }, %struct.ov5670_reg { i16 13840, i8 -120 }, %struct.ov5670_reg { i16 13842, i8 72 }, %struct.ov5670_reg { i16 13844, i8 91 }, %struct.ov5670_reg { i16 13845, i8 -106 }, %struct.ov5670_reg { i16 13857, i8 -48 }, %struct.ov5670_reg { i16 13858, i8 0 }, %struct.ov5670_reg { i16 13859, i8 0 }, %struct.ov5670_reg { i16 13875, i8 19 }, %struct.ov5670_reg { i16 13876, i8 19 }, %struct.ov5670_reg { i16 13877, i8 19 }, %struct.ov5670_reg { i16 13878, i8 19 }, %struct.ov5670_reg { i16 13893, i8 19 }, %struct.ov5670_reg { i16 13894, i8 -126 }, %struct.ov5670_reg { i16 13904, i8 0 }, %struct.ov5670_reg { i16 13906, i8 -1 }, %struct.ov5670_reg { i16 13909, i8 32 }, %struct.ov5670_reg { i16 13910, i8 -1 }, %struct.ov5670_reg { i16 13914, i8 -1 }, %struct.ov5670_reg { i16 13918, i8 -1 }, %struct.ov5670_reg { i16 13928, i8 0 }, %struct.ov5670_reg { i16 13930, i8 7 }, %struct.ov5670_reg { i16 13934, i8 16 }, %struct.ov5670_reg { i16 13933, i8 0 }, %struct.ov5670_reg { i16 13935, i8 -128 }, %struct.ov5670_reg { i16 14080, i8 40 }, %struct.ov5670_reg { i16 14081, i8 16 }, %struct.ov5670_reg { i16 14082, i8 58 }, %struct.ov5670_reg { i16 14083, i8 25 }, %struct.ov5670_reg { i16 14084, i8 16 }, %struct.ov5670_reg { i16 14085, i8 0 }, %struct.ov5670_reg { i16 14086, i8 102 }, %struct.ov5670_reg { i16 14087, i8 8 }, %struct.ov5670_reg { i16 14088, i8 52 }, %struct.ov5670_reg { i16 14089, i8 64 }, %struct.ov5670_reg { i16 14090, i8 1 }, %struct.ov5670_reg { i16 14091, i8 27 }, %struct.ov5670_reg { i16 14100, i8 36 }, %struct.ov5670_reg { i16 14106, i8 62 }, %struct.ov5670_reg { i16 14131, i8 0 }, %struct.ov5670_reg { i16 14132, i8 0 }, %struct.ov5670_reg { i16 14138, i8 5 }, %struct.ov5670_reg { i16 14139, i8 6 }, %struct.ov5670_reg { i16 14140, i8 10 }, %struct.ov5670_reg { i16 14143, i8 -96 }, %struct.ov5670_reg { i16 14165, i8 0 }, %struct.ov5670_reg { i16 14168, i8 0 }, %struct.ov5670_reg { i16 14171, i8 14 }, %struct.ov5670_reg { i16 14182, i8 95 }, %struct.ov5670_reg { i16 14184, i8 0 }, %struct.ov5670_reg { i16 14185, i8 34 }, %struct.ov5670_reg { i16 14195, i8 8 }, %struct.ov5670_reg { i16 14196, i8 31 }, %struct.ov5670_reg { i16 14198, i8 6 }, %struct.ov5670_reg { i16 14240, i8 -120 }, %struct.ov5670_reg { i16 14241, i8 92 }, %struct.ov5670_reg { i16 14247, i8 -120 }, %struct.ov5670_reg { i16 14248, i8 112 }, %struct.ov5670_reg { i16 14250, i8 -120 }, %struct.ov5670_reg { i16 14251, i8 72 }, %struct.ov5670_reg { i16 14259, i8 102 }, %struct.ov5670_reg { i16 14274, i8 4 }, %struct.ov5670_reg { i16 14277, i8 0 }, %struct.ov5670_reg { i16 14280, i8 0 }, %struct.ov5670_reg { i16 14336, i8 0 }, %struct.ov5670_reg { i16 14337, i8 12 }, %struct.ov5670_reg { i16 14338, i8 0 }, %struct.ov5670_reg { i16 14339, i8 4 }, %struct.ov5670_reg { i16 14340, i8 10 }, %struct.ov5670_reg { i16 14341, i8 51 }, %struct.ov5670_reg { i16 14342, i8 7 }, %struct.ov5670_reg { i16 14343, i8 -93 }, %struct.ov5670_reg { i16 14344, i8 10 }, %struct.ov5670_reg { i16 14345, i8 32 }, %struct.ov5670_reg { i16 14346, i8 7 }, %struct.ov5670_reg { i16 14347, i8 -104 }, %struct.ov5670_reg { i16 14348, i8 6 }, %struct.ov5670_reg { i16 14349, i8 -112 }, %struct.ov5670_reg { i16 14350, i8 8 }, %struct.ov5670_reg { i16 14351, i8 8 }, %struct.ov5670_reg { i16 14353, i8 4 }, %struct.ov5670_reg { i16 14355, i8 2 }, %struct.ov5670_reg { i16 14356, i8 1 }, %struct.ov5670_reg { i16 14357, i8 1 }, %struct.ov5670_reg { i16 14358, i8 0 }, %struct.ov5670_reg { i16 14359, i8 0 }, %struct.ov5670_reg { i16 14360, i8 0 }, %struct.ov5670_reg { i16 14361, i8 0 }, %struct.ov5670_reg { i16 14368, i8 -124 }, %struct.ov5670_reg { i16 14369, i8 70 }, %struct.ov5670_reg { i16 14370, i8 72 }, %struct.ov5670_reg { i16 14374, i8 0 }, %struct.ov5670_reg { i16 14375, i8 8 }, %struct.ov5670_reg { i16 14378, i8 1 }, %struct.ov5670_reg { i16 14379, i8 1 }, %struct.ov5670_reg { i16 14384, i8 8 }, %struct.ov5670_reg { i16 14390, i8 2 }, %struct.ov5670_reg { i16 14391, i8 0 }, %struct.ov5670_reg { i16 14392, i8 16 }, %struct.ov5670_reg { i16 14401, i8 -1 }, %struct.ov5670_reg { i16 14406, i8 72 }, %struct.ov5670_reg { i16 14433, i8 0 }, %struct.ov5670_reg { i16 14434, i8 4 }, %struct.ov5670_reg { i16 14435, i8 6 }, %struct.ov5670_reg { i16 14865, i8 1 }, %struct.ov5670_reg { i16 14866, i8 120 }, %struct.ov5670_reg { i16 15104, i8 0 }, %struct.ov5670_reg { i16 15106, i8 0 }, %struct.ov5670_reg { i16 15107, i8 0 }, %struct.ov5670_reg { i16 15108, i8 0 }, %struct.ov5670_reg { i16 15109, i8 0 }, %struct.ov5670_reg { i16 15360, i8 -119 }, %struct.ov5670_reg { i16 15361, i8 -85 }, %struct.ov5670_reg { i16 15362, i8 1 }, %struct.ov5670_reg { i16 15363, i8 0 }, %struct.ov5670_reg { i16 15364, i8 0 }, %struct.ov5670_reg { i16 15365, i8 3 }, %struct.ov5670_reg { i16 15366, i8 0 }, %struct.ov5670_reg { i16 15367, i8 5 }, %struct.ov5670_reg { i16 15372, i8 0 }, %struct.ov5670_reg { i16 15373, i8 0 }, %struct.ov5670_reg { i16 15374, i8 0 }, %struct.ov5670_reg { i16 15375, i8 0 }, %struct.ov5670_reg { i16 15424, i8 0 }, %struct.ov5670_reg { i16 15425, i8 -93 }, %struct.ov5670_reg { i16 15427, i8 125 }, %struct.ov5670_reg { i16 15429, i8 -41 }, %struct.ov5670_reg { i16 15431, i8 -4 }, %struct.ov5670_reg { i16 15440, i8 5 }, %struct.ov5670_reg { i16 15442, i8 -86 }, %struct.ov5670_reg { i16 15444, i8 113 }, %struct.ov5670_reg { i16 15446, i8 -128 }, %struct.ov5670_reg { i16 15749, i8 23 }, %struct.ov5670_reg { i16 16131, i8 0 }, %struct.ov5670_reg { i16 16138, i8 0 }, %struct.ov5670_reg { i16 16139, i8 0 }, %struct.ov5670_reg { i16 16385, i8 96 }, %struct.ov5670_reg { i16 16393, i8 13 }, %struct.ov5670_reg { i16 16416, i8 0 }, %struct.ov5670_reg { i16 16417, i8 0 }, %struct.ov5670_reg { i16 16418, i8 0 }, %struct.ov5670_reg { i16 16419, i8 0 }, %struct.ov5670_reg { i16 16420, i8 0 }, %struct.ov5670_reg { i16 16421, i8 0 }, %struct.ov5670_reg { i16 16422, i8 0 }, %struct.ov5670_reg { i16 16423, i8 0 }, %struct.ov5670_reg { i16 16424, i8 0 }, %struct.ov5670_reg { i16 16425, i8 0 }, %struct.ov5670_reg { i16 16426, i8 0 }, %struct.ov5670_reg { i16 16427, i8 0 }, %struct.ov5670_reg { i16 16428, i8 0 }, %struct.ov5670_reg { i16 16429, i8 0 }, %struct.ov5670_reg { i16 16430, i8 0 }, %struct.ov5670_reg { i16 16431, i8 0 }, %struct.ov5670_reg { i16 16448, i8 0 }, %struct.ov5670_reg { i16 16449, i8 3 }, %struct.ov5670_reg { i16 16450, i8 0 }, %struct.ov5670_reg { i16 16451, i8 122 }, %struct.ov5670_reg { i16 16452, i8 0 }, %struct.ov5670_reg { i16 16453, i8 122 }, %struct.ov5670_reg { i16 16454, i8 0 }, %struct.ov5670_reg { i16 16455, i8 122 }, %struct.ov5670_reg { i16 16456, i8 0 }, %struct.ov5670_reg { i16 16457, i8 122 }, %struct.ov5670_reg { i16 17159, i8 48 }, %struct.ov5670_reg { i16 17664, i8 88 }, %struct.ov5670_reg { i16 17665, i8 4 }, %struct.ov5670_reg { i16 17666, i8 64 }, %struct.ov5670_reg { i16 17667, i8 16 }, %struct.ov5670_reg { i16 17672, i8 -86 }, %struct.ov5670_reg { i16 17673, i8 -86 }, %struct.ov5670_reg { i16 17674, i8 0 }, %struct.ov5670_reg { i16 17675, i8 0 }, %struct.ov5670_reg { i16 17920, i8 1 }, %struct.ov5670_reg { i16 17921, i8 3 }, %struct.ov5670_reg { i16 18176, i8 -92 }, %struct.ov5670_reg { i16 18432, i8 76 }, %struct.ov5670_reg { i16 18454, i8 83 }, %struct.ov5670_reg { i16 18463, i8 64 }, %struct.ov5670_reg { i16 18487, i8 19 }, %struct.ov5670_reg { i16 20480, i8 86 }, %struct.ov5670_reg { i16 20481, i8 1 }, %struct.ov5670_reg { i16 20482, i8 40 }, %struct.ov5670_reg { i16 20484, i8 12 }, %struct.ov5670_reg { i16 20486, i8 12 }, %struct.ov5670_reg { i16 20487, i8 -32 }, %struct.ov5670_reg { i16 20488, i8 1 }, %struct.ov5670_reg { i16 20489, i8 -80 }, %struct.ov5670_reg { i16 22785, i8 0 }, %struct.ov5670_reg { i16 23041, i8 0 }, %struct.ov5670_reg { i16 23043, i8 0 }, %struct.ov5670_reg { i16 23044, i8 12 }, %struct.ov5670_reg { i16 23045, i8 -32 }, %struct.ov5670_reg { i16 23046, i8 9 }, %struct.ov5670_reg { i16 23047, i8 -80 }, %struct.ov5670_reg { i16 23048, i8 6 }, %struct.ov5670_reg { i16 24064, i8 0 }, %struct.ov5670_reg { i16 14132, i8 64 }, %struct.ov5670_reg { i16 23296, i8 1 }, %struct.ov5670_reg { i16 23297, i8 16 }, %struct.ov5670_reg { i16 23298, i8 1 }, %struct.ov5670_reg { i16 23299, i8 -37 }, %struct.ov5670_reg { i16 15756, i8 113 }, %struct.ov5670_reg { i16 15757, i8 -22 }, %struct.ov5670_reg { i16 16407, i8 8 }, %struct.ov5670_reg { i16 13848, i8 42 }, %struct.ov5670_reg { i16 22400, i8 62 }, %struct.ov5670_reg { i16 22401, i8 15 }, %struct.ov5670_reg { i16 22402, i8 68 }, %struct.ov5670_reg { i16 22403, i8 2 }, %struct.ov5670_reg { i16 22404, i8 1 }, %struct.ov5670_reg { i16 22405, i8 1 }, %struct.ov5670_reg { i16 22406, i8 0 }, %struct.ov5670_reg { i16 22407, i8 4 }, %struct.ov5670_reg { i16 22408, i8 2 }, %struct.ov5670_reg { i16 22409, i8 15 }, %struct.ov5670_reg { i16 22410, i8 -3 }, %struct.ov5670_reg { i16 22411, i8 -11 }, %struct.ov5670_reg { i16 22412, i8 -11 }, %struct.ov5670_reg { i16 22413, i8 3 }, %struct.ov5670_reg { i16 22414, i8 8 }, %struct.ov5670_reg { i16 22415, i8 12 }, %struct.ov5670_reg { i16 22416, i8 8 }, %struct.ov5670_reg { i16 22417, i8 6 }, %struct.ov5670_reg { i16 22418, i8 0 }, %struct.ov5670_reg { i16 22419, i8 82 }, %struct.ov5670_reg { i16 22420, i8 -93 }, %struct.ov5670_reg { i16 13571, i8 0 }, %struct.ov5670_reg { i16 20549, i8 5 }, %struct.ov5670_reg { i16 16387, i8 64 }, %struct.ov5670_reg { i16 20552, i8 64 }], [260 x i8] zeroinitializer }, align 32
@mode_1296x972_regs = internal constant { [263 x %struct.ov5670_reg], [260 x i8] } { [263 x %struct.ov5670_reg] [%struct.ov5670_reg { i16 12288, i8 0 }, %struct.ov5670_reg { i16 12290, i8 33 }, %struct.ov5670_reg { i16 12293, i8 -16 }, %struct.ov5670_reg { i16 12295, i8 0 }, %struct.ov5670_reg { i16 12309, i8 15 }, %struct.ov5670_reg { i16 12312, i8 50 }, %struct.ov5670_reg { i16 12314, i8 -16 }, %struct.ov5670_reg { i16 12315, i8 -16 }, %struct.ov5670_reg { i16 12316, i8 -16 }, %struct.ov5670_reg { i16 12317, i8 -16 }, %struct.ov5670_reg { i16 12318, i8 -16 }, %struct.ov5670_reg { i16 12336, i8 0 }, %struct.ov5670_reg { i16 12337, i8 10 }, %struct.ov5670_reg { i16 12348, i8 -1 }, %struct.ov5670_reg { i16 12350, i8 -1 }, %struct.ov5670_reg { i16 12352, i8 -16 }, %struct.ov5670_reg { i16 12353, i8 0 }, %struct.ov5670_reg { i16 12354, i8 -16 }, %struct.ov5670_reg { i16 12550, i8 17 }, %struct.ov5670_reg { i16 13568, i8 0 }, %struct.ov5670_reg { i16 13569, i8 -128 }, %struct.ov5670_reg { i16 13570, i8 0 }, %struct.ov5670_reg { i16 13571, i8 4 }, %struct.ov5670_reg { i16 13572, i8 3 }, %struct.ov5670_reg { i16 13573, i8 -125 }, %struct.ov5670_reg { i16 13576, i8 7 }, %struct.ov5670_reg { i16 13577, i8 -128 }, %struct.ov5670_reg { i16 13582, i8 4 }, %struct.ov5670_reg { i16 13583, i8 0 }, %struct.ov5670_reg { i16 13584, i8 0 }, %struct.ov5670_reg { i16 13585, i8 2 }, %struct.ov5670_reg { i16 13586, i8 0 }, %struct.ov5670_reg { i16 13825, i8 -56 }, %struct.ov5670_reg { i16 13840, i8 -120 }, %struct.ov5670_reg { i16 13842, i8 72 }, %struct.ov5670_reg { i16 13844, i8 91 }, %struct.ov5670_reg { i16 13845, i8 -106 }, %struct.ov5670_reg { i16 13857, i8 -48 }, %struct.ov5670_reg { i16 13858, i8 0 }, %struct.ov5670_reg { i16 13859, i8 0 }, %struct.ov5670_reg { i16 13875, i8 19 }, %struct.ov5670_reg { i16 13876, i8 19 }, %struct.ov5670_reg { i16 13877, i8 19 }, %struct.ov5670_reg { i16 13878, i8 19 }, %struct.ov5670_reg { i16 13893, i8 19 }, %struct.ov5670_reg { i16 13894, i8 -126 }, %struct.ov5670_reg { i16 13904, i8 0 }, %struct.ov5670_reg { i16 13906, i8 -1 }, %struct.ov5670_reg { i16 13909, i8 32 }, %struct.ov5670_reg { i16 13910, i8 -1 }, %struct.ov5670_reg { i16 13914, i8 -1 }, %struct.ov5670_reg { i16 13918, i8 -1 }, %struct.ov5670_reg { i16 13928, i8 0 }, %struct.ov5670_reg { i16 13930, i8 7 }, %struct.ov5670_reg { i16 13934, i8 8 }, %struct.ov5670_reg { i16 13933, i8 0 }, %struct.ov5670_reg { i16 13935, i8 -128 }, %struct.ov5670_reg { i16 14080, i8 40 }, %struct.ov5670_reg { i16 14081, i8 16 }, %struct.ov5670_reg { i16 14082, i8 58 }, %struct.ov5670_reg { i16 14083, i8 25 }, %struct.ov5670_reg { i16 14084, i8 16 }, %struct.ov5670_reg { i16 14085, i8 0 }, %struct.ov5670_reg { i16 14086, i8 102 }, %struct.ov5670_reg { i16 14087, i8 8 }, %struct.ov5670_reg { i16 14088, i8 52 }, %struct.ov5670_reg { i16 14089, i8 64 }, %struct.ov5670_reg { i16 14090, i8 1 }, %struct.ov5670_reg { i16 14091, i8 27 }, %struct.ov5670_reg { i16 14100, i8 36 }, %struct.ov5670_reg { i16 14106, i8 62 }, %struct.ov5670_reg { i16 14131, i8 0 }, %struct.ov5670_reg { i16 14132, i8 0 }, %struct.ov5670_reg { i16 14138, i8 5 }, %struct.ov5670_reg { i16 14139, i8 6 }, %struct.ov5670_reg { i16 14140, i8 10 }, %struct.ov5670_reg { i16 14143, i8 -96 }, %struct.ov5670_reg { i16 14165, i8 0 }, %struct.ov5670_reg { i16 14168, i8 0 }, %struct.ov5670_reg { i16 14171, i8 14 }, %struct.ov5670_reg { i16 14182, i8 95 }, %struct.ov5670_reg { i16 14184, i8 0 }, %struct.ov5670_reg { i16 14185, i8 34 }, %struct.ov5670_reg { i16 14195, i8 8 }, %struct.ov5670_reg { i16 14196, i8 31 }, %struct.ov5670_reg { i16 14198, i8 6 }, %struct.ov5670_reg { i16 14240, i8 -120 }, %struct.ov5670_reg { i16 14241, i8 92 }, %struct.ov5670_reg { i16 14247, i8 -120 }, %struct.ov5670_reg { i16 14248, i8 112 }, %struct.ov5670_reg { i16 14250, i8 -120 }, %struct.ov5670_reg { i16 14251, i8 72 }, %struct.ov5670_reg { i16 14259, i8 102 }, %struct.ov5670_reg { i16 14274, i8 4 }, %struct.ov5670_reg { i16 14277, i8 0 }, %struct.ov5670_reg { i16 14280, i8 0 }, %struct.ov5670_reg { i16 14336, i8 0 }, %struct.ov5670_reg { i16 14337, i8 12 }, %struct.ov5670_reg { i16 14338, i8 0 }, %struct.ov5670_reg { i16 14339, i8 4 }, %struct.ov5670_reg { i16 14340, i8 10 }, %struct.ov5670_reg { i16 14341, i8 51 }, %struct.ov5670_reg { i16 14342, i8 7 }, %struct.ov5670_reg { i16 14343, i8 -93 }, %struct.ov5670_reg { i16 14344, i8 5 }, %struct.ov5670_reg { i16 14345, i8 16 }, %struct.ov5670_reg { i16 14346, i8 3 }, %struct.ov5670_reg { i16 14347, i8 -52 }, %struct.ov5670_reg { i16 14348, i8 6 }, %struct.ov5670_reg { i16 14349, i8 -112 }, %struct.ov5670_reg { i16 14350, i8 8 }, %struct.ov5670_reg { i16 14351, i8 8 }, %struct.ov5670_reg { i16 14353, i8 4 }, %struct.ov5670_reg { i16 14355, i8 4 }, %struct.ov5670_reg { i16 14356, i8 3 }, %struct.ov5670_reg { i16 14357, i8 1 }, %struct.ov5670_reg { i16 14358, i8 0 }, %struct.ov5670_reg { i16 14359, i8 0 }, %struct.ov5670_reg { i16 14360, i8 0 }, %struct.ov5670_reg { i16 14361, i8 0 }, %struct.ov5670_reg { i16 14368, i8 -108 }, %struct.ov5670_reg { i16 14369, i8 71 }, %struct.ov5670_reg { i16 14370, i8 72 }, %struct.ov5670_reg { i16 14374, i8 0 }, %struct.ov5670_reg { i16 14375, i8 8 }, %struct.ov5670_reg { i16 14378, i8 3 }, %struct.ov5670_reg { i16 14379, i8 1 }, %struct.ov5670_reg { i16 14384, i8 8 }, %struct.ov5670_reg { i16 14390, i8 2 }, %struct.ov5670_reg { i16 14391, i8 0 }, %struct.ov5670_reg { i16 14392, i8 16 }, %struct.ov5670_reg { i16 14401, i8 -1 }, %struct.ov5670_reg { i16 14406, i8 72 }, %struct.ov5670_reg { i16 14433, i8 0 }, %struct.ov5670_reg { i16 14434, i8 4 }, %struct.ov5670_reg { i16 14435, i8 6 }, %struct.ov5670_reg { i16 14865, i8 1 }, %struct.ov5670_reg { i16 14866, i8 120 }, %struct.ov5670_reg { i16 15104, i8 0 }, %struct.ov5670_reg { i16 15106, i8 0 }, %struct.ov5670_reg { i16 15107, i8 0 }, %struct.ov5670_reg { i16 15108, i8 0 }, %struct.ov5670_reg { i16 15109, i8 0 }, %struct.ov5670_reg { i16 15360, i8 -119 }, %struct.ov5670_reg { i16 15361, i8 -85 }, %struct.ov5670_reg { i16 15362, i8 1 }, %struct.ov5670_reg { i16 15363, i8 0 }, %struct.ov5670_reg { i16 15364, i8 0 }, %struct.ov5670_reg { i16 15365, i8 3 }, %struct.ov5670_reg { i16 15366, i8 0 }, %struct.ov5670_reg { i16 15367, i8 5 }, %struct.ov5670_reg { i16 15372, i8 0 }, %struct.ov5670_reg { i16 15373, i8 0 }, %struct.ov5670_reg { i16 15374, i8 0 }, %struct.ov5670_reg { i16 15375, i8 0 }, %struct.ov5670_reg { i16 15424, i8 0 }, %struct.ov5670_reg { i16 15425, i8 -93 }, %struct.ov5670_reg { i16 15427, i8 125 }, %struct.ov5670_reg { i16 15429, i8 -41 }, %struct.ov5670_reg { i16 15431, i8 -4 }, %struct.ov5670_reg { i16 15440, i8 5 }, %struct.ov5670_reg { i16 15442, i8 -86 }, %struct.ov5670_reg { i16 15444, i8 113 }, %struct.ov5670_reg { i16 15446, i8 -128 }, %struct.ov5670_reg { i16 15749, i8 23 }, %struct.ov5670_reg { i16 16131, i8 0 }, %struct.ov5670_reg { i16 16138, i8 0 }, %struct.ov5670_reg { i16 16139, i8 0 }, %struct.ov5670_reg { i16 16385, i8 96 }, %struct.ov5670_reg { i16 16393, i8 5 }, %struct.ov5670_reg { i16 16416, i8 0 }, %struct.ov5670_reg { i16 16417, i8 0 }, %struct.ov5670_reg { i16 16418, i8 0 }, %struct.ov5670_reg { i16 16419, i8 0 }, %struct.ov5670_reg { i16 16420, i8 0 }, %struct.ov5670_reg { i16 16421, i8 0 }, %struct.ov5670_reg { i16 16422, i8 0 }, %struct.ov5670_reg { i16 16423, i8 0 }, %struct.ov5670_reg { i16 16424, i8 0 }, %struct.ov5670_reg { i16 16425, i8 0 }, %struct.ov5670_reg { i16 16426, i8 0 }, %struct.ov5670_reg { i16 16427, i8 0 }, %struct.ov5670_reg { i16 16428, i8 0 }, %struct.ov5670_reg { i16 16429, i8 0 }, %struct.ov5670_reg { i16 16430, i8 0 }, %struct.ov5670_reg { i16 16431, i8 0 }, %struct.ov5670_reg { i16 16448, i8 0 }, %struct.ov5670_reg { i16 16449, i8 3 }, %struct.ov5670_reg { i16 16450, i8 0 }, %struct.ov5670_reg { i16 16451, i8 122 }, %struct.ov5670_reg { i16 16452, i8 0 }, %struct.ov5670_reg { i16 16453, i8 122 }, %struct.ov5670_reg { i16 16454, i8 0 }, %struct.ov5670_reg { i16 16455, i8 122 }, %struct.ov5670_reg { i16 16456, i8 0 }, %struct.ov5670_reg { i16 16457, i8 122 }, %struct.ov5670_reg { i16 17159, i8 48 }, %struct.ov5670_reg { i16 17664, i8 88 }, %struct.ov5670_reg { i16 17665, i8 4 }, %struct.ov5670_reg { i16 17666, i8 72 }, %struct.ov5670_reg { i16 17667, i8 16 }, %struct.ov5670_reg { i16 17672, i8 85 }, %struct.ov5670_reg { i16 17673, i8 85 }, %struct.ov5670_reg { i16 17674, i8 0 }, %struct.ov5670_reg { i16 17675, i8 0 }, %struct.ov5670_reg { i16 17920, i8 0 }, %struct.ov5670_reg { i16 17921, i8 -127 }, %struct.ov5670_reg { i16 18176, i8 -92 }, %struct.ov5670_reg { i16 18432, i8 76 }, %struct.ov5670_reg { i16 18454, i8 83 }, %struct.ov5670_reg { i16 18463, i8 64 }, %struct.ov5670_reg { i16 18487, i8 19 }, %struct.ov5670_reg { i16 20480, i8 86 }, %struct.ov5670_reg { i16 20481, i8 1 }, %struct.ov5670_reg { i16 20482, i8 40 }, %struct.ov5670_reg { i16 20484, i8 12 }, %struct.ov5670_reg { i16 20486, i8 12 }, %struct.ov5670_reg { i16 20487, i8 -32 }, %struct.ov5670_reg { i16 20488, i8 1 }, %struct.ov5670_reg { i16 20489, i8 -80 }, %struct.ov5670_reg { i16 22785, i8 0 }, %struct.ov5670_reg { i16 23041, i8 0 }, %struct.ov5670_reg { i16 23043, i8 0 }, %struct.ov5670_reg { i16 23044, i8 12 }, %struct.ov5670_reg { i16 23045, i8 -32 }, %struct.ov5670_reg { i16 23046, i8 9 }, %struct.ov5670_reg { i16 23047, i8 -80 }, %struct.ov5670_reg { i16 23048, i8 6 }, %struct.ov5670_reg { i16 24064, i8 0 }, %struct.ov5670_reg { i16 14132, i8 64 }, %struct.ov5670_reg { i16 23296, i8 1 }, %struct.ov5670_reg { i16 23297, i8 16 }, %struct.ov5670_reg { i16 23298, i8 1 }, %struct.ov5670_reg { i16 23299, i8 -37 }, %struct.ov5670_reg { i16 15756, i8 113 }, %struct.ov5670_reg { i16 15757, i8 -22 }, %struct.ov5670_reg { i16 16407, i8 16 }, %struct.ov5670_reg { i16 13848, i8 42 }, %struct.ov5670_reg { i16 22400, i8 62 }, %struct.ov5670_reg { i16 22401, i8 15 }, %struct.ov5670_reg { i16 22402, i8 68 }, %struct.ov5670_reg { i16 22403, i8 2 }, %struct.ov5670_reg { i16 22404, i8 1 }, %struct.ov5670_reg { i16 22405, i8 1 }, %struct.ov5670_reg { i16 22406, i8 0 }, %struct.ov5670_reg { i16 22407, i8 4 }, %struct.ov5670_reg { i16 22408, i8 2 }, %struct.ov5670_reg { i16 22409, i8 15 }, %struct.ov5670_reg { i16 22410, i8 -3 }, %struct.ov5670_reg { i16 22411, i8 -11 }, %struct.ov5670_reg { i16 22412, i8 -11 }, %struct.ov5670_reg { i16 22413, i8 3 }, %struct.ov5670_reg { i16 22414, i8 8 }, %struct.ov5670_reg { i16 22415, i8 12 }, %struct.ov5670_reg { i16 22416, i8 8 }, %struct.ov5670_reg { i16 22417, i8 4 }, %struct.ov5670_reg { i16 22418, i8 0 }, %struct.ov5670_reg { i16 22419, i8 82 }, %struct.ov5670_reg { i16 22420, i8 -93 }, %struct.ov5670_reg { i16 13571, i8 0 }, %struct.ov5670_reg { i16 20549, i8 5 }, %struct.ov5670_reg { i16 16387, i8 64 }, %struct.ov5670_reg { i16 20552, i8 64 }], [260 x i8] zeroinitializer }, align 32
@mode_648x486_regs = internal constant { [263 x %struct.ov5670_reg], [260 x i8] } { [263 x %struct.ov5670_reg] [%struct.ov5670_reg { i16 12288, i8 0 }, %struct.ov5670_reg { i16 12290, i8 33 }, %struct.ov5670_reg { i16 12293, i8 -16 }, %struct.ov5670_reg { i16 12295, i8 0 }, %struct.ov5670_reg { i16 12309, i8 15 }, %struct.ov5670_reg { i16 12312, i8 50 }, %struct.ov5670_reg { i16 12314, i8 -16 }, %struct.ov5670_reg { i16 12315, i8 -16 }, %struct.ov5670_reg { i16 12316, i8 -16 }, %struct.ov5670_reg { i16 12317, i8 -16 }, %struct.ov5670_reg { i16 12318, i8 -16 }, %struct.ov5670_reg { i16 12336, i8 0 }, %struct.ov5670_reg { i16 12337, i8 10 }, %struct.ov5670_reg { i16 12348, i8 -1 }, %struct.ov5670_reg { i16 12350, i8 -1 }, %struct.ov5670_reg { i16 12352, i8 -16 }, %struct.ov5670_reg { i16 12353, i8 0 }, %struct.ov5670_reg { i16 12354, i8 -16 }, %struct.ov5670_reg { i16 12550, i8 17 }, %struct.ov5670_reg { i16 13568, i8 0 }, %struct.ov5670_reg { i16 13569, i8 -128 }, %struct.ov5670_reg { i16 13570, i8 0 }, %struct.ov5670_reg { i16 13571, i8 4 }, %struct.ov5670_reg { i16 13572, i8 3 }, %struct.ov5670_reg { i16 13573, i8 -125 }, %struct.ov5670_reg { i16 13576, i8 4 }, %struct.ov5670_reg { i16 13577, i8 0 }, %struct.ov5670_reg { i16 13582, i8 4 }, %struct.ov5670_reg { i16 13583, i8 0 }, %struct.ov5670_reg { i16 13584, i8 0 }, %struct.ov5670_reg { i16 13585, i8 2 }, %struct.ov5670_reg { i16 13586, i8 0 }, %struct.ov5670_reg { i16 13825, i8 -56 }, %struct.ov5670_reg { i16 13840, i8 -120 }, %struct.ov5670_reg { i16 13842, i8 72 }, %struct.ov5670_reg { i16 13844, i8 91 }, %struct.ov5670_reg { i16 13845, i8 -106 }, %struct.ov5670_reg { i16 13857, i8 -48 }, %struct.ov5670_reg { i16 13858, i8 0 }, %struct.ov5670_reg { i16 13859, i8 4 }, %struct.ov5670_reg { i16 13875, i8 19 }, %struct.ov5670_reg { i16 13876, i8 19 }, %struct.ov5670_reg { i16 13877, i8 19 }, %struct.ov5670_reg { i16 13878, i8 19 }, %struct.ov5670_reg { i16 13893, i8 19 }, %struct.ov5670_reg { i16 13894, i8 -126 }, %struct.ov5670_reg { i16 13904, i8 0 }, %struct.ov5670_reg { i16 13906, i8 -1 }, %struct.ov5670_reg { i16 13909, i8 32 }, %struct.ov5670_reg { i16 13910, i8 -1 }, %struct.ov5670_reg { i16 13914, i8 -1 }, %struct.ov5670_reg { i16 13918, i8 -1 }, %struct.ov5670_reg { i16 13928, i8 0 }, %struct.ov5670_reg { i16 13930, i8 7 }, %struct.ov5670_reg { i16 13934, i8 8 }, %struct.ov5670_reg { i16 13933, i8 0 }, %struct.ov5670_reg { i16 13935, i8 -128 }, %struct.ov5670_reg { i16 14080, i8 40 }, %struct.ov5670_reg { i16 14081, i8 16 }, %struct.ov5670_reg { i16 14082, i8 58 }, %struct.ov5670_reg { i16 14083, i8 25 }, %struct.ov5670_reg { i16 14084, i8 16 }, %struct.ov5670_reg { i16 14085, i8 0 }, %struct.ov5670_reg { i16 14086, i8 102 }, %struct.ov5670_reg { i16 14087, i8 8 }, %struct.ov5670_reg { i16 14088, i8 52 }, %struct.ov5670_reg { i16 14089, i8 64 }, %struct.ov5670_reg { i16 14090, i8 1 }, %struct.ov5670_reg { i16 14091, i8 27 }, %struct.ov5670_reg { i16 14100, i8 36 }, %struct.ov5670_reg { i16 14106, i8 62 }, %struct.ov5670_reg { i16 14131, i8 0 }, %struct.ov5670_reg { i16 14132, i8 0 }, %struct.ov5670_reg { i16 14138, i8 5 }, %struct.ov5670_reg { i16 14139, i8 6 }, %struct.ov5670_reg { i16 14140, i8 10 }, %struct.ov5670_reg { i16 14143, i8 -96 }, %struct.ov5670_reg { i16 14165, i8 0 }, %struct.ov5670_reg { i16 14168, i8 0 }, %struct.ov5670_reg { i16 14171, i8 14 }, %struct.ov5670_reg { i16 14182, i8 95 }, %struct.ov5670_reg { i16 14184, i8 0 }, %struct.ov5670_reg { i16 14185, i8 34 }, %struct.ov5670_reg { i16 14195, i8 8 }, %struct.ov5670_reg { i16 14196, i8 31 }, %struct.ov5670_reg { i16 14198, i8 6 }, %struct.ov5670_reg { i16 14240, i8 -120 }, %struct.ov5670_reg { i16 14241, i8 92 }, %struct.ov5670_reg { i16 14247, i8 -120 }, %struct.ov5670_reg { i16 14248, i8 112 }, %struct.ov5670_reg { i16 14250, i8 -120 }, %struct.ov5670_reg { i16 14251, i8 72 }, %struct.ov5670_reg { i16 14259, i8 102 }, %struct.ov5670_reg { i16 14274, i8 4 }, %struct.ov5670_reg { i16 14277, i8 0 }, %struct.ov5670_reg { i16 14280, i8 0 }, %struct.ov5670_reg { i16 14336, i8 0 }, %struct.ov5670_reg { i16 14337, i8 12 }, %struct.ov5670_reg { i16 14338, i8 0 }, %struct.ov5670_reg { i16 14339, i8 4 }, %struct.ov5670_reg { i16 14340, i8 10 }, %struct.ov5670_reg { i16 14341, i8 51 }, %struct.ov5670_reg { i16 14342, i8 7 }, %struct.ov5670_reg { i16 14343, i8 -93 }, %struct.ov5670_reg { i16 14344, i8 2 }, %struct.ov5670_reg { i16 14345, i8 -120 }, %struct.ov5670_reg { i16 14346, i8 1 }, %struct.ov5670_reg { i16 14347, i8 -26 }, %struct.ov5670_reg { i16 14348, i8 6 }, %struct.ov5670_reg { i16 14349, i8 -112 }, %struct.ov5670_reg { i16 14350, i8 8 }, %struct.ov5670_reg { i16 14351, i8 8 }, %struct.ov5670_reg { i16 14353, i8 4 }, %struct.ov5670_reg { i16 14355, i8 2 }, %struct.ov5670_reg { i16 14356, i8 7 }, %struct.ov5670_reg { i16 14357, i8 1 }, %struct.ov5670_reg { i16 14358, i8 0 }, %struct.ov5670_reg { i16 14359, i8 0 }, %struct.ov5670_reg { i16 14360, i8 0 }, %struct.ov5670_reg { i16 14361, i8 0 }, %struct.ov5670_reg { i16 14368, i8 -108 }, %struct.ov5670_reg { i16 14369, i8 -58 }, %struct.ov5670_reg { i16 14370, i8 72 }, %struct.ov5670_reg { i16 14374, i8 0 }, %struct.ov5670_reg { i16 14375, i8 8 }, %struct.ov5670_reg { i16 14378, i8 7 }, %struct.ov5670_reg { i16 14379, i8 1 }, %struct.ov5670_reg { i16 14384, i8 8 }, %struct.ov5670_reg { i16 14390, i8 2 }, %struct.ov5670_reg { i16 14391, i8 0 }, %struct.ov5670_reg { i16 14392, i8 16 }, %struct.ov5670_reg { i16 14401, i8 -1 }, %struct.ov5670_reg { i16 14406, i8 72 }, %struct.ov5670_reg { i16 14433, i8 0 }, %struct.ov5670_reg { i16 14434, i8 4 }, %struct.ov5670_reg { i16 14435, i8 6 }, %struct.ov5670_reg { i16 14865, i8 1 }, %struct.ov5670_reg { i16 14866, i8 120 }, %struct.ov5670_reg { i16 15104, i8 0 }, %struct.ov5670_reg { i16 15106, i8 0 }, %struct.ov5670_reg { i16 15107, i8 0 }, %struct.ov5670_reg { i16 15108, i8 0 }, %struct.ov5670_reg { i16 15109, i8 0 }, %struct.ov5670_reg { i16 15360, i8 -119 }, %struct.ov5670_reg { i16 15361, i8 -85 }, %struct.ov5670_reg { i16 15362, i8 1 }, %struct.ov5670_reg { i16 15363, i8 0 }, %struct.ov5670_reg { i16 15364, i8 0 }, %struct.ov5670_reg { i16 15365, i8 3 }, %struct.ov5670_reg { i16 15366, i8 0 }, %struct.ov5670_reg { i16 15367, i8 5 }, %struct.ov5670_reg { i16 15372, i8 0 }, %struct.ov5670_reg { i16 15373, i8 0 }, %struct.ov5670_reg { i16 15374, i8 0 }, %struct.ov5670_reg { i16 15375, i8 0 }, %struct.ov5670_reg { i16 15424, i8 0 }, %struct.ov5670_reg { i16 15425, i8 -93 }, %struct.ov5670_reg { i16 15427, i8 125 }, %struct.ov5670_reg { i16 15429, i8 -41 }, %struct.ov5670_reg { i16 15431, i8 -4 }, %struct.ov5670_reg { i16 15440, i8 5 }, %struct.ov5670_reg { i16 15442, i8 -86 }, %struct.ov5670_reg { i16 15444, i8 113 }, %struct.ov5670_reg { i16 15446, i8 -128 }, %struct.ov5670_reg { i16 15749, i8 23 }, %struct.ov5670_reg { i16 16131, i8 0 }, %struct.ov5670_reg { i16 16138, i8 0 }, %struct.ov5670_reg { i16 16139, i8 0 }, %struct.ov5670_reg { i16 16385, i8 96 }, %struct.ov5670_reg { i16 16393, i8 5 }, %struct.ov5670_reg { i16 16416, i8 0 }, %struct.ov5670_reg { i16 16417, i8 0 }, %struct.ov5670_reg { i16 16418, i8 0 }, %struct.ov5670_reg { i16 16419, i8 0 }, %struct.ov5670_reg { i16 16420, i8 0 }, %struct.ov5670_reg { i16 16421, i8 0 }, %struct.ov5670_reg { i16 16422, i8 0 }, %struct.ov5670_reg { i16 16423, i8 0 }, %struct.ov5670_reg { i16 16424, i8 0 }, %struct.ov5670_reg { i16 16425, i8 0 }, %struct.ov5670_reg { i16 16426, i8 0 }, %struct.ov5670_reg { i16 16427, i8 0 }, %struct.ov5670_reg { i16 16428, i8 0 }, %struct.ov5670_reg { i16 16429, i8 0 }, %struct.ov5670_reg { i16 16430, i8 0 }, %struct.ov5670_reg { i16 16431, i8 0 }, %struct.ov5670_reg { i16 16448, i8 0 }, %struct.ov5670_reg { i16 16449, i8 3 }, %struct.ov5670_reg { i16 16450, i8 0 }, %struct.ov5670_reg { i16 16451, i8 122 }, %struct.ov5670_reg { i16 16452, i8 0 }, %struct.ov5670_reg { i16 16453, i8 122 }, %struct.ov5670_reg { i16 16454, i8 0 }, %struct.ov5670_reg { i16 16455, i8 122 }, %struct.ov5670_reg { i16 16456, i8 0 }, %struct.ov5670_reg { i16 16457, i8 122 }, %struct.ov5670_reg { i16 17159, i8 48 }, %struct.ov5670_reg { i16 17664, i8 88 }, %struct.ov5670_reg { i16 17665, i8 4 }, %struct.ov5670_reg { i16 17666, i8 64 }, %struct.ov5670_reg { i16 17667, i8 16 }, %struct.ov5670_reg { i16 17672, i8 85 }, %struct.ov5670_reg { i16 17673, i8 85 }, %struct.ov5670_reg { i16 17674, i8 2 }, %struct.ov5670_reg { i16 17675, i8 0 }, %struct.ov5670_reg { i16 17920, i8 0 }, %struct.ov5670_reg { i16 17921, i8 64 }, %struct.ov5670_reg { i16 18176, i8 -92 }, %struct.ov5670_reg { i16 18432, i8 76 }, %struct.ov5670_reg { i16 18454, i8 83 }, %struct.ov5670_reg { i16 18463, i8 64 }, %struct.ov5670_reg { i16 18487, i8 19 }, %struct.ov5670_reg { i16 20480, i8 86 }, %struct.ov5670_reg { i16 20481, i8 1 }, %struct.ov5670_reg { i16 20482, i8 40 }, %struct.ov5670_reg { i16 20484, i8 12 }, %struct.ov5670_reg { i16 20486, i8 12 }, %struct.ov5670_reg { i16 20487, i8 -32 }, %struct.ov5670_reg { i16 20488, i8 1 }, %struct.ov5670_reg { i16 20489, i8 -80 }, %struct.ov5670_reg { i16 22785, i8 0 }, %struct.ov5670_reg { i16 23041, i8 0 }, %struct.ov5670_reg { i16 23043, i8 0 }, %struct.ov5670_reg { i16 23044, i8 12 }, %struct.ov5670_reg { i16 23045, i8 -32 }, %struct.ov5670_reg { i16 23046, i8 9 }, %struct.ov5670_reg { i16 23047, i8 -80 }, %struct.ov5670_reg { i16 23048, i8 6 }, %struct.ov5670_reg { i16 24064, i8 0 }, %struct.ov5670_reg { i16 14132, i8 64 }, %struct.ov5670_reg { i16 23296, i8 1 }, %struct.ov5670_reg { i16 23297, i8 16 }, %struct.ov5670_reg { i16 23298, i8 1 }, %struct.ov5670_reg { i16 23299, i8 -37 }, %struct.ov5670_reg { i16 15756, i8 113 }, %struct.ov5670_reg { i16 15757, i8 -22 }, %struct.ov5670_reg { i16 16407, i8 16 }, %struct.ov5670_reg { i16 13848, i8 42 }, %struct.ov5670_reg { i16 22400, i8 62 }, %struct.ov5670_reg { i16 22401, i8 15 }, %struct.ov5670_reg { i16 22402, i8 68 }, %struct.ov5670_reg { i16 22403, i8 2 }, %struct.ov5670_reg { i16 22404, i8 1 }, %struct.ov5670_reg { i16 22405, i8 1 }, %struct.ov5670_reg { i16 22406, i8 0 }, %struct.ov5670_reg { i16 22407, i8 4 }, %struct.ov5670_reg { i16 22408, i8 2 }, %struct.ov5670_reg { i16 22409, i8 15 }, %struct.ov5670_reg { i16 22410, i8 -3 }, %struct.ov5670_reg { i16 22411, i8 -11 }, %struct.ov5670_reg { i16 22412, i8 -11 }, %struct.ov5670_reg { i16 22413, i8 3 }, %struct.ov5670_reg { i16 22414, i8 8 }, %struct.ov5670_reg { i16 22415, i8 12 }, %struct.ov5670_reg { i16 22416, i8 8 }, %struct.ov5670_reg { i16 22417, i8 6 }, %struct.ov5670_reg { i16 22418, i8 0 }, %struct.ov5670_reg { i16 22419, i8 82 }, %struct.ov5670_reg { i16 22420, i8 -93 }, %struct.ov5670_reg { i16 13571, i8 0 }, %struct.ov5670_reg { i16 20549, i8 5 }, %struct.ov5670_reg { i16 16387, i8 64 }, %struct.ov5670_reg { i16 20552, i8 64 }], [260 x i8] zeroinitializer }, align 32
@mode_2560x1440_regs = internal constant { [262 x %struct.ov5670_reg], [264 x i8] } { [262 x %struct.ov5670_reg] [%struct.ov5670_reg { i16 12288, i8 0 }, %struct.ov5670_reg { i16 12290, i8 33 }, %struct.ov5670_reg { i16 12293, i8 -16 }, %struct.ov5670_reg { i16 12295, i8 0 }, %struct.ov5670_reg { i16 12309, i8 15 }, %struct.ov5670_reg { i16 12312, i8 50 }, %struct.ov5670_reg { i16 12314, i8 -16 }, %struct.ov5670_reg { i16 12315, i8 -16 }, %struct.ov5670_reg { i16 12316, i8 -16 }, %struct.ov5670_reg { i16 12317, i8 -16 }, %struct.ov5670_reg { i16 12318, i8 -16 }, %struct.ov5670_reg { i16 12336, i8 0 }, %struct.ov5670_reg { i16 12337, i8 10 }, %struct.ov5670_reg { i16 12348, i8 -1 }, %struct.ov5670_reg { i16 12350, i8 -1 }, %struct.ov5670_reg { i16 12352, i8 -16 }, %struct.ov5670_reg { i16 12353, i8 0 }, %struct.ov5670_reg { i16 12354, i8 -16 }, %struct.ov5670_reg { i16 12550, i8 17 }, %struct.ov5670_reg { i16 13568, i8 0 }, %struct.ov5670_reg { i16 13569, i8 -128 }, %struct.ov5670_reg { i16 13570, i8 0 }, %struct.ov5670_reg { i16 13571, i8 4 }, %struct.ov5670_reg { i16 13572, i8 3 }, %struct.ov5670_reg { i16 13573, i8 -125 }, %struct.ov5670_reg { i16 13576, i8 4 }, %struct.ov5670_reg { i16 13577, i8 0 }, %struct.ov5670_reg { i16 13582, i8 4 }, %struct.ov5670_reg { i16 13583, i8 0 }, %struct.ov5670_reg { i16 13584, i8 0 }, %struct.ov5670_reg { i16 13585, i8 2 }, %struct.ov5670_reg { i16 13586, i8 0 }, %struct.ov5670_reg { i16 13825, i8 -56 }, %struct.ov5670_reg { i16 13840, i8 -120 }, %struct.ov5670_reg { i16 13842, i8 72 }, %struct.ov5670_reg { i16 13844, i8 91 }, %struct.ov5670_reg { i16 13845, i8 -106 }, %struct.ov5670_reg { i16 13857, i8 -48 }, %struct.ov5670_reg { i16 13858, i8 0 }, %struct.ov5670_reg { i16 13859, i8 0 }, %struct.ov5670_reg { i16 13875, i8 19 }, %struct.ov5670_reg { i16 13876, i8 19 }, %struct.ov5670_reg { i16 13877, i8 19 }, %struct.ov5670_reg { i16 13878, i8 19 }, %struct.ov5670_reg { i16 13893, i8 19 }, %struct.ov5670_reg { i16 13894, i8 -126 }, %struct.ov5670_reg { i16 13904, i8 0 }, %struct.ov5670_reg { i16 13906, i8 -1 }, %struct.ov5670_reg { i16 13909, i8 32 }, %struct.ov5670_reg { i16 13910, i8 -1 }, %struct.ov5670_reg { i16 13914, i8 -1 }, %struct.ov5670_reg { i16 13918, i8 -1 }, %struct.ov5670_reg { i16 13928, i8 0 }, %struct.ov5670_reg { i16 13930, i8 7 }, %struct.ov5670_reg { i16 13934, i8 16 }, %struct.ov5670_reg { i16 13933, i8 0 }, %struct.ov5670_reg { i16 13935, i8 -128 }, %struct.ov5670_reg { i16 14080, i8 40 }, %struct.ov5670_reg { i16 14081, i8 16 }, %struct.ov5670_reg { i16 14082, i8 58 }, %struct.ov5670_reg { i16 14083, i8 25 }, %struct.ov5670_reg { i16 14084, i8 16 }, %struct.ov5670_reg { i16 14085, i8 0 }, %struct.ov5670_reg { i16 14086, i8 102 }, %struct.ov5670_reg { i16 14087, i8 8 }, %struct.ov5670_reg { i16 14088, i8 52 }, %struct.ov5670_reg { i16 14089, i8 64 }, %struct.ov5670_reg { i16 14090, i8 1 }, %struct.ov5670_reg { i16 14091, i8 27 }, %struct.ov5670_reg { i16 14100, i8 36 }, %struct.ov5670_reg { i16 14106, i8 62 }, %struct.ov5670_reg { i16 14131, i8 0 }, %struct.ov5670_reg { i16 14132, i8 0 }, %struct.ov5670_reg { i16 14138, i8 5 }, %struct.ov5670_reg { i16 14139, i8 6 }, %struct.ov5670_reg { i16 14140, i8 10 }, %struct.ov5670_reg { i16 14143, i8 -96 }, %struct.ov5670_reg { i16 14165, i8 0 }, %struct.ov5670_reg { i16 14168, i8 0 }, %struct.ov5670_reg { i16 14171, i8 14 }, %struct.ov5670_reg { i16 14182, i8 95 }, %struct.ov5670_reg { i16 14184, i8 0 }, %struct.ov5670_reg { i16 14185, i8 34 }, %struct.ov5670_reg { i16 14195, i8 8 }, %struct.ov5670_reg { i16 14196, i8 31 }, %struct.ov5670_reg { i16 14198, i8 6 }, %struct.ov5670_reg { i16 14240, i8 -120 }, %struct.ov5670_reg { i16 14241, i8 92 }, %struct.ov5670_reg { i16 14247, i8 -120 }, %struct.ov5670_reg { i16 14248, i8 112 }, %struct.ov5670_reg { i16 14250, i8 -120 }, %struct.ov5670_reg { i16 14251, i8 72 }, %struct.ov5670_reg { i16 14259, i8 102 }, %struct.ov5670_reg { i16 14274, i8 4 }, %struct.ov5670_reg { i16 14277, i8 0 }, %struct.ov5670_reg { i16 14280, i8 0 }, %struct.ov5670_reg { i16 14336, i8 0 }, %struct.ov5670_reg { i16 14337, i8 12 }, %struct.ov5670_reg { i16 14338, i8 0 }, %struct.ov5670_reg { i16 14339, i8 4 }, %struct.ov5670_reg { i16 14340, i8 10 }, %struct.ov5670_reg { i16 14341, i8 51 }, %struct.ov5670_reg { i16 14342, i8 7 }, %struct.ov5670_reg { i16 14343, i8 -93 }, %struct.ov5670_reg { i16 14344, i8 10 }, %struct.ov5670_reg { i16 14345, i8 0 }, %struct.ov5670_reg { i16 14346, i8 5 }, %struct.ov5670_reg { i16 14347, i8 -96 }, %struct.ov5670_reg { i16 14348, i8 6 }, %struct.ov5670_reg { i16 14349, i8 -112 }, %struct.ov5670_reg { i16 14350, i8 8 }, %struct.ov5670_reg { i16 14351, i8 8 }, %struct.ov5670_reg { i16 14353, i8 4 }, %struct.ov5670_reg { i16 14355, i8 2 }, %struct.ov5670_reg { i16 14356, i8 1 }, %struct.ov5670_reg { i16 14357, i8 1 }, %struct.ov5670_reg { i16 14358, i8 0 }, %struct.ov5670_reg { i16 14359, i8 0 }, %struct.ov5670_reg { i16 14360, i8 0 }, %struct.ov5670_reg { i16 14361, i8 0 }, %struct.ov5670_reg { i16 14368, i8 -124 }, %struct.ov5670_reg { i16 14369, i8 70 }, %struct.ov5670_reg { i16 14370, i8 72 }, %struct.ov5670_reg { i16 14374, i8 0 }, %struct.ov5670_reg { i16 14375, i8 8 }, %struct.ov5670_reg { i16 14378, i8 1 }, %struct.ov5670_reg { i16 14379, i8 1 }, %struct.ov5670_reg { i16 14384, i8 8 }, %struct.ov5670_reg { i16 14390, i8 2 }, %struct.ov5670_reg { i16 14391, i8 0 }, %struct.ov5670_reg { i16 14392, i8 16 }, %struct.ov5670_reg { i16 14401, i8 -1 }, %struct.ov5670_reg { i16 14406, i8 72 }, %struct.ov5670_reg { i16 14433, i8 0 }, %struct.ov5670_reg { i16 14434, i8 4 }, %struct.ov5670_reg { i16 14435, i8 6 }, %struct.ov5670_reg { i16 14865, i8 1 }, %struct.ov5670_reg { i16 14866, i8 120 }, %struct.ov5670_reg { i16 15104, i8 0 }, %struct.ov5670_reg { i16 15106, i8 0 }, %struct.ov5670_reg { i16 15107, i8 0 }, %struct.ov5670_reg { i16 15108, i8 0 }, %struct.ov5670_reg { i16 15109, i8 0 }, %struct.ov5670_reg { i16 15360, i8 -119 }, %struct.ov5670_reg { i16 15361, i8 -85 }, %struct.ov5670_reg { i16 15362, i8 1 }, %struct.ov5670_reg { i16 15363, i8 0 }, %struct.ov5670_reg { i16 15364, i8 0 }, %struct.ov5670_reg { i16 15365, i8 3 }, %struct.ov5670_reg { i16 15366, i8 0 }, %struct.ov5670_reg { i16 15367, i8 5 }, %struct.ov5670_reg { i16 15372, i8 0 }, %struct.ov5670_reg { i16 15373, i8 0 }, %struct.ov5670_reg { i16 15374, i8 0 }, %struct.ov5670_reg { i16 15375, i8 0 }, %struct.ov5670_reg { i16 15424, i8 0 }, %struct.ov5670_reg { i16 15425, i8 -93 }, %struct.ov5670_reg { i16 15427, i8 125 }, %struct.ov5670_reg { i16 15429, i8 -41 }, %struct.ov5670_reg { i16 15431, i8 -4 }, %struct.ov5670_reg { i16 15440, i8 5 }, %struct.ov5670_reg { i16 15442, i8 -86 }, %struct.ov5670_reg { i16 15444, i8 113 }, %struct.ov5670_reg { i16 15446, i8 -128 }, %struct.ov5670_reg { i16 15749, i8 23 }, %struct.ov5670_reg { i16 16131, i8 0 }, %struct.ov5670_reg { i16 16138, i8 0 }, %struct.ov5670_reg { i16 16139, i8 0 }, %struct.ov5670_reg { i16 16385, i8 96 }, %struct.ov5670_reg { i16 16393, i8 13 }, %struct.ov5670_reg { i16 16416, i8 0 }, %struct.ov5670_reg { i16 16417, i8 0 }, %struct.ov5670_reg { i16 16418, i8 0 }, %struct.ov5670_reg { i16 16419, i8 0 }, %struct.ov5670_reg { i16 16420, i8 0 }, %struct.ov5670_reg { i16 16421, i8 0 }, %struct.ov5670_reg { i16 16422, i8 0 }, %struct.ov5670_reg { i16 16423, i8 0 }, %struct.ov5670_reg { i16 16424, i8 0 }, %struct.ov5670_reg { i16 16425, i8 0 }, %struct.ov5670_reg { i16 16426, i8 0 }, %struct.ov5670_reg { i16 16427, i8 0 }, %struct.ov5670_reg { i16 16428, i8 0 }, %struct.ov5670_reg { i16 16429, i8 0 }, %struct.ov5670_reg { i16 16430, i8 0 }, %struct.ov5670_reg { i16 16431, i8 0 }, %struct.ov5670_reg { i16 16448, i8 0 }, %struct.ov5670_reg { i16 16449, i8 3 }, %struct.ov5670_reg { i16 16450, i8 0 }, %struct.ov5670_reg { i16 16451, i8 122 }, %struct.ov5670_reg { i16 16452, i8 0 }, %struct.ov5670_reg { i16 16453, i8 122 }, %struct.ov5670_reg { i16 16454, i8 0 }, %struct.ov5670_reg { i16 16455, i8 122 }, %struct.ov5670_reg { i16 16456, i8 0 }, %struct.ov5670_reg { i16 16457, i8 122 }, %struct.ov5670_reg { i16 17159, i8 48 }, %struct.ov5670_reg { i16 17664, i8 88 }, %struct.ov5670_reg { i16 17665, i8 4 }, %struct.ov5670_reg { i16 17666, i8 64 }, %struct.ov5670_reg { i16 17667, i8 16 }, %struct.ov5670_reg { i16 17672, i8 -86 }, %struct.ov5670_reg { i16 17673, i8 -86 }, %struct.ov5670_reg { i16 17674, i8 0 }, %struct.ov5670_reg { i16 17675, i8 0 }, %struct.ov5670_reg { i16 17920, i8 1 }, %struct.ov5670_reg { i16 17921, i8 0 }, %struct.ov5670_reg { i16 18176, i8 -92 }, %struct.ov5670_reg { i16 18432, i8 76 }, %struct.ov5670_reg { i16 18454, i8 83 }, %struct.ov5670_reg { i16 18463, i8 64 }, %struct.ov5670_reg { i16 18487, i8 19 }, %struct.ov5670_reg { i16 20480, i8 86 }, %struct.ov5670_reg { i16 20481, i8 1 }, %struct.ov5670_reg { i16 20482, i8 40 }, %struct.ov5670_reg { i16 20484, i8 12 }, %struct.ov5670_reg { i16 20486, i8 12 }, %struct.ov5670_reg { i16 20487, i8 -32 }, %struct.ov5670_reg { i16 20488, i8 1 }, %struct.ov5670_reg { i16 20489, i8 -80 }, %struct.ov5670_reg { i16 22785, i8 0 }, %struct.ov5670_reg { i16 23041, i8 0 }, %struct.ov5670_reg { i16 23043, i8 0 }, %struct.ov5670_reg { i16 23044, i8 12 }, %struct.ov5670_reg { i16 23045, i8 -32 }, %struct.ov5670_reg { i16 23046, i8 9 }, %struct.ov5670_reg { i16 23047, i8 -80 }, %struct.ov5670_reg { i16 23048, i8 6 }, %struct.ov5670_reg { i16 24064, i8 0 }, %struct.ov5670_reg { i16 14132, i8 64 }, %struct.ov5670_reg { i16 23296, i8 1 }, %struct.ov5670_reg { i16 23297, i8 16 }, %struct.ov5670_reg { i16 23298, i8 1 }, %struct.ov5670_reg { i16 23299, i8 -37 }, %struct.ov5670_reg { i16 15756, i8 113 }, %struct.ov5670_reg { i16 15757, i8 -22 }, %struct.ov5670_reg { i16 16407, i8 8 }, %struct.ov5670_reg { i16 13848, i8 42 }, %struct.ov5670_reg { i16 22400, i8 62 }, %struct.ov5670_reg { i16 22401, i8 15 }, %struct.ov5670_reg { i16 22402, i8 68 }, %struct.ov5670_reg { i16 22403, i8 2 }, %struct.ov5670_reg { i16 22404, i8 1 }, %struct.ov5670_reg { i16 22405, i8 1 }, %struct.ov5670_reg { i16 22406, i8 0 }, %struct.ov5670_reg { i16 22407, i8 4 }, %struct.ov5670_reg { i16 22408, i8 2 }, %struct.ov5670_reg { i16 22409, i8 15 }, %struct.ov5670_reg { i16 22410, i8 -3 }, %struct.ov5670_reg { i16 22411, i8 -11 }, %struct.ov5670_reg { i16 22412, i8 -11 }, %struct.ov5670_reg { i16 22413, i8 3 }, %struct.ov5670_reg { i16 22414, i8 8 }, %struct.ov5670_reg { i16 22415, i8 12 }, %struct.ov5670_reg { i16 22416, i8 8 }, %struct.ov5670_reg { i16 22417, i8 6 }, %struct.ov5670_reg { i16 22418, i8 0 }, %struct.ov5670_reg { i16 22419, i8 82 }, %struct.ov5670_reg { i16 22420, i8 -93 }, %struct.ov5670_reg { i16 20549, i8 5 }, %struct.ov5670_reg { i16 16387, i8 64 }, %struct.ov5670_reg { i16 20552, i8 64 }], [264 x i8] zeroinitializer }, align 32
@mode_1280x720_regs = internal constant { [263 x %struct.ov5670_reg], [260 x i8] } { [263 x %struct.ov5670_reg] [%struct.ov5670_reg { i16 12288, i8 0 }, %struct.ov5670_reg { i16 12290, i8 33 }, %struct.ov5670_reg { i16 12293, i8 -16 }, %struct.ov5670_reg { i16 12295, i8 0 }, %struct.ov5670_reg { i16 12309, i8 15 }, %struct.ov5670_reg { i16 12312, i8 50 }, %struct.ov5670_reg { i16 12314, i8 -16 }, %struct.ov5670_reg { i16 12315, i8 -16 }, %struct.ov5670_reg { i16 12316, i8 -16 }, %struct.ov5670_reg { i16 12317, i8 -16 }, %struct.ov5670_reg { i16 12318, i8 -16 }, %struct.ov5670_reg { i16 12336, i8 0 }, %struct.ov5670_reg { i16 12337, i8 10 }, %struct.ov5670_reg { i16 12348, i8 -1 }, %struct.ov5670_reg { i16 12350, i8 -1 }, %struct.ov5670_reg { i16 12352, i8 -16 }, %struct.ov5670_reg { i16 12353, i8 0 }, %struct.ov5670_reg { i16 12354, i8 -16 }, %struct.ov5670_reg { i16 12550, i8 17 }, %struct.ov5670_reg { i16 13568, i8 0 }, %struct.ov5670_reg { i16 13569, i8 -128 }, %struct.ov5670_reg { i16 13570, i8 0 }, %struct.ov5670_reg { i16 13571, i8 4 }, %struct.ov5670_reg { i16 13572, i8 3 }, %struct.ov5670_reg { i16 13573, i8 -125 }, %struct.ov5670_reg { i16 13576, i8 4 }, %struct.ov5670_reg { i16 13577, i8 0 }, %struct.ov5670_reg { i16 13582, i8 4 }, %struct.ov5670_reg { i16 13583, i8 0 }, %struct.ov5670_reg { i16 13584, i8 0 }, %struct.ov5670_reg { i16 13585, i8 2 }, %struct.ov5670_reg { i16 13586, i8 0 }, %struct.ov5670_reg { i16 13825, i8 -56 }, %struct.ov5670_reg { i16 13840, i8 -120 }, %struct.ov5670_reg { i16 13842, i8 72 }, %struct.ov5670_reg { i16 13844, i8 91 }, %struct.ov5670_reg { i16 13845, i8 -106 }, %struct.ov5670_reg { i16 13857, i8 -48 }, %struct.ov5670_reg { i16 13858, i8 0 }, %struct.ov5670_reg { i16 13859, i8 0 }, %struct.ov5670_reg { i16 13875, i8 19 }, %struct.ov5670_reg { i16 13876, i8 19 }, %struct.ov5670_reg { i16 13877, i8 19 }, %struct.ov5670_reg { i16 13878, i8 19 }, %struct.ov5670_reg { i16 13893, i8 19 }, %struct.ov5670_reg { i16 13894, i8 -126 }, %struct.ov5670_reg { i16 13904, i8 0 }, %struct.ov5670_reg { i16 13906, i8 -1 }, %struct.ov5670_reg { i16 13909, i8 32 }, %struct.ov5670_reg { i16 13910, i8 -1 }, %struct.ov5670_reg { i16 13914, i8 -1 }, %struct.ov5670_reg { i16 13918, i8 -1 }, %struct.ov5670_reg { i16 13928, i8 0 }, %struct.ov5670_reg { i16 13930, i8 7 }, %struct.ov5670_reg { i16 13934, i8 8 }, %struct.ov5670_reg { i16 13933, i8 0 }, %struct.ov5670_reg { i16 13935, i8 -128 }, %struct.ov5670_reg { i16 14080, i8 40 }, %struct.ov5670_reg { i16 14081, i8 16 }, %struct.ov5670_reg { i16 14082, i8 58 }, %struct.ov5670_reg { i16 14083, i8 25 }, %struct.ov5670_reg { i16 14084, i8 16 }, %struct.ov5670_reg { i16 14085, i8 0 }, %struct.ov5670_reg { i16 14086, i8 102 }, %struct.ov5670_reg { i16 14087, i8 8 }, %struct.ov5670_reg { i16 14088, i8 52 }, %struct.ov5670_reg { i16 14089, i8 64 }, %struct.ov5670_reg { i16 14090, i8 1 }, %struct.ov5670_reg { i16 14091, i8 27 }, %struct.ov5670_reg { i16 14100, i8 36 }, %struct.ov5670_reg { i16 14106, i8 62 }, %struct.ov5670_reg { i16 14131, i8 0 }, %struct.ov5670_reg { i16 14132, i8 0 }, %struct.ov5670_reg { i16 14138, i8 5 }, %struct.ov5670_reg { i16 14139, i8 6 }, %struct.ov5670_reg { i16 14140, i8 10 }, %struct.ov5670_reg { i16 14143, i8 -96 }, %struct.ov5670_reg { i16 14165, i8 0 }, %struct.ov5670_reg { i16 14168, i8 0 }, %struct.ov5670_reg { i16 14171, i8 14 }, %struct.ov5670_reg { i16 14182, i8 95 }, %struct.ov5670_reg { i16 14184, i8 0 }, %struct.ov5670_reg { i16 14185, i8 34 }, %struct.ov5670_reg { i16 14195, i8 8 }, %struct.ov5670_reg { i16 14196, i8 31 }, %struct.ov5670_reg { i16 14198, i8 6 }, %struct.ov5670_reg { i16 14240, i8 -120 }, %struct.ov5670_reg { i16 14241, i8 92 }, %struct.ov5670_reg { i16 14247, i8 -120 }, %struct.ov5670_reg { i16 14248, i8 112 }, %struct.ov5670_reg { i16 14250, i8 -120 }, %struct.ov5670_reg { i16 14251, i8 72 }, %struct.ov5670_reg { i16 14259, i8 102 }, %struct.ov5670_reg { i16 14274, i8 4 }, %struct.ov5670_reg { i16 14277, i8 0 }, %struct.ov5670_reg { i16 14280, i8 0 }, %struct.ov5670_reg { i16 14336, i8 0 }, %struct.ov5670_reg { i16 14337, i8 12 }, %struct.ov5670_reg { i16 14338, i8 0 }, %struct.ov5670_reg { i16 14339, i8 4 }, %struct.ov5670_reg { i16 14340, i8 10 }, %struct.ov5670_reg { i16 14341, i8 51 }, %struct.ov5670_reg { i16 14342, i8 7 }, %struct.ov5670_reg { i16 14343, i8 -93 }, %struct.ov5670_reg { i16 14344, i8 5 }, %struct.ov5670_reg { i16 14345, i8 0 }, %struct.ov5670_reg { i16 14346, i8 2 }, %struct.ov5670_reg { i16 14347, i8 -48 }, %struct.ov5670_reg { i16 14348, i8 6 }, %struct.ov5670_reg { i16 14349, i8 -112 }, %struct.ov5670_reg { i16 14350, i8 8 }, %struct.ov5670_reg { i16 14351, i8 8 }, %struct.ov5670_reg { i16 14353, i8 4 }, %struct.ov5670_reg { i16 14355, i8 2 }, %struct.ov5670_reg { i16 14356, i8 3 }, %struct.ov5670_reg { i16 14357, i8 1 }, %struct.ov5670_reg { i16 14358, i8 0 }, %struct.ov5670_reg { i16 14359, i8 0 }, %struct.ov5670_reg { i16 14360, i8 0 }, %struct.ov5670_reg { i16 14361, i8 0 }, %struct.ov5670_reg { i16 14368, i8 -108 }, %struct.ov5670_reg { i16 14369, i8 71 }, %struct.ov5670_reg { i16 14370, i8 72 }, %struct.ov5670_reg { i16 14374, i8 0 }, %struct.ov5670_reg { i16 14375, i8 8 }, %struct.ov5670_reg { i16 14378, i8 3 }, %struct.ov5670_reg { i16 14379, i8 1 }, %struct.ov5670_reg { i16 14384, i8 8 }, %struct.ov5670_reg { i16 14390, i8 2 }, %struct.ov5670_reg { i16 14391, i8 0 }, %struct.ov5670_reg { i16 14392, i8 16 }, %struct.ov5670_reg { i16 14401, i8 -1 }, %struct.ov5670_reg { i16 14406, i8 72 }, %struct.ov5670_reg { i16 14433, i8 0 }, %struct.ov5670_reg { i16 14434, i8 4 }, %struct.ov5670_reg { i16 14435, i8 6 }, %struct.ov5670_reg { i16 14865, i8 1 }, %struct.ov5670_reg { i16 14866, i8 120 }, %struct.ov5670_reg { i16 15104, i8 0 }, %struct.ov5670_reg { i16 15106, i8 0 }, %struct.ov5670_reg { i16 15107, i8 0 }, %struct.ov5670_reg { i16 15108, i8 0 }, %struct.ov5670_reg { i16 15109, i8 0 }, %struct.ov5670_reg { i16 15360, i8 -119 }, %struct.ov5670_reg { i16 15361, i8 -85 }, %struct.ov5670_reg { i16 15362, i8 1 }, %struct.ov5670_reg { i16 15363, i8 0 }, %struct.ov5670_reg { i16 15364, i8 0 }, %struct.ov5670_reg { i16 15365, i8 3 }, %struct.ov5670_reg { i16 15366, i8 0 }, %struct.ov5670_reg { i16 15367, i8 5 }, %struct.ov5670_reg { i16 15372, i8 0 }, %struct.ov5670_reg { i16 15373, i8 0 }, %struct.ov5670_reg { i16 15374, i8 0 }, %struct.ov5670_reg { i16 15375, i8 0 }, %struct.ov5670_reg { i16 15424, i8 0 }, %struct.ov5670_reg { i16 15425, i8 -93 }, %struct.ov5670_reg { i16 15427, i8 125 }, %struct.ov5670_reg { i16 15429, i8 -41 }, %struct.ov5670_reg { i16 15431, i8 -4 }, %struct.ov5670_reg { i16 15440, i8 5 }, %struct.ov5670_reg { i16 15442, i8 -86 }, %struct.ov5670_reg { i16 15444, i8 113 }, %struct.ov5670_reg { i16 15446, i8 -128 }, %struct.ov5670_reg { i16 15749, i8 23 }, %struct.ov5670_reg { i16 16131, i8 0 }, %struct.ov5670_reg { i16 16138, i8 0 }, %struct.ov5670_reg { i16 16139, i8 0 }, %struct.ov5670_reg { i16 16385, i8 96 }, %struct.ov5670_reg { i16 16393, i8 5 }, %struct.ov5670_reg { i16 16416, i8 0 }, %struct.ov5670_reg { i16 16417, i8 0 }, %struct.ov5670_reg { i16 16418, i8 0 }, %struct.ov5670_reg { i16 16419, i8 0 }, %struct.ov5670_reg { i16 16420, i8 0 }, %struct.ov5670_reg { i16 16421, i8 0 }, %struct.ov5670_reg { i16 16422, i8 0 }, %struct.ov5670_reg { i16 16423, i8 0 }, %struct.ov5670_reg { i16 16424, i8 0 }, %struct.ov5670_reg { i16 16425, i8 0 }, %struct.ov5670_reg { i16 16426, i8 0 }, %struct.ov5670_reg { i16 16427, i8 0 }, %struct.ov5670_reg { i16 16428, i8 0 }, %struct.ov5670_reg { i16 16429, i8 0 }, %struct.ov5670_reg { i16 16430, i8 0 }, %struct.ov5670_reg { i16 16431, i8 0 }, %struct.ov5670_reg { i16 16448, i8 0 }, %struct.ov5670_reg { i16 16449, i8 3 }, %struct.ov5670_reg { i16 16450, i8 0 }, %struct.ov5670_reg { i16 16451, i8 122 }, %struct.ov5670_reg { i16 16452, i8 0 }, %struct.ov5670_reg { i16 16453, i8 122 }, %struct.ov5670_reg { i16 16454, i8 0 }, %struct.ov5670_reg { i16 16455, i8 122 }, %struct.ov5670_reg { i16 16456, i8 0 }, %struct.ov5670_reg { i16 16457, i8 122 }, %struct.ov5670_reg { i16 17159, i8 48 }, %struct.ov5670_reg { i16 17664, i8 88 }, %struct.ov5670_reg { i16 17665, i8 4 }, %struct.ov5670_reg { i16 17666, i8 72 }, %struct.ov5670_reg { i16 17667, i8 16 }, %struct.ov5670_reg { i16 17672, i8 85 }, %struct.ov5670_reg { i16 17673, i8 85 }, %struct.ov5670_reg { i16 17674, i8 0 }, %struct.ov5670_reg { i16 17675, i8 0 }, %struct.ov5670_reg { i16 17920, i8 0 }, %struct.ov5670_reg { i16 17921, i8 -128 }, %struct.ov5670_reg { i16 18176, i8 -92 }, %struct.ov5670_reg { i16 18432, i8 76 }, %struct.ov5670_reg { i16 18454, i8 83 }, %struct.ov5670_reg { i16 18463, i8 64 }, %struct.ov5670_reg { i16 18487, i8 19 }, %struct.ov5670_reg { i16 20480, i8 86 }, %struct.ov5670_reg { i16 20481, i8 1 }, %struct.ov5670_reg { i16 20482, i8 40 }, %struct.ov5670_reg { i16 20484, i8 12 }, %struct.ov5670_reg { i16 20486, i8 12 }, %struct.ov5670_reg { i16 20487, i8 -32 }, %struct.ov5670_reg { i16 20488, i8 1 }, %struct.ov5670_reg { i16 20489, i8 -80 }, %struct.ov5670_reg { i16 22785, i8 0 }, %struct.ov5670_reg { i16 23041, i8 0 }, %struct.ov5670_reg { i16 23043, i8 0 }, %struct.ov5670_reg { i16 23044, i8 12 }, %struct.ov5670_reg { i16 23045, i8 -32 }, %struct.ov5670_reg { i16 23046, i8 9 }, %struct.ov5670_reg { i16 23047, i8 -80 }, %struct.ov5670_reg { i16 23048, i8 6 }, %struct.ov5670_reg { i16 24064, i8 0 }, %struct.ov5670_reg { i16 14132, i8 64 }, %struct.ov5670_reg { i16 23296, i8 1 }, %struct.ov5670_reg { i16 23297, i8 16 }, %struct.ov5670_reg { i16 23298, i8 1 }, %struct.ov5670_reg { i16 23299, i8 -37 }, %struct.ov5670_reg { i16 15756, i8 113 }, %struct.ov5670_reg { i16 15757, i8 -22 }, %struct.ov5670_reg { i16 16407, i8 16 }, %struct.ov5670_reg { i16 13848, i8 42 }, %struct.ov5670_reg { i16 22400, i8 62 }, %struct.ov5670_reg { i16 22401, i8 15 }, %struct.ov5670_reg { i16 22402, i8 68 }, %struct.ov5670_reg { i16 22403, i8 2 }, %struct.ov5670_reg { i16 22404, i8 1 }, %struct.ov5670_reg { i16 22405, i8 1 }, %struct.ov5670_reg { i16 22406, i8 0 }, %struct.ov5670_reg { i16 22407, i8 4 }, %struct.ov5670_reg { i16 22408, i8 2 }, %struct.ov5670_reg { i16 22409, i8 15 }, %struct.ov5670_reg { i16 22410, i8 -3 }, %struct.ov5670_reg { i16 22411, i8 -11 }, %struct.ov5670_reg { i16 22412, i8 -11 }, %struct.ov5670_reg { i16 22413, i8 3 }, %struct.ov5670_reg { i16 22414, i8 8 }, %struct.ov5670_reg { i16 22415, i8 12 }, %struct.ov5670_reg { i16 22416, i8 8 }, %struct.ov5670_reg { i16 22417, i8 6 }, %struct.ov5670_reg { i16 22418, i8 0 }, %struct.ov5670_reg { i16 22419, i8 82 }, %struct.ov5670_reg { i16 22420, i8 -93 }, %struct.ov5670_reg { i16 13571, i8 0 }, %struct.ov5670_reg { i16 20549, i8 5 }, %struct.ov5670_reg { i16 16387, i8 64 }, %struct.ov5670_reg { i16 20552, i8 64 }], [260 x i8] zeroinitializer }, align 32
@mode_640x360_regs = internal constant { [263 x %struct.ov5670_reg], [260 x i8] } { [263 x %struct.ov5670_reg] [%struct.ov5670_reg { i16 12288, i8 0 }, %struct.ov5670_reg { i16 12290, i8 33 }, %struct.ov5670_reg { i16 12293, i8 -16 }, %struct.ov5670_reg { i16 12295, i8 0 }, %struct.ov5670_reg { i16 12309, i8 15 }, %struct.ov5670_reg { i16 12312, i8 50 }, %struct.ov5670_reg { i16 12314, i8 -16 }, %struct.ov5670_reg { i16 12315, i8 -16 }, %struct.ov5670_reg { i16 12316, i8 -16 }, %struct.ov5670_reg { i16 12317, i8 -16 }, %struct.ov5670_reg { i16 12318, i8 -16 }, %struct.ov5670_reg { i16 12336, i8 0 }, %struct.ov5670_reg { i16 12337, i8 10 }, %struct.ov5670_reg { i16 12348, i8 -1 }, %struct.ov5670_reg { i16 12350, i8 -1 }, %struct.ov5670_reg { i16 12352, i8 -16 }, %struct.ov5670_reg { i16 12353, i8 0 }, %struct.ov5670_reg { i16 12354, i8 -16 }, %struct.ov5670_reg { i16 12550, i8 17 }, %struct.ov5670_reg { i16 13568, i8 0 }, %struct.ov5670_reg { i16 13569, i8 -128 }, %struct.ov5670_reg { i16 13570, i8 0 }, %struct.ov5670_reg { i16 13571, i8 4 }, %struct.ov5670_reg { i16 13572, i8 3 }, %struct.ov5670_reg { i16 13573, i8 -125 }, %struct.ov5670_reg { i16 13576, i8 4 }, %struct.ov5670_reg { i16 13577, i8 0 }, %struct.ov5670_reg { i16 13582, i8 4 }, %struct.ov5670_reg { i16 13583, i8 0 }, %struct.ov5670_reg { i16 13584, i8 0 }, %struct.ov5670_reg { i16 13585, i8 2 }, %struct.ov5670_reg { i16 13586, i8 0 }, %struct.ov5670_reg { i16 13825, i8 -56 }, %struct.ov5670_reg { i16 13840, i8 -120 }, %struct.ov5670_reg { i16 13842, i8 72 }, %struct.ov5670_reg { i16 13844, i8 91 }, %struct.ov5670_reg { i16 13845, i8 -106 }, %struct.ov5670_reg { i16 13857, i8 -48 }, %struct.ov5670_reg { i16 13858, i8 0 }, %struct.ov5670_reg { i16 13859, i8 4 }, %struct.ov5670_reg { i16 13875, i8 19 }, %struct.ov5670_reg { i16 13876, i8 19 }, %struct.ov5670_reg { i16 13877, i8 19 }, %struct.ov5670_reg { i16 13878, i8 19 }, %struct.ov5670_reg { i16 13893, i8 19 }, %struct.ov5670_reg { i16 13894, i8 -126 }, %struct.ov5670_reg { i16 13904, i8 0 }, %struct.ov5670_reg { i16 13906, i8 -1 }, %struct.ov5670_reg { i16 13909, i8 32 }, %struct.ov5670_reg { i16 13910, i8 -1 }, %struct.ov5670_reg { i16 13914, i8 -1 }, %struct.ov5670_reg { i16 13918, i8 -1 }, %struct.ov5670_reg { i16 13928, i8 0 }, %struct.ov5670_reg { i16 13930, i8 7 }, %struct.ov5670_reg { i16 13934, i8 8 }, %struct.ov5670_reg { i16 13933, i8 0 }, %struct.ov5670_reg { i16 13935, i8 -128 }, %struct.ov5670_reg { i16 14080, i8 40 }, %struct.ov5670_reg { i16 14081, i8 16 }, %struct.ov5670_reg { i16 14082, i8 58 }, %struct.ov5670_reg { i16 14083, i8 25 }, %struct.ov5670_reg { i16 14084, i8 16 }, %struct.ov5670_reg { i16 14085, i8 0 }, %struct.ov5670_reg { i16 14086, i8 102 }, %struct.ov5670_reg { i16 14087, i8 8 }, %struct.ov5670_reg { i16 14088, i8 52 }, %struct.ov5670_reg { i16 14089, i8 64 }, %struct.ov5670_reg { i16 14090, i8 1 }, %struct.ov5670_reg { i16 14091, i8 27 }, %struct.ov5670_reg { i16 14100, i8 36 }, %struct.ov5670_reg { i16 14106, i8 62 }, %struct.ov5670_reg { i16 14131, i8 0 }, %struct.ov5670_reg { i16 14132, i8 0 }, %struct.ov5670_reg { i16 14138, i8 5 }, %struct.ov5670_reg { i16 14139, i8 6 }, %struct.ov5670_reg { i16 14140, i8 10 }, %struct.ov5670_reg { i16 14143, i8 -96 }, %struct.ov5670_reg { i16 14165, i8 0 }, %struct.ov5670_reg { i16 14168, i8 0 }, %struct.ov5670_reg { i16 14171, i8 14 }, %struct.ov5670_reg { i16 14182, i8 95 }, %struct.ov5670_reg { i16 14184, i8 0 }, %struct.ov5670_reg { i16 14185, i8 34 }, %struct.ov5670_reg { i16 14195, i8 8 }, %struct.ov5670_reg { i16 14196, i8 31 }, %struct.ov5670_reg { i16 14198, i8 6 }, %struct.ov5670_reg { i16 14240, i8 -120 }, %struct.ov5670_reg { i16 14241, i8 92 }, %struct.ov5670_reg { i16 14247, i8 -120 }, %struct.ov5670_reg { i16 14248, i8 112 }, %struct.ov5670_reg { i16 14250, i8 -120 }, %struct.ov5670_reg { i16 14251, i8 72 }, %struct.ov5670_reg { i16 14259, i8 102 }, %struct.ov5670_reg { i16 14274, i8 4 }, %struct.ov5670_reg { i16 14277, i8 0 }, %struct.ov5670_reg { i16 14280, i8 0 }, %struct.ov5670_reg { i16 14336, i8 0 }, %struct.ov5670_reg { i16 14337, i8 12 }, %struct.ov5670_reg { i16 14338, i8 0 }, %struct.ov5670_reg { i16 14339, i8 4 }, %struct.ov5670_reg { i16 14340, i8 10 }, %struct.ov5670_reg { i16 14341, i8 51 }, %struct.ov5670_reg { i16 14342, i8 7 }, %struct.ov5670_reg { i16 14343, i8 -93 }, %struct.ov5670_reg { i16 14344, i8 2 }, %struct.ov5670_reg { i16 14345, i8 -128 }, %struct.ov5670_reg { i16 14346, i8 1 }, %struct.ov5670_reg { i16 14347, i8 104 }, %struct.ov5670_reg { i16 14348, i8 6 }, %struct.ov5670_reg { i16 14349, i8 -112 }, %struct.ov5670_reg { i16 14350, i8 8 }, %struct.ov5670_reg { i16 14351, i8 8 }, %struct.ov5670_reg { i16 14353, i8 4 }, %struct.ov5670_reg { i16 14355, i8 2 }, %struct.ov5670_reg { i16 14356, i8 7 }, %struct.ov5670_reg { i16 14357, i8 1 }, %struct.ov5670_reg { i16 14358, i8 0 }, %struct.ov5670_reg { i16 14359, i8 0 }, %struct.ov5670_reg { i16 14360, i8 0 }, %struct.ov5670_reg { i16 14361, i8 0 }, %struct.ov5670_reg { i16 14368, i8 -108 }, %struct.ov5670_reg { i16 14369, i8 -58 }, %struct.ov5670_reg { i16 14370, i8 72 }, %struct.ov5670_reg { i16 14374, i8 0 }, %struct.ov5670_reg { i16 14375, i8 8 }, %struct.ov5670_reg { i16 14378, i8 7 }, %struct.ov5670_reg { i16 14379, i8 1 }, %struct.ov5670_reg { i16 14384, i8 8 }, %struct.ov5670_reg { i16 14390, i8 2 }, %struct.ov5670_reg { i16 14391, i8 0 }, %struct.ov5670_reg { i16 14392, i8 16 }, %struct.ov5670_reg { i16 14401, i8 -1 }, %struct.ov5670_reg { i16 14406, i8 72 }, %struct.ov5670_reg { i16 14433, i8 0 }, %struct.ov5670_reg { i16 14434, i8 4 }, %struct.ov5670_reg { i16 14435, i8 6 }, %struct.ov5670_reg { i16 14865, i8 1 }, %struct.ov5670_reg { i16 14866, i8 120 }, %struct.ov5670_reg { i16 15104, i8 0 }, %struct.ov5670_reg { i16 15106, i8 0 }, %struct.ov5670_reg { i16 15107, i8 0 }, %struct.ov5670_reg { i16 15108, i8 0 }, %struct.ov5670_reg { i16 15109, i8 0 }, %struct.ov5670_reg { i16 15360, i8 -119 }, %struct.ov5670_reg { i16 15361, i8 -85 }, %struct.ov5670_reg { i16 15362, i8 1 }, %struct.ov5670_reg { i16 15363, i8 0 }, %struct.ov5670_reg { i16 15364, i8 0 }, %struct.ov5670_reg { i16 15365, i8 3 }, %struct.ov5670_reg { i16 15366, i8 0 }, %struct.ov5670_reg { i16 15367, i8 5 }, %struct.ov5670_reg { i16 15372, i8 0 }, %struct.ov5670_reg { i16 15373, i8 0 }, %struct.ov5670_reg { i16 15374, i8 0 }, %struct.ov5670_reg { i16 15375, i8 0 }, %struct.ov5670_reg { i16 15424, i8 0 }, %struct.ov5670_reg { i16 15425, i8 -93 }, %struct.ov5670_reg { i16 15427, i8 125 }, %struct.ov5670_reg { i16 15429, i8 -41 }, %struct.ov5670_reg { i16 15431, i8 -4 }, %struct.ov5670_reg { i16 15440, i8 5 }, %struct.ov5670_reg { i16 15442, i8 -86 }, %struct.ov5670_reg { i16 15444, i8 113 }, %struct.ov5670_reg { i16 15446, i8 -128 }, %struct.ov5670_reg { i16 15749, i8 23 }, %struct.ov5670_reg { i16 16131, i8 0 }, %struct.ov5670_reg { i16 16138, i8 0 }, %struct.ov5670_reg { i16 16139, i8 0 }, %struct.ov5670_reg { i16 16385, i8 96 }, %struct.ov5670_reg { i16 16393, i8 5 }, %struct.ov5670_reg { i16 16416, i8 0 }, %struct.ov5670_reg { i16 16417, i8 0 }, %struct.ov5670_reg { i16 16418, i8 0 }, %struct.ov5670_reg { i16 16419, i8 0 }, %struct.ov5670_reg { i16 16420, i8 0 }, %struct.ov5670_reg { i16 16421, i8 0 }, %struct.ov5670_reg { i16 16422, i8 0 }, %struct.ov5670_reg { i16 16423, i8 0 }, %struct.ov5670_reg { i16 16424, i8 0 }, %struct.ov5670_reg { i16 16425, i8 0 }, %struct.ov5670_reg { i16 16426, i8 0 }, %struct.ov5670_reg { i16 16427, i8 0 }, %struct.ov5670_reg { i16 16428, i8 0 }, %struct.ov5670_reg { i16 16429, i8 0 }, %struct.ov5670_reg { i16 16430, i8 0 }, %struct.ov5670_reg { i16 16431, i8 0 }, %struct.ov5670_reg { i16 16448, i8 0 }, %struct.ov5670_reg { i16 16449, i8 3 }, %struct.ov5670_reg { i16 16450, i8 0 }, %struct.ov5670_reg { i16 16451, i8 122 }, %struct.ov5670_reg { i16 16452, i8 0 }, %struct.ov5670_reg { i16 16453, i8 122 }, %struct.ov5670_reg { i16 16454, i8 0 }, %struct.ov5670_reg { i16 16455, i8 122 }, %struct.ov5670_reg { i16 16456, i8 0 }, %struct.ov5670_reg { i16 16457, i8 122 }, %struct.ov5670_reg { i16 17159, i8 48 }, %struct.ov5670_reg { i16 17664, i8 88 }, %struct.ov5670_reg { i16 17665, i8 4 }, %struct.ov5670_reg { i16 17666, i8 64 }, %struct.ov5670_reg { i16 17667, i8 16 }, %struct.ov5670_reg { i16 17672, i8 85 }, %struct.ov5670_reg { i16 17673, i8 85 }, %struct.ov5670_reg { i16 17674, i8 2 }, %struct.ov5670_reg { i16 17675, i8 0 }, %struct.ov5670_reg { i16 17920, i8 0 }, %struct.ov5670_reg { i16 17921, i8 64 }, %struct.ov5670_reg { i16 18176, i8 -92 }, %struct.ov5670_reg { i16 18432, i8 76 }, %struct.ov5670_reg { i16 18454, i8 83 }, %struct.ov5670_reg { i16 18463, i8 64 }, %struct.ov5670_reg { i16 18487, i8 19 }, %struct.ov5670_reg { i16 20480, i8 86 }, %struct.ov5670_reg { i16 20481, i8 1 }, %struct.ov5670_reg { i16 20482, i8 40 }, %struct.ov5670_reg { i16 20484, i8 12 }, %struct.ov5670_reg { i16 20486, i8 12 }, %struct.ov5670_reg { i16 20487, i8 -32 }, %struct.ov5670_reg { i16 20488, i8 1 }, %struct.ov5670_reg { i16 20489, i8 -80 }, %struct.ov5670_reg { i16 22785, i8 0 }, %struct.ov5670_reg { i16 23041, i8 0 }, %struct.ov5670_reg { i16 23043, i8 0 }, %struct.ov5670_reg { i16 23044, i8 12 }, %struct.ov5670_reg { i16 23045, i8 -32 }, %struct.ov5670_reg { i16 23046, i8 9 }, %struct.ov5670_reg { i16 23047, i8 -80 }, %struct.ov5670_reg { i16 23048, i8 6 }, %struct.ov5670_reg { i16 24064, i8 0 }, %struct.ov5670_reg { i16 14132, i8 64 }, %struct.ov5670_reg { i16 23296, i8 1 }, %struct.ov5670_reg { i16 23297, i8 16 }, %struct.ov5670_reg { i16 23298, i8 1 }, %struct.ov5670_reg { i16 23299, i8 -37 }, %struct.ov5670_reg { i16 15756, i8 113 }, %struct.ov5670_reg { i16 15757, i8 -22 }, %struct.ov5670_reg { i16 16407, i8 16 }, %struct.ov5670_reg { i16 13848, i8 42 }, %struct.ov5670_reg { i16 22400, i8 62 }, %struct.ov5670_reg { i16 22401, i8 15 }, %struct.ov5670_reg { i16 22402, i8 68 }, %struct.ov5670_reg { i16 22403, i8 2 }, %struct.ov5670_reg { i16 22404, i8 1 }, %struct.ov5670_reg { i16 22405, i8 1 }, %struct.ov5670_reg { i16 22406, i8 0 }, %struct.ov5670_reg { i16 22407, i8 4 }, %struct.ov5670_reg { i16 22408, i8 2 }, %struct.ov5670_reg { i16 22409, i8 15 }, %struct.ov5670_reg { i16 22410, i8 -3 }, %struct.ov5670_reg { i16 22411, i8 -11 }, %struct.ov5670_reg { i16 22412, i8 -11 }, %struct.ov5670_reg { i16 22413, i8 3 }, %struct.ov5670_reg { i16 22414, i8 8 }, %struct.ov5670_reg { i16 22415, i8 12 }, %struct.ov5670_reg { i16 22416, i8 8 }, %struct.ov5670_reg { i16 22417, i8 6 }, %struct.ov5670_reg { i16 22418, i8 0 }, %struct.ov5670_reg { i16 22419, i8 82 }, %struct.ov5670_reg { i16 22420, i8 -93 }, %struct.ov5670_reg { i16 13571, i8 0 }, %struct.ov5670_reg { i16 20549, i8 5 }, %struct.ov5670_reg { i16 16387, i8 64 }, %struct.ov5670_reg { i16 20552, i8 64 }], [260 x i8] zeroinitializer }, align 32
@ov5670_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ov5670:2076:(ctrl_hdlr)->_lock\00", [33 x i8] zeroinitializer }, align 32
@ov5670_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov5670_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 422400000], [24 x i8] zeroinitializer }, align 32
@ov5670_test_pattern_menu = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.34, ptr @.str.35], [24 x i8] zeroinitializer }, align 32
@ov5670_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.10, i32 2050, ptr @.str.33, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Unhandled id:0x%x, val:0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov5670_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov5670_set_ctrl._entry_ptr = internal global ptr @ov5670_set_ctrl._entry, section ".printk_index", align 4
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 1\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963793, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"ov5670_i2c_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2588, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2590, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"ov5670_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2575, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2479, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2486, i32 13 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"ov5670_subdev_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2456, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2498, i32 14 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2503, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1747, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2510, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"ov5670_internal_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2467, i32 46 }
@___asan_gen_.72 = private unnamed_addr constant [25 x i8] c"ov5670_subdev_entity_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2463, i32 45 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2524, i32 13 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2531, i32 13 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2555, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"ov5670_core_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2435, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"ov5670_video_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2441, i32 43 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"ov5670_sensor_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2452, i32 44 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"ov5670_pad_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2445, i32 41 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2320, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"link_freq_configs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1727, i32 45 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2330, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2338, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2350, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"mipi_data_rate_840mbps\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 106, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1920, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2365, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 998, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2294, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"mode_2592x1944_regs\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 124, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant [19 x i8] c"mode_1296x972_regs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 390, i32 32 }
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"mode_648x486_regs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 656, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"mode_2560x1440_regs\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 922, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"mode_1280x720_regs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1187, i32 32 }
@___asan_gen_.189 = private unnamed_addr constant [18 x i8] c"mode_640x360_regs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1453, i32 32 }
@___asan_gen_.192 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2076, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"ov5670_ctrl_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2059, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1738, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant [25 x i8] c"ov5670_test_pattern_menu\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1719, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2049, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1720, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [30 x i8] c"../drivers/media/i2c/ov5670.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1721, i32 2 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_ov5670_i2c_driver_exit, ptr @__initcall__kmod_ov5670__294_2599_ov5670_i2c_driver_init6, ptr @ov5670_i2c_driver_exit, ptr @ov5670_identify_module._entry, ptr @ov5670_identify_module._entry_ptr, ptr @ov5670_probe._entry, ptr @ov5670_probe._entry_ptr, ptr @ov5670_set_ctrl._entry, ptr @ov5670_set_ctrl._entry_ptr, ptr @ov5670_start_streaming._entry, ptr @ov5670_start_streaming._entry.15, ptr @ov5670_start_streaming._entry.18, ptr @ov5670_start_streaming._entry.21, ptr @ov5670_start_streaming._entry_ptr, ptr @ov5670_start_streaming._entry_ptr.17, ptr @ov5670_start_streaming._entry_ptr.20, ptr @ov5670_start_streaming._entry_ptr.23, ptr @ov5670_stop_streaming._entry, ptr @ov5670_stop_streaming._entry_ptr, ptr @ov5670_write_regs._entry, ptr @ov5670_write_regs._entry_ptr, ptr @ov5670_i2c_driver, ptr @.str, ptr @ov5670_pm_ops, ptr @.str.1, ptr @.str.2, ptr @ov5670_subdev_ops, ptr @.str.3, ptr @ov5670_probe.__key, ptr @.str.4, ptr @supported_modes, ptr @.str.5, ptr @ov5670_internal_ops, ptr @ov5670_subdev_entity_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ov5670_core_ops, ptr @ov5670_video_ops, ptr @ov5670_sensor_ops, ptr @ov5670_pad_ops, ptr @.str.13, ptr @.str.14, ptr @link_freq_configs, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @mipi_data_rate_840mbps, ptr @ov5670_write_regs._rs, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mode_2592x1944_regs, ptr @mode_1296x972_regs, ptr @mode_648x486_regs, ptr @mode_2560x1440_regs, ptr @mode_1280x720_regs, ptr @mode_640x360_regs, ptr @ov5670_init_controls._key, ptr @.str.30, ptr @ov5670_ctrl_ops, ptr @link_freq_menu_items, ptr @ov5670_test_pattern_menu, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_sensor_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_configs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_start_streaming._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_start_streaming._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_start_streaming._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_840mbps to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_write_regs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2592x1944_regs to i32), i32 1052, i32 1312, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1296x972_regs to i32), i32 1052, i32 1312, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_648x486_regs to i32), i32 1052, i32 1312, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2560x1440_regs to i32), i32 1048, i32 1312, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1280x720_regs to i32), i32 1052, i32 1312, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_640x360_regs to i32), i32 1052, i32 1312, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_test_pattern_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5670_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5670_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov5670_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov5670_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov5670_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5670_remove(ptr noundef %client) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.ov5670, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5670_probe(ptr noundef %client) #2 align 64 {
entry:
  %props.i = alloca %struct.v4l2_fwnode_device_properties, align 4
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i = alloca i32, align 4
  %reg_addr_be.i.i = alloca i16, align 2
  %input_clk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_clk) #8
  %0 = ptrtoint ptr %input_clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %input_clk, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %input_clk, i32 noundef 1) #8
  %1 = ptrtoint ptr %input_clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %2)
  %cmp.not = icmp eq i32 %2, 19200000
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i86 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 532, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i86, null
  br i1 %tobool.not, label %if.end.do.end50_crit_edge, label %if.end4

if.end.do.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

if.end4:                                          ; preds = %if.end
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i86, ptr noundef %client, ptr noundef nonnull @ov5670_subdev_ops) #8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i86, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %identified.i = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 11
  %5 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %identified.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.do.body_crit_edge

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %7 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #8
  %9 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  %10 = ptrtoint ptr %reg_addr_be.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 12298, ptr %reg_addr_be.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i.i, align 2
  %13 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %7, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg_addr_be.i.i, ptr %buf.i.i, align 4
  %17 = load i16, ptr %addr.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 3, ptr %len12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i8, ptr %data_be.i.i, i32 1
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx13.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call16.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i)
  %cmp17.not.i.i = icmp eq i32 %call16.i.i, 2
  br i1 %cmp17.not.i.i, label %if.end4.i, label %ov5670_read_reg.exit.i

ov5670_read_reg.exit.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  br label %do.end50

if.end4.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22128, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 22128
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef 22128, i32 noundef %25) #11
  br label %do.end50

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %identified.i, align 1
  br label %do.body

do.body:                                          ; preds = %if.end6.i, %if.end4.do.body_crit_edge
  %mutex = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 9
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @ov5670_probe.__key) #8
  %cur_mode = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 8
  %27 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props.i) #8
  %30 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %props.i, align 4, !annotation !137
  %31 = getelementptr inbounds %struct.v4l2_fwnode_device_properties, ptr %props.i, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %31, align 4, !annotation !137
  %ctrl_handler.i = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 2
  %call1.i = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 10, ptr noundef nonnull @ov5670_init_controls._key, ptr noundef nonnull @.str.30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i88 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i88, label %if.end.i89, label %do.body.ov5670_init_controls.exit.thread_crit_edge

do.body.ov5670_init_controls.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5670_init_controls.exit.thread

if.end.i89:                                       ; preds = %do.body
  %lock.i = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mutex, ptr %lock.i, align 4
  %call2.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5670_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #8
  %link_freq.i = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 3
  %34 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call2.i, ptr %link_freq.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i89.if.end7.i_crit_edge, label %if.then5.i

if.end.i89.if.end7.i_crit_edge:                   ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2.i, i32 0, i32 20
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %36, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i89.if.end7.i_crit_edge
  %call10.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5670_ctrl_ops, i32 noundef 10422530, i64 noundef 168960000, i64 noundef 168960000, i64 noundef 1, i64 noundef 168960000) #8
  %pixel_rate.i = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 4
  %37 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call10.i, ptr %pixel_rate.i, align 4
  %38 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur_mode, align 4
  %height.i = getelementptr inbounds %struct.ov5670_mode, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height.i, align 4
  %sub.i = sub i32 65535, %41
  %conv11.i = zext i32 %sub.i to i64
  %vts_def.i = getelementptr inbounds %struct.ov5670_mode, ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vts_def.i, align 4
  %sub15.i = sub i32 %43, %41
  %conv16.i = zext i32 %sub15.i to i64
  %vts_min.i = getelementptr inbounds %struct.ov5670_mode, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %vts_min.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vts_min.i, align 4
  %sub20.i = sub i32 %45, %41
  %conv21.i = zext i32 %sub20.i to i64
  %call22.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5670_ctrl_ops, i32 noundef 10356993, i64 noundef %conv21.i, i64 noundef %conv11.i, i64 noundef 1, i64 noundef %conv16.i) #8
  %vblank.i = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 5
  %46 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call22.i, ptr %vblank.i, align 4
  %47 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur_mode, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %sub24.i = sub i32 2724, %50
  %conv25.i = zext i32 %sub24.i to i64
  %call34.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5670_ctrl_ops, i32 noundef 10356994, i64 noundef %conv25.i, i64 noundef %conv25.i, i64 noundef 1, i64 noundef %conv25.i) #8
  %hblank.i = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 6
  %51 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call34.i, ptr %hblank.i, align 4
  %tobool36.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool36.not.i, label %if.end7.i.if.end41.i_crit_edge, label %if.then37.i

if.end7.i.if.end41.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags39.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call34.i, i32 0, i32 20
  %52 = ptrtoint ptr %flags39.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags39.i, align 4
  %or40.i = or i32 %53, 4
  store i32 %or40.i, ptr %flags39.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end7.i.if.end41.i_crit_edge
  %call42.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5670_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 8191, i64 noundef 1, i64 noundef 128) #8
  %call43.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5670_ctrl_ops, i32 noundef 10422533, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 1024) #8
  %54 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cur_mode, align 4
  %vts_def45.i = getelementptr inbounds %struct.ov5670_mode, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %vts_def45.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vts_def45.i, align 4
  %sub46.i = add i32 %57, -8
  %conv47.i = zext i32 %sub46.i to i64
  %call48.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5670_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv47.i, i64 noundef 1, i64 noundef %conv47.i) #8
  %exposure.i = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 7
  %58 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call48.i, ptr %exposure.i, align 4
  %call49.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5670_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov5670_test_pattern_menu) #8
  %error.i = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 2, i32 9
  %59 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool50.not.i = icmp eq i32 %60, 0
  br i1 %tobool50.not.i, label %if.end53.i, label %if.end41.i.error64.i_crit_edge

if.end41.i.error64.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error64.i

if.end53.i:                                       ; preds = %if.end41.i
  %dev.i90 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %call54.i = call i32 @v4l2_fwnode_device_parse(ptr noundef %dev.i90, ptr noundef nonnull %props.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end53.i.error64.i_crit_edge

if.end53.i.error64.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error64.i

if.end57.i:                                       ; preds = %if.end53.i
  %call58.i = call i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5670_ctrl_ops, ptr noundef nonnull %props.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end17, label %if.end57.i.error64.i_crit_edge

if.end57.i.error64.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error64.i

error64.i:                                        ; preds = %if.end57.i.error64.i_crit_edge, %if.end53.i.error64.i_crit_edge, %if.end41.i.error64.i_crit_edge
  %ret.0.i = phi i32 [ %call54.i, %if.end53.i.error64.i_crit_edge ], [ %call58.i, %if.end57.i.error64.i_crit_edge ], [ %60, %if.end41.i.error64.i_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #8
  br label %ov5670_init_controls.exit.thread

ov5670_init_controls.exit.thread:                 ; preds = %error64.i, %do.body.ov5670_init_controls.exit.thread_crit_edge
  %retval.0.i91.ph = phi i32 [ %call1.i, %do.body.ov5670_init_controls.exit.thread_crit_edge ], [ %ret.0.i, %error64.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #8
  br label %error_mutex_destroy

if.end17:                                         ; preds = %if.end57.i
  %ctrl_handler63.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i86, i32 0, i32 8
  %61 = ptrtoint ptr %ctrl_handler63.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ctrl_handler.i, ptr %ctrl_handler63.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #8
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i86, i32 0, i32 7
  %62 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ov5670_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i86, i32 0, i32 4
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %or = or i32 %64, 12
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i86, i32 0, i32 11
  %65 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ov5670_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i86, i32 0, i32 3
  %66 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 1
  %flags23 = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 1, i32 4
  %67 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %flags23, align 4
  %call27 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i86, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end17.error_handler_free_crit_edge

if.end17.error_handler_free_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_handler_free

if.end30:                                         ; preds = %if.end17
  %call32 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.error_handler_free_crit_edge, label %if.end35

if.end30.error_handler_free_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_handler_free

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %streaming = getelementptr inbounds %struct.ov5670, ptr %call.i86, i32 0, i32 10
  %68 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %streaming, align 4
  %call.i92 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i93 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #8
  br label %cleanup

error_handler_free:                               ; preds = %if.end30.error_handler_free_crit_edge, %if.end17.error_handler_free_crit_edge
  %err_msg.0 = phi ptr [ @.str.6, %if.end17.error_handler_free_crit_edge ], [ @.str.7, %if.end30.error_handler_free_crit_edge ]
  %ret.0 = phi i32 [ %call27, %if.end17.error_handler_free_crit_edge ], [ %call32, %if.end30.error_handler_free_crit_edge ]
  %69 = ptrtoint ptr %ctrl_handler63.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctrl_handler63.i, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %70) #8
  br label %error_mutex_destroy

error_mutex_destroy:                              ; preds = %error_handler_free, %ov5670_init_controls.exit.thread
  %err_msg.1 = phi ptr [ %err_msg.0, %error_handler_free ], [ @.str.5, %ov5670_init_controls.exit.thread ]
  %ret.1 = phi i32 [ %ret.0, %error_handler_free ], [ %retval.0.i91.ph, %ov5670_init_controls.exit.thread ]
  call void @mutex_destroy(ptr noundef %mutex) #8
  br label %do.end50

do.end50:                                         ; preds = %error_mutex_destroy, %do.end.i, %ov5670_read_reg.exit.i, %if.end.do.end50_crit_edge
  %err_msg.2 = phi ptr [ %err_msg.1, %error_mutex_destroy ], [ @.str.2, %if.end.do.end50_crit_edge ], [ @.str.3, %ov5670_read_reg.exit.i ], [ @.str.3, %do.end.i ]
  %ret.2 = phi i32 [ %ret.1, %error_mutex_destroy ], [ -12, %if.end.do.end50_crit_edge ], [ -5, %ov5670_read_reg.exit.i ], [ -6, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %err_msg.2, i32 noundef %ret.2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.end50 ], [ 0, %if.end35 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_clk) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5670_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mutex = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !136
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %entry.unlock_and_return_crit_edge, label %if.end

entry.unlock_and_return_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_and_return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2 = icmp ne i32 %enable, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8

if.then.i:                                        ; preds = %if.then3
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !139
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.unlock_and_return_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.unlock_and_return_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_and_return

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %unlock_and_return

if.end8:                                          ; preds = %if.then3
  %call9 = tail call fastcc i32 @ov5670_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %error

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 16777215, ptr %9, align 1
  %11 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %buf.i.i, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %8, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp12.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp12.not.i.i, label %if.else.ov5670_stop_streaming.exit_crit_edge, label %do.end.i

if.else.ov5670_stop_streaming.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5670_stop_streaming.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26) #11
  br label %ov5670_stop_streaming.exit

ov5670_stop_streaming.exit:                       ; preds = %do.end.i, %if.else.ov5670_stop_streaming.exit_crit_edge
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i34 = call i32 @__pm_runtime_idle(ptr noundef %dev14, i32 noundef 5) #8
  br label %if.end16

if.end16:                                         ; preds = %ov5670_stop_streaming.exit, %if.end8.if.end16_crit_edge
  %frombool = zext i1 %tobool2 to i8
  %13 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %streaming, align 4
  br label %unlock_and_return

error:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i35 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %unlock_and_return

unlock_and_return:                                ; preds = %error, %if.end16, %do.end11.i.i.i.i.i, %if.then.i.unlock_and_return_crit_edge, %entry.unlock_and_return_crit_edge
  %ret.1 = phi i32 [ 0, %entry.unlock_and_return_crit_edge ], [ %call9, %error ], [ 0, %if.end16 ], [ %call.i, %if.then.i.unlock_and_return_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5670_start_streaming(ptr nocapture noundef %ov5670) unnamed_addr #2 align 64 {
entry:
  %buf.i90 = alloca [6 x i8], align 1
  %buf.i.i.i66 = alloca [6 x i8], align 1
  %buf.i.i.i = alloca [6 x i8], align 1
  %buf.i = alloca [6 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i = alloca i32, align 4
  %reg_addr_be.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov5670, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %identified.i = getelementptr inbounds %struct.ov5670, ptr %ov5670, i32 0, i32 11
  %2 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %identified.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %4 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #8
  %6 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  %7 = ptrtoint ptr %reg_addr_be.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 12298, ptr %reg_addr_be.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg_addr_be.i.i, ptr %buf.i.i, align 4
  %14 = load i16, ptr %addr.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3, ptr %len12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i8, ptr %data_be.i.i, i32 1
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx13.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i.i, align 8
  %call16.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i)
  %cmp17.not.i.i = icmp eq i32 %call16.i.i, 2
  br i1 %cmp17.not.i.i, label %if.end4.i, label %ov5670_read_reg.exit.i

ov5670_read_reg.exit.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22128, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 22128
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef 22128, i32 noundef %22) #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %identified.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %26 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %27 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 33554431, ptr %27, align 1
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %buf.i, align 1
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %26, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp12.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br i1 %cmp12.not.i, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cur_mode = getelementptr inbounds %struct.ov5670, ptr %ov5670, i32 0, i32 8
  %31 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_mode, align 4
  %link_freq_index6 = getelementptr inbounds %struct.ov5670_mode, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %link_freq_index6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %link_freq_index6, align 4
  %reg_list7 = getelementptr [1 x %struct.ov5670_link_freq_config], ptr @link_freq_configs, i32 0, i32 %34, i32 1
  %regs.i = getelementptr [1 x %struct.ov5670_link_freq_config], ptr @link_freq_configs, i32 0, i32 %34, i32 1, i32 1
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %37 = ptrtoint ptr %reg_list7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_list7, align 4
  %39 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp24.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp24.not.i.i, label %if.end5.if.end15_crit_edge, label %for.body.lr.ph.i.i

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.body.lr.ph.i.i:                               ; preds = %if.end5
  %41 = getelementptr inbounds [6 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %42 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 2
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.025.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %38
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end15_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.if.end15_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ov5670_reg, ptr %36, i32 %i.025.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i.i, align 2
  %val.i.i = getelementptr %struct.ov5670_reg, ptr %36, i32 %i.025.i.i, i32 1
  %45 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val.i.i, align 2
  %47 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #8
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 -1, ptr %42, align 1
  %50 = lshr i16 %44, 8
  %conv1.i.i.i = trunc i16 %50 to i8
  %51 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv1.i.i.i, ptr %buf.i.i.i, align 1
  %conv3.i.i.i = trunc i16 %44 to i8
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv3.i.i.i, ptr %41, align 1
  store i8 %46, ptr %42, align 1
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buf.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i)
  %cmp12.not.i.i.i = icmp eq i32 %call.i.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #8
  br i1 %cmp12.not.i.i.i, label %for.cond.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  %call3.i.i = call i32 @___ratelimit(ptr noundef nonnull @ov5670_write_regs._rs, ptr noundef nonnull @__func__.ov5670_write_regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.do.end13_crit_edge, label %do.end.i.i

do.body.i.i.do.end13_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i.i, align 2
  %conv9.i.i = zext i16 %54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25, i32 noundef %conv9.i.i, i32 noundef -5) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end.i.i, %do.body.i.i.do.end13_crit_edge
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end15:                                         ; preds = %for.cond.i.i.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %55 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur_mode, align 4
  %reg_list17 = getelementptr inbounds %struct.ov5670_mode, ptr %56, i32 0, i32 5
  %regs.i67 = getelementptr inbounds %struct.ov5670_mode, ptr %56, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %regs.i67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i67, align 4
  %59 = ptrtoint ptr %reg_list17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_list17, align 4
  %61 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp24.not.i.i69 = icmp eq i32 %60, 0
  br i1 %cmp24.not.i.i69, label %if.end15.if.end25_crit_edge, label %for.body.lr.ph.i.i70

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.body.lr.ph.i.i70:                             ; preds = %if.end15
  %63 = getelementptr inbounds [6 x i8], ptr %buf.i.i.i66, i32 0, i32 1
  %64 = getelementptr inbounds i8, ptr %buf.i.i.i66, i32 2
  br label %for.body.i.i81

for.cond.i.i73:                                   ; preds = %for.body.i.i81
  %inc.i.i71 = add nuw i32 %i.025.i.i74, 1
  %exitcond.not.i.i72 = icmp eq i32 %inc.i.i71, %60
  br i1 %exitcond.not.i.i72, label %for.cond.i.i73.if.end25_crit_edge, label %for.cond.i.i73.for.body.i.i81_crit_edge

for.cond.i.i73.for.body.i.i81_crit_edge:          ; preds = %for.cond.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i81

for.cond.i.i73.if.end25_crit_edge:                ; preds = %for.cond.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.body.i.i81:                                   ; preds = %for.cond.i.i73.for.body.i.i81_crit_edge, %for.body.lr.ph.i.i70
  %i.025.i.i74 = phi i32 [ 0, %for.body.lr.ph.i.i70 ], [ %inc.i.i71, %for.cond.i.i73.for.body.i.i81_crit_edge ]
  %arrayidx.i.i75 = getelementptr %struct.ov5670_reg, ptr %58, i32 %i.025.i.i74
  %65 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i.i75, align 2
  %val.i.i76 = getelementptr %struct.ov5670_reg, ptr %58, i32 %i.025.i.i74, i32 1
  %67 = ptrtoint ptr %val.i.i76 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %val.i.i76, align 2
  %69 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i66) #8
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 -1, ptr %64, align 1
  %72 = lshr i16 %66, 8
  %conv1.i.i.i77 = trunc i16 %72 to i8
  %73 = ptrtoint ptr %buf.i.i.i66 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv1.i.i.i77, ptr %buf.i.i.i66, align 1
  %conv3.i.i.i78 = trunc i16 %66 to i8
  %74 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv3.i.i.i78, ptr %63, align 1
  store i8 %68, ptr %64, align 1
  %call.i.i.i.i79 = call i32 @i2c_transfer_buffer_flags(ptr noundef %70, ptr noundef nonnull %buf.i.i.i66, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i79)
  %cmp12.not.i.i.i80 = icmp eq i32 %call.i.i.i.i79, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i66) #8
  br i1 %cmp12.not.i.i.i80, label %for.cond.i.i73, label %do.body.i.i84

do.body.i.i84:                                    ; preds = %for.body.i.i81
  %call3.i.i82 = call i32 @___ratelimit(ptr noundef nonnull @ov5670_write_regs._rs, ptr noundef nonnull @__func__.ov5670_write_regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i82)
  %tobool4.not.i.i83 = icmp eq i32 %call3.i.i82, 0
  br i1 %tobool4.not.i.i83, label %do.body.i.i84.do.end23_crit_edge, label %do.end.i.i87

do.body.i.i84.do.end23_crit_edge:                 ; preds = %do.body.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end.i.i87:                                     ; preds = %do.body.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i85 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  %75 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i.i75, align 2
  %conv9.i.i86 = zext i16 %76 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i85, ptr noundef nonnull @.str.25, i32 noundef %conv9.i.i86, i32 noundef -5) #11
  br label %do.end23

do.end23:                                         ; preds = %do.end.i.i87, %do.body.i.i84.do.end23_crit_edge
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end25:                                         ; preds = %for.cond.i.i73.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %ov5670, i32 0, i32 8
  %77 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctrl_handler, align 4
  %call27 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %79 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i90) #8
  %81 = getelementptr inbounds [6 x i8], ptr %buf.i90, i32 0, i32 1
  %82 = getelementptr inbounds i8, ptr %buf.i90, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 33554431, ptr %82, align 1
  %84 = ptrtoint ptr %buf.i90 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %buf.i90, align 1
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %81, align 1
  %call.i.i94 = call i32 @i2c_transfer_buffer_flags(ptr noundef %80, ptr noundef nonnull %buf.i90, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i94)
  %cmp12.not.i95 = icmp eq i32 %call.i.i94, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i90) #8
  br i1 %cmp12.not.i95, label %if.end30.cleanup_crit_edge, label %do.end36

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.14) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end23, %do.end13, %do.end, %do.end.i, %ov5670_read_reg.exit.i
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end13 ], [ -5, %do.end23 ], [ -5, %do.end36 ], [ %call27, %if.end25.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ -6, %do.end.i ], [ -5, %ov5670_read_reg.exit.i ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ov5670_get_skip_frames(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %frames) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %frames, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5670_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
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
  store i32 12298, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5670_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ugt i32 %1, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12298, i32 %3)
  %cmp1.not = icmp eq i32 %3, 12298
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [6 x %struct.ov5670_mode], ptr @supported_modes, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %7 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %max_width, align 4
  %height = getelementptr [6 x %struct.ov5670_mode], ptr @supported_modes, i32 0, i32 %1, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %10 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %11 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %max_height, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5670_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !141

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  %8 = call ptr @memcpy(ptr %format.i, ptr %arrayidx.i.i, i32 48)
  br label %ov5670_do_get_pad_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode.i = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 8
  %9 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_mode.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %format.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %13 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %format.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.ov5670_mode, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i.i, align 4
  %height3.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height3.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12298, ptr %code.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %field.i.i, align 4
  br label %ov5670_do_get_pad_format.exit

ov5670_do_get_pad_format.exit:                    ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5670_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12298, ptr %code, align 4
  %1 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %call = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 6, i32 noundef 28, i32 noundef 0, i32 noundef 4, i32 noundef %2, i32 noundef %4) #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov5670_mode, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height, align 4
  %11 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12298, ptr %code, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field.i, align 4
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %16, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !141

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %16, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %20, i32 %spec.select.i
  %21 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 8
  %22 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %cur_mode, align 4
  %link_freq = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 3
  %23 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_freq, align 4
  %link_freq_index = getelementptr inbounds %struct.ov5670_mode, ptr %call, i32 0, i32 4
  %25 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_freq_index, align 4
  %call6 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %24, i32 noundef %26) #8
  %pixel_rate = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 4
  %27 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pixel_rate, align 4
  %call9 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %28, i64 noundef 168960000) #8
  %29 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur_mode, align 4
  %vts_def = getelementptr inbounds %struct.ov5670_mode, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vts_def, align 4
  %height12 = getelementptr inbounds %struct.ov5670_mode, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height12, align 4
  %sub = sub i32 %32, %34
  %vblank = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 5
  %35 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vblank, align 4
  %vts_min = getelementptr inbounds %struct.ov5670_mode, ptr %30, i32 0, i32 3
  %37 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vts_min, align 4
  %sub16 = sub i32 %38, %34
  %conv17 = zext i32 %sub16 to i64
  %sub20 = sub i32 65535, %34
  %conv21 = zext i32 %sub20 to i64
  %conv22 = sext i32 %sub to i64
  %call23 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %36, i64 noundef %conv17, i64 noundef %conv21, i64 noundef 1, i64 noundef %conv22) #8
  %39 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vblank, align 4
  %call25 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %40, i32 noundef %sub) #8
  %41 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur_mode, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %sub28 = sub i32 2724, %44
  %hblank = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 6
  %45 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hblank, align 4
  %conv29 = sext i32 %sub28 to i64
  %call32 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %46, i64 noundef %conv29, i64 noundef %conv29, i64 noundef 1, i64 noundef %conv29) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
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
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @ov5670_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i17.i = alloca [6 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i = alloca i32, align 4
  %reg_addr_be.i.i = alloca i16, align 2
  %buf.i.i70 = alloca [6 x i8], align 1
  %buf.i63 = alloca [6 x i8], align 1
  %buf.i56 = alloca [6 x i8], align 1
  %buf.i20.i = alloca [6 x i8], align 1
  %buf.i13.i = alloca [6 x i8], align 1
  %buf.i.i = alloca [6 x i8], align 1
  %buf.i = alloca [6 x i8], align 1
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
  %cond = icmp eq i32 %5, 10356993
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr i8, ptr %1, i32 204
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov5670_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -8
  %sub = add i32 %add, %11
  %conv = zext i32 %sub to i64
  %exposure = getelementptr i8, ptr %1, i32 200
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
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end [
    i32 10356995, label %sw.bb6
    i32 10422533, label %sw.bb9
    i32 9963793, label %sw.bb12
    i32 10356993, label %sw.bb15
    i32 10422531, label %sw.bb21
  ]

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val7, align 4
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %26 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %27 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 -1, ptr %27, align 1
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 53, ptr %buf.i, align 1
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %26, align 1
  %tmp.i.2.extract.trunc = trunc i32 %23 to i16
  store i16 %tmp.i.2.extract.trunc, ptr %27, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp12.not.i = icmp eq i32 %call.i.i, 4
  %..i = select i1 %cmp12.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br label %sw.epilog27

sw.bb9:                                           ; preds = %if.end
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val10, align 4
  %33 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %35 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %36 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 -1, ptr %36, align 1
  %38 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 80, ptr %buf.i.i, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 50, ptr %35, align 1
  %tmp.i.2.extract.trunc.i = trunc i32 %32 to i16
  store i16 %tmp.i.2.extract.trunc.i, ptr %36, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp12.not.i.i = icmp eq i32 %call.i.i.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp12.not.i.i, label %if.end.i, label %sw.bb9.sw.epilog27_crit_edge

sw.bb9.sw.epilog27_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog27

if.end.i:                                         ; preds = %sw.bb9
  %40 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i13.i) #8
  %42 = getelementptr inbounds [6 x i8], ptr %buf.i13.i, i32 0, i32 1
  %43 = getelementptr inbounds i8, ptr %buf.i13.i, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 -1, ptr %43, align 1
  %45 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 80, ptr %buf.i13.i, align 1
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 52, ptr %42, align 1
  store i16 %tmp.i.2.extract.trunc.i, ptr %43, align 1
  %call.i.i17.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %buf.i13.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i17.i)
  %cmp12.not.i18.i = icmp eq i32 %call.i.i17.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i13.i) #8
  br i1 %cmp12.not.i18.i, label %if.end4.i, label %if.end.i.sw.epilog27_crit_edge

if.end.i.sw.epilog27_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog27

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i20.i) #8
  %49 = getelementptr inbounds [6 x i8], ptr %buf.i20.i, i32 0, i32 1
  %50 = getelementptr inbounds i8, ptr %buf.i20.i, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 -1, ptr %50, align 1
  %52 = ptrtoint ptr %buf.i20.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 80, ptr %buf.i20.i, align 1
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 54, ptr %49, align 1
  store i16 %tmp.i.2.extract.trunc.i, ptr %50, align 1
  %call.i.i24.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buf.i20.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i24.i)
  %cmp12.not.i25.i = icmp eq i32 %call.i.i24.i, 4
  %..i26.i = select i1 %cmp12.not.i25.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i20.i) #8
  br label %sw.epilog27

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %54 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val13, align 4
  %shl = shl i32 %55, 4
  %56 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i56) #8
  %58 = getelementptr inbounds [6 x i8], ptr %buf.i56, i32 0, i32 1
  %59 = getelementptr inbounds i8, ptr %buf.i56, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 -1, ptr %59, align 1
  %61 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 53, ptr %buf.i56, align 1
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %58, align 1
  %tmp.i57.1.extract.trunc = trunc i32 %shl to i24
  store i24 %tmp.i57.1.extract.trunc, ptr %59, align 1
  %call.i.i60 = call i32 @i2c_transfer_buffer_flags(ptr noundef %57, ptr noundef nonnull %buf.i56, i32 noundef 5, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i60)
  %cmp12.not.i61 = icmp eq i32 %call.i.i60, 5
  %..i62 = select i1 %cmp12.not.i61, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i56) #8
  br label %sw.epilog27

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode16 = getelementptr i8, ptr %1, i32 204
  %63 = ptrtoint ptr %cur_mode16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur_mode16, align 4
  %height17 = getelementptr inbounds %struct.ov5670_mode, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height17, align 4
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %67 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val18, align 4
  %add19 = add i32 %68, %66
  %69 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i63) #8
  %71 = getelementptr inbounds [6 x i8], ptr %buf.i63, i32 0, i32 1
  %72 = getelementptr inbounds i8, ptr %buf.i63, i32 2
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 -1, ptr %72, align 1
  %74 = ptrtoint ptr %buf.i63 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 56, ptr %buf.i63, align 1
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 14, ptr %71, align 1
  %tmp.i64.2.extract.trunc = trunc i32 %add19 to i16
  store i16 %tmp.i64.2.extract.trunc, ptr %72, align 1
  %call.i.i67 = call i32 @i2c_transfer_buffer_flags(ptr noundef %70, ptr noundef nonnull %buf.i63, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i67)
  %cmp12.not.i68 = icmp eq i32 %call.i.i67, 4
  %..i69 = select i1 %cmp12.not.i68, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i63) #8
  br label %sw.epilog27

sw.bb21:                                          ; preds = %if.end
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %76 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val22, align 4
  %78 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i70) #8
  %80 = getelementptr inbounds [6 x i8], ptr %buf.i.i70, i32 0, i32 1
  %81 = getelementptr inbounds i8, ptr %buf.i.i70, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 16777215, ptr %81, align 1
  %83 = ptrtoint ptr %buf.i.i70 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 67, ptr %buf.i.i70, align 1
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 32, ptr %80, align 1
  %call.i.i.i72 = call i32 @i2c_transfer_buffer_flags(ptr noundef %79, ptr noundef nonnull %buf.i.i70, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i72)
  %cmp12.not.i.i73 = icmp eq i32 %call.i.i.i72, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i70) #8
  br i1 %cmp12.not.i.i73, label %if.end.i74, label %sw.bb21.sw.epilog27_crit_edge

sw.bb21.sw.epilog27_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog27

if.end.i74:                                       ; preds = %sw.bb21
  %85 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %87 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %88 = call ptr @memset(ptr %87, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #8
  %89 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  %90 = ptrtoint ptr %reg_addr_be.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 17155, ptr %reg_addr_be.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 1
  %91 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %addr.i.i, align 2
  %93 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %flags.i.i, align 2
  %95 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 2, ptr %87, align 4
  %buf.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %reg_addr_be.i.i, ptr %buf.i16.i, align 4
  %97 = load i16, ptr %addr.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %99 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %100 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %len12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i8, ptr %data_be.i.i, i32 3
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %101 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %arrayidx13.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 3
  %102 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adapter.i.i, align 8
  %call16.i.i = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i)
  %cmp17.not.i.i = icmp eq i32 %call16.i.i, 2
  br i1 %cmp17.not.i.i, label %if.end4.i75, label %ov5670_read_reg.exit.i

ov5670_read_reg.exit.i:                           ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  br label %sw.epilog27

if.end4.i75:                                      ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool5.not.i = icmp eq i32 %77, 0
  %and.i = and i32 %105, 247
  %masksel.i = select i1 %tobool5.not.i, i32 0, i32 8
  %storemerge.i = or i32 %and.i, %masksel.i
  %106 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i17.i) #8
  %108 = getelementptr inbounds [6 x i8], ptr %buf.i17.i, i32 0, i32 1
  %109 = getelementptr inbounds i8, ptr %buf.i17.i, i32 2
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 -1, ptr %109, align 1
  %111 = ptrtoint ptr %buf.i17.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 67, ptr %buf.i17.i, align 1
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 3, ptr %108, align 1
  %tmp.i18.3.extract.trunc.i = trunc i32 %storemerge.i to i8
  store i8 %tmp.i18.3.extract.trunc.i, ptr %109, align 1
  %call.i.i21.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %107, ptr noundef nonnull %buf.i17.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i21.i)
  %cmp12.not.i22.i = icmp eq i32 %call.i.i21.i, 3
  %..i23.i = select i1 %cmp12.not.i22.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i17.i) #8
  br label %sw.epilog27

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %113 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %20, i32 noundef %114) #11
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %do.end, %if.end4.i75, %ov5670_read_reg.exit.i, %sw.bb21.sw.epilog27_crit_edge, %sw.bb15, %sw.bb12, %if.end4.i, %if.end.i.sw.epilog27_crit_edge, %sw.bb9.sw.epilog27_crit_edge, %sw.bb6
  %ret.0 = phi i32 [ 0, %do.end ], [ %..i69, %sw.bb15 ], [ %..i62, %sw.bb12 ], [ %..i, %sw.bb6 ], [ %..i26.i, %if.end4.i ], [ -5, %sw.bb9.sw.epilog27_crit_edge ], [ -5, %if.end.i.sw.epilog27_crit_edge ], [ %..i23.i, %if.end4.i75 ], [ -5, %sw.bb21.sw.epilog27_crit_edge ], [ -5, %ov5670_read_reg.exit.i ]
  %call.i77 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog27, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog27 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5670_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !142

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %cur_mode = getelementptr inbounds %struct.ov5670, ptr %sd, i32 0, i32 8
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %5, align 4
  %11 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov5670_mode, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height3, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12298, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %field, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5670_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.ov5670, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 16777215, ptr %7, align 1
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %buf.i.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp12.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp12.not.i.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5670_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.ov5670, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @ov5670_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 16777215, ptr %7, align 1
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %buf.i.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp12.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp12.not.i.i, label %if.then3.cleanup_crit_edge, label %do.end.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.then3.cleanup_crit_edge ], [ %call1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_ov5670__294_2599_ov5670_i2c_driver_init6, !1, !"__initcall__kmod_ov5670__294_2599_ov5670_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov5670.c", i32 2599, i32 1}
!2 = !{ptr @__exitcall_ov5670_i2c_driver_exit, !1, !"__exitcall_ov5670_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov5670.c", i32 2601, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov5670.c", i32 2602, i32 1}
!7 = !{ptr @__UNIQUE_ID_description297, !8, !"__UNIQUE_ID_description297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov5670.c", i32 2603, i32 1}
!9 = !{ptr @__UNIQUE_ID_file298, !10, !"__UNIQUE_ID_file298", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/ov5670.c", i32 2604, i32 1}
!11 = !{ptr @__UNIQUE_ID_license299, !10, !"__UNIQUE_ID_license299", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov5670.c", i32 2590, i32 11}
!14 = !{ptr @ov5670_i2c_driver, !15, !"ov5670_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov5670.c", i32 2588, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov5670.c", i32 2479, i32 41}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ov5670.c", i32 2486, i32 13}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ov5670.c", i32 2498, i32 14}
!22 = !{ptr @ov5670_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov5670.c", i32 2503, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/ov5670.c", i32 2510, i32 13}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/ov5670.c", i32 2524, i32 13}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/ov5670.c", i32 2531, i32 13}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/ov5670.c", i32 2555, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ov5670_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @ov5670_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ov5670_subdev_ops, !40, !"ov5670_subdev_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ov5670.c", i32 2456, i32 37}
!41 = !{ptr @ov5670_core_ops, !42, !"ov5670_core_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov5670.c", i32 2435, i32 42}
!43 = !{ptr @ov5670_video_ops, !44, !"ov5670_video_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ov5670.c", i32 2441, i32 43}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/ov5670.c", i32 2320, i32 3}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ov5670_start_streaming._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ov5670_start_streaming._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov5670.c", i32 2330, i32 3}
!52 = !{ptr @ov5670_start_streaming._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ov5670_start_streaming._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov5670.c", i32 2338, i32 3}
!56 = !{ptr @ov5670_start_streaming._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ov5670_start_streaming._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov5670.c", i32 2350, i32 3}
!60 = !{ptr @ov5670_start_streaming._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ov5670_start_streaming._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @link_freq_configs, !63, !"link_freq_configs", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov5670.c", i32 1727, i32 45}
!64 = !{ptr @mipi_data_rate_840mbps, !65, !"mipi_data_rate_840mbps", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov5670.c", i32 106, i32 32}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov5670.c", i32 1920, i32 4}
!68 = !{ptr @ov5670_write_regs._rs, !67, !"_rs", i1 false, i1 false}
!69 = !{ptr @__func__.ov5670_write_regs, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ov5670_write_regs._entry, !67, !"_entry", i1 false, i1 false}
!72 = !{ptr @ov5670_write_regs._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/ov5670.c", i32 2365, i32 3}
!75 = !{ptr @ov5670_stop_streaming._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ov5670_stop_streaming._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ov5670_sensor_ops, !78, !"ov5670_sensor_ops", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ov5670.c", i32 2452, i32 44}
!79 = !{ptr @ov5670_pad_ops, !80, !"ov5670_pad_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ov5670.c", i32 2445, i32 41}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ov5670.c", i32 2294, i32 3}
!85 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ov5670_identify_module._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ov5670_identify_module._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @supported_modes, !89, !"supported_modes", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov5670.c", i32 1747, i32 33}
!90 = !{ptr @mode_2592x1944_regs, !91, !"mode_2592x1944_regs", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov5670.c", i32 124, i32 32}
!92 = !{ptr @mode_1296x972_regs, !93, !"mode_1296x972_regs", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov5670.c", i32 390, i32 32}
!94 = !{ptr @mode_648x486_regs, !95, !"mode_648x486_regs", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/ov5670.c", i32 656, i32 32}
!96 = !{ptr @mode_2560x1440_regs, !97, !"mode_2560x1440_regs", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ov5670.c", i32 922, i32 32}
!98 = !{ptr @mode_1280x720_regs, !99, !"mode_1280x720_regs", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ov5670.c", i32 1187, i32 32}
!100 = !{ptr @mode_640x360_regs, !101, !"mode_640x360_regs", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ov5670.c", i32 1453, i32 32}
!102 = !{ptr @ov5670_init_controls._key, !103, !"_key", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov5670.c", i32 2076, i32 8}
!104 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ov5670_ctrl_ops, !106, !"ov5670_ctrl_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov5670.c", i32 2059, i32 35}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/ov5670.c", i32 2049, i32 3}
!109 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ov5670_set_ctrl._entry, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @ov5670_set_ctrl._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @link_freq_menu_items, !114, !"link_freq_menu_items", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov5670.c", i32 1738, i32 18}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ov5670.c", i32 1720, i32 2}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov5670.c", i32 1721, i32 2}
!119 = !{ptr @ov5670_test_pattern_menu, !120, !"ov5670_test_pattern_menu", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ov5670.c", i32 1719, i32 27}
!121 = !{ptr @ov5670_internal_ops, !122, !"ov5670_internal_ops", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ov5670.c", i32 2467, i32 46}
!123 = !{ptr @ov5670_subdev_entity_ops, !124, !"ov5670_subdev_entity_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/ov5670.c", i32 2463, i32 45}
!125 = !{ptr @ov5670_pm_ops, !126, !"ov5670_pm_ops", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/ov5670.c", i32 2575, i32 32}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i8 0, i8 2}
!137 = !{!"auto-init"}
!138 = !{i64 2148353173}
!139 = !{i64 837996, i64 838021, i64 838043, i64 838059, i64 838071, i64 838091, i64 838115, i64 838131, i64 838143}
!140 = !{i64 2148353361}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{!"branch_weights", i32 1, i32 2000}
