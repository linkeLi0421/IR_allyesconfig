; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov9640.c_pt.bc'
source_filename = "../drivers/media/i2c/ov9640.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ov9640_reg = type { i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.ov9640_priv = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_ov9640__292_771_ov9640_i2c_driver_init6 = internal global ptr @ov9640_i2c_driver_init, section ".initcall6.init", align 4
@ov9640_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ov9640_probe, ptr @ov9640_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ov9640_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov9640_i2c_driver_exit = internal global ptr @ov9640_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [62 x i8] c"ov9640.description=OmniVision OV96xx CMOS Image Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [50 x i8] c"ov9640.author=Marek Vasut <marek.vasut@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [37 x i8] c"ov9640.file=drivers/media/i2c/ov9640\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"ov9640.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov9640\00", [25 x i8] zeroinitializer }, align 32
@ov9640_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov9640\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Camera power\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Camera reset\00", [19 x i8] zeroinitializer }, align 32
@ov9640_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov9640_core_ops, ptr null, ptr null, ptr @ov9640_video_ops, ptr null, ptr null, ptr null, ptr @ov9640_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov9640_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ov9640:709:(&priv->hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@ov9640_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov9640_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@ov9640_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov9640_get_register, ptr @ov9640_set_register, ptr @ov9640_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ov9640_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov9640_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov9640_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov9640_enum_mbus_code, ptr null, ptr null, ptr null, ptr @ov9640_set_fmt, ptr @ov9640_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov9640_get_mbus_config, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov9640_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 195, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed reading register 0x%02x!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov9640_reg_read\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov9640.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov9640_reg_read._entry_ptr = internal global ptr @ov9640_reg_read._entry, section ".printk_index", align 4
@ov9640_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 214, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed writing register 0x%02x!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov9640_reg_write\00", [47 x i8] zeroinitializer }, align 32
@ov9640_reg_write._entry_ptr = internal global ptr @ov9640_reg_write._entry, section ".printk_index", align 4
@ov9640_reg_write._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.7, i32 222, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed reading back register 0x%02x!\0A\00", [58 x i8] zeroinitializer }, align 32
@ov9640_reg_write._entry_ptr.14 = internal global ptr @ov9640_reg_write._entry.12, section ".printk_index", align 4
@ov9640_codes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8198, i32 4100, i32 4104], [20 x i8] zeroinitializer }, align 32
@ov9640_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 260, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"An error occurred while entering soft reset!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov9640_reset\00", [19 x i8] zeroinitializer }, align 32
@ov9640_reset._entry_ptr = internal global ptr @ov9640_reset._entry, section ".printk_index", align 4
@ov9640_regs_dflt = internal constant { [37 x %struct.ov9640_reg], [54 x i8] } { [37 x %struct.ov9640_reg] [%struct.ov9640_reg { i8 14, i8 -127 }, %struct.ov9640_reg { i8 15, i8 -53 }, %struct.ov9640_reg { i8 27, i8 1 }, %struct.ov9640_reg { i8 56, i8 -110 }, %struct.ov9640_reg { i8 58, i8 8 }, %struct.ov9640_reg { i8 65, i8 1 }, %struct.ov9640_reg { i8 108, i8 64 }, %struct.ov9640_reg { i8 109, i8 48 }, %struct.ov9640_reg { i8 110, i8 75 }, %struct.ov9640_reg { i8 111, i8 96 }, %struct.ov9640_reg { i8 112, i8 112 }, %struct.ov9640_reg { i8 113, i8 112 }, %struct.ov9640_reg { i8 114, i8 112 }, %struct.ov9640_reg { i8 115, i8 112 }, %struct.ov9640_reg { i8 116, i8 96 }, %struct.ov9640_reg { i8 117, i8 96 }, %struct.ov9640_reg { i8 118, i8 80 }, %struct.ov9640_reg { i8 119, i8 72 }, %struct.ov9640_reg { i8 120, i8 58 }, %struct.ov9640_reg { i8 121, i8 46 }, %struct.ov9640_reg { i8 122, i8 40 }, %struct.ov9640_reg { i8 123, i8 34 }, %struct.ov9640_reg { i8 124, i8 4 }, %struct.ov9640_reg { i8 125, i8 7 }, %struct.ov9640_reg { i8 126, i8 16 }, %struct.ov9640_reg { i8 127, i8 40 }, %struct.ov9640_reg { i8 -128, i8 54 }, %struct.ov9640_reg { i8 -127, i8 68 }, %struct.ov9640_reg { i8 -126, i8 82 }, %struct.ov9640_reg { i8 -125, i8 96 }, %struct.ov9640_reg { i8 -124, i8 108 }, %struct.ov9640_reg { i8 -123, i8 120 }, %struct.ov9640_reg { i8 -122, i8 -116 }, %struct.ov9640_reg { i8 -121, i8 -98 }, %struct.ov9640_reg { i8 -120, i8 -69 }, %struct.ov9640_reg { i8 -119, i8 -46 }, %struct.ov9640_reg { i8 -118, i8 -26 }], [54 x i8] zeroinitializer }, align 32
@ov9640_regs_qqcif = internal constant { [7 x %struct.ov9640_reg], [18 x i8] } { [7 x %struct.ov9640_reg] [%struct.ov9640_reg { i8 17, i8 -113 }, %struct.ov9640_reg { i8 4, i8 36 }, %struct.ov9640_reg { i8 13, i8 -64 }, %struct.ov9640_reg { i8 18, i8 8 }, %struct.ov9640_reg { i8 60, i8 64 }, %struct.ov9640_reg { i8 61, i8 -112 }, %struct.ov9640_reg { i8 64, i8 -64 }], [18 x i8] zeroinitializer }, align 32
@ov9640_regs_qqvga = internal constant { [7 x %struct.ov9640_reg], [18 x i8] } { [7 x %struct.ov9640_reg] [%struct.ov9640_reg { i8 17, i8 -121 }, %struct.ov9640_reg { i8 4, i8 36 }, %struct.ov9640_reg { i8 13, i8 -64 }, %struct.ov9640_reg { i8 18, i8 16 }, %struct.ov9640_reg { i8 60, i8 64 }, %struct.ov9640_reg { i8 61, i8 -112 }, %struct.ov9640_reg { i8 64, i8 -64 }], [18 x i8] zeroinitializer }, align 32
@ov9640_regs_qcif = internal constant { [6 x %struct.ov9640_reg], [20 x i8] } { [6 x %struct.ov9640_reg] [%struct.ov9640_reg { i8 17, i8 -121 }, %struct.ov9640_reg { i8 13, i8 -64 }, %struct.ov9640_reg { i8 18, i8 8 }, %struct.ov9640_reg { i8 60, i8 64 }, %struct.ov9640_reg { i8 61, i8 -112 }, %struct.ov9640_reg { i8 64, i8 -64 }], [20 x i8] zeroinitializer }, align 32
@ov9640_regs_qvga = internal constant { [6 x %struct.ov9640_reg], [20 x i8] } { [6 x %struct.ov9640_reg] [%struct.ov9640_reg { i8 17, i8 -125 }, %struct.ov9640_reg { i8 13, i8 -64 }, %struct.ov9640_reg { i8 18, i8 16 }, %struct.ov9640_reg { i8 60, i8 64 }, %struct.ov9640_reg { i8 61, i8 -112 }, %struct.ov9640_reg { i8 64, i8 -64 }], [20 x i8] zeroinitializer }, align 32
@ov9640_regs_cif = internal constant { [6 x %struct.ov9640_reg], [20 x i8] } { [6 x %struct.ov9640_reg] [%struct.ov9640_reg { i8 17, i8 -125 }, %struct.ov9640_reg { i8 12, i8 4 }, %struct.ov9640_reg { i8 18, i8 32 }, %struct.ov9640_reg { i8 60, i8 64 }, %struct.ov9640_reg { i8 61, i8 -112 }, %struct.ov9640_reg { i8 64, i8 -64 }], [20 x i8] zeroinitializer }, align 32
@ov9640_regs_vga = internal constant { [6 x %struct.ov9640_reg], [20 x i8] } { [6 x %struct.ov9640_reg] [%struct.ov9640_reg { i8 17, i8 -127 }, %struct.ov9640_reg { i8 12, i8 4 }, %struct.ov9640_reg { i8 18, i8 64 }, %struct.ov9640_reg { i8 60, i8 64 }, %struct.ov9640_reg { i8 61, i8 -112 }, %struct.ov9640_reg { i8 64, i8 -64 }], [20 x i8] zeroinitializer }, align 32
@ov9640_regs_sxga = internal constant { [6 x %struct.ov9640_reg], [20 x i8] } { [6 x %struct.ov9640_reg] [%struct.ov9640_reg { i8 17, i8 -127 }, %struct.ov9640_reg { i8 12, i8 4 }, %struct.ov9640_reg { i8 18, i8 0 }, %struct.ov9640_reg { i8 60, i8 64 }, %struct.ov9640_reg { i8 61, i8 -112 }, %struct.ov9640_reg { i8 64, i8 -64 }], [20 x i8] zeroinitializer }, align 32
@ov9640_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 435, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to select resolution!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ov9640_write_regs\00", [46 x i8] zeroinitializer }, align 32
@ov9640_write_regs._entry_ptr = internal global ptr @ov9640_write_regs._entry, section ".printk_index", align 4
@ov9640_reg_rmw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 237, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[Read]-Modify-Write of register %02x failed!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov9640_reg_rmw\00", [17 x i8] zeroinitializer }, align 32
@ov9640_reg_rmw._entry_ptr = internal global ptr @ov9640_reg_rmw._entry, section ".printk_index", align 4
@ov9640_reg_rmw._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.7, i32 247, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Read-Modify-[Write] of register %02x failed!\0A\00", [50 x i8] zeroinitializer }, align 32
@ov9640_reg_rmw._entry_ptr.23 = internal global ptr @ov9640_reg_rmw._entry.21, section ".printk_index", align 4
@ov9640_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 623, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Product ID error %x:%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov9640_video_probe\00", [45 x i8] zeroinitializer }, align 32
@ov9640_video_probe._entry_ptr = internal global ptr @ov9640_video_probe._entry, section ".printk_index", align 4
@ov9640_video_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.7, i32 629, ptr @.str.28, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s Product ID %0x:%0x Manufacturer ID %x:%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov9640_video_probe._entry_ptr.29 = internal global ptr @ov9640_video_probe._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 38472, i64 38473]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 4100, i64 4104, i64 8198]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 4100, i64 4104]
@__sancov_gen_cov_switch_values.32 = internal global [9 x i64] [i64 7, i64 32, i64 88, i64 160, i64 176, i64 320, i64 352, i64 640, i64 1280]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 60, i64 61, i64 64]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 60, i64 61, i64 64]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 60, i64 61, i64 64]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 60, i64 61, i64 64]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 60, i64 61, i64 64]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 60, i64 61, i64 64]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 60, i64 61, i64 64]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 9963796, i64 9963797]
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"ov9640_i2c_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 762, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 764, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"ov9640_id\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 756, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 693, i32 50 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 700, i32 50 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"ov9640_subdev_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 674, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 709, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"ov9640_ctrl_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 638, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 722, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"ov9640_core_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 642, i32 42 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"ov9640_video_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 663, i32 43 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"ov9640_pad_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 667, i32 41 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 195, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 214, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 221, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"ov9640_codes\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 164, i32 18 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 259, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"ov9640_regs_dflt\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 42, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"ov9640_regs_qqcif\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 73, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"ov9640_regs_qqvga\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 83, i32 32 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"ov9640_regs_qcif\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 93, i32 32 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"ov9640_regs_qvga\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 102, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"ov9640_regs_cif\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 111, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"ov9640_regs_vga\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 120, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"ov9640_regs_sxga\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 129, i32 32 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 435, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 236, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 246, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 623, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [30 x i8] c"../drivers/media/i2c/ov9640.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 628, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_ov9640_i2c_driver_exit, ptr @__initcall__kmod_ov9640__292_771_ov9640_i2c_driver_init6, ptr @ov9640_i2c_driver_exit, ptr @ov9640_reg_read._entry, ptr @ov9640_reg_read._entry_ptr, ptr @ov9640_reg_rmw._entry, ptr @ov9640_reg_rmw._entry.21, ptr @ov9640_reg_rmw._entry_ptr, ptr @ov9640_reg_rmw._entry_ptr.23, ptr @ov9640_reg_write._entry, ptr @ov9640_reg_write._entry.12, ptr @ov9640_reg_write._entry_ptr, ptr @ov9640_reg_write._entry_ptr.14, ptr @ov9640_reset._entry, ptr @ov9640_reset._entry_ptr, ptr @ov9640_video_probe._entry, ptr @ov9640_video_probe._entry.26, ptr @ov9640_video_probe._entry_ptr, ptr @ov9640_video_probe._entry_ptr.29, ptr @ov9640_write_regs._entry, ptr @ov9640_write_regs._entry_ptr, ptr @ov9640_i2c_driver, ptr @.str, ptr @ov9640_id, ptr @.str.1, ptr @.str.2, ptr @ov9640_subdev_ops, ptr @ov9640_probe._key, ptr @.str.3, ptr @ov9640_ctrl_ops, ptr @.str.4, ptr @ov9640_core_ops, ptr @ov9640_video_ops, ptr @ov9640_pad_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ov9640_codes, ptr @.str.15, ptr @.str.16, ptr @ov9640_regs_dflt, ptr @ov9640_regs_qqcif, ptr @ov9640_regs_qqvga, ptr @ov9640_regs_qcif, ptr @ov9640_regs_qvga, ptr @ov9640_regs_cif, ptr @ov9640_regs_vga, ptr @ov9640_regs_sxga, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_reg_write._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_codes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_regs_dflt to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_regs_qqcif to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_regs_qqvga to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_regs_qcif to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_regs_qvga to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_regs_cif to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_regs_vga to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_regs_sxga to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_reg_rmw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_reg_rmw._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9640_video_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9640_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov9640_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov9640_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov9640_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9640_probe(ptr noundef %client, ptr nocapture noundef readnone %did) #2 align 64 {
entry:
  %data.i92.i = alloca i8, align 1
  %msg.i93.i = alloca %struct.i2c_msg, align 4
  %data.i74.i = alloca i8, align 1
  %msg.i75.i = alloca %struct.i2c_msg, align 4
  %data.i56.i = alloca i8, align 1
  %msg.i57.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca i8, align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 3) #8
  %gpio_power = getelementptr inbounds %struct.ov9640_priv, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %gpio_power to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %gpio_power, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 7) #8
  %gpio_reset = getelementptr inbounds %struct.ov9640_priv, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %gpio_reset, align 4
  %cmp.i82 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ov9640_subdev_ops) #8
  %hdl = getelementptr inbounds %struct.ov9640_priv, ptr %call.i, i32 0, i32 1
  %call17 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 2, ptr noundef nonnull @ov9640_probe._key, ptr noundef nonnull @.str.3) #8
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov9640_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov9640_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %error = getelementptr inbounds %struct.ov9640_priv, ptr %call.i, i32 0, i32 1, i32 9
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool23.not = icmp eq i32 %5, 0
  br i1 %tobool23.not, label %if.end27, label %if.end16.ectrlinit_crit_edge

