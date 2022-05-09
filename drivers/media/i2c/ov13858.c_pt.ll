; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov13858.c_pt.bc'
source_filename = "../drivers/media/i2c/ov13858.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ov13858_mode = type { i32, i32, i32, i32, i32, %struct.ov13858_reg_list }
%struct.ov13858_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov13858_link_freq_config = type { i32, %struct.ov13858_reg_list }
%struct.ov13858_reg = type { i16, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_fwnode_device_properties = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.ov13858 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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

@__initcall__kmod_ov13858__294_1817_ov13858_i2c_driver_init6 = internal global ptr @ov13858_i2c_driver_init, section ".initcall6.init", align 4
@ov13858_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ov13858_probe, ptr @ov13858_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov13858_pm_ops, ptr null, ptr null }, ptr @ov13858_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov13858_i2c_driver_exit = internal global ptr @ov13858_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [48 x i8] c"ov13858.author=Kan, Chris <chris.kan@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [66 x i8] c"ov13858.author=Rapolu, Chiranjeevi <chiranjeevi.rapolu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [30 x i8] c"ov13858.author=Yang, Hyungwoo\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [53 x i8] c"ov13858.description=Omnivision ov13858 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [39 x i8] c"ov13858.file=drivers/media/i2c/ov13858\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [23 x i8] c"ov13858.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ov13858\00", [24 x i8] zeroinitializer }, align 32
@ov13858_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ov13858_suspend, ptr @ov13858_resume, ptr @ov13858_suspend, ptr @ov13858_resume, ptr @ov13858_suspend, ptr @ov13858_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov13858_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov13858\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@ov13858_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov13858_core_ops, ptr null, ptr null, ptr @ov13858_video_ops, ptr null, ptr null, ptr @ov13858_sensor_ops, ptr @ov13858_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov13858_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1722, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to find sensor: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov13858_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/ov13858.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov13858_probe._entry_ptr = internal global ptr @ov13858_probe._entry, section ".printk_index", align 4
@supported_modes = internal constant { [4 x %struct.ov13858_mode], [48 x i8] } { [4 x %struct.ov13858_mode] [%struct.ov13858_mode { i32 4224, i32 3136, i32 3214, i32 3214, i32 0, %struct.ov13858_reg_list { i32 188, ptr @mode_4224x3136_regs } }, %struct.ov13858_mode { i32 2112, i32 1568, i32 3214, i32 1608, i32 1, %struct.ov13858_reg_list { i32 188, ptr @mode_2112x1568_regs } }, %struct.ov13858_mode { i32 2112, i32 1188, i32 3214, i32 1608, i32 1, %struct.ov13858_reg_list { i32 188, ptr @mode_2112x1188_regs } }, %struct.ov13858_mode { i32 1056, i32 784, i32 3214, i32 804, i32 1, %struct.ov13858_reg_list { i32 188, ptr @mode_1056x784_regs } }], [48 x i8] zeroinitializer }, align 32
@ov13858_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov13858_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov13858_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ov13858_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1744, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s failed:%d\0A\00", [18 x i8] zeroinitializer }, align 32
@ov13858_probe._entry_ptr.9 = internal global ptr @ov13858_probe._entry.7, section ".printk_index", align 4
@ov13858_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1767, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ov13858_probe._entry_ptr.11 = internal global ptr @ov13858_probe._entry.10, section ".printk_index", align 4
@ov13858_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov13858_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov13858_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov13858_sensor_ops = internal constant { %struct.v4l2_subdev_sensor_ops, [24 x i8] } { %struct.v4l2_subdev_sensor_ops { ptr null, ptr @ov13858_get_skip_frames }, [24 x i8] zeroinitializer }, align 32
@ov13858_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov13858_enum_mbus_code, ptr @ov13858_enum_frame_size, ptr null, ptr @ov13858_get_pad_format, ptr @ov13858_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov13858_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 1425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failed to set powerup registers\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov13858_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@ov13858_start_streaming._entry_ptr = internal global ptr @ov13858_start_streaming._entry, section ".printk_index", align 4
@link_freq_configs = internal constant { [2 x %struct.ov13858_link_freq_config], [40 x i8] } { [2 x %struct.ov13858_link_freq_config] [%struct.ov13858_link_freq_config { i32 4488, %struct.ov13858_reg_list { i32 14, ptr @mipi_data_rate_1080mbps } }, %struct.ov13858_link_freq_config { i32 2244, %struct.ov13858_reg_list { i32 14, ptr @mipi_data_rate_540mbps } }], [40 x i8] zeroinitializer }, align 32
@ov13858_start_streaming._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 1434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set plls\0A\00", [41 x i8] zeroinitializer }, align 32
@ov13858_start_streaming._entry_ptr.16 = internal global ptr @ov13858_start_streaming._entry.14, section ".printk_index", align 4
@ov13858_start_streaming._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.4, i32 1442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set mode\0A\00", [41 x i8] zeroinitializer }, align 32
@ov13858_start_streaming._entry_ptr.19 = internal global ptr @ov13858_start_streaming._entry.17, section ".printk_index", align 4
@mipi_data_rate_1080mbps = internal constant { [14 x %struct.ov13858_reg], [40 x i8] } { [14 x %struct.ov13858_reg] [%struct.ov13858_reg { i16 768, i8 7 }, %struct.ov13858_reg { i16 769, i8 1 }, %struct.ov13858_reg { i16 770, i8 -62 }, %struct.ov13858_reg { i16 771, i8 0 }, %struct.ov13858_reg { i16 772, i8 0 }, %struct.ov13858_reg { i16 773, i8 1 }, %struct.ov13858_reg { i16 779, i8 5 }, %struct.ov13858_reg { i16 780, i8 1 }, %struct.ov13858_reg { i16 781, i8 14 }, %struct.ov13858_reg { i16 782, i8 5 }, %struct.ov13858_reg { i16 783, i8 1 }, %struct.ov13858_reg { i16 786, i8 1 }, %struct.ov13858_reg { i16 12310, i8 114 }, %struct.ov13858_reg { i16 12322, i8 1 }], [40 x i8] zeroinitializer }, align 32
@mipi_data_rate_540mbps = internal constant { [14 x %struct.ov13858_reg], [40 x i8] } { [14 x %struct.ov13858_reg] [%struct.ov13858_reg { i16 768, i8 7 }, %struct.ov13858_reg { i16 769, i8 1 }, %struct.ov13858_reg { i16 770, i8 -62 }, %struct.ov13858_reg { i16 771, i8 1 }, %struct.ov13858_reg { i16 772, i8 0 }, %struct.ov13858_reg { i16 773, i8 1 }, %struct.ov13858_reg { i16 779, i8 5 }, %struct.ov13858_reg { i16 780, i8 1 }, %struct.ov13858_reg { i16 781, i8 14 }, %struct.ov13858_reg { i16 782, i8 5 }, %struct.ov13858_reg { i16 783, i8 1 }, %struct.ov13858_reg { i16 786, i8 1 }, %struct.ov13858_reg { i16 12310, i8 114 }, %struct.ov13858_reg { i16 12322, i8 1 }], [40 x i8] zeroinitializer }, align 32
@ov13858_write_regs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ov13858_write_regs = private unnamed_addr constant [19 x i8] c"ov13858_write_regs\00", align 1
@ov13858_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.ov13858_write_regs, ptr @.str.4, i32 1134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write reg 0x%4.4x. error = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ov13858_write_regs._entry_ptr = internal global ptr @ov13858_write_regs._entry, section ".printk_index", align 4
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@link_freq_menu_items = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 540000000, i64 270000000], [16 x i8] zeroinitializer }, align 32
@ov13858_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip id mismatch: %x!=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov13858_identify_module\00", [40 x i8] zeroinitializer }, align 32
@ov13858_identify_module._entry_ptr = internal global ptr @ov13858_identify_module._entry, section ".printk_index", align 4
@mode_4224x3136_regs = internal constant { [188 x %struct.ov13858_reg], [176 x i8] } { [188 x %struct.ov13858_reg] [%struct.ov13858_reg { i16 12307, i8 50 }, %struct.ov13858_reg { i16 12315, i8 -16 }, %struct.ov13858_reg { i16 12319, i8 -48 }, %struct.ov13858_reg { i16 12550, i8 21 }, %struct.ov13858_reg { i16 12551, i8 35 }, %struct.ov13858_reg { i16 13578, i8 0 }, %struct.ov13858_reg { i16 13582, i8 0 }, %struct.ov13858_reg { i16 13584, i8 0 }, %struct.ov13858_reg { i16 13585, i8 2 }, %struct.ov13858_reg { i16 13586, i8 0 }, %struct.ov13858_reg { i16 13824, i8 43 }, %struct.ov13858_reg { i16 13825, i8 82 }, %struct.ov13858_reg { i16 13826, i8 96 }, %struct.ov13858_reg { i16 13842, i8 5 }, %struct.ov13858_reg { i16 13843, i8 -92 }, %struct.ov13858_reg { i16 13856, i8 -128 }, %struct.ov13858_reg { i16 13857, i8 16 }, %struct.ov13858_reg { i16 13858, i8 48 }, %struct.ov13858_reg { i16 13860, i8 28 }, %struct.ov13858_reg { i16 13888, i8 16 }, %struct.ov13858_reg { i16 13889, i8 112 }, %struct.ov13858_reg { i16 13920, i8 4 }, %struct.ov13858_reg { i16 13921, i8 -128 }, %struct.ov13858_reg { i16 13922, i8 18 }, %struct.ov13858_reg { i16 13924, i8 115 }, %struct.ov13858_reg { i16 13925, i8 -89 }, %struct.ov13858_reg { i16 13934, i8 -1 }, %struct.ov13858_reg { i16 13935, i8 -12 }, %struct.ov13858_reg { i16 13940, i8 0 }, %struct.ov13858_reg { i16 13945, i8 12 }, %struct.ov13858_reg { i16 13951, i8 1 }, %struct.ov13858_reg { i16 13952, i8 12 }, %struct.ov13858_reg { i16 13953, i8 80 }, %struct.ov13858_reg { i16 13954, i8 80 }, %struct.ov13858_reg { i16 13955, i8 -87 }, %struct.ov13858_reg { i16 13956, i8 -87 }, %struct.ov13858_reg { i16 14089, i8 95 }, %struct.ov13858_reg { i16 14100, i8 36 }, %struct.ov13858_reg { i16 14106, i8 62 }, %struct.ov13858_reg { i16 14135, i8 4 }, %struct.ov13858_reg { i16 14136, i8 -52 }, %struct.ov13858_reg { i16 14137, i8 18 }, %struct.ov13858_reg { i16 14141, i8 38 }, %struct.ov13858_reg { i16 14180, i8 32 }, %struct.ov13858_reg { i16 14181, i8 32 }, %struct.ov13858_reg { i16 14241, i8 54 }, %struct.ov13858_reg { i16 14248, i8 59 }, %struct.ov13858_reg { i16 14251, i8 49 }, %struct.ov13858_reg { i16 14274, i8 4 }, %struct.ov13858_reg { i16 14275, i8 -15 }, %struct.ov13858_reg { i16 14277, i8 0 }, %struct.ov13858_reg { i16 14296, i8 3 }, %struct.ov13858_reg { i16 14297, i8 12 }, %struct.ov13858_reg { i16 14298, i8 -62 }, %struct.ov13858_reg { i16 14300, i8 2 }, %struct.ov13858_reg { i16 14304, i8 0 }, %struct.ov13858_reg { i16 14305, i8 10 }, %struct.ov13858_reg { i16 14306, i8 20 }, %struct.ov13858_reg { i16 14307, i8 4 }, %struct.ov13858_reg { i16 14308, i8 42 }, %struct.ov13858_reg { i16 14309, i8 3 }, %struct.ov13858_reg { i16 14310, i8 4 }, %struct.ov13858_reg { i16 14336, i8 0 }, %struct.ov13858_reg { i16 14337, i8 0 }, %struct.ov13858_reg { i16 14338, i8 0 }, %struct.ov13858_reg { i16 14339, i8 8 }, %struct.ov13858_reg { i16 14340, i8 16 }, %struct.ov13858_reg { i16 14341, i8 -97 }, %struct.ov13858_reg { i16 14342, i8 12 }, %struct.ov13858_reg { i16 14343, i8 87 }, %struct.ov13858_reg { i16 14344, i8 16 }, %struct.ov13858_reg { i16 14345, i8 -128 }, %struct.ov13858_reg { i16 14346, i8 12 }, %struct.ov13858_reg { i16 14347, i8 64 }, %struct.ov13858_reg { i16 14348, i8 4 }, %struct.ov13858_reg { i16 14349, i8 98 }, %struct.ov13858_reg { i16 14350, i8 12 }, %struct.ov13858_reg { i16 14351, i8 -114 }, %struct.ov13858_reg { i16 14353, i8 4 }, %struct.ov13858_reg { i16 14355, i8 5 }, %struct.ov13858_reg { i16 14356, i8 1 }, %struct.ov13858_reg { i16 14357, i8 1 }, %struct.ov13858_reg { i16 14358, i8 1 }, %struct.ov13858_reg { i16 14359, i8 1 }, %struct.ov13858_reg { i16 14368, i8 -88 }, %struct.ov13858_reg { i16 14369, i8 0 }, %struct.ov13858_reg { i16 14370, i8 -62 }, %struct.ov13858_reg { i16 14371, i8 24 }, %struct.ov13858_reg { i16 14374, i8 17 }, %struct.ov13858_reg { i16 14375, i8 28 }, %struct.ov13858_reg { i16 14377, i8 3 }, %struct.ov13858_reg { i16 14386, i8 0 }, %struct.ov13858_reg { i16 15488, i8 0 }, %struct.ov13858_reg { i16 15495, i8 1 }, %struct.ov13858_reg { i16 15500, i8 25 }, %struct.ov13858_reg { i16 15501, i8 28 }, %struct.ov13858_reg { i16 15504, i8 0 }, %struct.ov13858_reg { i16 15505, i8 0 }, %struct.ov13858_reg { i16 15506, i8 0 }, %struct.ov13858_reg { i16 15507, i8 0 }, %struct.ov13858_reg { i16 15508, i8 64 }, %struct.ov13858_reg { i16 15509, i8 84 }, %struct.ov13858_reg { i16 15510, i8 52 }, %struct.ov13858_reg { i16 15511, i8 4 }, %struct.ov13858_reg { i16 15512, i8 0 }, %struct.ov13858_reg { i16 15756, i8 115 }, %struct.ov13858_reg { i16 15757, i8 -64 }, %struct.ov13858_reg { i16 16128, i8 11 }, %struct.ov13858_reg { i16 16131, i8 0 }, %struct.ov13858_reg { i16 16385, i8 -32 }, %struct.ov13858_reg { i16 16392, i8 0 }, %struct.ov13858_reg { i16 16393, i8 15 }, %struct.ov13858_reg { i16 16401, i8 -16 }, %struct.ov13858_reg { i16 16407, i8 8 }, %struct.ov13858_reg { i16 16464, i8 4 }, %struct.ov13858_reg { i16 16465, i8 11 }, %struct.ov13858_reg { i16 16466, i8 0 }, %struct.ov13858_reg { i16 16467, i8 -128 }, %struct.ov13858_reg { i16 16468, i8 0 }, %struct.ov13858_reg { i16 16469, i8 -128 }, %struct.ov13858_reg { i16 16470, i8 0 }, %struct.ov13858_reg { i16 16471, i8 -128 }, %struct.ov13858_reg { i16 16472, i8 0 }, %struct.ov13858_reg { i16 16473, i8 -128 }, %struct.ov13858_reg { i16 16478, i8 32 }, %struct.ov13858_reg { i16 17664, i8 7 }, %struct.ov13858_reg { i16 17667, i8 0 }, %struct.ov13858_reg { i16 17674, i8 4 }, %struct.ov13858_reg { i16 18441, i8 4 }, %struct.ov13858_reg { i16 18444, i8 18 }, %struct.ov13858_reg { i16 18463, i8 48 }, %struct.ov13858_reg { i16 18483, i8 16 }, %struct.ov13858_reg { i16 18487, i8 14 }, %struct.ov13858_reg { i16 18690, i8 1 }, %struct.ov13858_reg { i16 19712, i8 3 }, %struct.ov13858_reg { i16 19713, i8 -55 }, %struct.ov13858_reg { i16 19714, i8 -68 }, %struct.ov13858_reg { i16 19715, i8 -41 }, %struct.ov13858_reg { i16 19716, i8 -16 }, %struct.ov13858_reg { i16 19717, i8 -94 }, %struct.ov13858_reg { i16 20480, i8 -3 }, %struct.ov13858_reg { i16 20481, i8 1 }, %struct.ov13858_reg { i16 20544, i8 57 }, %struct.ov13858_reg { i16 20545, i8 16 }, %struct.ov13858_reg { i16 20546, i8 16 }, %struct.ov13858_reg { i16 20547, i8 -124 }, %struct.ov13858_reg { i16 20548, i8 98 }, %struct.ov13858_reg { i16 20864, i8 0 }, %struct.ov13858_reg { i16 20865, i8 16 }, %struct.ov13858_reg { i16 20866, i8 2 }, %struct.ov13858_reg { i16 20867, i8 15 }, %struct.ov13858_reg { i16 20992, i8 27 }, %struct.ov13858_reg { i16 21003, i8 7 }, %struct.ov13858_reg { i16 21004, i8 15 }, %struct.ov13858_reg { i16 21248, i8 4 }, %struct.ov13858_reg { i16 21249, i8 12 }, %struct.ov13858_reg { i16 21250, i8 12 }, %struct.ov13858_reg { i16 21251, i8 15 }, %struct.ov13858_reg { i16 21252, i8 0 }, %struct.ov13858_reg { i16 21253, i8 112 }, %struct.ov13858_reg { i16 21254, i8 0 }, %struct.ov13858_reg { i16 21255, i8 -128 }, %struct.ov13858_reg { i16 21256, i8 0 }, %struct.ov13858_reg { i16 21257, i8 -91 }, %struct.ov13858_reg { i16 21258, i8 0 }, %struct.ov13858_reg { i16 21259, i8 -45 }, %struct.ov13858_reg { i16 21260, i8 0 }, %struct.ov13858_reg { i16 21261, i8 -16 }, %struct.ov13858_reg { i16 21262, i8 1 }, %struct.ov13858_reg { i16 21263, i8 16 }, %struct.ov13858_reg { i16 21264, i8 1 }, %struct.ov13858_reg { i16 21265, i8 32 }, %struct.ov13858_reg { i16 21266, i8 1 }, %struct.ov13858_reg { i16 21267, i8 32 }, %struct.ov13858_reg { i16 21268, i8 1 }, %struct.ov13858_reg { i16 21269, i8 32 }, %struct.ov13858_reg { i16 21270, i8 8 }, %struct.ov13858_reg { i16 21271, i8 8 }, %struct.ov13858_reg { i16 21272, i8 16 }, %struct.ov13858_reg { i16 21273, i8 -120 }, %struct.ov13858_reg { i16 21274, i8 -120 }, %struct.ov13858_reg { i16 21275, i8 -87 }, %struct.ov13858_reg { i16 21276, i8 -86 }, %struct.ov13858_reg { i16 21277, i8 10 }, %struct.ov13858_reg { i16 21509, i8 2 }, %struct.ov13858_reg { i16 21510, i8 103 }, %struct.ov13858_reg { i16 21511, i8 1 }, %struct.ov13858_reg { i16 21512, i8 74 }], [176 x i8] zeroinitializer }, align 32
@mode_2112x1568_regs = internal constant { [188 x %struct.ov13858_reg], [176 x i8] } { [188 x %struct.ov13858_reg] [%struct.ov13858_reg { i16 12307, i8 50 }, %struct.ov13858_reg { i16 12315, i8 -16 }, %struct.ov13858_reg { i16 12319, i8 -48 }, %struct.ov13858_reg { i16 12550, i8 21 }, %struct.ov13858_reg { i16 12551, i8 35 }, %struct.ov13858_reg { i16 13578, i8 0 }, %struct.ov13858_reg { i16 13582, i8 0 }, %struct.ov13858_reg { i16 13584, i8 0 }, %struct.ov13858_reg { i16 13585, i8 2 }, %struct.ov13858_reg { i16 13586, i8 0 }, %struct.ov13858_reg { i16 13824, i8 43 }, %struct.ov13858_reg { i16 13825, i8 82 }, %struct.ov13858_reg { i16 13826, i8 96 }, %struct.ov13858_reg { i16 13842, i8 5 }, %struct.ov13858_reg { i16 13843, i8 -92 }, %struct.ov13858_reg { i16 13856, i8 -128 }, %struct.ov13858_reg { i16 13857, i8 16 }, %struct.ov13858_reg { i16 13858, i8 48 }, %struct.ov13858_reg { i16 13860, i8 28 }, %struct.ov13858_reg { i16 13888, i8 16 }, %struct.ov13858_reg { i16 13889, i8 112 }, %struct.ov13858_reg { i16 13920, i8 4 }, %struct.ov13858_reg { i16 13921, i8 -128 }, %struct.ov13858_reg { i16 13922, i8 16 }, %struct.ov13858_reg { i16 13924, i8 115 }, %struct.ov13858_reg { i16 13925, i8 -89 }, %struct.ov13858_reg { i16 13934, i8 -1 }, %struct.ov13858_reg { i16 13935, i8 -12 }, %struct.ov13858_reg { i16 13940, i8 0 }, %struct.ov13858_reg { i16 13945, i8 12 }, %struct.ov13858_reg { i16 13951, i8 1 }, %struct.ov13858_reg { i16 13952, i8 12 }, %struct.ov13858_reg { i16 13953, i8 80 }, %struct.ov13858_reg { i16 13954, i8 80 }, %struct.ov13858_reg { i16 13955, i8 -87 }, %struct.ov13858_reg { i16 13956, i8 -87 }, %struct.ov13858_reg { i16 14089, i8 95 }, %struct.ov13858_reg { i16 14100, i8 40 }, %struct.ov13858_reg { i16 14106, i8 62 }, %struct.ov13858_reg { i16 14135, i8 8 }, %struct.ov13858_reg { i16 14136, i8 -52 }, %struct.ov13858_reg { i16 14137, i8 32 }, %struct.ov13858_reg { i16 14141, i8 38 }, %struct.ov13858_reg { i16 14180, i8 32 }, %struct.ov13858_reg { i16 14181, i8 32 }, %struct.ov13858_reg { i16 14241, i8 54 }, %struct.ov13858_reg { i16 14248, i8 59 }, %struct.ov13858_reg { i16 14251, i8 49 }, %struct.ov13858_reg { i16 14274, i8 20 }, %struct.ov13858_reg { i16 14275, i8 -15 }, %struct.ov13858_reg { i16 14277, i8 0 }, %struct.ov13858_reg { i16 14296, i8 3 }, %struct.ov13858_reg { i16 14297, i8 12 }, %struct.ov13858_reg { i16 14298, i8 -62 }, %struct.ov13858_reg { i16 14300, i8 2 }, %struct.ov13858_reg { i16 14304, i8 0 }, %struct.ov13858_reg { i16 14305, i8 10 }, %struct.ov13858_reg { i16 14306, i8 20 }, %struct.ov13858_reg { i16 14307, i8 8 }, %struct.ov13858_reg { i16 14308, i8 56 }, %struct.ov13858_reg { i16 14309, i8 3 }, %struct.ov13858_reg { i16 14310, i8 8 }, %struct.ov13858_reg { i16 14336, i8 0 }, %struct.ov13858_reg { i16 14337, i8 0 }, %struct.ov13858_reg { i16 14338, i8 0 }, %struct.ov13858_reg { i16 14339, i8 0 }, %struct.ov13858_reg { i16 14340, i8 16 }, %struct.ov13858_reg { i16 14341, i8 -97 }, %struct.ov13858_reg { i16 14342, i8 12 }, %struct.ov13858_reg { i16 14343, i8 95 }, %struct.ov13858_reg { i16 14344, i8 8 }, %struct.ov13858_reg { i16 14345, i8 64 }, %struct.ov13858_reg { i16 14346, i8 6 }, %struct.ov13858_reg { i16 14347, i8 32 }, %struct.ov13858_reg { i16 14348, i8 4 }, %struct.ov13858_reg { i16 14349, i8 98 }, %struct.ov13858_reg { i16 14350, i8 12 }, %struct.ov13858_reg { i16 14351, i8 -114 }, %struct.ov13858_reg { i16 14353, i8 4 }, %struct.ov13858_reg { i16 14355, i8 5 }, %struct.ov13858_reg { i16 14356, i8 3 }, %struct.ov13858_reg { i16 14357, i8 1 }, %struct.ov13858_reg { i16 14358, i8 3 }, %struct.ov13858_reg { i16 14359, i8 1 }, %struct.ov13858_reg { i16 14368, i8 -85 }, %struct.ov13858_reg { i16 14369, i8 0 }, %struct.ov13858_reg { i16 14370, i8 -62 }, %struct.ov13858_reg { i16 14371, i8 24 }, %struct.ov13858_reg { i16 14374, i8 4 }, %struct.ov13858_reg { i16 14375, i8 -112 }, %struct.ov13858_reg { i16 14377, i8 7 }, %struct.ov13858_reg { i16 14386, i8 0 }, %struct.ov13858_reg { i16 15488, i8 0 }, %struct.ov13858_reg { i16 15495, i8 1 }, %struct.ov13858_reg { i16 15500, i8 25 }, %struct.ov13858_reg { i16 15501, i8 28 }, %struct.ov13858_reg { i16 15504, i8 0 }, %struct.ov13858_reg { i16 15505, i8 0 }, %struct.ov13858_reg { i16 15506, i8 0 }, %struct.ov13858_reg { i16 15507, i8 0 }, %struct.ov13858_reg { i16 15508, i8 64 }, %struct.ov13858_reg { i16 15509, i8 84 }, %struct.ov13858_reg { i16 15510, i8 52 }, %struct.ov13858_reg { i16 15511, i8 4 }, %struct.ov13858_reg { i16 15512, i8 0 }, %struct.ov13858_reg { i16 15756, i8 115 }, %struct.ov13858_reg { i16 15757, i8 -64 }, %struct.ov13858_reg { i16 16128, i8 11 }, %struct.ov13858_reg { i16 16131, i8 0 }, %struct.ov13858_reg { i16 16385, i8 -32 }, %struct.ov13858_reg { i16 16392, i8 0 }, %struct.ov13858_reg { i16 16393, i8 13 }, %struct.ov13858_reg { i16 16401, i8 -16 }, %struct.ov13858_reg { i16 16407, i8 8 }, %struct.ov13858_reg { i16 16464, i8 4 }, %struct.ov13858_reg { i16 16465, i8 11 }, %struct.ov13858_reg { i16 16466, i8 0 }, %struct.ov13858_reg { i16 16467, i8 -128 }, %struct.ov13858_reg { i16 16468, i8 0 }, %struct.ov13858_reg { i16 16469, i8 -128 }, %struct.ov13858_reg { i16 16470, i8 0 }, %struct.ov13858_reg { i16 16471, i8 -128 }, %struct.ov13858_reg { i16 16472, i8 0 }, %struct.ov13858_reg { i16 16473, i8 -128 }, %struct.ov13858_reg { i16 16478, i8 32 }, %struct.ov13858_reg { i16 17664, i8 7 }, %struct.ov13858_reg { i16 17667, i8 0 }, %struct.ov13858_reg { i16 17674, i8 4 }, %struct.ov13858_reg { i16 18441, i8 4 }, %struct.ov13858_reg { i16 18444, i8 18 }, %struct.ov13858_reg { i16 18463, i8 48 }, %struct.ov13858_reg { i16 18483, i8 16 }, %struct.ov13858_reg { i16 18487, i8 28 }, %struct.ov13858_reg { i16 18690, i8 1 }, %struct.ov13858_reg { i16 19712, i8 3 }, %struct.ov13858_reg { i16 19713, i8 -55 }, %struct.ov13858_reg { i16 19714, i8 -68 }, %struct.ov13858_reg { i16 19715, i8 -41 }, %struct.ov13858_reg { i16 19716, i8 -16 }, %struct.ov13858_reg { i16 19717, i8 -94 }, %struct.ov13858_reg { i16 20480, i8 -3 }, %struct.ov13858_reg { i16 20481, i8 1 }, %struct.ov13858_reg { i16 20544, i8 57 }, %struct.ov13858_reg { i16 20545, i8 16 }, %struct.ov13858_reg { i16 20546, i8 16 }, %struct.ov13858_reg { i16 20547, i8 -124 }, %struct.ov13858_reg { i16 20548, i8 98 }, %struct.ov13858_reg { i16 20864, i8 0 }, %struct.ov13858_reg { i16 20865, i8 16 }, %struct.ov13858_reg { i16 20866, i8 2 }, %struct.ov13858_reg { i16 20867, i8 15 }, %struct.ov13858_reg { i16 20992, i8 27 }, %struct.ov13858_reg { i16 21003, i8 7 }, %struct.ov13858_reg { i16 21004, i8 15 }, %struct.ov13858_reg { i16 21248, i8 4 }, %struct.ov13858_reg { i16 21249, i8 12 }, %struct.ov13858_reg { i16 21250, i8 12 }, %struct.ov13858_reg { i16 21251, i8 15 }, %struct.ov13858_reg { i16 21252, i8 0 }, %struct.ov13858_reg { i16 21253, i8 112 }, %struct.ov13858_reg { i16 21254, i8 0 }, %struct.ov13858_reg { i16 21255, i8 -128 }, %struct.ov13858_reg { i16 21256, i8 0 }, %struct.ov13858_reg { i16 21257, i8 -91 }, %struct.ov13858_reg { i16 21258, i8 0 }, %struct.ov13858_reg { i16 21259, i8 -45 }, %struct.ov13858_reg { i16 21260, i8 0 }, %struct.ov13858_reg { i16 21261, i8 -16 }, %struct.ov13858_reg { i16 21262, i8 1 }, %struct.ov13858_reg { i16 21263, i8 16 }, %struct.ov13858_reg { i16 21264, i8 1 }, %struct.ov13858_reg { i16 21265, i8 32 }, %struct.ov13858_reg { i16 21266, i8 1 }, %struct.ov13858_reg { i16 21267, i8 32 }, %struct.ov13858_reg { i16 21268, i8 1 }, %struct.ov13858_reg { i16 21269, i8 32 }, %struct.ov13858_reg { i16 21270, i8 8 }, %struct.ov13858_reg { i16 21271, i8 8 }, %struct.ov13858_reg { i16 21272, i8 16 }, %struct.ov13858_reg { i16 21273, i8 -120 }, %struct.ov13858_reg { i16 21274, i8 -120 }, %struct.ov13858_reg { i16 21275, i8 -87 }, %struct.ov13858_reg { i16 21276, i8 -86 }, %struct.ov13858_reg { i16 21277, i8 10 }, %struct.ov13858_reg { i16 21509, i8 2 }, %struct.ov13858_reg { i16 21510, i8 103 }, %struct.ov13858_reg { i16 21511, i8 1 }, %struct.ov13858_reg { i16 21512, i8 74 }], [176 x i8] zeroinitializer }, align 32
@mode_2112x1188_regs = internal constant { [188 x %struct.ov13858_reg], [176 x i8] } { [188 x %struct.ov13858_reg] [%struct.ov13858_reg { i16 12307, i8 50 }, %struct.ov13858_reg { i16 12315, i8 -16 }, %struct.ov13858_reg { i16 12319, i8 -48 }, %struct.ov13858_reg { i16 12550, i8 21 }, %struct.ov13858_reg { i16 12551, i8 35 }, %struct.ov13858_reg { i16 13578, i8 0 }, %struct.ov13858_reg { i16 13582, i8 0 }, %struct.ov13858_reg { i16 13584, i8 0 }, %struct.ov13858_reg { i16 13585, i8 2 }, %struct.ov13858_reg { i16 13586, i8 0 }, %struct.ov13858_reg { i16 13824, i8 43 }, %struct.ov13858_reg { i16 13825, i8 82 }, %struct.ov13858_reg { i16 13826, i8 96 }, %struct.ov13858_reg { i16 13842, i8 5 }, %struct.ov13858_reg { i16 13843, i8 -92 }, %struct.ov13858_reg { i16 13856, i8 -128 }, %struct.ov13858_reg { i16 13857, i8 16 }, %struct.ov13858_reg { i16 13858, i8 48 }, %struct.ov13858_reg { i16 13860, i8 28 }, %struct.ov13858_reg { i16 13888, i8 16 }, %struct.ov13858_reg { i16 13889, i8 112 }, %struct.ov13858_reg { i16 13920, i8 4 }, %struct.ov13858_reg { i16 13921, i8 -128 }, %struct.ov13858_reg { i16 13922, i8 16 }, %struct.ov13858_reg { i16 13924, i8 115 }, %struct.ov13858_reg { i16 13925, i8 -89 }, %struct.ov13858_reg { i16 13934, i8 -1 }, %struct.ov13858_reg { i16 13935, i8 -12 }, %struct.ov13858_reg { i16 13940, i8 0 }, %struct.ov13858_reg { i16 13945, i8 12 }, %struct.ov13858_reg { i16 13951, i8 1 }, %struct.ov13858_reg { i16 13952, i8 12 }, %struct.ov13858_reg { i16 13953, i8 80 }, %struct.ov13858_reg { i16 13954, i8 80 }, %struct.ov13858_reg { i16 13955, i8 -87 }, %struct.ov13858_reg { i16 13956, i8 -87 }, %struct.ov13858_reg { i16 14089, i8 95 }, %struct.ov13858_reg { i16 14100, i8 40 }, %struct.ov13858_reg { i16 14106, i8 62 }, %struct.ov13858_reg { i16 14135, i8 8 }, %struct.ov13858_reg { i16 14136, i8 -52 }, %struct.ov13858_reg { i16 14137, i8 32 }, %struct.ov13858_reg { i16 14141, i8 38 }, %struct.ov13858_reg { i16 14180, i8 32 }, %struct.ov13858_reg { i16 14181, i8 32 }, %struct.ov13858_reg { i16 14241, i8 54 }, %struct.ov13858_reg { i16 14248, i8 59 }, %struct.ov13858_reg { i16 14251, i8 49 }, %struct.ov13858_reg { i16 14274, i8 20 }, %struct.ov13858_reg { i16 14275, i8 -15 }, %struct.ov13858_reg { i16 14277, i8 0 }, %struct.ov13858_reg { i16 14296, i8 3 }, %struct.ov13858_reg { i16 14297, i8 12 }, %struct.ov13858_reg { i16 14298, i8 -62 }, %struct.ov13858_reg { i16 14300, i8 2 }, %struct.ov13858_reg { i16 14304, i8 0 }, %struct.ov13858_reg { i16 14305, i8 10 }, %struct.ov13858_reg { i16 14306, i8 20 }, %struct.ov13858_reg { i16 14307, i8 8 }, %struct.ov13858_reg { i16 14308, i8 56 }, %struct.ov13858_reg { i16 14309, i8 3 }, %struct.ov13858_reg { i16 14310, i8 8 }, %struct.ov13858_reg { i16 14336, i8 0 }, %struct.ov13858_reg { i16 14337, i8 0 }, %struct.ov13858_reg { i16 14338, i8 1 }, %struct.ov13858_reg { i16 14339, i8 -124 }, %struct.ov13858_reg { i16 14340, i8 16 }, %struct.ov13858_reg { i16 14341, i8 -97 }, %struct.ov13858_reg { i16 14342, i8 10 }, %struct.ov13858_reg { i16 14343, i8 -45 }, %struct.ov13858_reg { i16 14344, i8 8 }, %struct.ov13858_reg { i16 14345, i8 64 }, %struct.ov13858_reg { i16 14346, i8 4 }, %struct.ov13858_reg { i16 14347, i8 -92 }, %struct.ov13858_reg { i16 14348, i8 4 }, %struct.ov13858_reg { i16 14349, i8 98 }, %struct.ov13858_reg { i16 14350, i8 12 }, %struct.ov13858_reg { i16 14351, i8 -114 }, %struct.ov13858_reg { i16 14353, i8 8 }, %struct.ov13858_reg { i16 14355, i8 3 }, %struct.ov13858_reg { i16 14356, i8 3 }, %struct.ov13858_reg { i16 14357, i8 1 }, %struct.ov13858_reg { i16 14358, i8 3 }, %struct.ov13858_reg { i16 14359, i8 1 }, %struct.ov13858_reg { i16 14368, i8 -85 }, %struct.ov13858_reg { i16 14369, i8 0 }, %struct.ov13858_reg { i16 14370, i8 -62 }, %struct.ov13858_reg { i16 14371, i8 24 }, %struct.ov13858_reg { i16 14374, i8 4 }, %struct.ov13858_reg { i16 14375, i8 -112 }, %struct.ov13858_reg { i16 14377, i8 7 }, %struct.ov13858_reg { i16 14386, i8 0 }, %struct.ov13858_reg { i16 15488, i8 0 }, %struct.ov13858_reg { i16 15495, i8 1 }, %struct.ov13858_reg { i16 15500, i8 25 }, %struct.ov13858_reg { i16 15501, i8 28 }, %struct.ov13858_reg { i16 15504, i8 0 }, %struct.ov13858_reg { i16 15505, i8 0 }, %struct.ov13858_reg { i16 15506, i8 0 }, %struct.ov13858_reg { i16 15507, i8 0 }, %struct.ov13858_reg { i16 15508, i8 64 }, %struct.ov13858_reg { i16 15509, i8 84 }, %struct.ov13858_reg { i16 15510, i8 52 }, %struct.ov13858_reg { i16 15511, i8 4 }, %struct.ov13858_reg { i16 15512, i8 0 }, %struct.ov13858_reg { i16 15756, i8 115 }, %struct.ov13858_reg { i16 15757, i8 -64 }, %struct.ov13858_reg { i16 16128, i8 11 }, %struct.ov13858_reg { i16 16131, i8 0 }, %struct.ov13858_reg { i16 16385, i8 -32 }, %struct.ov13858_reg { i16 16392, i8 0 }, %struct.ov13858_reg { i16 16393, i8 13 }, %struct.ov13858_reg { i16 16401, i8 -16 }, %struct.ov13858_reg { i16 16407, i8 8 }, %struct.ov13858_reg { i16 16464, i8 4 }, %struct.ov13858_reg { i16 16465, i8 11 }, %struct.ov13858_reg { i16 16466, i8 0 }, %struct.ov13858_reg { i16 16467, i8 -128 }, %struct.ov13858_reg { i16 16468, i8 0 }, %struct.ov13858_reg { i16 16469, i8 -128 }, %struct.ov13858_reg { i16 16470, i8 0 }, %struct.ov13858_reg { i16 16471, i8 -128 }, %struct.ov13858_reg { i16 16472, i8 0 }, %struct.ov13858_reg { i16 16473, i8 -128 }, %struct.ov13858_reg { i16 16478, i8 32 }, %struct.ov13858_reg { i16 17664, i8 7 }, %struct.ov13858_reg { i16 17667, i8 0 }, %struct.ov13858_reg { i16 17674, i8 4 }, %struct.ov13858_reg { i16 18441, i8 4 }, %struct.ov13858_reg { i16 18444, i8 18 }, %struct.ov13858_reg { i16 18463, i8 48 }, %struct.ov13858_reg { i16 18483, i8 16 }, %struct.ov13858_reg { i16 18487, i8 28 }, %struct.ov13858_reg { i16 18690, i8 1 }, %struct.ov13858_reg { i16 19712, i8 3 }, %struct.ov13858_reg { i16 19713, i8 -55 }, %struct.ov13858_reg { i16 19714, i8 -68 }, %struct.ov13858_reg { i16 19715, i8 -41 }, %struct.ov13858_reg { i16 19716, i8 -16 }, %struct.ov13858_reg { i16 19717, i8 -94 }, %struct.ov13858_reg { i16 20480, i8 -3 }, %struct.ov13858_reg { i16 20481, i8 1 }, %struct.ov13858_reg { i16 20544, i8 57 }, %struct.ov13858_reg { i16 20545, i8 16 }, %struct.ov13858_reg { i16 20546, i8 16 }, %struct.ov13858_reg { i16 20547, i8 -124 }, %struct.ov13858_reg { i16 20548, i8 98 }, %struct.ov13858_reg { i16 20864, i8 0 }, %struct.ov13858_reg { i16 20865, i8 16 }, %struct.ov13858_reg { i16 20866, i8 2 }, %struct.ov13858_reg { i16 20867, i8 15 }, %struct.ov13858_reg { i16 20992, i8 27 }, %struct.ov13858_reg { i16 21003, i8 7 }, %struct.ov13858_reg { i16 21004, i8 15 }, %struct.ov13858_reg { i16 21248, i8 4 }, %struct.ov13858_reg { i16 21249, i8 12 }, %struct.ov13858_reg { i16 21250, i8 12 }, %struct.ov13858_reg { i16 21251, i8 15 }, %struct.ov13858_reg { i16 21252, i8 0 }, %struct.ov13858_reg { i16 21253, i8 112 }, %struct.ov13858_reg { i16 21254, i8 0 }, %struct.ov13858_reg { i16 21255, i8 -128 }, %struct.ov13858_reg { i16 21256, i8 0 }, %struct.ov13858_reg { i16 21257, i8 -91 }, %struct.ov13858_reg { i16 21258, i8 0 }, %struct.ov13858_reg { i16 21259, i8 -45 }, %struct.ov13858_reg { i16 21260, i8 0 }, %struct.ov13858_reg { i16 21261, i8 -16 }, %struct.ov13858_reg { i16 21262, i8 1 }, %struct.ov13858_reg { i16 21263, i8 16 }, %struct.ov13858_reg { i16 21264, i8 1 }, %struct.ov13858_reg { i16 21265, i8 32 }, %struct.ov13858_reg { i16 21266, i8 1 }, %struct.ov13858_reg { i16 21267, i8 32 }, %struct.ov13858_reg { i16 21268, i8 1 }, %struct.ov13858_reg { i16 21269, i8 32 }, %struct.ov13858_reg { i16 21270, i8 8 }, %struct.ov13858_reg { i16 21271, i8 8 }, %struct.ov13858_reg { i16 21272, i8 16 }, %struct.ov13858_reg { i16 21273, i8 -120 }, %struct.ov13858_reg { i16 21274, i8 -120 }, %struct.ov13858_reg { i16 21275, i8 -87 }, %struct.ov13858_reg { i16 21276, i8 -86 }, %struct.ov13858_reg { i16 21277, i8 10 }, %struct.ov13858_reg { i16 21509, i8 2 }, %struct.ov13858_reg { i16 21510, i8 103 }, %struct.ov13858_reg { i16 21511, i8 1 }, %struct.ov13858_reg { i16 21512, i8 74 }], [176 x i8] zeroinitializer }, align 32
@mode_1056x784_regs = internal constant { [188 x %struct.ov13858_reg], [176 x i8] } { [188 x %struct.ov13858_reg] [%struct.ov13858_reg { i16 12307, i8 50 }, %struct.ov13858_reg { i16 12315, i8 -16 }, %struct.ov13858_reg { i16 12319, i8 -48 }, %struct.ov13858_reg { i16 12550, i8 21 }, %struct.ov13858_reg { i16 12551, i8 35 }, %struct.ov13858_reg { i16 13578, i8 0 }, %struct.ov13858_reg { i16 13582, i8 0 }, %struct.ov13858_reg { i16 13584, i8 0 }, %struct.ov13858_reg { i16 13585, i8 2 }, %struct.ov13858_reg { i16 13586, i8 0 }, %struct.ov13858_reg { i16 13824, i8 43 }, %struct.ov13858_reg { i16 13825, i8 82 }, %struct.ov13858_reg { i16 13826, i8 96 }, %struct.ov13858_reg { i16 13842, i8 5 }, %struct.ov13858_reg { i16 13843, i8 -92 }, %struct.ov13858_reg { i16 13856, i8 -128 }, %struct.ov13858_reg { i16 13857, i8 16 }, %struct.ov13858_reg { i16 13858, i8 48 }, %struct.ov13858_reg { i16 13860, i8 28 }, %struct.ov13858_reg { i16 13888, i8 16 }, %struct.ov13858_reg { i16 13889, i8 112 }, %struct.ov13858_reg { i16 13920, i8 4 }, %struct.ov13858_reg { i16 13921, i8 -128 }, %struct.ov13858_reg { i16 13922, i8 8 }, %struct.ov13858_reg { i16 13924, i8 115 }, %struct.ov13858_reg { i16 13925, i8 -89 }, %struct.ov13858_reg { i16 13934, i8 -1 }, %struct.ov13858_reg { i16 13935, i8 -12 }, %struct.ov13858_reg { i16 13940, i8 0 }, %struct.ov13858_reg { i16 13945, i8 12 }, %struct.ov13858_reg { i16 13951, i8 1 }, %struct.ov13858_reg { i16 13952, i8 12 }, %struct.ov13858_reg { i16 13953, i8 80 }, %struct.ov13858_reg { i16 13954, i8 80 }, %struct.ov13858_reg { i16 13955, i8 -87 }, %struct.ov13858_reg { i16 13956, i8 -87 }, %struct.ov13858_reg { i16 14089, i8 95 }, %struct.ov13858_reg { i16 14100, i8 48 }, %struct.ov13858_reg { i16 14106, i8 62 }, %struct.ov13858_reg { i16 14135, i8 8 }, %struct.ov13858_reg { i16 14136, i8 -52 }, %struct.ov13858_reg { i16 14137, i8 32 }, %struct.ov13858_reg { i16 14141, i8 38 }, %struct.ov13858_reg { i16 14180, i8 32 }, %struct.ov13858_reg { i16 14181, i8 32 }, %struct.ov13858_reg { i16 14241, i8 54 }, %struct.ov13858_reg { i16 14248, i8 59 }, %struct.ov13858_reg { i16 14251, i8 49 }, %struct.ov13858_reg { i16 14274, i8 44 }, %struct.ov13858_reg { i16 14275, i8 -15 }, %struct.ov13858_reg { i16 14277, i8 0 }, %struct.ov13858_reg { i16 14296, i8 3 }, %struct.ov13858_reg { i16 14297, i8 6 }, %struct.ov13858_reg { i16 14298, i8 -62 }, %struct.ov13858_reg { i16 14300, i8 2 }, %struct.ov13858_reg { i16 14304, i8 0 }, %struct.ov13858_reg { i16 14305, i8 10 }, %struct.ov13858_reg { i16 14306, i8 20 }, %struct.ov13858_reg { i16 14307, i8 8 }, %struct.ov13858_reg { i16 14308, i8 54 }, %struct.ov13858_reg { i16 14309, i8 3 }, %struct.ov13858_reg { i16 14310, i8 8 }, %struct.ov13858_reg { i16 14336, i8 0 }, %struct.ov13858_reg { i16 14337, i8 0 }, %struct.ov13858_reg { i16 14338, i8 0 }, %struct.ov13858_reg { i16 14339, i8 0 }, %struct.ov13858_reg { i16 14340, i8 16 }, %struct.ov13858_reg { i16 14341, i8 -97 }, %struct.ov13858_reg { i16 14342, i8 12 }, %struct.ov13858_reg { i16 14343, i8 95 }, %struct.ov13858_reg { i16 14344, i8 4 }, %struct.ov13858_reg { i16 14345, i8 32 }, %struct.ov13858_reg { i16 14346, i8 3 }, %struct.ov13858_reg { i16 14347, i8 16 }, %struct.ov13858_reg { i16 14348, i8 4 }, %struct.ov13858_reg { i16 14349, i8 98 }, %struct.ov13858_reg { i16 14350, i8 12 }, %struct.ov13858_reg { i16 14351, i8 -114 }, %struct.ov13858_reg { i16 14353, i8 4 }, %struct.ov13858_reg { i16 14355, i8 5 }, %struct.ov13858_reg { i16 14356, i8 7 }, %struct.ov13858_reg { i16 14357, i8 1 }, %struct.ov13858_reg { i16 14358, i8 7 }, %struct.ov13858_reg { i16 14359, i8 1 }, %struct.ov13858_reg { i16 14368, i8 -84 }, %struct.ov13858_reg { i16 14369, i8 0 }, %struct.ov13858_reg { i16 14370, i8 -62 }, %struct.ov13858_reg { i16 14371, i8 24 }, %struct.ov13858_reg { i16 14374, i8 4 }, %struct.ov13858_reg { i16 14375, i8 72 }, %struct.ov13858_reg { i16 14377, i8 3 }, %struct.ov13858_reg { i16 14386, i8 0 }, %struct.ov13858_reg { i16 15488, i8 0 }, %struct.ov13858_reg { i16 15495, i8 1 }, %struct.ov13858_reg { i16 15500, i8 25 }, %struct.ov13858_reg { i16 15501, i8 28 }, %struct.ov13858_reg { i16 15504, i8 0 }, %struct.ov13858_reg { i16 15505, i8 0 }, %struct.ov13858_reg { i16 15506, i8 0 }, %struct.ov13858_reg { i16 15507, i8 0 }, %struct.ov13858_reg { i16 15508, i8 64 }, %struct.ov13858_reg { i16 15509, i8 84 }, %struct.ov13858_reg { i16 15510, i8 52 }, %struct.ov13858_reg { i16 15511, i8 4 }, %struct.ov13858_reg { i16 15512, i8 0 }, %struct.ov13858_reg { i16 15756, i8 115 }, %struct.ov13858_reg { i16 15757, i8 -64 }, %struct.ov13858_reg { i16 16128, i8 11 }, %struct.ov13858_reg { i16 16131, i8 0 }, %struct.ov13858_reg { i16 16385, i8 -32 }, %struct.ov13858_reg { i16 16392, i8 0 }, %struct.ov13858_reg { i16 16393, i8 5 }, %struct.ov13858_reg { i16 16401, i8 -16 }, %struct.ov13858_reg { i16 16407, i8 8 }, %struct.ov13858_reg { i16 16464, i8 2 }, %struct.ov13858_reg { i16 16465, i8 5 }, %struct.ov13858_reg { i16 16466, i8 0 }, %struct.ov13858_reg { i16 16467, i8 -128 }, %struct.ov13858_reg { i16 16468, i8 0 }, %struct.ov13858_reg { i16 16469, i8 -128 }, %struct.ov13858_reg { i16 16470, i8 0 }, %struct.ov13858_reg { i16 16471, i8 -128 }, %struct.ov13858_reg { i16 16472, i8 0 }, %struct.ov13858_reg { i16 16473, i8 -128 }, %struct.ov13858_reg { i16 16478, i8 32 }, %struct.ov13858_reg { i16 17664, i8 7 }, %struct.ov13858_reg { i16 17667, i8 0 }, %struct.ov13858_reg { i16 17674, i8 4 }, %struct.ov13858_reg { i16 18441, i8 4 }, %struct.ov13858_reg { i16 18444, i8 18 }, %struct.ov13858_reg { i16 18463, i8 48 }, %struct.ov13858_reg { i16 18483, i8 16 }, %struct.ov13858_reg { i16 18487, i8 30 }, %struct.ov13858_reg { i16 18690, i8 2 }, %struct.ov13858_reg { i16 19712, i8 3 }, %struct.ov13858_reg { i16 19713, i8 -55 }, %struct.ov13858_reg { i16 19714, i8 -68 }, %struct.ov13858_reg { i16 19715, i8 -41 }, %struct.ov13858_reg { i16 19716, i8 -16 }, %struct.ov13858_reg { i16 19717, i8 -94 }, %struct.ov13858_reg { i16 20480, i8 -3 }, %struct.ov13858_reg { i16 20481, i8 1 }, %struct.ov13858_reg { i16 20544, i8 57 }, %struct.ov13858_reg { i16 20545, i8 16 }, %struct.ov13858_reg { i16 20546, i8 16 }, %struct.ov13858_reg { i16 20547, i8 -124 }, %struct.ov13858_reg { i16 20548, i8 98 }, %struct.ov13858_reg { i16 20864, i8 0 }, %struct.ov13858_reg { i16 20865, i8 16 }, %struct.ov13858_reg { i16 20866, i8 2 }, %struct.ov13858_reg { i16 20867, i8 15 }, %struct.ov13858_reg { i16 20992, i8 27 }, %struct.ov13858_reg { i16 21003, i8 7 }, %struct.ov13858_reg { i16 21004, i8 15 }, %struct.ov13858_reg { i16 21248, i8 4 }, %struct.ov13858_reg { i16 21249, i8 12 }, %struct.ov13858_reg { i16 21250, i8 12 }, %struct.ov13858_reg { i16 21251, i8 15 }, %struct.ov13858_reg { i16 21252, i8 0 }, %struct.ov13858_reg { i16 21253, i8 112 }, %struct.ov13858_reg { i16 21254, i8 0 }, %struct.ov13858_reg { i16 21255, i8 -128 }, %struct.ov13858_reg { i16 21256, i8 0 }, %struct.ov13858_reg { i16 21257, i8 -91 }, %struct.ov13858_reg { i16 21258, i8 0 }, %struct.ov13858_reg { i16 21259, i8 -45 }, %struct.ov13858_reg { i16 21260, i8 0 }, %struct.ov13858_reg { i16 21261, i8 -16 }, %struct.ov13858_reg { i16 21262, i8 1 }, %struct.ov13858_reg { i16 21263, i8 16 }, %struct.ov13858_reg { i16 21264, i8 1 }, %struct.ov13858_reg { i16 21265, i8 32 }, %struct.ov13858_reg { i16 21266, i8 1 }, %struct.ov13858_reg { i16 21267, i8 32 }, %struct.ov13858_reg { i16 21268, i8 1 }, %struct.ov13858_reg { i16 21269, i8 32 }, %struct.ov13858_reg { i16 21270, i8 8 }, %struct.ov13858_reg { i16 21271, i8 8 }, %struct.ov13858_reg { i16 21272, i8 16 }, %struct.ov13858_reg { i16 21273, i8 -120 }, %struct.ov13858_reg { i16 21274, i8 -120 }, %struct.ov13858_reg { i16 21275, i8 -87 }, %struct.ov13858_reg { i16 21276, i8 -86 }, %struct.ov13858_reg { i16 21277, i8 10 }, %struct.ov13858_reg { i16 21509, i8 2 }, %struct.ov13858_reg { i16 21510, i8 103 }, %struct.ov13858_reg { i16 21511, i8 1 }, %struct.ov13858_reg { i16 21512, i8 74 }], [176 x i8] zeroinitializer }, align 32
@ov13858_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ov13858:1609:(ctrl_hdlr)->_lock\00", [32 x i8] zeroinitializer }, align 32
@ov13858_init_controls.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ov13858->mutex\00", [16 x i8] zeroinitializer }, align 32
@ov13858_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov13858_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov13858_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], [44 x i8] zeroinitializer }, align 32
@ov13858_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 1671, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s control init failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov13858_init_controls\00", [42 x i8] zeroinitializer }, align 32
@ov13858_init_controls._entry_ptr = internal global ptr @ov13858_init_controls._entry, section ".printk_index", align 4
@ov13858_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 1265, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ctrl(id:0x%x,val:0x%x) is not handled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov13858_set_ctrl\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov13858_set_ctrl._entry_ptr = internal global ptr @ov13858_set_ctrl._entry, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 1\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 2\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 3\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 4\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963793, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"ov13858_i2c_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1806, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1808, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"ov13858_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1793, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"ov13858_id_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1786, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1708, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"ov13858_subdev_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1578, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1722, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 983, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"ov13858_internal_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1589, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant [26 x i8] c"ov13858_subdev_entity_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1585, i32 45 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1744, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1767, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"ov13858_core_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1557, i32 42 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"ov13858_video_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1563, i32 43 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"ov13858_sensor_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1574, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"ov13858_pad_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1567, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1424, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"link_freq_configs\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 965, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1434, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1442, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [24 x i8] c"mipi_data_rate_1080mbps\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 122, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant [23 x i8] c"mipi_data_rate_540mbps\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 146, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1131, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 998, i32 6 }
@___asan_gen_.148 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 958, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1549, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"mode_4224x3136_regs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 166, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"mode_2112x1568_regs\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 357, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c"mode_2112x1188_regs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 548, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"mode_1056x784_regs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 739, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1609, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1613, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"ov13858_ctrl_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1274, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant [26 x i8] c"ov13858_test_pattern_menu\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 930, i32 27 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1670, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1263, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 931, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 932, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 933, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 934, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [31 x i8] c"../drivers/media/i2c/ov13858.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 935, i32 2 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_ov13858_i2c_driver_exit, ptr @__initcall__kmod_ov13858__294_1817_ov13858_i2c_driver_init6, ptr @ov13858_i2c_driver_exit, ptr @ov13858_identify_module._entry, ptr @ov13858_identify_module._entry_ptr, ptr @ov13858_init_controls._entry, ptr @ov13858_init_controls._entry_ptr, ptr @ov13858_probe._entry, ptr @ov13858_probe._entry.10, ptr @ov13858_probe._entry.7, ptr @ov13858_probe._entry_ptr, ptr @ov13858_probe._entry_ptr.11, ptr @ov13858_probe._entry_ptr.9, ptr @ov13858_set_ctrl._entry, ptr @ov13858_set_ctrl._entry_ptr, ptr @ov13858_start_streaming._entry, ptr @ov13858_start_streaming._entry.14, ptr @ov13858_start_streaming._entry.17, ptr @ov13858_start_streaming._entry_ptr, ptr @ov13858_start_streaming._entry_ptr.16, ptr @ov13858_start_streaming._entry_ptr.19, ptr @ov13858_write_regs._entry, ptr @ov13858_write_regs._entry_ptr, ptr @ov13858_i2c_driver, ptr @.str, ptr @ov13858_pm_ops, ptr @ov13858_id_table, ptr @.str.1, ptr @ov13858_subdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @supported_modes, ptr @ov13858_internal_ops, ptr @ov13858_subdev_entity_ops, ptr @.str.8, ptr @ov13858_core_ops, ptr @ov13858_video_ops, ptr @ov13858_sensor_ops, ptr @ov13858_pad_ops, ptr @.str.12, ptr @.str.13, ptr @link_freq_configs, ptr @.str.15, ptr @.str.18, ptr @mipi_data_rate_1080mbps, ptr @mipi_data_rate_540mbps, ptr @ov13858_write_regs._rs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @link_freq_menu_items, ptr @.str.23, ptr @.str.24, ptr @mode_4224x3136_regs, ptr @mode_2112x1568_regs, ptr @mode_2112x1188_regs, ptr @mode_1056x784_regs, ptr @ov13858_init_controls._key, ptr @.str.25, ptr @ov13858_init_controls.__key, ptr @.str.26, ptr @ov13858_ctrl_ops, ptr @ov13858_test_pattern_menu, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_sensor_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_configs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_start_streaming._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_start_streaming._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_1080mbps to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_540mbps to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_write_regs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_4224x3136_regs to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2112x1568_regs to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2112x1188_regs to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1056x784_regs to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_init_controls.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13858_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13858_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov13858_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov13858_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov13858_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13858_probe(ptr noundef %client, ptr nocapture noundef readnone %devid) #2 align 64 {
entry:
  %props.i = alloca %struct.v4l2_fwnode_device_properties, align 4
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i = alloca i32, align 4
  %reg_addr_be.i.i = alloca i16, align 2
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %val, i32 noundef 1) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %2)
  %cmp.not = icmp eq i32 %2, 19200000
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i80 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 532, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i80, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i80, ptr noundef %client, ptr noundef nonnull @ov13858_subdev_ops) #8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i80, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %5 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #8
  %7 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  %8 = ptrtoint ptr %reg_addr_be.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 12298, ptr %reg_addr_be.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i.i, align 2
  %11 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i, align 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %5, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg_addr_be.i.i, ptr %buf.i.i, align 4
  %15 = load i16, ptr %addr.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3, ptr %len12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i8, ptr %data_be.i.i, i32 1
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx13.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i, align 8
  %call16.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i)
  %cmp17.not.i.i = icmp eq i32 %call16.i.i, 2
  br i1 %cmp17.not.i.i, label %if.end.i, label %ov13858_read_reg.exit.i