if.end16.ectrlinit_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %ectrlinit

if.end27:                                         ; preds = %if.end16
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  %clk = getelementptr inbounds %struct.ov9640_priv, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call31, ptr %clk, align 4
  %cmp.i83 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call31 to i32
  br label %ectrlinit

if.end37:                                         ; preds = %if.end27
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call i32 @ov9640_s_power(ptr noundef %10, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i84 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i84, label %if.end37.ectrlinit_crit_edge, label %if.end.i

if.end37.ectrlinit_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %ectrlinit

if.end.i:                                         ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #8
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %data.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 131071, ptr %12, align 4
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr1.i.i, align 2
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.if.end5.thread.i_crit_edge, label %if.end.i.i

if.end.i.if.end5.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags.i.i, align 2
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call4.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.if.end5.thread.i_crit_edge, label %if.then3.i

if.end.i.i.if.end5.thread.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.thread.i

if.end5.thread.i:                                 ; preds = %if.end.i.i.if.end5.thread.i_crit_edge, %if.end.i.if.end5.thread.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.end.i.if.end5.thread.i_crit_edge ], [ %call4.i.i, %if.end.i.i.if.end5.thread.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  br label %ov9640_video_probe.exit

if.then3.i:                                       ; preds = %if.end.i.i
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i56.i) #8
  %26 = ptrtoint ptr %data.i56.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 11, ptr %data.i56.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i57.i) #8
  %27 = getelementptr inbounds i8, ptr %msg.i57.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 131071, ptr %27, align 4
  %29 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr1.i.i, align 2
  %31 = ptrtoint ptr %msg.i57.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %msg.i57.i, align 4
  %flags.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i59.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i59.i, align 2
  %buf.i61.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i61.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %data.i56.i, ptr %buf.i61.i, align 4
  %34 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i.i, align 8
  %call.i63.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i57.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %cmp.i64.i = icmp slt i32 %call.i63.i, 0
  br i1 %cmp.i64.i, label %if.then3.i.if.end5.i_crit_edge, label %if.end.i67.i

if.then3.i.if.end5.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end.i67.i:                                     ; preds = %if.then3.i
  %36 = ptrtoint ptr %flags.i59.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %flags.i59.i, align 2
  %37 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i.i, align 8
  %call4.i65.i = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i57.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i65.i)
  %cmp5.i66.i = icmp slt i32 %call4.i65.i, 0
  br i1 %cmp5.i66.i, label %if.end.i67.i.if.end5.i_crit_edge, label %if.then7.i

if.end.i67.i.if.end5.i_crit_edge:                 ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i67.i.if.end5.i_crit_edge, %if.then3.i.if.end5.i_crit_edge
  %ret.0.i69.i = phi i32 [ %call.i63.i, %if.then3.i.if.end5.i_crit_edge ], [ %call4.i65.i, %if.end.i67.i.if.end5.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i56.i) #8
  br label %ov9640_video_probe.exit

if.then7.i:                                       ; preds = %if.end.i67.i
  %39 = ptrtoint ptr %data.i56.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data.i56.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i56.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i74.i) #8
  %41 = ptrtoint ptr %data.i74.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 28, ptr %data.i74.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i75.i) #8
  %42 = getelementptr inbounds i8, ptr %msg.i75.i, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 131071, ptr %42, align 4
  %44 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %addr1.i.i, align 2
  %46 = ptrtoint ptr %msg.i75.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %msg.i75.i, align 4
  %flags.i77.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75.i, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i77.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i77.i, align 2
  %buf.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75.i, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i79.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %data.i74.i, ptr %buf.i79.i, align 4
  %49 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i.i, align 8
  %call.i81.i = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i75.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %cmp.i82.i = icmp slt i32 %call.i81.i, 0
  br i1 %cmp.i82.i, label %if.then7.i.if.end9.i_crit_edge, label %if.end.i85.i

if.then7.i.if.end9.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end.i85.i:                                     ; preds = %if.then7.i
  %51 = ptrtoint ptr %flags.i77.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %flags.i77.i, align 2
  %52 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i.i, align 8
  %call4.i83.i = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i75.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i83.i)
  %cmp5.i84.i = icmp slt i32 %call4.i83.i, 0
  br i1 %cmp5.i84.i, label %if.end.i85.i.if.end9.i_crit_edge, label %if.then11.i

if.end.i85.i.if.end9.i_crit_edge:                 ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i85.i.if.end9.i_crit_edge, %if.then7.i.if.end9.i_crit_edge
  %ret.0.i87.i = phi i32 [ %call.i81.i, %if.then7.i.if.end9.i_crit_edge ], [ %call4.i83.i, %if.end.i85.i.if.end9.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 28) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i75.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i74.i) #8
  br label %ov9640_video_probe.exit

if.then11.i:                                      ; preds = %if.end.i85.i
  %54 = ptrtoint ptr %data.i74.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data.i74.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i75.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i74.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i92.i) #8
  %56 = ptrtoint ptr %data.i92.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 29, ptr %data.i92.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i93.i) #8
  %57 = getelementptr inbounds i8, ptr %msg.i93.i, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 131071, ptr %57, align 4
  %59 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %addr1.i.i, align 2
  %61 = ptrtoint ptr %msg.i93.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %msg.i93.i, align 4
  %flags.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93.i, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i95.i, align 2
  %buf.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93.i, i32 0, i32 3
  %63 = ptrtoint ptr %buf.i97.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %data.i92.i, ptr %buf.i97.i, align 4
  %64 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter.i.i, align 8
  %call.i99.i = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i93.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %cmp.i100.i = icmp slt i32 %call.i99.i, 0
  br i1 %cmp.i100.i, label %if.then11.i.if.end13.i_crit_edge, label %if.end.i103.i

if.then11.i.if.end13.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end.i103.i:                                    ; preds = %if.then11.i
  %66 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags.i95.i, align 2
  %67 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter.i.i, align 8
  %call4.i101.i = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i93.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i101.i)
  %cmp5.i102.i = icmp slt i32 %call4.i101.i, 0
  br i1 %cmp5.i102.i, label %if.end.i103.i.if.end13.i_crit_edge, label %if.end16.i

if.end.i103.i.if.end13.i_crit_edge:               ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i103.i.if.end13.i_crit_edge, %if.then11.i.if.end13.i_crit_edge
  %ret.0.i105.i = phi i32 [ %call.i99.i, %if.then11.i.if.end13.i_crit_edge ], [ %call4.i101.i, %if.end.i103.i.if.end13.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 29) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i93.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i92.i) #8
  br label %ov9640_video_probe.exit

if.end16.i:                                       ; preds = %if.end.i103.i
  %69 = ptrtoint ptr %data.i92.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %data.i92.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i93.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i92.i) #8
  %conv.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %conv17.i = zext i8 %40 to i32
  %or.i = or i32 %shl.i, %conv17.i
  %trunc.i = trunc i32 %or.i to i16
  %71 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %do.end.i [
    i16 -27064, label %if.end16.i.do.end24.i_crit_edge
    i16 -27063, label %sw.bb18.i
  ]

if.end16.i.do.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24.i

sw.bb18.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv.i, i32 noundef %conv17.i) #11
  br label %ov9640_video_probe.exit

do.end24.i:                                       ; preds = %sw.bb18.i, %if.end16.i.do.end24.i_crit_edge
  %.sink.i = phi i32 [ 3, %sw.bb18.i ], [ 2, %if.end16.i.do.end24.i_crit_edge ]
  %revision.i = getelementptr inbounds %struct.ov9640_priv, ptr %10, i32 0, i32 6
  %72 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink.i, ptr %revision.i, align 4
  %conv28.i = zext i8 %55 to i32
  %conv29.i = zext i8 %70 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %conv17.i, i32 noundef %conv28.i, i32 noundef %conv29.i) #11
  %hdl.i = getelementptr inbounds %struct.ov9640_priv, ptr %10, i32 0, i32 1
  %call30.i = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl.i) #8
  br label %ov9640_video_probe.exit

ov9640_video_probe.exit:                          ; preds = %do.end24.i, %do.end.i, %if.end13.i, %if.end9.i, %if.end5.i, %if.end5.thread.i
  %ret.3.i = phi i32 [ %ret.0.i105.i, %if.end13.i ], [ -19, %do.end.i ], [ %call30.i, %do.end24.i ], [ %ret.0.i87.i, %if.end9.i ], [ %ret.0.i.i, %if.end5.thread.i ], [ %ret.0.i69.i, %if.end5.i ]
  %gpio_reset1.i.i = getelementptr inbounds %struct.ov9640_priv, ptr %10, i32 0, i32 4
  %73 = ptrtoint ptr %gpio_reset1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %gpio_reset1.i.i, align 4
  call void @gpiod_set_value(ptr noundef %74, i32 noundef 1) #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %clk2.i.i = getelementptr inbounds %struct.ov9640_priv, ptr %10, i32 0, i32 2
  %75 = ptrtoint ptr %clk2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk2.i.i, align 4
  call void @clk_disable(ptr noundef %76) #8
  call void @clk_unprepare(ptr noundef %76) #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %gpio_power3.i.i = getelementptr inbounds %struct.ov9640_priv, ptr %10, i32 0, i32 3
  %77 = ptrtoint ptr %gpio_power3.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %gpio_power3.i.i, align 4
  call void @gpiod_set_value(ptr noundef %78, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool39.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool39.not, label %if.end41, label %ov9640_video_probe.exit.ectrlinit_crit_edge

ov9640_video_probe.exit.ectrlinit_crit_edge:      ; preds = %ov9640_video_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ectrlinit

if.end41:                                         ; preds = %ov9640_video_probe.exit
  %dev44 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 14
  %79 = ptrtoint ptr %dev44 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %dev, ptr %dev44, align 4
  %call46 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end41.cleanup_crit_edge, label %if.end41.ectrlinit_crit_edge

if.end41.ectrlinit_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %ectrlinit

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ectrlinit:                                        ; preds = %if.end41.ectrlinit_crit_edge, %ov9640_video_probe.exit.ectrlinit_crit_edge, %if.end37.ectrlinit_crit_edge, %if.then34, %if.end16.ectrlinit_crit_edge
  %ret.0 = phi i32 [ %8, %if.then34 ], [ %ret.3.i, %ov9640_video_probe.exit.ectrlinit_crit_edge ], [ %call46, %if.end41.ectrlinit_crit_edge ], [ %5, %if.end16.ectrlinit_crit_edge ], [ %call1.i, %if.end37.ectrlinit_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  br label %cleanup

cleanup:                                          ; preds = %ectrlinit, %if.end41.cleanup_crit_edge, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %3, %if.then13 ], [ %ret.0, %ectrlinit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9640_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %hdl = getelementptr inbounds %struct.ov9640_priv, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9640_get_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %3)
  %tobool.not = icmp ult i64 %3, 256
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1, ptr %size, align 1
  %conv = trunc i64 %3 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131071, ptr %6, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr1.i, align 2
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.ov9640_reg_read.exit_crit_edge, label %if.end.i

if.end.ov9640_reg_read.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_reg_read.exit

if.end.i:                                         ; preds = %if.end
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags.i, align 2
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call4.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.ov9640_reg_read.exit_crit_edge, label %if.end6

if.end.i.ov9640_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_reg_read.exit

ov9640_reg_read.exit:                             ; preds = %if.end.i.ov9640_reg_read.exit_crit_edge, %if.end.ov9640_reg_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end.ov9640_reg_read.exit_crit_edge ], [ %call4.i, %if.end.i.ov9640_reg_read.exit_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %18 = trunc i64 %3 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5, i32 noundef %18) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  %conv7 = zext i8 %20 to i64
  %val8 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %21 = ptrtoint ptr %val8 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %conv7, ptr %val8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %ov9640_reg_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i, %ov9640_reg_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9640_set_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %3)
  %tobool.not = icmp ult i64 %3, 256
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %5)
  %tobool3.not = icmp ult i64 %5, 256
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %3 to i8
  %conv6 = trunc i64 %5 to i8
  %call7 = tail call fastcc i32 @ov9640_reg_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9640_s_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %gpio_power = getelementptr inbounds %struct.ov9640_priv, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %gpio_power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_power, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %clk = getelementptr inbounds %struct.ov9640_priv, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %gpio_reset = getelementptr inbounds %struct.ov9640_priv, ptr %sd, i32 0, i32 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_reset1 = getelementptr inbounds %struct.ov9640_priv, ptr %sd, i32 0, i32 4
  %4 = ptrtoint ptr %gpio_reset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reset1, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %clk2 = getelementptr inbounds %struct.ov9640_priv, ptr %sd, i32 0, i32 2
  %6 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk2, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %gpio_power3 = getelementptr inbounds %struct.ov9640_priv, ptr %sd, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %clk_prepare_enable.exit
  %gpio_power3.sink = phi ptr [ %gpio_power3, %if.else ], [ %gpio_reset, %clk_prepare_enable.exit ]
  %ret.0 = phi i32 [ 0, %if.else ], [ %retval.0.i, %clk_prepare_enable.exit ]
  %8 = ptrtoint ptr %gpio_power3.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_power3.sink, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov9640_reg_write(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %data = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1, align 2
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %buf, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %reg, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 131071, ptr %14, align 4
  %16 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr1, align 2
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %data.i, ptr %buf.i, align 4
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.end6_crit_edge, label %if.end.i

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

if.end.i:                                         ; preds = %if.end
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags.i, align 2
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %call4.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.do.end6_crit_edge, label %ov9640_reg_read.exit.thread

if.end.i.do.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

ov9640_reg_read.exit.thread:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  br label %cleanup

do.end6:                                          ; preds = %if.end.i.do.end6_crit_edge, %if.end.do.end6_crit_edge
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv.i = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5, i32 noundef %conv.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %ov9640_reg_read.exit.thread, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %do.end6 ], [ 0, %ov9640_reg_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov9640_s_stream(ptr nocapture noundef readnone %sd, i32 noundef %enable) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov9640_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [3 x i32], ptr @ov9640_codes, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9640_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %3)
  %cmp1.not.i = icmp ugt i32 %3, 88
  br i1 %cmp1.not.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %5)
  %cmp3.not.i = icmp ugt i32 %5, 72
  br i1 %cmp3.not.i, label %land.lhs.true.i.land.lhs.true.1.i_crit_edge, label %land.lhs.true.i.ov9640_res_roundup.exit_crit_edge