ov13858_read_reg.exit.i:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  br label %do.end

if.end.i:                                         ; preds = %if.end4
  %22 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 55381, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 55381
  br i1 %cmp.not.i, label %if.end9, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 55381, i32 noundef %23) #11
  br label %do.end

do.end:                                           ; preds = %do.end.i, %ov13858_read_reg.exit.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef -5) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  %cur_mode = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 8
  %24 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props.i) #8
  %27 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %props.i, align 4, !annotation !138
  %28 = getelementptr inbounds %struct.v4l2_fwnode_device_properties, ptr %props.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %28, align 4, !annotation !138
  %ctrl_handler.i = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 2
  %call1.i = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 10, ptr noundef nonnull @ov13858_init_controls._key, ptr noundef nonnull @.str.25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end9.ov13858_init_controls.exit.thread_crit_edge

if.end9.ov13858_init_controls.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov13858_init_controls.exit.thread

do.body.i:                                        ; preds = %if.end9
  %mutex.i = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 9
  call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @ov13858_init_controls.__key) #8
  %lock.i = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mutex.i, ptr %lock.i, align 4
  %call3.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13858_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #8
  %link_freq.i = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 3
  %31 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call3.i, ptr %link_freq.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %do.body.i.if.end8.i_crit_edge, label %if.then6.i