land.lhs.true.i.ov9640_res_roundup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_res_roundup.exit

land.lhs.true.i.land.lhs.true.1.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.1.i

for.inc.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %3)
  %cmp1.not.1.i = icmp ugt i32 %3, 160
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %land.lhs.true.1thread-pre-split.i

land.lhs.true.1thread-pre-split.i:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr.i = load i32, ptr %height, align 4
  br label %land.lhs.true.1.i

land.lhs.true.1.i:                                ; preds = %land.lhs.true.1thread-pre-split.i, %land.lhs.true.i.land.lhs.true.1.i_crit_edge
  %7 = phi i32 [ %.pr.i, %land.lhs.true.1thread-pre-split.i ], [ %5, %land.lhs.true.i.land.lhs.true.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %7)
  %cmp3.not.1.i = icmp ugt i32 %7, 120
  br i1 %cmp3.not.1.i, label %land.lhs.true.1.i.land.lhs.true.2.i_crit_edge, label %land.lhs.true.1.i.ov9640_res_roundup.exit_crit_edge

land.lhs.true.1.i.ov9640_res_roundup.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_res_roundup.exit

land.lhs.true.1.i.land.lhs.true.2.i_crit_edge:    ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.2.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %3)
  %cmp1.not.2.i = icmp ugt i32 %3, 176
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.land.lhs.true.2.i_crit_edge

for.inc.1.i.land.lhs.true.2.i_crit_edge:          ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i.land.lhs.true.2.i_crit_edge, %land.lhs.true.1.i.land.lhs.true.2.i_crit_edge
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %9)
  %cmp3.not.2.i = icmp ugt i32 %9, 144
  br i1 %cmp3.not.2.i, label %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge, label %land.lhs.true.2.i.ov9640_res_roundup.exit_crit_edge

land.lhs.true.2.i.ov9640_res_roundup.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_res_roundup.exit

land.lhs.true.2.i.land.lhs.true.3.i_crit_edge:    ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.3.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %3)
  %cmp1.not.3.i = icmp ugt i32 %3, 320
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %land.lhs.true.3thread-pre-split.i

land.lhs.true.3thread-pre-split.i:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr21.i = load i32, ptr %height, align 4
  br label %land.lhs.true.3.i

land.lhs.true.3.i:                                ; preds = %land.lhs.true.3thread-pre-split.i, %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge
  %11 = phi i32 [ %.pr21.i, %land.lhs.true.3thread-pre-split.i ], [ %9, %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %11)
  %cmp3.not.3.i = icmp ugt i32 %11, 240
  br i1 %cmp3.not.3.i, label %land.lhs.true.3.i.land.lhs.true.4.i_crit_edge, label %land.lhs.true.3.i.ov9640_res_roundup.exit_crit_edge

land.lhs.true.3.i.ov9640_res_roundup.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_res_roundup.exit

land.lhs.true.3.i.land.lhs.true.4.i_crit_edge:    ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.4.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %3)
  %cmp1.not.4.i = icmp ugt i32 %3, 352
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.land.lhs.true.4.i_crit_edge

for.inc.3.i.land.lhs.true.4.i_crit_edge:          ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i.land.lhs.true.4.i_crit_edge, %land.lhs.true.3.i.land.lhs.true.4.i_crit_edge
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %13)
  %cmp3.not.4.i = icmp ugt i32 %13, 288
  br i1 %cmp3.not.4.i, label %land.lhs.true.4.i.land.lhs.true.5.i_crit_edge, label %land.lhs.true.4.i.ov9640_res_roundup.exit_crit_edge

land.lhs.true.4.i.ov9640_res_roundup.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_res_roundup.exit

land.lhs.true.4.i.land.lhs.true.5.i_crit_edge:    ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.5.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %3)
  %cmp1.not.5.i = icmp ugt i32 %3, 640
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %land.lhs.true.5thread-pre-split.i

land.lhs.true.5thread-pre-split.i:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr24.i = load i32, ptr %height, align 4
  br label %land.lhs.true.5.i

land.lhs.true.5.i:                                ; preds = %land.lhs.true.5thread-pre-split.i, %land.lhs.true.4.i.land.lhs.true.5.i_crit_edge
  %15 = phi i32 [ %.pr24.i, %land.lhs.true.5thread-pre-split.i ], [ %13, %land.lhs.true.4.i.land.lhs.true.5.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %15)
  %cmp3.not.5.i = icmp ugt i32 %15, 480
  br i1 %cmp3.not.5.i, label %land.lhs.true.5.i.land.lhs.true.6.i_crit_edge, label %land.lhs.true.5.i.ov9640_res_roundup.exit_crit_edge

land.lhs.true.5.i.ov9640_res_roundup.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_res_roundup.exit

land.lhs.true.5.i.land.lhs.true.6.i_crit_edge:    ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.6.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %3)
  %cmp1.not.6.i = icmp ugt i32 %3, 1280
  br i1 %cmp1.not.6.i, label %for.inc.5.i.ov9640_res_roundup.exit_crit_edge, label %for.inc.5.i.land.lhs.true.6.i_crit_edge

for.inc.5.i.land.lhs.true.6.i_crit_edge:          ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.6.i

for.inc.5.i.ov9640_res_roundup.exit_crit_edge:    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_res_roundup.exit

land.lhs.true.6.i:                                ; preds = %for.inc.5.i.land.lhs.true.6.i_crit_edge, %land.lhs.true.5.i.land.lhs.true.6.i_crit_edge
  br label %ov9640_res_roundup.exit

ov9640_res_roundup.exit:                          ; preds = %land.lhs.true.6.i, %for.inc.5.i.ov9640_res_roundup.exit_crit_edge, %land.lhs.true.5.i.ov9640_res_roundup.exit_crit_edge, %land.lhs.true.4.i.ov9640_res_roundup.exit_crit_edge, %land.lhs.true.3.i.ov9640_res_roundup.exit_crit_edge, %land.lhs.true.2.i.ov9640_res_roundup.exit_crit_edge, %land.lhs.true.1.i.ov9640_res_roundup.exit_crit_edge, %land.lhs.true.i.ov9640_res_roundup.exit_crit_edge
  %storemerge15.i = phi i32 [ 88, %land.lhs.true.i.ov9640_res_roundup.exit_crit_edge ], [ 160, %land.lhs.true.1.i.ov9640_res_roundup.exit_crit_edge ], [ 176, %land.lhs.true.2.i.ov9640_res_roundup.exit_crit_edge ], [ 320, %land.lhs.true.3.i.ov9640_res_roundup.exit_crit_edge ], [ 352, %land.lhs.true.4.i.ov9640_res_roundup.exit_crit_edge ], [ 640, %land.lhs.true.5.i.ov9640_res_roundup.exit_crit_edge ], [ 1280, %land.lhs.true.6.i ], [ 1280, %for.inc.5.i.ov9640_res_roundup.exit_crit_edge ]
  %storemerge.i = phi i32 [ 72, %land.lhs.true.i.ov9640_res_roundup.exit_crit_edge ], [ 120, %land.lhs.true.1.i.ov9640_res_roundup.exit_crit_edge ], [ 144, %land.lhs.true.2.i.ov9640_res_roundup.exit_crit_edge ], [ 240, %land.lhs.true.3.i.ov9640_res_roundup.exit_crit_edge ], [ 288, %land.lhs.true.4.i.ov9640_res_roundup.exit_crit_edge ], [ 480, %land.lhs.true.5.i.ov9640_res_roundup.exit_crit_edge ], [ 960, %land.lhs.true.6.i ], [ 960, %for.inc.5.i.ov9640_res_roundup.exit_crit_edge ]
  %16 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge15.i, ptr %format1, align 4
  %17 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge.i, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %field, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %20, label %sw.default [
    i32 4100, label %ov9640_res_roundup.exit.sw.epilog_crit_edge
    i32 4104, label %ov9640_res_roundup.exit.sw.epilog_crit_edge33
    i32 8198, label %ov9640_res_roundup.exit.sw.bb3_crit_edge
  ]

ov9640_res_roundup.exit.sw.bb3_crit_edge:         ; preds = %ov9640_res_roundup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

ov9640_res_roundup.exit.sw.epilog_crit_edge33:    ; preds = %ov9640_res_roundup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

ov9640_res_roundup.exit.sw.epilog_crit_edge:      ; preds = %ov9640_res_roundup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %ov9640_res_roundup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8198, ptr %code, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.default, %ov9640_res_roundup.exit.sw.bb3_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %ov9640_res_roundup.exit.sw.epilog_crit_edge, %ov9640_res_roundup.exit.sw.epilog_crit_edge33
  %.sink = phi i32 [ 7, %sw.bb3 ], [ 8, %ov9640_res_roundup.exit.sw.epilog_crit_edge ], [ 8, %ov9640_res_roundup.exit.sw.epilog_crit_edge33 ]
  %colorspace4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %colorspace4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %colorspace4, align 4
  %24 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp = icmp eq i32 %25, 1
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %sw.epilog
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %28 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %code, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %29, label %if.then5.ov9640_alter_regs.exit.i_crit_edge [
    i32 4104, label %sw.bb3.i.i
    i32 4100, label %sw.bb1.i.i
  ]