do.body.i.if.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call3.i, i32 0, i32 20
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %33, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %do.body.i.if.end8.i_crit_edge
  %34 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 2160000000, i64 3689348814741910323) #12, !srcloc !139
  %35 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 2160000000, i64 %34) #12, !srcloc !140
  %36 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 1080000000, i64 3689348814741910323) #12, !srcloc !139
  %37 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 1080000000, i64 %36) #12, !srcloc !140
  %call11.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13858_ctrl_ops, i32 noundef 10422530, i64 noundef %37, i64 noundef %35, i64 noundef 1, i64 noundef %35) #8
  %pixel_rate.i = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 4
  %38 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call11.i, ptr %pixel_rate.i, align 4
  %39 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur_mode, align 4
  %vts_def.i = getelementptr inbounds %struct.ov13858_mode, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vts_def.i, align 4
  %height.i = getelementptr inbounds %struct.ov13858_mode, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height.i, align 4
  %sub.i = sub i32 %42, %44
  %conv.i = zext i32 %sub.i to i64
  %vts_min.i = getelementptr inbounds %struct.ov13858_mode, ptr %40, i32 0, i32 3
  %45 = ptrtoint ptr %vts_min.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vts_min.i, align 4
  %sub13.i = sub i32 %46, %44
  %conv14.i = zext i32 %sub13.i to i64
  %sub16.i = sub i32 32767, %44
  %conv17.i = zext i32 %sub16.i to i64
  %call18.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13858_ctrl_ops, i32 noundef 10356993, i64 noundef %conv14.i, i64 noundef %conv17.i, i64 noundef 1, i64 noundef %conv.i) #8
  %vblank.i = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 5
  %47 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call18.i, ptr %vblank.i, align 4
  %link_freq_index.i = getelementptr inbounds %struct.ov13858_mode, ptr %40, i32 0, i32 4
  %48 = ptrtoint ptr %link_freq_index.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_freq_index.i, align 4
  %arrayidx.i = getelementptr [2 x %struct.ov13858_link_freq_config], ptr @link_freq_configs, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %52 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %40, align 4
  %sub19.i = sub i32 %51, %53
  %conv20.i = zext i32 %sub19.i to i64
  %call21.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13858_ctrl_ops, i32 noundef 10356994, i64 noundef %conv20.i, i64 noundef %conv20.i, i64 noundef 1, i64 noundef %conv20.i) #8
  %hblank22.i = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 6
  %54 = ptrtoint ptr %hblank22.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call21.i, ptr %hblank22.i, align 4
  %tobool24.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool24.not.i, label %if.end8.i.if.end29.i_crit_edge, label %if.then25.i

if.end8.i.if.end29.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags27.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call21.i, i32 0, i32 20
  %55 = ptrtoint ptr %flags27.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags27.i, align 4
  %or28.i = or i32 %56, 4
  store i32 %or28.i, ptr %flags27.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end8.i.if.end29.i_crit_edge
  %57 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vts_def.i, align 4
  %sub31.i = add i32 %58, -8
  %conv32.i = zext i32 %sub31.i to i64
  %call33.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13858_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv32.i, i64 noundef 1, i64 noundef 1600) #8
  %exposure.i = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 7
  %59 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call33.i, ptr %exposure.i, align 4
  %call34.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13858_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 8191, i64 noundef 1, i64 noundef 128) #8
  %call35.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13858_ctrl_ops, i32 noundef 10422533, i64 noundef 0, i64 noundef 16384, i64 noundef 1, i64 noundef 1024) #8
  %call36.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13858_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov13858_test_pattern_menu) #8
  %error.i = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 2, i32 9
  %60 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool37.not.i = icmp eq i32 %61, 0
  %dev44.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  br i1 %tobool37.not.i, label %if.end43.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %61) #11
  br label %error55.i

if.end43.i:                                       ; preds = %if.end29.i
  %call45.i = call i32 @v4l2_fwnode_device_parse(ptr noundef %dev44.i, ptr noundef nonnull %props.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end43.i.error55.i_crit_edge

if.end43.i.error55.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error55.i

if.end48.i:                                       ; preds = %if.end43.i
  %call49.i = call i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13858_ctrl_ops, ptr noundef nonnull %props.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end13, label %if.end48.i.error55.i_crit_edge

if.end48.i.error55.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error55.i

error55.i:                                        ; preds = %if.end48.i.error55.i_crit_edge, %if.end43.i.error55.i_crit_edge, %if.then38.i
  %ret.0.i = phi i32 [ %61, %if.then38.i ], [ %call45.i, %if.end43.i.error55.i_crit_edge ], [ %call49.i, %if.end48.i.error55.i_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #8
  call void @mutex_destroy(ptr noundef %mutex.i) #8
  br label %ov13858_init_controls.exit.thread

ov13858_init_controls.exit.thread:                ; preds = %error55.i, %if.end9.ov13858_init_controls.exit.thread_crit_edge
  %retval.0.i82.ph = phi i32 [ %call1.i, %if.end9.ov13858_init_controls.exit.thread_crit_edge ], [ %ret.0.i, %error55.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end48.i
  %ctrl_handler54.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i80, i32 0, i32 8
  %62 = ptrtoint ptr %ctrl_handler54.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %ctrl_handler.i, ptr %ctrl_handler54.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #8
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i80, i32 0, i32 7
  %63 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ov13858_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i80, i32 0, i32 4
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %or = or i32 %65, 12
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i80, i32 0, i32 11
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ov13858_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i80, i32 0, i32 3
  %67 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 1
  %flags19 = getelementptr inbounds %struct.ov13858, ptr %call.i80, i32 0, i32 1, i32 4
  %68 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %flags19, align 4
  %call23 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i80, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %call23) #11
  br label %error_handler_free

if.end30:                                         ; preds = %if.end13
  %call32 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.error_handler_free_crit_edge, label %if.end35

if.end30.error_handler_free_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_handler_free

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call.i83 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i84 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #8
  br label %cleanup

error_handler_free:                               ; preds = %if.end30.error_handler_free_crit_edge, %do.end28
  %ret.0 = phi i32 [ %call23, %do.end28 ], [ %call32, %if.end30.error_handler_free_crit_edge ]
  %69 = ptrtoint ptr %ctrl_handler54.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctrl_handler54.i, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %70) #8
  call void @mutex_destroy(ptr noundef %mutex.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %error_handler_free, %if.end35, %ov13858_init_controls.exit.thread, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.0, %error_handler_free ], [ 0, %if.end35 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i82.ph, %ov13858_init_controls.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13858_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler.i, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #8
  %mutex.i = getelementptr inbounds %struct.ov13858, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %mutex.i) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
define internal i32 @ov13858_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mutex = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !141
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
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
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then4
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_unlock_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_unlock_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !144
  br label %err_unlock

if.end9:                                          ; preds = %if.then4
  %call10 = tail call fastcc i32 @ov13858_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %err_rpm_put

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i41 = call i32 @__pm_runtime_idle(ptr noundef %dev15, i32 noundef 5) #8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end9.if.end17_crit_edge
  %frombool = zext i1 %tobool3 to i8
  %13 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

err_rpm_put:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i42 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %err_unlock

err_unlock:                                       ; preds = %err_rpm_put, %do.end11.i.i.i.i.i, %if.then.i.err_unlock_crit_edge
  %ret.1 = phi i32 [ %call10, %err_rpm_put ], [ %call.i, %if.then.i.err_unlock_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.end17, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %err_unlock ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov13858_start_streaming(ptr nocapture noundef readonly %ov13858) unnamed_addr #2 align 64 {
entry:
  %buf.i72 = alloca [6 x i8], align 1
  %buf.i.i.i48 = alloca [6 x i8], align 1
  %buf.i.i.i = alloca [6 x i8], align 1
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov13858, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %2 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 33554431, ptr %3, align 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %buf.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %2, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp12.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br i1 %cmp12.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_mode = getelementptr inbounds %struct.ov13858, ptr %ov13858, i32 0, i32 8
  %7 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_mode, align 4
  %link_freq_index2 = getelementptr inbounds %struct.ov13858_mode, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %link_freq_index2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_freq_index2, align 4
  %reg_list3 = getelementptr [2 x %struct.ov13858_link_freq_config], ptr @link_freq_configs, i32 0, i32 %10, i32 1
  %regs.i = getelementptr [2 x %struct.ov13858_link_freq_config], ptr @link_freq_configs, i32 0, i32 %10, i32 1, i32 1
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %13 = ptrtoint ptr %reg_list3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_list3, align 4
  %15 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp24.not.i.i, label %if.end.if.end11_crit_edge, label %for.body.lr.ph.i.i

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.body.lr.ph.i.i:                               ; preds = %if.end
  %17 = getelementptr inbounds [6 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 2
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.025.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %14
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end11_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.if.end11_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ov13858_reg, ptr %12, i32 %i.025.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i.i, align 2
  %val.i.i = getelementptr %struct.ov13858_reg, ptr %12, i32 %i.025.i.i, i32 1
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i.i, align 2
  %23 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #8
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 -1, ptr %18, align 1
  %26 = lshr i16 %20, 8
  %conv1.i.i.i = trunc i16 %26 to i8
  %27 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv1.i.i.i, ptr %buf.i.i.i, align 1
  %conv3.i.i.i = trunc i16 %20 to i8
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv3.i.i.i, ptr %17, align 1
  store i8 %22, ptr %18, align 1
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %buf.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i)
  %cmp12.not.i.i.i = icmp eq i32 %call.i.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #8
  br i1 %cmp12.not.i.i.i, label %for.cond.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  %call3.i.i = call i32 @___ratelimit(ptr noundef nonnull @ov13858_write_regs._rs, ptr noundef nonnull @__func__.ov13858_write_regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.do.end9_crit_edge, label %do.end.i.i

do.body.i.i.do.end9_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i.i, align 2
  %conv9.i.i = zext i16 %30 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21, i32 noundef %conv9.i.i, i32 noundef -5) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end.i.i, %do.body.i.i.do.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end11:                                         ; preds = %for.cond.i.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %31 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_mode, align 4
  %reg_list13 = getelementptr inbounds %struct.ov13858_mode, ptr %32, i32 0, i32 5
  %regs.i49 = getelementptr inbounds %struct.ov13858_mode, ptr %32, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %regs.i49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i49, align 4
  %35 = ptrtoint ptr %reg_list13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_list13, align 4
  %37 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp24.not.i.i51 = icmp eq i32 %36, 0
  br i1 %cmp24.not.i.i51, label %if.end11.if.end21_crit_edge, label %for.body.lr.ph.i.i52

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.body.lr.ph.i.i52:                             ; preds = %if.end11
  %39 = getelementptr inbounds [6 x i8], ptr %buf.i.i.i48, i32 0, i32 1
  %40 = getelementptr inbounds i8, ptr %buf.i.i.i48, i32 2
  br label %for.body.i.i63

for.cond.i.i55:                                   ; preds = %for.body.i.i63
  %inc.i.i53 = add nuw i32 %i.025.i.i56, 1
  %exitcond.not.i.i54 = icmp eq i32 %inc.i.i53, %36
  br i1 %exitcond.not.i.i54, label %for.cond.i.i55.if.end21_crit_edge, label %for.cond.i.i55.for.body.i.i63_crit_edge

for.cond.i.i55.for.body.i.i63_crit_edge:          ; preds = %for.cond.i.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i63

for.cond.i.i55.if.end21_crit_edge:                ; preds = %for.cond.i.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.body.i.i63:                                   ; preds = %for.cond.i.i55.for.body.i.i63_crit_edge, %for.body.lr.ph.i.i52
  %i.025.i.i56 = phi i32 [ 0, %for.body.lr.ph.i.i52 ], [ %inc.i.i53, %for.cond.i.i55.for.body.i.i63_crit_edge ]
  %arrayidx.i.i57 = getelementptr %struct.ov13858_reg, ptr %34, i32 %i.025.i.i56
  %41 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.i57, align 2
  %val.i.i58 = getelementptr %struct.ov13858_reg, ptr %34, i32 %i.025.i.i56, i32 1
  %43 = ptrtoint ptr %val.i.i58 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val.i.i58, align 2
  %45 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i48) #8
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 -1, ptr %40, align 1
  %48 = lshr i16 %42, 8
  %conv1.i.i.i59 = trunc i16 %48 to i8
  %49 = ptrtoint ptr %buf.i.i.i48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv1.i.i.i59, ptr %buf.i.i.i48, align 1
  %conv3.i.i.i60 = trunc i16 %42 to i8
  %50 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv3.i.i.i60, ptr %39, align 1
  store i8 %44, ptr %40, align 1
  %call.i.i.i.i61 = call i32 @i2c_transfer_buffer_flags(ptr noundef %46, ptr noundef nonnull %buf.i.i.i48, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i61)
  %cmp12.not.i.i.i62 = icmp eq i32 %call.i.i.i.i61, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i48) #8
  br i1 %cmp12.not.i.i.i62, label %for.cond.i.i55, label %do.body.i.i66