if.then5.ov9640_alter_regs.exit.i_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_alter_regs.exit.i

sw.bb1.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_alter_regs.exit.i

sw.bb3.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov9640_alter_regs.exit.i

ov9640_alter_regs.exit.i:                         ; preds = %sw.bb3.i.i, %sw.bb1.i.i, %if.then5.ov9640_alter_regs.exit.i_crit_edge
  %alts.sroa.0.0.i = phi i8 [ 4, %sw.bb1.i.i ], [ 4, %sw.bb3.i.i ], [ 0, %if.then5.ov9640_alter_regs.exit.i_crit_edge ]
  %alts.sroa.6.0.i = phi i8 [ 0, %sw.bb1.i.i ], [ 0, %sw.bb3.i.i ], [ 4, %if.then5.ov9640_alter_regs.exit.i_crit_edge ]
  %alts.sroa.8.0.i = phi i8 [ 32, %sw.bb1.i.i ], [ 32, %sw.bb3.i.i ], [ 9, %if.then5.ov9640_alter_regs.exit.i_crit_edge ]
  %alts.sroa.12.0.i = phi i8 [ 48, %sw.bb1.i.i ], [ 16, %sw.bb3.i.i ], [ 0, %if.then5.ov9640_alter_regs.exit.i_crit_edge ]
  %call.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 18, i8 noundef zeroext -128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ov9640_alter_regs.exit.i.for.body.i.i.preheader_crit_edge, label %do.end.i.i

ov9640_alter_regs.exit.i.for.body.i.i.preheader_crit_edge: ; preds = %ov9640_alter_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.preheader

do.end.i.i:                                       ; preds = %ov9640_alter_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15) #11
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %do.end.i.i, %ov9640_alter_regs.exit.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 37
  br i1 %exitcond.not.i.i, label %if.end.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.07.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr [37 x %struct.ov9640_reg], ptr @ov9640_regs_dflt, i32 0, i32 %i.07.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i, align 1
  %val.i.i = getelementptr [37 x %struct.ov9640_reg], ptr @ov9640_regs_dflt, i32 0, i32 %i.07.i.i, i32 1
  %33 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %val.i.i, align 1
  %call.i12.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext %32, i8 noundef zeroext %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool.not.i13.i, label %for.cond.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.cond.i.i
  tail call void @msleep(i32 noundef 150) #8
  %35 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %format1, align 4
  %37 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %code, align 4
  %39 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %36, label %do.end.i17.i [
    i32 88, label %if.end.i.sw.epilog.i.i_crit_edge
    i32 160, label %sw.bb1.i14.i
    i32 176, label %sw.bb2.i.i
    i32 320, label %sw.bb3.i15.i
    i32 352, label %sw.bb4.i.i
    i32 640, label %sw.bb5.i.i
    i32 1280, label %sw.bb6.i.i
  ]

if.end.i.sw.epilog.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb1.i14.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb3.i15.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end.i17.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i16.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16.i, ptr noundef nonnull @.str.17) #11
  br label %cleanup

sw.epilog.i.i:                                    ; preds = %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i15.i, %sw.bb2.i.i, %sw.bb1.i14.i, %if.end.i.sw.epilog.i.i_crit_edge
  %ov9640_regs.0.i.i = phi ptr [ @ov9640_regs_sxga, %sw.bb6.i.i ], [ @ov9640_regs_vga, %sw.bb5.i.i ], [ @ov9640_regs_cif, %sw.bb4.i.i ], [ @ov9640_regs_qvga, %sw.bb3.i15.i ], [ @ov9640_regs_qcif, %sw.bb2.i.i ], [ @ov9640_regs_qqvga, %sw.bb1.i14.i ], [ @ov9640_regs_qqcif, %if.end.i.sw.epilog.i.i_crit_edge ]
  %exitcond.not.i22.i.5 = phi i1 [ true, %sw.bb6.i.i ], [ true, %sw.bb5.i.i ], [ true, %sw.bb4.i.i ], [ true, %sw.bb3.i15.i ], [ true, %sw.bb2.i.i ], [ false, %sw.bb1.i14.i ], [ false, %if.end.i.sw.epilog.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %38)
  %cmp.i.i = icmp eq i32 %38, 8198
  %val8.i.i = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %val8.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %val8.i.i, align 1
  %42 = ptrtoint ptr %ov9640_regs.0.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ov9640_regs.0.i.i, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %43, label %sw.epilog.i.i.sw.epilog29.i.i_crit_edge [
    i8 18, label %sw.epilog.i.i.sw.epilog29.sink.split.i.i_crit_edge
    i8 60, label %sw.bb14.i.i
    i8 61, label %sw.bb19.i.i
    i8 64, label %sw.bb24.i.i
  ]

sw.epilog.i.i.sw.epilog29.sink.split.i.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i

sw.epilog.i.i.sw.epilog29.i.i_crit_edge:          ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.i.i

for.body.i25.i.1:                                 ; preds = %sw.epilog29.i.i
  %arrayidx.i24.i.1 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 1
  %val8.i.i.1 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 1, i32 1
  %45 = ptrtoint ptr %val8.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val8.i.i.1, align 1
  %47 = ptrtoint ptr %arrayidx.i24.i.1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i24.i.1, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %48, label %for.body.i25.i.1.sw.epilog29.i.i.1_crit_edge [
    i8 18, label %for.body.i25.i.1.sw.epilog29.sink.split.i.i.1_crit_edge
    i8 60, label %sw.bb14.i.i.1
    i8 61, label %sw.bb19.i.i.1
    i8 64, label %sw.bb24.i.i.1
  ]

for.body.i25.i.1.sw.epilog29.sink.split.i.i.1_crit_edge: ; preds = %for.body.i25.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.1

for.body.i25.i.1.sw.epilog29.i.i.1_crit_edge:     ; preds = %for.body.i25.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.i.i.1

sw.bb24.i.i.1:                                    ; preds = %for.body.i25.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.1

sw.bb19.i.i.1:                                    ; preds = %for.body.i25.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.1

sw.bb14.i.i.1:                                    ; preds = %for.body.i25.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.1

sw.epilog29.sink.split.i.i.1:                     ; preds = %sw.bb14.i.i.1, %sw.bb19.i.i.1, %sw.bb24.i.i.1, %for.body.i25.i.1.sw.epilog29.sink.split.i.i.1_crit_edge
  %com15.sink.i.sroa.speculated.i.1 = phi i8 [ %alts.sroa.12.0.i, %sw.bb24.i.i.1 ], [ %alts.sroa.8.0.i, %sw.bb19.i.i.1 ], [ %alts.sroa.6.0.i, %sw.bb14.i.i.1 ], [ %alts.sroa.0.0.i, %for.body.i25.i.1.sw.epilog29.sink.split.i.i.1_crit_edge ]
  %or2778.i.i.1 = or i8 %com15.sink.i.sroa.speculated.i.1, %46
  br label %sw.epilog29.i.i.1

sw.epilog29.i.i.1:                                ; preds = %sw.epilog29.sink.split.i.i.1, %for.body.i25.i.1.sw.epilog29.i.i.1_crit_edge
  %val.0.i.i.1 = phi i8 [ %46, %for.body.i25.i.1.sw.epilog29.i.i.1_crit_edge ], [ %or2778.i.i.1, %sw.epilog29.sink.split.i.i.1 ]
  %call.i26.i.1 = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext %48, i8 noundef zeroext %val.0.i.i.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.1)
  %tobool.not.i27.i.1 = icmp eq i32 %call.i26.i.1, 0
  br i1 %tobool.not.i27.i.1, label %for.body.i25.i.2, label %sw.epilog29.i.i.1.cleanup_crit_edge

sw.epilog29.i.i.1.cleanup_crit_edge:              ; preds = %sw.epilog29.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i25.i.2:                                 ; preds = %sw.epilog29.i.i.1
  %arrayidx.i24.i.2 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 2
  %val8.i.i.2 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 2, i32 1
  %50 = ptrtoint ptr %val8.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %val8.i.i.2, align 1
  %52 = ptrtoint ptr %arrayidx.i24.i.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i24.i.2, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %53, label %for.body.i25.i.2.sw.epilog29.i.i.2_crit_edge [
    i8 18, label %for.body.i25.i.2.sw.epilog29.sink.split.i.i.2_crit_edge
    i8 60, label %sw.bb14.i.i.2
    i8 61, label %sw.bb19.i.i.2
    i8 64, label %sw.bb24.i.i.2
  ]

for.body.i25.i.2.sw.epilog29.sink.split.i.i.2_crit_edge: ; preds = %for.body.i25.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.2

for.body.i25.i.2.sw.epilog29.i.i.2_crit_edge:     ; preds = %for.body.i25.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.i.i.2

sw.bb24.i.i.2:                                    ; preds = %for.body.i25.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.2

sw.bb19.i.i.2:                                    ; preds = %for.body.i25.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.2

sw.bb14.i.i.2:                                    ; preds = %for.body.i25.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.2