do.body.i.i66:                                    ; preds = %for.body.i.i63
  %call3.i.i64 = call i32 @___ratelimit(ptr noundef nonnull @ov13858_write_regs._rs, ptr noundef nonnull @__func__.ov13858_write_regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i64)
  %tobool4.not.i.i65 = icmp eq i32 %call3.i.i64, 0
  br i1 %tobool4.not.i.i65, label %do.body.i.i66.do.end19_crit_edge, label %do.end.i.i69

do.body.i.i66.do.end19_crit_edge:                 ; preds = %do.body.i.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end.i.i69:                                     ; preds = %do.body.i.i66
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i67 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i.i57, align 2
  %conv9.i.i68 = zext i16 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i67, ptr noundef nonnull @.str.21, i32 noundef %conv9.i.i68, i32 noundef -5) #11
  br label %do.end19

do.end19:                                         ; preds = %do.end.i.i69, %do.body.i.i66.do.end19_crit_edge
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end21:                                         ; preds = %for.cond.i.i55.if.end21_crit_edge, %if.end11.if.end21_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %ov13858, i32 0, i32 8
  %53 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl_handler, align 4
  %call23 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i72) #8
  %57 = getelementptr inbounds [6 x i8], ptr %buf.i72, i32 0, i32 1
  %58 = getelementptr inbounds i8, ptr %buf.i72, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 33554431, ptr %58, align 1
  %60 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %buf.i72, align 1
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %57, align 1
  %call.i.i76 = call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %buf.i72, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i76)
  %cmp12.not.i77 = icmp eq i32 %call.i.i76, 3
  %..i78 = select i1 %cmp12.not.i77, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i72) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21.cleanup_crit_edge, %do.end19, %do.end9, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end9 ], [ -5, %do.end19 ], [ %..i78, %if.end26 ], [ %call23, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
define internal i32 @ov13858_get_skip_frames(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %frames) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %frames, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov13858_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
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
define internal i32 @ov13858_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
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
  %arrayidx = getelementptr [4 x %struct.ov13858_mode], ptr @supported_modes, i32 0, i32 %1
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
  %height = getelementptr [4 x %struct.ov13858_mode], ptr @supported_modes, i32 0, i32 %1, i32 1
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
define internal i32 @ov13858_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !145

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format.i, ptr %arrayidx.i.i, i32 48)
  br label %ov13858_do_get_pad_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode.i = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 8
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
  %height.i.i = getelementptr inbounds %struct.ov13858_mode, ptr %10, i32 0, i32 1
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
  br label %ov13858_do_get_pad_format.exit

ov13858_do_get_pad_format.exit:                   ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13858_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12298, i32 %1)
  %cmp.not = icmp eq i32 %1, 12298
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12298, ptr %code, align 4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %call = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 4, i32 noundef 28, i32 noundef 0, i32 noundef 4, i32 noundef %4, i32 noundef %6) #8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov13858_mode, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height, align 4
  %13 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12298, ptr %code, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %field.i, align 4
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6 = icmp eq i32 %16, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %17 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %18, %conv.i
  br i1 %cmp.not.i, label %if.then7.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !145

if.then7.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then7.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %18, %if.then7.v4l2_subdev_get_try_format.exit_crit_edge ]
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %spec.select.i
  %23 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %if.end38

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 8
  %24 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %cur_mode, align 4
  %link_freq10 = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 3
  %25 = ptrtoint ptr %link_freq10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link_freq10, align 4
  %link_freq_index = getelementptr inbounds %struct.ov13858_mode, ptr %call, i32 0, i32 4
  %27 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_freq_index, align 4
  %call11 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %26, i32 noundef %28) #8
  %29 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_freq_index, align 4
  %arrayidx = getelementptr [2 x i64], ptr @link_freq_menu_items, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx, align 8
  %33 = shl i64 %32, 2
  %div80260.i = and i64 %33, 9223372036854775804
  %34 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div80260.i, i64 3689348814741910323) #12, !srcloc !139
  %35 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div80260.i, i64 %34) #12, !srcloc !140
  %pixel_rate14 = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 4
  %36 = ptrtoint ptr %pixel_rate14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pixel_rate14, align 4
  %call15 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %37, i64 noundef %35) #8
  %38 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur_mode, align 4
  %vts_def = getelementptr inbounds %struct.ov13858_mode, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vts_def, align 4
  %height18 = getelementptr inbounds %struct.ov13858_mode, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height18, align 4
  %sub = sub i32 %41, %43
  %vts_min = getelementptr inbounds %struct.ov13858_mode, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vts_min, align 4
  %sub22 = sub i32 %45, %43
  %vblank = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 5
  %46 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vblank, align 4
  %conv = sext i32 %sub22 to i64
  %sub25 = sub i32 32767, %43
  %conv26 = zext i32 %sub25 to i64
  %conv27 = sext i32 %sub to i64
  %call28 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %47, i64 noundef %conv, i64 noundef %conv26, i64 noundef 1, i64 noundef %conv27) #8
  %48 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vblank, align 4
  %call30 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %49, i32 noundef %sub) #8
  %50 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %link_freq_index, align 4
  %arrayidx32 = getelementptr [2 x %struct.ov13858_link_freq_config], ptr @link_freq_configs, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx32, align 4
  %54 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cur_mode, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %sub35 = sub i32 %53, %57
  %conv36 = zext i32 %sub35 to i64
  %hblank = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 6
  %58 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hblank, align 4
  %call37 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %59, i64 noundef %conv36, i64 noundef %conv36, i64 noundef 1, i64 noundef %conv36) #8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %v4l2_subdev_get_try_format.exit
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
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13858_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i11.i = alloca [6 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i = alloca i32, align 4
  %reg_addr_be.i.i = alloca i16, align 2
  %buf.i63 = alloca [6 x i8], align 1
  %buf.i56 = alloca [6 x i8], align 1
  %buf.i21.i = alloca [6 x i8], align 1
  %buf.i14.i = alloca [6 x i8], align 1
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
  %height = getelementptr inbounds %struct.ov13858_mode, ptr %7, i32 0, i32 1
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
  %val.i.2.extract.trunc = trunc i32 %23 to i16
  store i16 %val.i.2.extract.trunc, ptr %27, align 1
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
  store i8 81, ptr %buf.i.i, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %35, align 1
  %val.i.2.extract.trunc.i = trunc i32 %32 to i16
  store i16 %val.i.2.extract.trunc.i, ptr %36, align 1
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
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i14.i) #8
  %42 = getelementptr inbounds [6 x i8], ptr %buf.i14.i, i32 0, i32 1
  %43 = getelementptr inbounds i8, ptr %buf.i14.i, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 -1, ptr %43, align 1
  %45 = ptrtoint ptr %buf.i14.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 81, ptr %buf.i14.i, align 1
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %42, align 1
  store i16 %val.i.2.extract.trunc.i, ptr %43, align 1
  %call.i.i18.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %buf.i14.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i18.i)
  %cmp12.not.i19.i = icmp eq i32 %call.i.i18.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i14.i) #8
  br i1 %cmp12.not.i19.i, label %if.end4.i, label %if.end.i.sw.epilog27_crit_edge