sw.epilog29.sink.split.i.i.2:                     ; preds = %sw.bb14.i.i.2, %sw.bb19.i.i.2, %sw.bb24.i.i.2, %for.body.i25.i.2.sw.epilog29.sink.split.i.i.2_crit_edge
  %com15.sink.i.sroa.speculated.i.2 = phi i8 [ %alts.sroa.12.0.i, %sw.bb24.i.i.2 ], [ %alts.sroa.8.0.i, %sw.bb19.i.i.2 ], [ %alts.sroa.6.0.i, %sw.bb14.i.i.2 ], [ %alts.sroa.0.0.i, %for.body.i25.i.2.sw.epilog29.sink.split.i.i.2_crit_edge ]
  %or2778.i.i.2 = or i8 %com15.sink.i.sroa.speculated.i.2, %51
  br label %sw.epilog29.i.i.2

sw.epilog29.i.i.2:                                ; preds = %sw.epilog29.sink.split.i.i.2, %for.body.i25.i.2.sw.epilog29.i.i.2_crit_edge
  %val.0.i.i.2 = phi i8 [ %51, %for.body.i25.i.2.sw.epilog29.i.i.2_crit_edge ], [ %or2778.i.i.2, %sw.epilog29.sink.split.i.i.2 ]
  %call.i26.i.2 = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext %53, i8 noundef zeroext %val.0.i.i.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.2)
  %tobool.not.i27.i.2 = icmp eq i32 %call.i26.i.2, 0
  br i1 %tobool.not.i27.i.2, label %for.body.i25.i.3, label %sw.epilog29.i.i.2.cleanup_crit_edge

sw.epilog29.i.i.2.cleanup_crit_edge:              ; preds = %sw.epilog29.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i25.i.3:                                 ; preds = %sw.epilog29.i.i.2
  %arrayidx.i24.i.3 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 3
  %val8.i.i.3 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 3, i32 1
  %55 = ptrtoint ptr %val8.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %val8.i.i.3, align 1
  %57 = ptrtoint ptr %arrayidx.i24.i.3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i24.i.3, align 1
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %58, label %for.body.i25.i.3.sw.epilog29.i.i.3_crit_edge [
    i8 18, label %for.body.i25.i.3.sw.epilog29.sink.split.i.i.3_crit_edge
    i8 60, label %sw.bb14.i.i.3
    i8 61, label %sw.bb19.i.i.3
    i8 64, label %sw.bb24.i.i.3
  ]

for.body.i25.i.3.sw.epilog29.sink.split.i.i.3_crit_edge: ; preds = %for.body.i25.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.3

for.body.i25.i.3.sw.epilog29.i.i.3_crit_edge:     ; preds = %for.body.i25.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.i.i.3

sw.bb24.i.i.3:                                    ; preds = %for.body.i25.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.3

sw.bb19.i.i.3:                                    ; preds = %for.body.i25.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.3

sw.bb14.i.i.3:                                    ; preds = %for.body.i25.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.3

sw.epilog29.sink.split.i.i.3:                     ; preds = %sw.bb14.i.i.3, %sw.bb19.i.i.3, %sw.bb24.i.i.3, %for.body.i25.i.3.sw.epilog29.sink.split.i.i.3_crit_edge
  %com15.sink.i.sroa.speculated.i.3 = phi i8 [ %alts.sroa.12.0.i, %sw.bb24.i.i.3 ], [ %alts.sroa.8.0.i, %sw.bb19.i.i.3 ], [ %alts.sroa.6.0.i, %sw.bb14.i.i.3 ], [ %alts.sroa.0.0.i, %for.body.i25.i.3.sw.epilog29.sink.split.i.i.3_crit_edge ]
  %or2778.i.i.3 = or i8 %com15.sink.i.sroa.speculated.i.3, %56
  br label %sw.epilog29.i.i.3

sw.epilog29.i.i.3:                                ; preds = %sw.epilog29.sink.split.i.i.3, %for.body.i25.i.3.sw.epilog29.i.i.3_crit_edge
  %val.0.i.i.3 = phi i8 [ %56, %for.body.i25.i.3.sw.epilog29.i.i.3_crit_edge ], [ %or2778.i.i.3, %sw.epilog29.sink.split.i.i.3 ]
  %call.i26.i.3 = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext %58, i8 noundef zeroext %val.0.i.i.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.3)
  %tobool.not.i27.i.3 = icmp eq i32 %call.i26.i.3, 0
  br i1 %tobool.not.i27.i.3, label %for.body.i25.i.4, label %sw.epilog29.i.i.3.cleanup_crit_edge

sw.epilog29.i.i.3.cleanup_crit_edge:              ; preds = %sw.epilog29.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i25.i.4:                                 ; preds = %sw.epilog29.i.i.3
  %arrayidx.i24.i.4 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 4
  %val8.i.i.4 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 4, i32 1
  %60 = ptrtoint ptr %val8.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %val8.i.i.4, align 1
  %62 = ptrtoint ptr %arrayidx.i24.i.4 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i24.i.4, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %63, label %for.body.i25.i.4.sw.epilog29.i.i.4_crit_edge [
    i8 18, label %for.body.i25.i.4.sw.epilog29.sink.split.i.i.4_crit_edge
    i8 60, label %sw.bb14.i.i.4
    i8 61, label %sw.bb19.i.i.4
    i8 64, label %sw.bb24.i.i.4
  ]

for.body.i25.i.4.sw.epilog29.sink.split.i.i.4_crit_edge: ; preds = %for.body.i25.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.4

for.body.i25.i.4.sw.epilog29.i.i.4_crit_edge:     ; preds = %for.body.i25.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.i.i.4

sw.bb24.i.i.4:                                    ; preds = %for.body.i25.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.4

sw.bb19.i.i.4:                                    ; preds = %for.body.i25.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.4

sw.bb14.i.i.4:                                    ; preds = %for.body.i25.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.4

sw.epilog29.sink.split.i.i.4:                     ; preds = %sw.bb14.i.i.4, %sw.bb19.i.i.4, %sw.bb24.i.i.4, %for.body.i25.i.4.sw.epilog29.sink.split.i.i.4_crit_edge
  %com15.sink.i.sroa.speculated.i.4 = phi i8 [ %alts.sroa.12.0.i, %sw.bb24.i.i.4 ], [ %alts.sroa.8.0.i, %sw.bb19.i.i.4 ], [ %alts.sroa.6.0.i, %sw.bb14.i.i.4 ], [ %alts.sroa.0.0.i, %for.body.i25.i.4.sw.epilog29.sink.split.i.i.4_crit_edge ]
  %or2778.i.i.4 = or i8 %com15.sink.i.sroa.speculated.i.4, %61
  br label %sw.epilog29.i.i.4

sw.epilog29.i.i.4:                                ; preds = %sw.epilog29.sink.split.i.i.4, %for.body.i25.i.4.sw.epilog29.i.i.4_crit_edge
  %val.0.i.i.4 = phi i8 [ %61, %for.body.i25.i.4.sw.epilog29.i.i.4_crit_edge ], [ %or2778.i.i.4, %sw.epilog29.sink.split.i.i.4 ]
  %call.i26.i.4 = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext %63, i8 noundef zeroext %val.0.i.i.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.4)
  %tobool.not.i27.i.4 = icmp eq i32 %call.i26.i.4, 0
  br i1 %tobool.not.i27.i.4, label %for.body.i25.i.5, label %sw.epilog29.i.i.4.cleanup_crit_edge

sw.epilog29.i.i.4.cleanup_crit_edge:              ; preds = %sw.epilog29.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i25.i.5:                                 ; preds = %sw.epilog29.i.i.4
  %arrayidx.i24.i.5 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 5
  %val8.i.i.5 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 5, i32 1
  %65 = ptrtoint ptr %val8.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %val8.i.i.5, align 1
  %67 = ptrtoint ptr %arrayidx.i24.i.5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i24.i.5, align 1
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %68, label %for.body.i25.i.5.sw.epilog29.i.i.5_crit_edge [
    i8 18, label %for.body.i25.i.5.sw.epilog29.sink.split.i.i.5_crit_edge
    i8 60, label %sw.bb14.i.i.5
    i8 61, label %sw.bb19.i.i.5
    i8 64, label %sw.bb24.i.i.5
  ]

for.body.i25.i.5.sw.epilog29.sink.split.i.i.5_crit_edge: ; preds = %for.body.i25.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.5

for.body.i25.i.5.sw.epilog29.i.i.5_crit_edge:     ; preds = %for.body.i25.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.i.i.5

sw.bb24.i.i.5:                                    ; preds = %for.body.i25.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.5

sw.bb19.i.i.5:                                    ; preds = %for.body.i25.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.5

sw.bb14.i.i.5:                                    ; preds = %for.body.i25.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.5

sw.epilog29.sink.split.i.i.5:                     ; preds = %sw.bb14.i.i.5, %sw.bb19.i.i.5, %sw.bb24.i.i.5, %for.body.i25.i.5.sw.epilog29.sink.split.i.i.5_crit_edge
  %com15.sink.i.sroa.speculated.i.5 = phi i8 [ %alts.sroa.12.0.i, %sw.bb24.i.i.5 ], [ %alts.sroa.8.0.i, %sw.bb19.i.i.5 ], [ %alts.sroa.6.0.i, %sw.bb14.i.i.5 ], [ %alts.sroa.0.0.i, %for.body.i25.i.5.sw.epilog29.sink.split.i.i.5_crit_edge ]
  %or2778.i.i.5 = or i8 %com15.sink.i.sroa.speculated.i.5, %66
  br label %sw.epilog29.i.i.5

sw.epilog29.i.i.5:                                ; preds = %sw.epilog29.sink.split.i.i.5, %for.body.i25.i.5.sw.epilog29.i.i.5_crit_edge
  %val.0.i.i.5 = phi i8 [ %66, %for.body.i25.i.5.sw.epilog29.i.i.5_crit_edge ], [ %or2778.i.i.5, %sw.epilog29.sink.split.i.i.5 ]
  %call.i26.i.5 = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext %68, i8 noundef zeroext %val.0.i.i.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.5)
  %tobool.not.i27.i.5 = icmp eq i32 %call.i26.i.5, 0
  br i1 %tobool.not.i27.i.5, label %for.cond.i23.i.5, label %sw.epilog29.i.i.5.cleanup_crit_edge