if.end.i.sw.epilog27_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog27

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i21.i) #8
  %49 = getelementptr inbounds [6 x i8], ptr %buf.i21.i, i32 0, i32 1
  %50 = getelementptr inbounds i8, ptr %buf.i21.i, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 -1, ptr %50, align 1
  %52 = ptrtoint ptr %buf.i21.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 81, ptr %buf.i21.i, align 1
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 4, ptr %49, align 1
  store i16 %val.i.2.extract.trunc.i, ptr %50, align 1
  %call.i.i25.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buf.i21.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i25.i)
  %cmp12.not.i26.i = icmp eq i32 %call.i.i25.i, 4
  %..i27.i = select i1 %cmp12.not.i26.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i21.i) #8
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
  %val.i57.1.extract.trunc = trunc i32 %shl to i24
  store i24 %val.i57.1.extract.trunc, ptr %59, align 1
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
  %height17 = getelementptr inbounds %struct.ov13858_mode, ptr %64, i32 0, i32 1
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
  %val.i64.2.extract.trunc = trunc i32 %add19 to i16
  store i16 %val.i64.2.extract.trunc, ptr %72, align 1
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %80 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %81 = call ptr @memset(ptr %80, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #8
  %82 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  %83 = ptrtoint ptr %reg_addr_be.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 17667, ptr %reg_addr_be.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 1
  %84 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %addr.i.i, align 2
  %86 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i.i, align 2
  %88 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 2, ptr %80, align 4
  %buf.i.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i.i71 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %reg_addr_be.i.i, ptr %buf.i.i71, align 4
  %90 = load i16, ptr %addr.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %93 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %len12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i8, ptr %data_be.i.i, i32 3
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %94 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %arrayidx13.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 3
  %95 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter.i.i, align 8
  %call16.i.i = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i)
  %cmp17.not.i.i = icmp eq i32 %call16.i.i, 2
  br i1 %cmp17.not.i.i, label %if.end.i72, label %ov13858_read_reg.exit.i