sw.epilog29.i.i.5.cleanup_crit_edge:              ; preds = %sw.epilog29.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i23.i.5:                                 ; preds = %sw.epilog29.i.i.5
  br i1 %exitcond.not.i22.i.5, label %for.cond.i23.i.5.for.body37.preheader.i.i_crit_edge, label %for.body.i25.i.6

for.cond.i23.i.5.for.body37.preheader.i.i_crit_edge: ; preds = %for.cond.i23.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37.preheader.i.i

for.body.i25.i.6:                                 ; preds = %for.cond.i23.i.5
  %arrayidx.i24.i.6 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 6
  %val8.i.i.6 = getelementptr %struct.ov9640_reg, ptr %ov9640_regs.0.i.i, i32 6, i32 1
  %70 = ptrtoint ptr %val8.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %val8.i.i.6, align 1
  %72 = ptrtoint ptr %arrayidx.i24.i.6 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i24.i.6, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %73, label %for.body.i25.i.6.sw.epilog29.i.i.6_crit_edge [
    i8 18, label %for.body.i25.i.6.sw.epilog29.sink.split.i.i.6_crit_edge
    i8 60, label %sw.bb14.i.i.6
    i8 61, label %sw.bb19.i.i.6
    i8 64, label %sw.bb24.i.i.6
  ]

for.body.i25.i.6.sw.epilog29.sink.split.i.i.6_crit_edge: ; preds = %for.body.i25.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.6

for.body.i25.i.6.sw.epilog29.i.i.6_crit_edge:     ; preds = %for.body.i25.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.i.i.6

sw.bb24.i.i.6:                                    ; preds = %for.body.i25.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.6

sw.bb19.i.i.6:                                    ; preds = %for.body.i25.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.6

sw.bb14.i.i.6:                                    ; preds = %for.body.i25.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i.6

sw.epilog29.sink.split.i.i.6:                     ; preds = %sw.bb14.i.i.6, %sw.bb19.i.i.6, %sw.bb24.i.i.6, %for.body.i25.i.6.sw.epilog29.sink.split.i.i.6_crit_edge
  %com15.sink.i.sroa.speculated.i.6 = phi i8 [ %alts.sroa.12.0.i, %sw.bb24.i.i.6 ], [ %alts.sroa.8.0.i, %sw.bb19.i.i.6 ], [ %alts.sroa.6.0.i, %sw.bb14.i.i.6 ], [ %alts.sroa.0.0.i, %for.body.i25.i.6.sw.epilog29.sink.split.i.i.6_crit_edge ]
  %or2778.i.i.6 = or i8 %com15.sink.i.sroa.speculated.i.6, %71
  br label %sw.epilog29.i.i.6

sw.epilog29.i.i.6:                                ; preds = %sw.epilog29.sink.split.i.i.6, %for.body.i25.i.6.sw.epilog29.i.i.6_crit_edge
  %val.0.i.i.6 = phi i8 [ %71, %for.body.i25.i.6.sw.epilog29.i.i.6_crit_edge ], [ %or2778.i.i.6, %sw.epilog29.sink.split.i.i.6 ]
  %call.i26.i.6 = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext %73, i8 noundef zeroext %val.0.i.i.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.6)
  %tobool.not.i27.i.6 = icmp eq i32 %call.i26.i.6, 0
  br i1 %tobool.not.i27.i.6, label %sw.epilog29.i.i.6.for.body37.preheader.i.i_crit_edge, label %sw.epilog29.i.i.6.cleanup_crit_edge

sw.epilog29.i.i.6.cleanup_crit_edge:              ; preds = %sw.epilog29.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog29.i.i.6.for.body37.preheader.i.i_crit_edge: ; preds = %sw.epilog29.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37.preheader.i.i

for.body37.preheader.i.i:                         ; preds = %sw.epilog29.i.i.6.for.body37.preheader.i.i_crit_edge, %for.cond.i23.i.5.for.body37.preheader.i.i_crit_edge
  %75 = select i1 %cmp.i.i, i8 88, i8 113
  %call42.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 79, i8 noundef zeroext %75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %for.cond34.i.i, label %for.body37.preheader.i.i.cleanup_crit_edge

for.body37.preheader.i.i.cleanup_crit_edge:       ; preds = %for.body37.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb14.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i

sw.bb19.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i

sw.bb24.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split.i.i

sw.epilog29.sink.split.i.i:                       ; preds = %sw.bb24.i.i, %sw.bb19.i.i, %sw.bb14.i.i, %sw.epilog.i.i.sw.epilog29.sink.split.i.i_crit_edge
  %com15.sink.i.sroa.speculated.i = phi i8 [ %alts.sroa.12.0.i, %sw.bb24.i.i ], [ %alts.sroa.8.0.i, %sw.bb19.i.i ], [ %alts.sroa.6.0.i, %sw.bb14.i.i ], [ %alts.sroa.0.0.i, %sw.epilog.i.i.sw.epilog29.sink.split.i.i_crit_edge ]
  %or2778.i.i = or i8 %com15.sink.i.sroa.speculated.i, %41
  br label %sw.epilog29.i.i

sw.epilog29.i.i:                                  ; preds = %sw.epilog29.sink.split.i.i, %sw.epilog.i.i.sw.epilog29.i.i_crit_edge
  %val.0.i.i = phi i8 [ %41, %sw.epilog.i.i.sw.epilog29.i.i_crit_edge ], [ %or2778.i.i, %sw.epilog29.sink.split.i.i ]
  %call.i26.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext %43, i8 noundef zeroext %val.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool.not.i27.i, label %for.body.i25.i.1, label %sw.epilog29.i.i.cleanup_crit_edge

sw.epilog29.i.i.cleanup_crit_edge:                ; preds = %sw.epilog29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond34.i.i:                                   ; preds = %for.body37.preheader.i.i
  %76 = select i1 %cmp.i.i, i8 72, i8 62
  %call42.1.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 80, i8 noundef zeroext %76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.1.i.i)
  %tobool43.not.1.i.i = icmp eq i32 %call42.1.i.i, 0
  br i1 %tobool43.not.1.i.i, label %for.cond34.1.i.i, label %for.cond34.i.i.cleanup_crit_edge

for.cond34.i.i.cleanup_crit_edge:                 ; preds = %for.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond34.1.i.i:                                 ; preds = %for.cond34.i.i
  %77 = select i1 %cmp.i.i, i8 16, i8 12
  %call42.2.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 81, i8 noundef zeroext %77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.2.i.i)
  %tobool43.not.2.i.i = icmp eq i32 %call42.2.i.i, 0
  br i1 %tobool43.not.2.i.i, label %for.cond34.2.i.i, label %for.cond34.1.i.i.cleanup_crit_edge

for.cond34.1.i.i.cleanup_crit_edge:               ; preds = %for.cond34.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond34.2.i.i:                                 ; preds = %for.cond34.1.i.i
  %78 = select i1 %cmp.i.i, i8 40, i8 51
  %call42.3.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 82, i8 noundef zeroext %78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.3.i.i)
  %tobool43.not.3.i.i = icmp eq i32 %call42.3.i.i, 0
  br i1 %tobool43.not.3.i.i, label %for.cond34.3.i.i, label %for.cond34.2.i.i.cleanup_crit_edge

for.cond34.2.i.i.cleanup_crit_edge:               ; preds = %for.cond34.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond34.3.i.i:                                 ; preds = %for.cond34.2.i.i
  %79 = select i1 %cmp.i.i, i8 72, i8 114
  %call42.4.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 83, i8 noundef zeroext %79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.4.i.i)
  %tobool43.not.4.i.i = icmp eq i32 %call42.4.i.i, 0
  br i1 %tobool43.not.4.i.i, label %for.cond34.4.i.i, label %for.cond34.3.i.i.cleanup_crit_edge

for.cond34.3.i.i.cleanup_crit_edge:               ; preds = %for.cond34.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond34.4.i.i:                                 ; preds = %for.cond34.3.i.i
  %80 = select i1 %cmp.i.i, i8 112, i8 0
  %call42.5.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 84, i8 noundef zeroext %80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.5.i.i)
  %tobool43.not.5.i.i = icmp eq i32 %call42.5.i.i, 0
  br i1 %tobool43.not.5.i.i, label %for.cond34.5.i.i, label %for.cond34.4.i.i.cleanup_crit_edge

for.cond34.4.i.i.cleanup_crit_edge:               ; preds = %for.cond34.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond34.5.i.i:                                 ; preds = %for.cond34.4.i.i
  %81 = select i1 %cmp.i.i, i8 64, i8 43
  %call42.6.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 85, i8 noundef zeroext %81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.6.i.i)
  %tobool43.not.6.i.i = icmp eq i32 %call42.6.i.i, 0
  br i1 %tobool43.not.6.i.i, label %for.cond34.6.i.i, label %for.cond34.5.i.i.cleanup_crit_edge

for.cond34.5.i.i.cleanup_crit_edge:               ; preds = %for.cond34.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond34.6.i.i:                                 ; preds = %for.cond34.5.i.i
  %82 = select i1 %cmp.i.i, i8 64, i8 102
  %call42.7.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 86, i8 noundef zeroext %82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.7.i.i)
  %tobool43.not.7.i.i = icmp eq i32 %call42.7.i.i, 0
  br i1 %tobool43.not.7.i.i, label %for.cond34.7.i.i, label %for.cond34.6.i.i.cleanup_crit_edge

for.cond34.6.i.i.cleanup_crit_edge:               ; preds = %for.cond34.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond34.7.i.i:                                 ; preds = %for.cond34.6.i.i
  %83 = select i1 %cmp.i.i, i8 64, i8 -46
  %call42.8.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 87, i8 noundef zeroext %83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.8.i.i)
  %tobool43.not.8.i.i = icmp eq i32 %call42.8.i.i, 0
  br i1 %tobool43.not.8.i.i, label %for.cond34.8.i.i, label %for.cond34.7.i.i.cleanup_crit_edge

for.cond34.7.i.i.cleanup_crit_edge:               ; preds = %for.cond34.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond34.8.i.i:                                 ; preds = %for.cond34.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = select i1 %cmp.i.i, i8 15, i8 101
  %call42.9.i.i = tail call fastcc i32 @ov9640_reg_write(ptr noundef %27, i8 noundef zeroext 88, i8 noundef zeroext %84) #8
  br label %cleanup

if.end6:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sd_state, align 4
  %87 = call ptr @memcpy(ptr %86, ptr %format1, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.cond34.8.i.i, %for.cond34.7.i.i.cleanup_crit_edge, %for.cond34.6.i.i.cleanup_crit_edge, %for.cond34.5.i.i.cleanup_crit_edge, %for.cond34.4.i.i.cleanup_crit_edge, %for.cond34.3.i.i.cleanup_crit_edge, %for.cond34.2.i.i.cleanup_crit_edge, %for.cond34.1.i.i.cleanup_crit_edge, %for.cond34.i.i.cleanup_crit_edge, %sw.epilog29.i.i.cleanup_crit_edge, %for.body37.preheader.i.i.cleanup_crit_edge, %sw.epilog29.i.i.6.cleanup_crit_edge, %sw.epilog29.i.i.5.cleanup_crit_edge, %sw.epilog29.i.i.4.cleanup_crit_edge, %sw.epilog29.i.i.3.cleanup_crit_edge, %sw.epilog29.i.i.2.cleanup_crit_edge, %sw.epilog29.i.i.1.cleanup_crit_edge, %do.end.i17.i, %for.body.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i17.i ], [ %call42.i.i, %for.body37.preheader.i.i.cleanup_crit_edge ], [ %call42.1.i.i, %for.cond34.i.i.cleanup_crit_edge ], [ %call42.2.i.i, %for.cond34.1.i.i.cleanup_crit_edge ], [ %call42.3.i.i, %for.cond34.2.i.i.cleanup_crit_edge ], [ %call42.4.i.i, %for.cond34.3.i.i.cleanup_crit_edge ], [ %call42.5.i.i, %for.cond34.4.i.i.cleanup_crit_edge ], [ %call42.6.i.i, %for.cond34.5.i.i.cleanup_crit_edge ], [ %call42.7.i.i, %for.cond34.6.i.i.cleanup_crit_edge ], [ %call42.8.i.i, %for.cond34.7.i.i.cleanup_crit_edge ], [ %call42.9.i.i, %for.cond34.8.i.i ], [ %call.i26.i, %sw.epilog29.i.i.cleanup_crit_edge ], [ %call.i26.i.1, %sw.epilog29.i.i.1.cleanup_crit_edge ], [ %call.i26.i.2, %sw.epilog29.i.i.2.cleanup_crit_edge ], [ %call.i26.i.3, %sw.epilog29.i.i.3.cleanup_crit_edge ], [ %call.i26.i.4, %sw.epilog29.i.i.4.cleanup_crit_edge ], [ %call.i26.i.5, %sw.epilog29.i.i.5.cleanup_crit_edge ], [ %call.i26.i.6, %sw.epilog29.i.i.6.cleanup_crit_edge ], [ %call.i12.i, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov9640_get_selection(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %top, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %5, label %if.end.return_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 0, label %if.end.sw.bb_crit_edge9
  ]

if.end.sw.bb_crit_edge9:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge9
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1280, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 960, ptr %height, align 4
  br label %return

return:                                           ; preds = %sw.bb, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ov9640_get_mbus_config(ptr nocapture noundef readnone %sd, i32 noundef %pad, ptr nocapture noundef writeonly %cfg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 341, ptr %flags, align 4
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %cfg, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9640_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -44
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963797, label %sw.bb
    i32 9963796, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @ov9640_reg_rmw(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @ov9640_reg_rmw(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @ov9640_reg_rmw(ptr noundef %3, i8 noundef zeroext 32, i8 noundef zeroext 0)
  br label %cleanup

if.end8:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call fastcc i32 @ov9640_reg_rmw(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ %call9, %if.end8 ], [ %call1, %if.then ], [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov9640_reg_rmw(ptr noundef %client, i8 noundef zeroext %set, i8 noundef zeroext %unset) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 30, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 131071, ptr %1, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1.i, align 2
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags.i, align 2
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 8
  %call4.i = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.do.end_crit_edge, label %if.end

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ %call4.i, %if.end.i.do.end_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5, i32 noundef 30) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef 30) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  %or1 = or i8 %14, %set
  %neg = xor i8 %unset, -1
  %and = and i8 %or1, %neg
  %call7 = call fastcc i32 @ov9640_reg_write(ptr noundef %client, i8 noundef zeroext 30, i8 noundef zeroext %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.22, i32 noundef 30) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0.i, %do.end ], [ %call7, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_ov9640__292_771_ov9640_i2c_driver_init6, !1, !"__initcall__kmod_ov9640__292_771_ov9640_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov9640.c", i32 771, i32 1}
!2 = !{ptr @__exitcall_ov9640_i2c_driver_exit, !1, !"__exitcall_ov9640_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov9640.c", i32 773, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov9640.c", i32 774, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov9640.c", i32 775, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov9640.c", i32 764, i32 11}
!12 = !{ptr @ov9640_i2c_driver, !13, !"ov9640_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov9640.c", i32 762, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov9640.c", i32 693, i32 50}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov9640.c", i32 700, i32 50}
!18 = !{ptr @ov9640_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ov9640.c", i32 709, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/ov9640.c", i32 722, i32 41}
!23 = !{ptr @ov9640_subdev_ops, !24, !"ov9640_subdev_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/ov9640.c", i32 674, i32 37}
!25 = !{ptr @ov9640_core_ops, !26, !"ov9640_core_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/ov9640.c", i32 642, i32 42}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/ov9640.c", i32 195, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ov9640_reg_read._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @ov9640_reg_read._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ov9640.c", i32 214, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ov9640_reg_write._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ov9640_reg_write._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ov9640.c", i32 221, i32 3}
!42 = !{ptr @ov9640_reg_write._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ov9640_reg_write._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ov9640_video_ops, !45, !"ov9640_video_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ov9640.c", i32 663, i32 43}
!46 = !{ptr @ov9640_pad_ops, !47, !"ov9640_pad_ops", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov9640.c", i32 667, i32 41}
!48 = !{ptr @ov9640_codes, !49, !"ov9640_codes", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov9640.c", i32 164, i32 18}
!50 = distinct !{null, !51, !"res_x", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov9640.c", i32 355, i32 19}
!52 = distinct !{null, !53, !"res_y", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov9640.c", i32 356, i32 19}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov9640.c", i32 259, i32 3}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ov9640_reset._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ov9640_reset._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @ov9640_regs_dflt, !60, !"ov9640_regs_dflt", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/ov9640.c", i32 42, i32 32}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/ov9640.c", i32 435, i32 3}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ov9640_write_regs._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ov9640_write_regs._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @ov9640_regs_qqcif, !67, !"ov9640_regs_qqcif", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov9640.c", i32 73, i32 32}
!68 = !{ptr @ov9640_regs_qqvga, !69, !"ov9640_regs_qqvga", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov9640.c", i32 83, i32 32}
!70 = !{ptr @ov9640_regs_qcif, !71, !"ov9640_regs_qcif", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov9640.c", i32 93, i32 32}
!72 = !{ptr @ov9640_regs_qvga, !73, !"ov9640_regs_qvga", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov9640.c", i32 102, i32 32}
!74 = !{ptr @ov9640_regs_cif, !75, !"ov9640_regs_cif", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov9640.c", i32 111, i32 32}
!76 = !{ptr @ov9640_regs_vga, !77, !"ov9640_regs_vga", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ov9640.c", i32 120, i32 32}
!78 = !{ptr @ov9640_regs_sxga, !79, !"ov9640_regs_sxga", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov9640.c", i32 129, i32 32}
!80 = distinct !{null, !81, !"ov9640_regs_yuv", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov9640.c", i32 138, i32 32}
!82 = distinct !{null, !83, !"ov9640_regs_rgb", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov9640.c", i32 151, i32 32}
!84 = !{ptr @ov9640_ctrl_ops, !85, !"ov9640_ctrl_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov9640.c", i32 638, i32 35}
!86 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov9640.c", i32 236, i32 3}
!88 = !{ptr @.str.20, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ov9640_reg_rmw._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ov9640_reg_rmw._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.22, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/ov9640.c", i32 246, i32 3}
!93 = !{ptr @ov9640_reg_rmw._entry.21, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ov9640_reg_rmw._entry_ptr.23, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/ov9640.c", i32 623, i32 3}
!97 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ov9640_video_probe._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ov9640_video_probe._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ov9640.c", i32 628, i32 2}
!102 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ov9640_video_probe._entry.26, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @ov9640_video_probe._entry_ptr.29, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @ov9640_id, !106, !"ov9640_id", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov9640.c", i32 756, i32 35}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