ov13858_read_reg.exit.i:                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  br label %sw.epilog27

if.end.i72:                                       ; preds = %sw.bb21
  %97 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool1.not.i = icmp eq i32 %77, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %98, 124
  %sub.i = add i32 %77, -1
  %or.i = or i32 %sub.i, %and.i
  %or3.i = or i32 %or.i, 128
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #10
  %and4.i = and i32 %98, -129
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then2.i
  %storemerge.i = phi i32 [ %and4.i, %if.else.i ], [ %or3.i, %if.then2.i ]
  %99 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i11.i) #8
  %101 = getelementptr inbounds [6 x i8], ptr %buf.i11.i, i32 0, i32 1
  %102 = getelementptr inbounds i8, ptr %buf.i11.i, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 -1, ptr %102, align 1
  %104 = ptrtoint ptr %buf.i11.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 69, ptr %buf.i11.i, align 1
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 3, ptr %101, align 1
  %val.i.3.extract.trunc.i = trunc i32 %storemerge.i to i8
  store i8 %val.i.3.extract.trunc.i, ptr %102, align 1
  %call.i.i.i73 = call i32 @i2c_transfer_buffer_flags(ptr noundef %100, ptr noundef nonnull %buf.i11.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i73)
  %cmp12.not.i.i74 = icmp eq i32 %call.i.i.i73, 3
  %..i.i = select i1 %cmp12.not.i.i74, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i11.i) #8
  br label %sw.epilog27

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %106 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %20, i32 noundef %107) #11
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %do.end, %if.end5.i, %ov13858_read_reg.exit.i, %sw.bb15, %sw.bb12, %if.end4.i, %if.end.i.sw.epilog27_crit_edge, %sw.bb9.sw.epilog27_crit_edge, %sw.bb6
  %ret.0 = phi i32 [ 0, %do.end ], [ %..i69, %sw.bb15 ], [ %..i62, %sw.bb12 ], [ %..i, %sw.bb6 ], [ %..i27.i, %if.end4.i ], [ -5, %sw.bb9.sw.epilog27_crit_edge ], [ -5, %if.end.i.sw.epilog27_crit_edge ], [ %..i.i, %if.end5.i ], [ -5, %ov13858_read_reg.exit.i ]
  %call.i76 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
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
define internal i32 @ov13858_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !146

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %cur_mode = getelementptr inbounds %struct.ov13858, ptr %sd, i32 0, i32 8
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
  %height = getelementptr inbounds %struct.ov13858_mode, ptr %11, i32 0, i32 1
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13858_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.ov13858, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
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
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13858_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.ov13858, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @ov13858_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %error

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
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
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  %11 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %error ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
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
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90, !92, !93, !95, !96, !98, !99, !100, !101, !103, !105, !106, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_ov13858__294_1817_ov13858_i2c_driver_init6, !1, !"__initcall__kmod_ov13858__294_1817_ov13858_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov13858.c", i32 1817, i32 1}
!2 = !{ptr @__exitcall_ov13858_i2c_driver_exit, !1, !"__exitcall_ov13858_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov13858.c", i32 1819, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov13858.c", i32 1820, i32 1}
!7 = !{ptr @__UNIQUE_ID_author297, !8, !"__UNIQUE_ID_author297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov13858.c", i32 1821, i32 1}
!9 = !{ptr @__UNIQUE_ID_description298, !10, !"__UNIQUE_ID_description298", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/ov13858.c", i32 1822, i32 1}
!11 = !{ptr @__UNIQUE_ID_file299, !12, !"__UNIQUE_ID_file299", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/ov13858.c", i32 1823, i32 1}
!13 = !{ptr @__UNIQUE_ID_license300, !12, !"__UNIQUE_ID_license300", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov13858.c", i32 1808, i32 11}
!16 = !{ptr @ov13858_i2c_driver, !17, !"ov13858_i2c_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov13858.c", i32 1806, i32 26}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ov13858.c", i32 1708, i32 41}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ov13858.c", i32 1722, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ov13858_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ov13858_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/ov13858.c", i32 1744, i32 3}
!30 = !{ptr @ov13858_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ov13858_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ov13858_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ov13858.c", i32 1767, i32 2}
!34 = !{ptr @ov13858_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ov13858_subdev_ops, !36, !"ov13858_subdev_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ov13858.c", i32 1578, i32 37}
!37 = !{ptr @ov13858_core_ops, !38, !"ov13858_core_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ov13858.c", i32 1557, i32 42}
!39 = !{ptr @ov13858_video_ops, !40, !"ov13858_video_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ov13858.c", i32 1563, i32 43}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov13858.c", i32 1424, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ov13858_start_streaming._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ov13858_start_streaming._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov13858.c", i32 1434, i32 3}
!48 = !{ptr @ov13858_start_streaming._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ov13858_start_streaming._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov13858.c", i32 1442, i32 3}
!52 = !{ptr @ov13858_start_streaming._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ov13858_start_streaming._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @link_freq_configs, !55, !"link_freq_configs", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov13858.c", i32 965, i32 4}
!56 = !{ptr @mipi_data_rate_1080mbps, !57, !"mipi_data_rate_1080mbps", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov13858.c", i32 122, i32 33}
!58 = !{ptr @mipi_data_rate_540mbps, !59, !"mipi_data_rate_540mbps", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov13858.c", i32 146, i32 33}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov13858.c", i32 1131, i32 4}
!62 = !{ptr @ov13858_write_regs._rs, !61, !"_rs", i1 false, i1 false}
!63 = !{ptr @__func__.ov13858_write_regs, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ov13858_write_regs._entry, !61, !"_entry", i1 false, i1 false}
!66 = !{ptr @ov13858_write_regs._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @ov13858_sensor_ops, !68, !"ov13858_sensor_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/ov13858.c", i32 1574, i32 44}
!69 = !{ptr @ov13858_pad_ops, !70, !"ov13858_pad_ops", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/ov13858.c", i32 1567, i32 41}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!73 = !{ptr @link_freq_menu_items, !74, !"link_freq_menu_items", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/ov13858.c", i32 958, i32 18}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/ov13858.c", i32 1549, i32 3}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ov13858_identify_module._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ov13858_identify_module._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @supported_modes, !81, !"supported_modes", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov13858.c", i32 983, i32 34}
!82 = !{ptr @mode_4224x3136_regs, !83, !"mode_4224x3136_regs", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov13858.c", i32 166, i32 33}
!84 = !{ptr @mode_2112x1568_regs, !85, !"mode_2112x1568_regs", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov13858.c", i32 357, i32 33}
!86 = !{ptr @mode_2112x1188_regs, !87, !"mode_2112x1188_regs", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov13858.c", i32 548, i32 33}
!88 = !{ptr @mode_1056x784_regs, !89, !"mode_1056x784_regs", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov13858.c", i32 739, i32 33}
!90 = !{ptr @ov13858_init_controls._key, !91, !"_key", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov13858.c", i32 1609, i32 8}
!92 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ov13858_init_controls.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov13858.c", i32 1613, i32 2}
!95 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ov13858.c", i32 1670, i32 3}
!98 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ov13858_init_controls._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ov13858_init_controls._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @ov13858_ctrl_ops, !102, !"ov13858_ctrl_ops", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/ov13858.c", i32 1274, i32 35}
!103 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/ov13858.c", i32 1263, i32 3}
!105 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ov13858_set_ctrl._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @ov13858_set_ctrl._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov13858.c", i32 931, i32 2}
!111 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov13858.c", i32 932, i32 2}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov13858.c", i32 933, i32 2}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ov13858.c", i32 934, i32 2}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov13858.c", i32 935, i32 2}
!119 = !{ptr @ov13858_test_pattern_menu, !120, !"ov13858_test_pattern_menu", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ov13858.c", i32 930, i32 27}
!121 = !{ptr @ov13858_internal_ops, !122, !"ov13858_internal_ops", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ov13858.c", i32 1589, i32 46}
!123 = !{ptr @ov13858_subdev_entity_ops, !124, !"ov13858_subdev_entity_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/ov13858.c", i32 1585, i32 45}
!125 = !{ptr @ov13858_pm_ops, !126, !"ov13858_pm_ops", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/ov13858.c", i32 1793, i32 32}
!127 = !{ptr @ov13858_id_table, !128, !"ov13858_id_table", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/ov13858.c", i32 1786, i32 35}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{i64 1525160, i64 1525187}
!140 = !{i64 1525500, i64 1525527, i64 1525561, i64 1525582}
!141 = !{i8 0, i8 2}
!142 = !{i64 2148340761}
!143 = !{i64 825584, i64 825609, i64 825631, i64 825647, i64 825659, i64 825679, i64 825703, i64 825719, i64 825731}
!144 = !{i64 2148340949}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{!"branch_weights", i32 1, i32 2000}
