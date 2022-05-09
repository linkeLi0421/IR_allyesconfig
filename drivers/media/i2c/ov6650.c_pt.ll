; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov6650.c_pt.bc'
source_filename = "../drivers/media/i2c/ov6650.c"
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
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.ov6650_xclk = type { i32, i8 }
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
%struct.ov6650 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, %struct.anon.100, %struct.anon.101, %struct.anon.102, ptr, i8, %struct.v4l2_rect, %struct.v4l2_fract, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_ov6650__303_1107_ov6650_i2c_driver_init6 = internal global ptr @ov6650_i2c_driver_init, section ".initcall6.init", align 4
@ov6650_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ov6650_probe, ptr @ov6650_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ov6650_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov6650_i2c_driver_exit = internal global ptr @ov6650_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [77 x i8] c"ov6650.description=V4L2 subdevice driver for OmniVision OV6650 camera sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [54 x i8] c"ov6650.author=Janusz Krzysztofik <jmkrzyszt@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [37 x i8] c"ov6650.file=drivers/media/i2c/ov6650\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [22 x i8] c"ov6650.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov6650\00", [25 x i8] zeroinitializer }, align 32
@ov6650_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov6650\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov6650_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov6650_core_ops, ptr null, ptr null, ptr @ov6650_video_ops, ptr null, ptr null, ptr null, ptr @ov6650_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov6650_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ov6650:1023:(&priv->hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@ov6550_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ov6550_g_volatile_ctrl, ptr null, ptr @ov6550_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov6650_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @ov6650_video_probe, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov6650_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov6650_get_register, ptr @ov6650_set_register, ptr @ov6650_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ov6650_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov6650_s_stream, ptr null, ptr @ov6650_g_frame_interval, ptr @ov6650_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov6650_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov6650_enum_mbus_code, ptr null, ptr null, ptr @ov6650_get_fmt, ptr @ov6650_set_fmt, ptr @ov6650_get_selection, ptr @ov6650_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov6650_get_mbus_config, ptr @ov6650_set_mbus_config }, [60 x i8] zeroinitializer }, align 32
@ov6650_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 273, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed reading register 0x%02x!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov6650_reg_read\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov6650.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov6650_reg_read._entry_ptr = internal global ptr @ov6650_reg_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ov6650_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed writing register 0x%02x!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov6650_reg_write\00", [47 x i8] zeroinitializer }, align 32
@ov6650_reg_write._entry_ptr = internal global ptr @ov6650_reg_write._entry, section ".printk_index", align 4
@ov6650_g_frame_interval.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.10, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov6650_g_frame_interval\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Frame interval: %u/%u s\0A\00", [39 x i8] zeroinitializer }, align 32
@ov6650_reg_rmw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[Read]-Modify-Write of register 0x%02x failed!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov6650_reg_rmw\00", [17 x i8] zeroinitializer }, align 32
@ov6650_reg_rmw._entry_ptr = internal global ptr @ov6650_reg_rmw._entry, section ".printk_index", align 4
@ov6650_reg_rmw._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Read-Modify-[Write] of register 0x%02x failed!\0A\00", [48 x i8] zeroinitializer }, align 32
@ov6650_reg_rmw._entry_ptr.15 = internal global ptr @ov6650_reg_rmw._entry.13, section ".printk_index", align 4
@ov6650_codes = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8200, i32 8198, i32 8201, i32 8199, i32 12289, i32 8193], [40 x i8] zeroinitializer }, align 32
@ov6650_def_fmt = internal constant { %struct.v4l2_mbus_framefmt, [48 x i8] } { %struct.v4l2_mbus_framefmt { i32 352, i32 288, i32 12289, i32 1, i32 8, %union.anon.96 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@ov6650_s_fmt.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov6650_s_fmt\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pixel format GREY8_1X8\0A\00", [40 x i8] zeroinitializer }, align 32
@ov6650_s_fmt.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.18, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pixel format YUYV8_2X8_LE\0A\00", [37 x i8] zeroinitializer }, align 32
@ov6650_s_fmt.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.19, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pixel format YVYU8_2X8_LE (untested)\0A\00", [58 x i8] zeroinitializer }, align 32
@ov6650_s_fmt.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.20, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pixel format YUYV8_2X8_BE\0A\00", [37 x i8] zeroinitializer }, align 32
@ov6650_s_fmt.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.21, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pixel format YVYU8_2X8_BE (untested)\0A\00", [58 x i8] zeroinitializer }, align 32
@ov6650_s_fmt.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.22, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pixel format SBGGR8_1X8 (untested)\0A\00", [60 x i8] zeroinitializer }, align 32
@ov6650_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.4, i32 635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Pixel format not handled: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@ov6650_s_fmt._entry_ptr = internal global ptr @ov6650_s_fmt._entry, section ".printk_index", align 4
@ov6650_s_fmt.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.24, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max resolution: QCIF\0A\00", [42 x i8] zeroinitializer }, align 32
@ov6650_s_fmt.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.25, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max resolution: CIF\0A\00", [43 x i8] zeroinitializer }, align 32
@ov6650_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 827, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk request err: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov6650_video_probe\00", [45 x i8] zeroinitializer }, align 32
@ov6650_video_probe._entry_ptr = internal global ptr @ov6650_video_probe._entry, section ".printk_index", align 4
@ov6650_xclk = internal constant { [4 x %struct.ov6650_xclk], [32 x i8] } { [4 x %struct.ov6650_xclk] [%struct.ov6650_xclk { i32 8000000, i8 0 }, %struct.ov6650_xclk { i32 12000000, i8 64 }, %struct.ov6650_xclk { i32 16000000, i8 -128 }, %struct.ov6650_xclk { i32 24000000, i8 -64 }], [32 x i8] zeroinitializer }, align 32
@ov6650_video_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 838, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"using host default clock rate %lukHz\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov6650_video_probe._entry_ptr.31 = internal global ptr @ov6650_video_probe._entry.28, section ".printk_index", align 4
@ov6650_video_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.4, i32 848, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"using negotiated clock rate %lukHz\0A\00", [60 x i8] zeroinitializer }, align 32
@ov6650_video_probe._entry_ptr.34 = internal global ptr @ov6650_video_probe._entry.32, section ".printk_index", align 4
@ov6650_video_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.4, i32 852, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to get supported clock rate\0A\00", [60 x i8] zeroinitializer }, align 32
@ov6650_video_probe._entry_ptr.37 = internal global ptr @ov6650_video_probe._entry.35, section ".printk_index", align 4
@ov6650_video_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.4, i32 880, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Product ID error 0x%02x:0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@ov6650_video_probe._entry_ptr.40 = internal global ptr @ov6650_video_probe._entry.38, section ".printk_index", align 4
@ov6650_video_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.27, ptr @.str.4, i32 887, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ov6650 Product ID 0x%02x:0x%02x Manufacturer ID 0x%02x:0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@ov6650_video_probe._entry_ptr.43 = internal global ptr @ov6650_video_probe._entry.41, section ".printk_index", align 4
@ov6650_reset.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov6650_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reset\0A\00", [25 x i8] zeroinitializer }, align 32
@ov6650_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 794, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"An error occurred while entering soft reset!\0A\00", [50 x i8] zeroinitializer }, align 32
@ov6650_reset._entry_ptr = internal global ptr @ov6650_reset._entry, section ".printk_index", align 4
@ov6650_prog_dflt.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov6650_prog_dflt\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"initializing\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 8193, i64 8198, i64 8199, i64 8200, i64 8201, i64 8202, i64 12289]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [8 x i64] [i64 6, i64 32, i64 8193, i64 8198, i64 8199, i64 8200, i64 8201, i64 12289]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 8193, i64 12289]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 9963788, i64 9963794, i64 10094849]
@__sancov_gen_cov_switch_values.53 = internal global [11 x i64] [i64 9, i64 32, i64 9963776, i64 9963778, i64 9963779, i64 9963788, i64 9963792, i64 9963794, i64 9963796, i64 9963797, i64 10094849]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 8000000, i64 12000000, i64 16000000, i64 24000000]
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"ov6650_i2c_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1098, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1100, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"ov6650_id\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1092, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"ov6650_subdev_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 999, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1023, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"ov6550_ctrl_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 905, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"ov6650_internal_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1005, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"ov6650_core_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 910, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"ov6650_video_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 983, i32 43 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"ov6650_pad_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 989, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 273, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 293, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 749, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 308, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 319, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"ov6650_codes\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 228, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"ov6650_def_fmt\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 237, i32 40 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 595, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 600, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 605, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 610, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 620, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 630, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 635, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 649, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 652, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 827, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [12 x i8] c"ov6650_xclk\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 209, i32 33 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 837, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 847, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 852, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 879, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 885, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 789, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 793, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [30 x i8] c"../drivers/media/i2c/ov6650.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 804, i32 2 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_ov6650_i2c_driver_exit, ptr @__initcall__kmod_ov6650__303_1107_ov6650_i2c_driver_init6, ptr @ov6650_i2c_driver_exit, ptr @ov6650_reg_read._entry, ptr @ov6650_reg_read._entry_ptr, ptr @ov6650_reg_rmw._entry, ptr @ov6650_reg_rmw._entry.13, ptr @ov6650_reg_rmw._entry_ptr, ptr @ov6650_reg_rmw._entry_ptr.15, ptr @ov6650_reg_write._entry, ptr @ov6650_reg_write._entry_ptr, ptr @ov6650_reset._entry, ptr @ov6650_reset._entry_ptr, ptr @ov6650_s_fmt._entry, ptr @ov6650_s_fmt._entry_ptr, ptr @ov6650_video_probe._entry, ptr @ov6650_video_probe._entry.28, ptr @ov6650_video_probe._entry.32, ptr @ov6650_video_probe._entry.35, ptr @ov6650_video_probe._entry.38, ptr @ov6650_video_probe._entry.41, ptr @ov6650_video_probe._entry_ptr, ptr @ov6650_video_probe._entry_ptr.31, ptr @ov6650_video_probe._entry_ptr.34, ptr @ov6650_video_probe._entry_ptr.37, ptr @ov6650_video_probe._entry_ptr.40, ptr @ov6650_video_probe._entry_ptr.43, ptr @ov6650_i2c_driver, ptr @.str, ptr @ov6650_id, ptr @ov6650_subdev_ops, ptr @ov6650_probe._key, ptr @.str.1, ptr @ov6550_ctrl_ops, ptr @ov6650_internal_ops, ptr @ov6650_core_ops, ptr @ov6650_video_ops, ptr @ov6650_pad_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @ov6650_codes, ptr @ov6650_def_fmt, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ov6650_xclk, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6550_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_reg_rmw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_reg_rmw._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_codes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_def_fmt to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_xclk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_video_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_video_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_video_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_video_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_video_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov6650_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov6650_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @ov6650_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_probe(ptr noundef %client, ptr nocapture noundef readnone %did) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 444, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ov6650_subdev_ops) #9
  %hdl = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 1
  %call1 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 13, ptr noundef nonnull @ov6650_probe._key, ptr noundef nonnull @.str.1) #9
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %0 = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %0, align 4
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 0) #9
  %gain = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %gain, align 4
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %3 = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %3, align 4
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %blue = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %blue, align 4
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %red = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %red, align 4
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 8) #9
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 16) #9
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call23 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #9
  %7 = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call23, ptr %7, align 4
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 77) #9
  %exposure = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call25, ptr %exposure, align 4
  %call27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov6550_ctrl_ops, i32 noundef 9963792, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 18) #9
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool31.not = icmp eq i32 %12, 0
  br i1 %tobool31.not, label %if.end35, label %if.end.ectlhdlfree_crit_edge

if.end.ectlhdlfree_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ectlhdlfree

if.end35:                                         ; preds = %if.end
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %0, i8 noundef zeroext 0, i1 noundef zeroext true) #9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %3, i8 noundef zeroext 0, i1 noundef zeroext true) #9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %7, i8 noundef zeroext 1, i1 noundef zeroext true) #9
  %rect = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 72, ptr %rect, align 4
  %top = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %top, align 4
  %width = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 352, ptr %width, align 4
  %height = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 288, ptr %height, align 4
  %tpf = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %tpf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %tpf, align 4
  %denominator = getelementptr inbounds %struct.ov6650, ptr %call.i, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 30, ptr %denominator, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ov6650_internal_ops, ptr %internal_ops, align 4
  %call45 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end35.cleanup_crit_edge, label %if.end35.ectlhdlfree_crit_edge

if.end35.ectlhdlfree_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %ectlhdlfree

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ectlhdlfree:                                      ; preds = %if.end35.ectlhdlfree_crit_edge, %if.end.ectlhdlfree_crit_edge
  %ret.0 = phi i32 [ %call45, %if.end35.ectlhdlfree_crit_edge ], [ %12, %if.end.ectlhdlfree_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  br label %cleanup

cleanup:                                          ; preds = %ectlhdlfree, %if.end35.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ectlhdlfree ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  %hdl = getelementptr inbounds %struct.ov6650, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_get_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %3)
  %tobool.not = icmp ult i64 %3, 256
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1, ptr %size, align 1
  %conv = trunc i64 %3 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #9
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
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
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.ov6650_reg_read.exit_crit_edge, label %if.end.i

if.end.ov6650_reg_read.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit

if.end.i:                                         ; preds = %if.end
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags.i, align 2
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call4.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.ov6650_reg_read.exit_crit_edge, label %if.then5

if.end.i.ov6650_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit

ov6650_reg_read.exit:                             ; preds = %if.end.i.ov6650_reg_read.exit_crit_edge, %if.end.ov6650_reg_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end.ov6650_reg_read.exit_crit_edge ], [ %call4.i, %if.end.i.ov6650_reg_read.exit_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %18 = trunc i64 %3 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef %18) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  br label %cleanup

if.then5:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  %conv6 = zext i8 %20 to i64
  %val7 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %21 = ptrtoint ptr %val7 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %conv6, ptr %val7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %ov6650_reg_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ %ret.0.i, %ov6650_reg_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_set_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %3)
  %tobool.not = icmp ult i64 %3, 256
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = trunc i64 %3 to i8
  %conv6 = trunc i64 %5 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %data.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr1.i, align 2
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.ov6650_reg_write.exit_crit_edge

if.end.ov6650_reg_write.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %19 = trunc i64 %3 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef %19) #12
  br label %ov6650_reg_write.exit

ov6650_reg_write.exit:                            ; preds = %do.end.i, %if.end.ov6650_reg_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end.ov6650_reg_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ov6650_reg_write.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ov6650_reg_write.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_s_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %clk3 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.if.end.sink.split_crit_edge

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %5) #9
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.else, %if.end.i.if.end.sink.split_crit_edge
  %ret.0.ph = phi i32 [ 0, %if.else ], [ %call1.i, %if.end.i.if.end.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ], [ %ret.0.ph, %if.end.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov6650_reg_write(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #9
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
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
  %call = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov6650_s_stream(ptr nocapture noundef readnone %sd, i32 noundef %enable) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %ival) #2 align 64 {
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
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %tpf = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %tpf to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %tpf, align 4
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %interval, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_g_frame_interval.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_g_frame_interval, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %denominator, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_g_frame_interval.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %8, i32 noundef %10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_s_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %ival) #2 align 64 {
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
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.if.end.thread_crit_edge, label %lor.lhs.false

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %entry
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %lor.lhs.false.if.end.thread_crit_edge, label %if.end

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %5, 30
  %div5 = udiv i32 %mul, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp6 = icmp ugt i32 %7, %mul
  %8 = tail call i32 @llvm.smin.i32(i32 %div5, i32 64)
  %spec.select = select i1 %cmp6, i32 1, i32 %8
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %lor.lhs.false.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %9 = phi i32 [ 1, %lor.lhs.false.if.end.thread_crit_edge ], [ 1, %entry.if.end.thread_crit_edge ], [ %spec.select, %if.end ]
  %10 = trunc i32 %9 to i8
  %conv = add i8 %10, -1
  %call13 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext %conv, i8 noundef zeroext 63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then14, label %if.end.thread.if.end20_crit_edge

if.end.thread.if.end20_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then14:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %tpf15 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %tpf15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %tpf15, align 4
  %denominator18 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %denominator18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %denominator18, align 4
  %13 = load i64, ptr %tpf15, align 4
  %14 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %interval, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end.thread.if.end20_crit_edge
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov6650_reg_rmw(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %set, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %data.i27 = alloca [2 x i8], align 1
  %msg.i28 = alloca %struct.i2c_msg, align 4
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #9
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
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
  %call.i = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags.i, align 2
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 8
  %call4.i = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.do.end_crit_edge, label %if.end

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ %call4.i, %if.end.i.do.end_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv.i = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef %conv.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  %neg = xor i8 %mask, -1
  %and = and i8 %14, %neg
  %or26 = or i8 %and, %set
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i27) #9
  %15 = getelementptr inbounds [2 x i8], ptr %data.i27, i32 0, i32 1
  %16 = ptrtoint ptr %data.i27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %reg, ptr %data.i27, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or26, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i28) #9
  %18 = getelementptr inbounds i8, ptr %msg.i28, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 196607, ptr %18, align 4
  %20 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr1.i, align 2
  %22 = ptrtoint ptr %msg.i28 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msg.i28, align 4
  %flags.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i30 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i30, align 2
  %buf.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data.i27, ptr %buf.i32, align 4
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i34 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i28, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp.i35 = icmp slt i32 %call.i34, 0
  br i1 %cmp.i35, label %do.end12, label %ov6650_reg_write.exit.thread

ov6650_reg_write.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i28) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i27) #9
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i36 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv.i37 = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i36, ptr noundef nonnull @.str.7, i32 noundef %conv.i37) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i28) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i27) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i36, ptr noundef nonnull @.str.14, i32 noundef %conv.i37) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %ov6650_reg_write.exit.thread, %do.end
  %retval.0 = phi i32 [ %ret.0.i, %do.end ], [ %call.i34, %do.end12 ], [ 0, %ov6650_reg_write.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov6650_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ugt i32 %3, 5
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [6 x i32], ptr @ov6650_codes, i32 0, i32 %3
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

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov6650_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memcpy(ptr %format1, ptr @ov6650_def_fmt, i32 48)
  %7 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %format1, align 4
  %14 = load ptr, ptr %sd_state, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height7, align 4
  %18 = load ptr, ptr %sd_state, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 2
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %width11 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %width11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width11, align 4
  %half_scale = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %half_scale to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %half_scale, align 4, !range !140
  %23 = zext i8 %22 to i32
  %shr = lshr i32 %20, %23
  %24 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr, ptr %format1, align 4
  %height15 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %height15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height15, align 4
  %27 = load i8, ptr %half_scale, align 4, !range !140
  %28 = zext i8 %27 to i32
  %shr19 = lshr i32 %26, %28
  %height20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr19, ptr %height20, align 4
  %code21 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then3
  %code.sink = phi ptr [ %code, %if.then3 ], [ %code21, %if.else ]
  %30 = ptrtoint ptr %code.sink to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %code.sink, align 4
  %code10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %code10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %code10, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup52_crit_edge

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %width1.i = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width1.i, align 4
  %shr.i = lshr i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %7)
  %cmp.i = icmp ult i32 %shr.i, %7
  br i1 %cmp.i, label %if.end.if.then4_crit_edge, label %is_unscaled_ok.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

is_unscaled_ok.exit:                              ; preds = %if.end
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %height2.i = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height2.i, align 4
  %shr3.i = lshr i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr3.i, i32 %11)
  %cmp4.i = icmp ult i32 %shr3.i, %11
  br i1 %cmp4.i, label %is_unscaled_ok.exit.if.then4_crit_edge, label %is_unscaled_ok.exit.if.end7_crit_edge

is_unscaled_ok.exit.if.end7_crit_edge:            ; preds = %is_unscaled_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

is_unscaled_ok.exit.if.then4_crit_edge:           ; preds = %is_unscaled_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %is_unscaled_ok.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @v4l_bound_align_image(ptr noundef %format1, i32 noundef 2, i32 noundef 352, i32 noundef 1, ptr noundef %height, i32 noundef 2, i32 noundef 288, i32 noundef 1, i32 noundef 0) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %is_unscaled_ok.exit.if.end7_crit_edge
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %sw.default [
    i32 8202, label %if.end7.sw.epilog.sink.split_crit_edge
    i32 8193, label %if.end7.sw.epilog_crit_edge
    i32 8201, label %if.end7.sw.epilog_crit_edge88
    i32 8200, label %if.end7.sw.epilog_crit_edge89
    i32 8199, label %if.end7.sw.epilog_crit_edge90
    i32 8198, label %if.end7.sw.epilog_crit_edge91
    i32 12289, label %if.end7.sw.epilog_crit_edge92
  ]

if.end7.sw.epilog_crit_edge92:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge91:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge90:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge89:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge88:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.default, %if.end7.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 12289, %sw.default ], [ 8193, %if.end7.sw.epilog.sink.split_crit_edge ]
  %17 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %code, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end7.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge88, %if.end7.sw.epilog_crit_edge89, %if.end7.sw.epilog_crit_edge90, %if.end7.sw.epilog_crit_edge91, %if.end7.sw.epilog_crit_edge92
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %format1, align 4
  %22 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sd_state, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %23, align 4
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %27 = load ptr, ptr %sd_state, align 4
  %height17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %height17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %height17, align 4
  %29 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %code, align 4
  %31 = load ptr, ptr %sd_state, align 4
  %code21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %code21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %code21, align 4
  %33 = call ptr @memcpy(ptr %format1, ptr @ov6650_def_fmt, i32 48)
  %34 = load ptr, ptr %sd_state, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  store i32 %36, ptr %format1, align 4
  %37 = load ptr, ptr %sd_state, align 4
  %height28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %height28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height28, align 4
  store i32 %39, ptr %height, align 4
  %40 = load ptr, ptr %sd_state, align 4
  %code32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %40, i32 0, i32 2
  br label %cleanup52.sink.split

if.else:                                          ; preds = %sw.epilog
  %call34 = tail call fastcc i32 @ov6650_s_fmt(ptr noundef %sd, ptr noundef %format1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.else.cleanup52_crit_edge

if.else.cleanup52_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call ptr @memcpy(ptr %format1, ptr @ov6650_def_fmt, i32 48)
  %42 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width1.i, align 4
  %half_scale = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 6
  %44 = ptrtoint ptr %half_scale to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %half_scale, align 4, !range !140
  %46 = zext i8 %45 to i32
  %shr = lshr i32 %43, %46
  %47 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr, ptr %format1, align 4
  %height43 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 3
  %48 = ptrtoint ptr %height43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height43, align 4
  %50 = load i8, ptr %half_scale, align 4, !range !140
  %51 = zext i8 %50 to i32
  %shr47 = lshr i32 %49, %51
  %52 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr47, ptr %height, align 4
  %code49 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 9
  br label %cleanup52.sink.split

cleanup52.sink.split:                             ; preds = %if.end37, %if.then11
  %code32.sink = phi ptr [ %code32, %if.then11 ], [ %code49, %if.end37 ]
  %53 = ptrtoint ptr %code32.sink to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %code32.sink, align 4
  %55 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %code, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup52.sink.split, %if.else.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup52_crit_edge ], [ %call34, %if.else.cleanup52_crit_edge ], [ 0, %cleanup52.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov6650_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #7 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
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
  store i32 72, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 352, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 288, ptr %height, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %r6 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %rect = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %r6, ptr %rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %sel) #2 align 64 {
entry:
  %data.i138 = alloca [2 x i8], align 1
  %msg.i139 = alloca %struct.i2c_msg, align 4
  %data.i125 = alloca [2 x i8], align 1
  %msg.i126 = alloca %struct.i2c_msg, align 4
  %data.i112 = alloca [2 x i8], align 1
  %msg.i113 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
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
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef 2, i32 noundef 352, i32 noundef 1, ptr noundef %height, i32 noundef 2, i32 noundef 288, i32 noundef 1, i32 noundef 0) #9
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %sub = sub i32 424, %9
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %sub10 = sub i32 296, %11
  tail call void @v4l_bound_align_image(ptr noundef %r, i32 noundef 72, i32 noundef %sub, i32 noundef 1, ptr noundef %top, i32 noundef 8, i32 noundef %sub10, i32 noundef 1, i32 noundef 0) #9
  %12 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r, align 4
  %14 = lshr i32 %13, 1
  %conv = trunc i32 %14 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #9
  %15 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 23, ptr %data.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 196607, ptr %18, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr1.i, align 2
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end33.thread, label %if.then14

if.end33.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef 23) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #9
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #9
  %rect = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rect, align 4
  %30 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %r, align 4
  %sub18 = sub i32 %29, %31
  %width20 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %width20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width20, align 4
  %add = add i32 %sub18, %33
  store i32 %add, ptr %width20, align 4
  %34 = load i32, ptr %r, align 4
  store i32 %34, ptr %rect, align 4
  %35 = load i32, ptr %r, align 4
  %36 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width, align 4
  %add29 = add i32 %37, %35
  %shr30 = lshr i32 %add29, 1
  %conv31 = trunc i32 %shr30 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i112) #9
  %38 = getelementptr inbounds [2 x i8], ptr %data.i112, i32 0, i32 1
  %39 = ptrtoint ptr %data.i112 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 24, ptr %data.i112, align 1
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv31, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i113) #9
  %41 = getelementptr inbounds i8, ptr %msg.i113, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %43 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr1.i, align 2
  %45 = ptrtoint ptr %msg.i113 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %msg.i113, align 4
  %flags.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i113, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i115, align 2
  %buf.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i113, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %data.i112, ptr %buf.i117, align 4
  %48 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter.i, align 8
  %call.i119 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i113, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.i120 = icmp slt i32 %call.i119, 0
  br i1 %cmp.i120, label %if.end33, label %if.then35

if.end33:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i121 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i121, ptr noundef nonnull @.str.7, i32 noundef 24) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i113) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i112) #9
  br label %cleanup

if.then35:                                        ; preds = %if.then14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i113) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i112) #9
  %51 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width, align 4
  %53 = ptrtoint ptr %width20 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %width20, align 4
  %54 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %top, align 4
  %56 = lshr i32 %55, 1
  %conv43 = trunc i32 %56 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i125) #9
  %57 = getelementptr inbounds [2 x i8], ptr %data.i125, i32 0, i32 1
  %58 = ptrtoint ptr %data.i125 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 25, ptr %data.i125, align 1
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv43, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i126) #9
  %60 = getelementptr inbounds i8, ptr %msg.i126, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 196607, ptr %60, align 4
  %62 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %addr1.i, align 2
  %64 = ptrtoint ptr %msg.i126 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %msg.i126, align 4
  %flags.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i128 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i128, align 2
  %buf.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126, i32 0, i32 3
  %66 = ptrtoint ptr %buf.i130 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %data.i125, ptr %buf.i130, align 4
  %67 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter.i, align 8
  %call.i132 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i126, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp.i133 = icmp slt i32 %call.i132, 0
  br i1 %cmp.i133, label %if.end45, label %if.then47

if.end45:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i134 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i134, ptr noundef nonnull @.str.7, i32 noundef 25) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i126) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i125) #9
  br label %cleanup

if.then47:                                        ; preds = %if.then35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i126) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i125) #9
  %top49 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %top49 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %top49, align 4
  %72 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %top, align 4
  %sub52 = sub i32 %71, %73
  %height54 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 3
  %74 = ptrtoint ptr %height54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %height54, align 4
  %add55 = add i32 %sub52, %75
  store i32 %add55, ptr %height54, align 4
  %76 = load i32, ptr %top, align 4
  store i32 %76, ptr %top49, align 4
  %77 = load i32, ptr %top, align 4
  %78 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %height, align 4
  %add64 = add i32 %79, %77
  %shr65 = lshr i32 %add64, 1
  %conv66 = trunc i32 %shr65 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i138) #9
  %80 = getelementptr inbounds [2 x i8], ptr %data.i138, i32 0, i32 1
  %81 = ptrtoint ptr %data.i138 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 26, ptr %data.i138, align 1
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv66, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i139) #9
  %83 = getelementptr inbounds i8, ptr %msg.i139, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 196607, ptr %83, align 4
  %85 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %addr1.i, align 2
  %87 = ptrtoint ptr %msg.i139 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %msg.i139, align 4
  %flags.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i141 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i141, align 2
  %buf.i143 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i143 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %data.i138, ptr %buf.i143, align 4
  %90 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %adapter.i, align 8
  %call.i145 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i139, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp.i146 = icmp slt i32 %call.i145, 0
  br i1 %cmp.i146, label %if.end68, label %if.then70

if.end68:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i147 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i147, ptr noundef nonnull @.str.7, i32 noundef 26) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i139) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i138) #9
  br label %cleanup

if.then70:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i139) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i138) #9
  %93 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height, align 4
  %95 = ptrtoint ptr %height54 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %height54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end68, %if.end45, %if.end33, %if.end33.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then70 ], [ %call.i145, %if.end68 ], [ %call.i132, %if.end45 ], [ %call.i, %if.end33.thread ], [ %call.i119, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_get_mbus_config(ptr nocapture noundef readonly %sd, i32 noundef %pad, ptr nocapture noundef writeonly %cfg) #2 align 64 {
entry:
  %data.i25 = alloca i8, align 1
  %msg.i26 = alloca %struct.i2c_msg, align 4
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #9
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 44, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 131071, ptr %3, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1.i, align 2
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ov6650_reg_read.exit_crit_edge, label %if.end.i

entry.ov6650_reg_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit

if.end.i:                                         ; preds = %entry
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags.i, align 2
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call4.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.ov6650_reg_read.exit_crit_edge, label %if.end

if.end.i.ov6650_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit

ov6650_reg_read.exit:                             ; preds = %if.end.i.ov6650_reg_read.exit_crit_edge, %entry.ov6650_reg_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.ov6650_reg_read.exit_crit_edge ], [ %call4.i, %if.end.i.ov6650_reg_read.exit_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef 44) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i25) #9
  %17 = ptrtoint ptr %data.i25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 38, ptr %data.i25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26) #9
  %18 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 131071, ptr %18, align 4
  %20 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr1.i, align 2
  %22 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msg.i26, align 4
  %flags.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i28, align 2
  %buf.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data.i25, ptr %buf.i30, align 4
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i32 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i26, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %cmp.i33 = icmp slt i32 %call.i32, 0
  br i1 %cmp.i33, label %if.end.ov6650_reg_read.exit42_crit_edge, label %if.end.i36

if.end.ov6650_reg_read.exit42_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit42

if.end.i36:                                       ; preds = %if.end
  %27 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags.i28, align 2
  %28 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i, align 8
  %call4.i34 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i26, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i34)
  %cmp5.i35 = icmp slt i32 %call4.i34, 0
  br i1 %cmp5.i35, label %if.end.i36.ov6650_reg_read.exit42_crit_edge, label %if.end5

if.end.i36.ov6650_reg_read.exit42_crit_edge:      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit42

ov6650_reg_read.exit42:                           ; preds = %if.end.i36.ov6650_reg_read.exit42_crit_edge, %if.end.ov6650_reg_read.exit42_crit_edge
  %ret.0.i38 = phi i32 [ %call.i32, %if.end.ov6650_reg_read.exit42_crit_edge ], [ %call4.i34, %if.end.i36.ov6650_reg_read.exit42_crit_edge ]
  %dev.i39 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i39, ptr noundef nonnull @.str.2, i32 noundef 38) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i25) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %data.i25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data.i25, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i25) #9
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %or = select i1 %tobool6.not, i32 289, i32 273
  %32 = and i8 %31, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool9.not = icmp eq i8 %32, 0
  %cond10 = select i1 %tobool9.not, i32 4, i32 8
  %and13 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, i32 128, i32 64
  %or11 = or i32 %cond15, %or
  %or16 = or i32 %or11, %cond10
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or16, ptr %flags, align 4
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %ov6650_reg_read.exit42, %ov6650_reg_read.exit
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %ret.0.i, %ov6650_reg_read.exit ], [ %ret.0.i38, %ov6650_reg_read.exit42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_set_mbus_config(ptr nocapture noundef readonly %sd, i32 noundef %pad, ptr nocapture noundef %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %1, i8 noundef zeroext 44, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %if.end7

if.else:                                          ; preds = %entry
  %and3 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.if.end10_crit_edge, label %if.then5

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %1, i8 noundef zeroext 44, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call6, %if.then5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.else.if.end10_crit_edge
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and12 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else16, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %1, i8 noundef zeroext 38, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %if.end23

if.else16:                                        ; preds = %if.end10
  %and18 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else16.if.end26_crit_edge, label %if.then20

if.else16.if.end26_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %1, i8 noundef zeroext 38, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then14
  %ret.1 = phi i32 [ %call15, %if.then14 ], [ %call21, %if.then20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool24.not = icmp eq i32 %ret.1, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end26:                                         ; preds = %if.end23.if.end26_crit_edge, %if.else16.if.end26_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and28 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %1, i8 noundef zeroext 44, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %if.end39

if.else32:                                        ; preds = %if.end26
  %and34 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else32.if.end42_crit_edge, label %if.then36

if.else32.if.end42_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then36:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %1, i8 noundef zeroext 44, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then30
  %ret.2 = phi i32 [ %call31, %if.then30 ], [ %call37, %if.then36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool40.not = icmp eq i32 %ret.2, 0
  br i1 %tobool40.not, label %if.end39.if.end42_crit_edge, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %if.end39.if.end42_crit_edge, %if.else32.if.end42_crit_edge
  %call43 = tail call i32 @ov6650_get_mbus_config(ptr noundef %sd, i32 noundef %pad, ptr noundef %cfg)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end39.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ %ret.0, %if.end7.cleanup_crit_edge ], [ %ret.1, %if.end23.cleanup_crit_edge ], [ %ret.2, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov6650_s_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %mf) unnamed_addr #2 align 64 {
entry:
  %sel = alloca %struct.v4l2_subdev_selection, align 4
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
  %4 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mf, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %rect = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7
  %width1.i = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width1.i, align 4
  %shr.i = lshr i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %5)
  %cmp.i = icmp ult i32 %shr.i, %5
  br i1 %cmp.i, label %entry.is_unscaled_ok.exit_crit_edge, label %lor.rhs.i

entry.is_unscaled_ok.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_unscaled_ok.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %height2.i = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height2.i, align 4
  %shr3.i = lshr i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr3.i, i32 %7)
  %cmp4.i = icmp ult i32 %shr3.i, %7
  br label %is_unscaled_ok.exit

is_unscaled_ok.exit:                              ; preds = %lor.rhs.i, %entry.is_unscaled_ok.exit_crit_edge
  %12 = phi i1 [ true, %entry.is_unscaled_ok.exit_crit_edge ], [ %cmp4.i, %lor.rhs.i ]
  %lnot = xor i1 %12, true
  %frombool = zext i1 %lnot to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sel) #9
  %13 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %sel, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %14 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pad, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %15 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %target, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %17 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rect, align 4
  %19 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width1.i, align 4
  %shr = lshr i32 %20, 1
  %conv = zext i1 %lnot to i32
  %sub = zext i1 %12 to i32
  %shr8 = lshr i32 %5, %sub
  %add = sub i32 %18, %shr8
  %sub9 = add i32 %add, %shr
  %21 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub9, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %top11 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %top11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %top11, align 4
  %height13 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %height13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height13, align 4
  %shr14 = lshr i32 %25, 1
  %shr20 = lshr i32 %7, %sub
  %add15 = sub i32 %23, %shr20
  %sub21 = add i32 %add15, %shr14
  %26 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub21, ptr %top, align 4
  %width22 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %shl = shl i32 %5, %conv
  %27 = ptrtoint ptr %width22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl, ptr %width22, align 4
  %height26 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %shl30 = shl i32 %7, %conv
  %28 = ptrtoint ptr %height26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl30, ptr %height26, align 4
  %reserved = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 5
  %29 = call ptr @memset(ptr %reserved, i32 0, i32 32)
  %code31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf, i32 0, i32 2
  %30 = ptrtoint ptr %code31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %code31, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %31, label %do.end181 [
    i32 8193, label %do.body
    i32 8200, label %do.body44
    i32 8201, label %do.body68
    i32 8198, label %do.body89
    i32 8199, label %do.body122
    i32 12289, label %do.body156
  ]

do.body:                                          ; preds = %is_unscaled_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_s_fmt, %if.then)) #9
          to label %sw.epilog [label %if.then], !srcloc !139

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_s_fmt.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %if.end188

do.body44:                                        ; preds = %is_unscaled_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_s_fmt, %if.then56)) #9
          to label %sw.epilog [label %if.then56], !srcloc !139

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %dev57 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_s_fmt.__UNIQUE_ID_ddebug293, ptr noundef %dev57, ptr noundef nonnull @.str.18) #9
  br label %if.else187

do.body68:                                        ; preds = %is_unscaled_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_s_fmt, %if.then80)) #9
          to label %sw.epilog [label %if.then80], !srcloc !139

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %dev81 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_s_fmt.__UNIQUE_ID_ddebug294, ptr noundef %dev81, ptr noundef nonnull @.str.19) #9
  br label %if.else187

do.body89:                                        ; preds = %is_unscaled_ok.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_s_fmt, %if.then101)) #9
          to label %do.end105 [label %if.then101], !srcloc !139

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  %dev102 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_s_fmt.__UNIQUE_ID_ddebug295, ptr noundef %dev102, ptr noundef nonnull @.str.20) #9
  br label %do.end105

do.end105:                                        ; preds = %if.then101, %do.body89
  %. = select i1 %12, i8 12, i8 14
  %.313 = select i1 %12, i8 3, i8 1
  br label %if.else187

do.body122:                                       ; preds = %is_unscaled_ok.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_s_fmt, %if.then134)) #9
          to label %do.end138 [label %if.then134], !srcloc !139

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  %dev135 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_s_fmt.__UNIQUE_ID_ddebug296, ptr noundef %dev135, ptr noundef nonnull @.str.21) #9
  br label %do.end138

do.end138:                                        ; preds = %if.then134, %do.body122
  %.314 = select i1 %12, i8 14, i8 12
  %.315 = select i1 %12, i8 1, i8 3
  br label %if.else187

do.body156:                                       ; preds = %is_unscaled_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_s_fmt, %if.then168)) #9
          to label %sw.epilog [label %if.then168], !srcloc !139

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #11
  %dev169 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_s_fmt.__UNIQUE_ID_ddebug297, ptr noundef %dev169, ptr noundef nonnull @.str.22) #9
  br label %if.end188

do.end181:                                        ; preds = %is_unscaled_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev182 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev182, ptr noundef nonnull @.str.23, i32 noundef %31) #12
  br label %cleanup

sw.epilog:                                        ; preds = %do.body156, %do.body68, %do.body44, %do.body
  %coma_mask.0 = phi i8 [ 11, %do.body ], [ 13, %do.body44 ], [ 15, %do.body68 ], [ 7, %do.body156 ]
  %coma_set.0 = phi i8 [ 4, %do.body ], [ 2, %do.body44 ], [ 0, %do.body68 ], [ 24, %do.body156 ]
  %33 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %31, label %sw.epilog.if.else187_crit_edge [
    i32 8193, label %sw.epilog.if.end188_crit_edge
    i32 12289, label %sw.epilog.if.end188_crit_edge361
  ]

sw.epilog.if.end188_crit_edge361:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

sw.epilog.if.end188_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

sw.epilog.if.else187_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else187

if.else187:                                       ; preds = %sw.epilog.if.else187_crit_edge, %do.end138, %do.end105, %if.then80, %if.then56
  %coma_set.0348 = phi i8 [ %coma_set.0, %sw.epilog.if.else187_crit_edge ], [ %.315, %do.end138 ], [ %.313, %do.end105 ], [ 0, %if.then80 ], [ 2, %if.then56 ]
  %coma_mask.0346 = phi i8 [ %coma_mask.0, %sw.epilog.if.else187_crit_edge ], [ %.314, %do.end138 ], [ %., %do.end105 ], [ 15, %if.then80 ], [ 13, %if.then56 ]
  br label %if.end188

if.end188:                                        ; preds = %if.else187, %sw.epilog.if.end188_crit_edge, %sw.epilog.if.end188_crit_edge361, %if.then168, %if.then
  %coma_set.0347 = phi i8 [ %coma_set.0348, %if.else187 ], [ %coma_set.0, %sw.epilog.if.end188_crit_edge ], [ %coma_set.0, %sw.epilog.if.end188_crit_edge361 ], [ 24, %if.then168 ], [ 4, %if.then ]
  %coma_mask.0345 = phi i8 [ %coma_mask.0346, %if.else187 ], [ %coma_mask.0, %sw.epilog.if.end188_crit_edge ], [ %coma_mask.0, %sw.epilog.if.end188_crit_edge361 ], [ 7, %if.then168 ], [ 11, %if.then ]
  %coml_mask.0 = phi i8 [ 0, %if.else187 ], [ -128, %sw.epilog.if.end188_crit_edge ], [ -128, %sw.epilog.if.end188_crit_edge361 ], [ -128, %if.then168 ], [ -128, %if.then ]
  %coml_set.0 = phi i8 [ -128, %if.else187 ], [ 0, %sw.epilog.if.end188_crit_edge ], [ 0, %sw.epilog.if.end188_crit_edge361 ], [ 0, %if.then168 ], [ 0, %if.then ]
  br i1 %12, label %do.body212, label %do.body191

do.body191:                                       ; preds = %if.end188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_s_fmt, %if.then203)) #9
          to label %do.end207 [label %if.then203], !srcloc !139

if.then203:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #11
  %dev204 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_s_fmt.__UNIQUE_ID_ddebug298, ptr noundef %dev204, ptr noundef nonnull @.str.24) #9
  br label %do.end207

do.end207:                                        ; preds = %if.then203, %do.body191
  %34 = or i8 %coma_set.0347, 32
  br label %if.end232

do.body212:                                       ; preds = %if.end188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_s_fmt, %if.then224)) #9
          to label %do.end228 [label %if.then224], !srcloc !139

if.then224:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #11
  %dev225 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_s_fmt.__UNIQUE_ID_ddebug299, ptr noundef %dev225, ptr noundef nonnull @.str.25) #9
  br label %do.end228

do.end228:                                        ; preds = %if.then224, %do.body212
  %35 = or i8 %coma_mask.0345, 32
  br label %if.end232

if.end232:                                        ; preds = %do.end228, %do.end207
  %coma_mask.1 = phi i8 [ %coma_mask.0345, %do.end207 ], [ %35, %do.end228 ]
  %coma_set.1 = phi i8 [ %34, %do.end207 ], [ %coma_set.0347, %do.end228 ]
  %call233 = call i32 @ov6650_set_selection(ptr noundef %sd, ptr noundef null, ptr noundef nonnull %sel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end237, label %if.end232.cleanup_crit_edge

if.end232.cleanup_crit_edge:                      ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end237:                                        ; preds = %if.end232
  %call236 = call fastcc i32 @ov6650_reg_rmw(ptr noundef %1, i8 noundef zeroext 18, i8 noundef zeroext %coma_set.1, i8 noundef zeroext %coma_mask.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool238.not = icmp eq i32 %call236, 0
  br i1 %tobool238.not, label %if.end244, label %if.end237.cleanup_crit_edge

if.end237.cleanup_crit_edge:                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end244:                                        ; preds = %if.end237
  %half_scale241 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 6
  %36 = ptrtoint ptr %half_scale241 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool, ptr %half_scale241, align 4
  %call243 = call fastcc i32 @ov6650_reg_rmw(ptr noundef %1, i8 noundef zeroext 22, i8 noundef zeroext %coml_set.0, i8 noundef zeroext %coml_mask.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool245.not = icmp eq i32 %call243, 0
  br i1 %tobool245.not, label %if.then246, label %if.end244.cleanup_crit_edge

if.end244.cleanup_crit_edge:                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then246:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  %code247 = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %code247 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %31, ptr %code247, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then246, %if.end244.cleanup_crit_edge, %if.end237.cleanup_crit_edge, %if.end232.cleanup_crit_edge, %do.end181
  %retval.0 = phi i32 [ -22, %do.end181 ], [ 0, %if.then246 ], [ %call243, %if.end244.cleanup_crit_edge ], [ %call236, %if.end237.cleanup_crit_edge ], [ %call233, %if.end232.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sel) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6550_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %data.i77 = alloca i8, align 1
  %msg.i78 = alloca %struct.i2c_msg, align 4
  %data.i59 = alloca i8, align 1
  %msg.i60 = alloca %struct.i2c_msg, align 4
  %data.i41 = alloca i8, align 1
  %msg.i42 = alloca %struct.i2c_msg, align 4
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963794, label %sw.bb
    i32 9963788, label %sw.bb2
    i32 10094849, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #9
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131071, ptr %8, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr1.i, align 2
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.ov6650_reg_read.exit_crit_edge, label %if.end.i

sw.bb.ov6650_reg_read.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit

if.end.i:                                         ; preds = %sw.bb
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags.i, align 2
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call4.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.ov6650_reg_read.exit_crit_edge, label %if.then

if.end.i.ov6650_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit

ov6650_reg_read.exit:                             ; preds = %if.end.i.ov6650_reg_read.exit_crit_edge, %sw.bb.ov6650_reg_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %sw.bb.ov6650_reg_read.exit_crit_edge ], [ %call4.i, %if.end.i.ov6650_reg_read.exit_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  br label %cleanup

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  %conv = zext i8 %21 to i32
  %gain = getelementptr i8, ptr %1, i32 196
  %22 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gain, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i41) #9
  %25 = ptrtoint ptr %data.i41 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %data.i41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i42) #9
  %26 = getelementptr inbounds i8, ptr %msg.i42, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 131071, ptr %26, align 4
  %addr1.i43 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %addr1.i43 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr1.i43, align 2
  %30 = ptrtoint ptr %msg.i42 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msg.i42, align 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i44, align 2
  %buf.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 3
  %32 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data.i41, ptr %buf.i46, align 4
  %adapter.i47 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i47, align 8
  %call.i48 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i42, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %cmp.i49, label %sw.bb2.if.end7.thread_crit_edge, label %if.end.i52

sw.bb2.if.end7.thread_crit_edge:                  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.thread

if.end.i52:                                       ; preds = %sw.bb2
  %35 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %flags.i44, align 2
  %36 = ptrtoint ptr %adapter.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i47, align 8
  %call4.i50 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i42, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i50)
  %cmp5.i51 = icmp slt i32 %call4.i50, 0
  br i1 %cmp5.i51, label %if.end.i52.if.end7.thread_crit_edge, label %if.then5

if.end.i52.if.end7.thread_crit_edge:              ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %if.end.i52.if.end7.thread_crit_edge, %sw.bb2.if.end7.thread_crit_edge
  %ret.0.i54 = phi i32 [ %call.i48, %sw.bb2.if.end7.thread_crit_edge ], [ %call4.i50, %if.end.i52.if.end7.thread_crit_edge ]
  %dev.i55 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55, ptr noundef nonnull @.str.2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i42) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i41) #9
  br label %cleanup

if.then5:                                         ; preds = %if.end.i52
  %38 = ptrtoint ptr %data.i41 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data.i41, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i42) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i41) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i59) #9
  %40 = ptrtoint ptr %data.i59 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %data.i59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i60) #9
  %41 = getelementptr inbounds i8, ptr %msg.i60, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 131071, ptr %41, align 4
  %43 = ptrtoint ptr %addr1.i43 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr1.i43, align 2
  %45 = ptrtoint ptr %msg.i60 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %msg.i60, align 4
  %flags.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i60, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i62 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i62, align 2
  %buf.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i60, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i64 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %data.i59, ptr %buf.i64, align 4
  %48 = ptrtoint ptr %adapter.i47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter.i47, align 8
  %call.i66 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i60, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i67 = icmp slt i32 %call.i66, 0
  br i1 %cmp.i67, label %if.then5.if.end7_crit_edge, label %if.end.i70

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i70:                                       ; preds = %if.then5
  %50 = ptrtoint ptr %flags.i62 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %flags.i62, align 2
  %51 = ptrtoint ptr %adapter.i47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter.i47, align 8
  %call4.i68 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i60, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i68)
  %cmp5.i69 = icmp slt i32 %call4.i68, 0
  br i1 %cmp5.i69, label %if.end.i70.if.end7_crit_edge, label %if.then9

if.end.i70.if.end7_crit_edge:                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.end.i70.if.end7_crit_edge, %if.then5.if.end7_crit_edge
  %ret.0.i72 = phi i32 [ %call.i66, %if.then5.if.end7_crit_edge ], [ %call4.i68, %if.end.i70.if.end7_crit_edge ]
  %dev.i73 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i73, ptr noundef nonnull @.str.2, i32 noundef 2) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i60) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i59) #9
  br label %cleanup

if.then9:                                         ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %data.i59 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %data.i59, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i60) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i59) #9
  %conv10 = zext i8 %39 to i32
  %blue = getelementptr i8, ptr %1, i32 204
  %55 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %blue, align 4
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv10, ptr %val11, align 4
  %conv12 = zext i8 %54 to i32
  %red = getelementptr i8, ptr %1, i32 208
  %58 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %red, align 4
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %59, i32 0, i32 22
  %60 = ptrtoint ptr %val13 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv12, ptr %val13, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i77) #9
  %61 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 16, ptr %data.i77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i78) #9
  %62 = getelementptr inbounds i8, ptr %msg.i78, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 131071, ptr %62, align 4
  %addr1.i79 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %64 = ptrtoint ptr %addr1.i79 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %addr1.i79, align 2
  %66 = ptrtoint ptr %msg.i78 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %msg.i78, align 4
  %flags.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i78, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i80 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i80, align 2
  %buf.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i78, i32 0, i32 3
  %68 = ptrtoint ptr %buf.i82 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %data.i77, ptr %buf.i82, align 4
  %adapter.i83 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %69 = ptrtoint ptr %adapter.i83 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter.i83, align 8
  %call.i84 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i78, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp.i85 = icmp slt i32 %call.i84, 0
  br i1 %cmp.i85, label %sw.bb15.ov6650_reg_read.exit94_crit_edge, label %if.end.i88

sw.bb15.ov6650_reg_read.exit94_crit_edge:         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit94

if.end.i88:                                       ; preds = %sw.bb15
  %71 = ptrtoint ptr %flags.i80 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %flags.i80, align 2
  %72 = ptrtoint ptr %adapter.i83 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter.i83, align 8
  %call4.i86 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i78, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i86)
  %cmp5.i87 = icmp slt i32 %call4.i86, 0
  br i1 %cmp5.i87, label %if.end.i88.ov6650_reg_read.exit94_crit_edge, label %if.then18

if.end.i88.ov6650_reg_read.exit94_crit_edge:      ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_read.exit94

ov6650_reg_read.exit94:                           ; preds = %if.end.i88.ov6650_reg_read.exit94_crit_edge, %sw.bb15.ov6650_reg_read.exit94_crit_edge
  %ret.0.i90 = phi i32 [ %call.i84, %sw.bb15.ov6650_reg_read.exit94_crit_edge ], [ %call4.i86, %if.end.i88.ov6650_reg_read.exit94_crit_edge ]
  %dev.i91 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i91, ptr noundef nonnull @.str.2, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i78) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i77) #9
  br label %cleanup

if.then18:                                        ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %data.i77 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %data.i77, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i78) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i77) #9
  %conv19 = zext i8 %75 to i32
  %exposure = getelementptr i8, ptr %1, i32 188
  %76 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %exposure, align 4
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %77, i32 0, i32 22
  %78 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv19, ptr %val20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %ov6650_reg_read.exit94, %if.then9, %if.end7, %if.end7.thread, %if.then, %ov6650_reg_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0.i, %ov6650_reg_read.exit ], [ 0, %if.then9 ], [ %ret.0.i72, %if.end7 ], [ 0, %if.then18 ], [ %ret.0.i90, %ov6650_reg_read.exit94 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i54, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6550_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %data.i112 = alloca [2 x i8], align 1
  %msg.i113 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963794, label %sw.bb
    i32 9963788, label %sw.bb8
    i32 9963778, label %sw.bb29
    i32 9963779, label %sw.bb33
    i32 9963776, label %sw.bb38
    i32 10094849, label %sw.bb42
    i32 9963792, label %sw.bb58
    i32 9963797, label %sw.bb62
    i32 9963796, label %sw.bb68
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %conv = select i1 %tobool.not, i8 0, i8 2
  %call1 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %3, i8 noundef zeroext 19, i8 noundef zeroext %conv, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %gain = getelementptr i8, ptr %1, i32 196
  %11 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gain, align 4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val5, align 4
  %conv6 = trunc i32 %14 to i8
  %call7 = tail call fastcc i32 @ov6650_reg_write(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %conv6)
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  %conv12 = select i1 %tobool10.not, i8 0, i8 4
  %call13 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %3, i8 noundef zeroext 19, i8 noundef zeroext %conv12, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true15:                                  ; preds = %sw.bb8
  %17 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true15
  %blue = getelementptr i8, ptr %1, i32 204
  %19 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %blue, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val19, align 4
  %conv20 = trunc i32 %22 to i8
  %call21 = tail call fastcc i32 @ov6650_reg_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %conv20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %red = getelementptr i8, ptr %1, i32 208
  %23 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %red, align 4
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val24, align 4
  %conv25 = trunc i32 %26 to i8
  %call26 = tail call fastcc i32 @ov6650_reg_write(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext %conv25)
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val30, align 4
  %.tr = trunc i32 %28 to i8
  %conv31 = shl i8 %.tr, 4
  %call32 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext %conv31, i8 noundef zeroext -16)
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val34, align 4
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 31
  %conv36 = or i8 %32, 32
  %call37 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext %conv36, i8 noundef zeroext 31)
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val39, align 4
  %conv40 = trunc i32 %34 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #9
  %35 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 6, ptr %data.i, align 1
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv40, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %38 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 196607, ptr %38, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr1.i, align 2
  %42 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %45 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %sw.bb38.ov6650_reg_write.exit_crit_edge

sw.bb38.ov6650_reg_write.exit_crit_edge:          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_write.exit

do.end.i:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef 6) #12
  br label %ov6650_reg_write.exit

ov6650_reg_write.exit:                            ; preds = %do.end.i, %sw.bb38.ov6650_reg_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %sw.bb38.ov6650_reg_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #9
  br label %cleanup

sw.bb42:                                          ; preds = %entry
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %48 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp = icmp eq i32 %49, 0
  %conv46 = zext i1 %cmp to i8
  %call47 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %3, i8 noundef zeroext 19, i8 noundef zeroext %conv46, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true49:                                  ; preds = %sw.bb42
  %50 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp51 = icmp eq i32 %51, 1
  br i1 %cmp51, label %if.then53, label %land.lhs.true49.cleanup_crit_edge

land.lhs.true49.cleanup_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  %exposure = getelementptr i8, ptr %1, i32 188
  %52 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %exposure, align 4
  %val54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %53, i32 0, i32 22
  %54 = ptrtoint ptr %val54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val54, align 4
  %conv55 = trunc i32 %55 to i8
  %call56 = tail call fastcc i32 @ov6650_reg_write(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %conv55)
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  %val59 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %56 = ptrtoint ptr %val59 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val59, align 4
  %conv60 = trunc i32 %57 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i112) #9
  %58 = getelementptr inbounds [2 x i8], ptr %data.i112, i32 0, i32 1
  %59 = ptrtoint ptr %data.i112 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 98, ptr %data.i112, align 1
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv60, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i113) #9
  %61 = getelementptr inbounds i8, ptr %msg.i113, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 196607, ptr %61, align 4
  %addr1.i114 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %63 = ptrtoint ptr %addr1.i114 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %addr1.i114, align 2
  %65 = ptrtoint ptr %msg.i113 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %msg.i113, align 4
  %flags.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i113, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i115, align 2
  %buf.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i113, i32 0, i32 3
  %67 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %data.i112, ptr %buf.i117, align 4
  %adapter.i118 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %68 = ptrtoint ptr %adapter.i118 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter.i118, align 8
  %call.i119 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i113, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.i120 = icmp slt i32 %call.i119, 0
  br i1 %cmp.i120, label %do.end.i122, label %sw.bb58.ov6650_reg_write.exit124_crit_edge

sw.bb58.ov6650_reg_write.exit124_crit_edge:       ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_reg_write.exit124

do.end.i122:                                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i121 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i121, ptr noundef nonnull @.str.7, i32 noundef 98) #12
  br label %ov6650_reg_write.exit124

ov6650_reg_write.exit124:                         ; preds = %do.end.i122, %sw.bb58.ov6650_reg_write.exit124_crit_edge
  %retval.0.i123 = phi i32 [ %call.i119, %do.end.i122 ], [ 0, %sw.bb58.ov6650_reg_write.exit124_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i113) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i112) #9
  br label %cleanup

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %71 = ptrtoint ptr %val63 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool64.not = icmp eq i32 %72, 0
  %conv66 = select i1 %tobool64.not, i8 0, i8 -128
  %call67 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %3, i8 noundef zeroext 19, i8 noundef zeroext %conv66, i8 noundef zeroext -128)
  br label %cleanup

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val69 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %73 = ptrtoint ptr %val69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool70.not = icmp eq i32 %74, 0
  %conv72 = select i1 %tobool70.not, i8 0, i8 32
  %call73 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %3, i8 noundef zeroext 19, i8 noundef zeroext %conv72, i8 noundef zeroext 32)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb68, %sw.bb62, %ov6650_reg_write.exit124, %if.then53, %land.lhs.true49.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %ov6650_reg_write.exit, %sw.bb33, %sw.bb29, %if.then23, %if.then18.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.then, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call73, %sw.bb68 ], [ %call67, %sw.bb62 ], [ %retval.0.i123, %ov6650_reg_write.exit124 ], [ %retval.0.i, %ov6650_reg_write.exit ], [ %call37, %sw.bb33 ], [ %call32, %sw.bb29 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call7, %if.then ], [ %call13, %sw.bb8.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ %call21, %if.then18.cleanup_crit_edge ], [ %call26, %if.then23 ], [ %call47, %sw.bb42.cleanup_crit_edge ], [ %call56, %if.then53 ], [ 0, %land.lhs.true49.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov6650_video_probe(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  %data.i209 = alloca i8, align 1
  %msg.i210 = alloca %struct.i2c_msg, align 4
  %data.i191 = alloca i8, align 1
  %msg.i192 = alloca %struct.i2c_msg, align 4
  %data.i173 = alloca i8, align 1
  %msg.i174 = alloca %struct.i2c_msg, align 4
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %mf = alloca %struct.v4l2_mbus_framefmt, align 4
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
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call i32 @clk_get_rate(ptr noundef %call2) #9
  %6 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call9, label %land.rhs21.preheader [
    i32 24000000, label %for.end.fold.split311
    i32 8000000, label %if.end.for.end_crit_edge
    i32 12000000, label %for.end.fold.split
    i32 16000000, label %for.end.fold.split310
  ]

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split310:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split311:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split311, %for.end.fold.split310, %for.end.fold.split, %if.end.for.end_crit_edge
  %arrayidx.lcssa = phi ptr [ getelementptr inbounds ([4 x %struct.ov6650_xclk], ptr @ov6650_xclk, i32 0, i32 1), %for.end.fold.split ], [ getelementptr inbounds ([4 x %struct.ov6650_xclk], ptr @ov6650_xclk, i32 0, i32 2), %for.end.fold.split310 ], [ getelementptr inbounds ([4 x %struct.ov6650_xclk], ptr @ov6650_xclk, i32 0, i32 3), %for.end.fold.split311 ], [ @ov6650_xclk, %if.end.for.end_crit_edge ]
  %div = udiv i32 %call9, 1000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %div) #12
  br label %if.end56

land.rhs21.preheader:                             ; preds = %if.end
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call28 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef 8000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %land.rhs21.preheader.land.rhs21.1_crit_edge

land.rhs21.preheader.land.rhs21.1_crit_edge:      ; preds = %land.rhs21.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs21.1

lor.lhs.false:                                    ; preds = %land.rhs21.preheader
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call31 = tail call i32 @clk_get_rate(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %call31)
  %cmp34.not = icmp eq i32 %call31, 8000000
  br i1 %cmp34.not, label %lor.lhs.false.for.end46_crit_edge, label %lor.lhs.false.land.rhs21.1_crit_edge

lor.lhs.false.land.rhs21.1_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs21.1

lor.lhs.false.for.end46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

land.rhs21.1:                                     ; preds = %lor.lhs.false.land.rhs21.1_crit_edge, %land.rhs21.preheader.land.rhs21.1_crit_edge
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call28.1 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef 12000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1)
  %tobool29.not.1 = icmp eq i32 %call28.1, 0
  br i1 %tobool29.not.1, label %lor.lhs.false.1, label %land.rhs21.1.land.rhs21.2_crit_edge

land.rhs21.1.land.rhs21.2_crit_edge:              ; preds = %land.rhs21.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs21.2

lor.lhs.false.1:                                  ; preds = %land.rhs21.1
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call31.1 = tail call i32 @clk_get_rate(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %call31.1)
  %cmp34.not.1 = icmp eq i32 %call31.1, 12000000
  br i1 %cmp34.not.1, label %lor.lhs.false.1.for.end46_crit_edge, label %lor.lhs.false.1.land.rhs21.2_crit_edge

lor.lhs.false.1.land.rhs21.2_crit_edge:           ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs21.2

lor.lhs.false.1.for.end46_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

land.rhs21.2:                                     ; preds = %lor.lhs.false.1.land.rhs21.2_crit_edge, %land.rhs21.1.land.rhs21.2_crit_edge
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %call28.2 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef 16000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2)
  %tobool29.not.2 = icmp eq i32 %call28.2, 0
  br i1 %tobool29.not.2, label %lor.lhs.false.2, label %land.rhs21.2.land.rhs21.3_crit_edge

land.rhs21.2.land.rhs21.3_crit_edge:              ; preds = %land.rhs21.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs21.3

lor.lhs.false.2:                                  ; preds = %land.rhs21.2
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %call31.2 = tail call i32 @clk_get_rate(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %call31.2)
  %cmp34.not.2 = icmp eq i32 %call31.2, 16000000
  br i1 %cmp34.not.2, label %lor.lhs.false.2.for.end46_crit_edge, label %lor.lhs.false.2.land.rhs21.3_crit_edge

lor.lhs.false.2.land.rhs21.3_crit_edge:           ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs21.3

lor.lhs.false.2.for.end46_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

land.rhs21.3:                                     ; preds = %lor.lhs.false.2.land.rhs21.3_crit_edge, %land.rhs21.2.land.rhs21.3_crit_edge
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  %call28.3 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef 24000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.3)
  %tobool29.not.3 = icmp eq i32 %call28.3, 0
  br i1 %tobool29.not.3, label %lor.lhs.false.3, label %do.end51

lor.lhs.false.3:                                  ; preds = %land.rhs21.3
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %call31.3 = tail call i32 @clk_get_rate(ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call31.3)
  %cmp34.not.3 = icmp eq i32 %call31.3, 24000000
  br i1 %cmp34.not.3, label %lor.lhs.false.3.for.end46_crit_edge, label %23

lor.lhs.false.3.for.end46_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.end46:                                        ; preds = %lor.lhs.false.3.for.end46_crit_edge, %lor.lhs.false.2.for.end46_crit_edge, %lor.lhs.false.1.for.end46_crit_edge, %lor.lhs.false.for.end46_crit_edge
  %arrayidx26.lcssa = phi ptr [ @ov6650_xclk, %lor.lhs.false.for.end46_crit_edge ], [ getelementptr inbounds ([4 x %struct.ov6650_xclk], ptr @ov6650_xclk, i32 0, i32 1), %lor.lhs.false.1.for.end46_crit_edge ], [ getelementptr inbounds ([4 x %struct.ov6650_xclk], ptr @ov6650_xclk, i32 0, i32 2), %lor.lhs.false.2.for.end46_crit_edge ], [ getelementptr inbounds ([4 x %struct.ov6650_xclk], ptr @ov6650_xclk, i32 0, i32 3), %lor.lhs.false.3.for.end46_crit_edge ]
  %.lcssa = phi i32 [ 8000, %lor.lhs.false.for.end46_crit_edge ], [ 12000, %lor.lhs.false.1.for.end46_crit_edge ], [ 16000, %lor.lhs.false.2.for.end46_crit_edge ], [ 24000, %lor.lhs.false.3.for.end46_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %.lcssa) #12
  br label %if.end56

do.end51:                                         ; preds = %land.rhs21.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #12
  br label %cleanup

23:                                               ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.end56:                                         ; preds = %for.end46, %for.end
  %xclk.1243 = phi ptr [ %arrayidx26.lcssa, %for.end46 ], [ %arrayidx.lcssa, %for.end ]
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %clk3.i = getelementptr inbounds %struct.ov6650, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %clk3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk3.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end56.ov6650_s_power.exit_crit_edge

if.end56.ov6650_s_power.exit_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %ov6650_s_power.exit

if.end.i.i:                                       ; preds = %if.end56
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end60_crit_edge, label %if.end.sink.split.i

if.end.i.i.if.end60_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end.sink.split.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %29) #9
  br label %ov6650_s_power.exit

ov6650_s_power.exit:                              ; preds = %if.end.sink.split.i, %if.end56.ov6650_s_power.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.end56.ov6650_s_power.exit_crit_edge ], [ %call1.i.i, %if.end.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp58 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp58, label %ov6650_s_power.exit.cleanup_crit_edge, label %ov6650_s_power.exit.if.end60_crit_edge

ov6650_s_power.exit.if.end60_crit_edge:           ; preds = %ov6650_s_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

ov6650_s_power.exit.cleanup_crit_edge:            ; preds = %ov6650_s_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %ov6650_s_power.exit.if.end60_crit_edge, %if.end.i.i.if.end60_crit_edge
  tail call void @msleep(i32 noundef 20) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #9
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %31 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 131071, ptr %31, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr1.i, align 2
  %35 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i171 = icmp slt i32 %call.i, 0
  br i1 %cmp.i171, label %if.end60.if.end65.thread_crit_edge, label %if.end.i

if.end60.if.end65.thread_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.thread

if.end.i:                                         ; preds = %if.end60
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags.i, align 2
  %41 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i, align 8
  %call4.i = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.if.end65.thread_crit_edge, label %if.then63

if.end.i.if.end65.thread_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.thread

if.end65.thread:                                  ; preds = %if.end.i.if.end65.thread_crit_edge, %if.end60.if.end65.thread_crit_edge
  %ret.0.i172 = phi i32 [ %call.i, %if.end60.if.end65.thread_crit_edge ], [ %call4.i, %if.end.i.if.end65.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  br label %done

if.then63:                                        ; preds = %if.end.i
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i173) #9
  %45 = ptrtoint ptr %data.i173 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 11, ptr %data.i173, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i174) #9
  %46 = getelementptr inbounds i8, ptr %msg.i174, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 131071, ptr %46, align 4
  %48 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %addr1.i, align 2
  %50 = ptrtoint ptr %msg.i174 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %msg.i174, align 4
  %flags.i176 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i176 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i176, align 2
  %buf.i178 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 3
  %52 = ptrtoint ptr %buf.i178 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %data.i173, ptr %buf.i178, align 4
  %53 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter.i, align 8
  %call.i180 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i174, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %cmp.i181 = icmp slt i32 %call.i180, 0
  br i1 %cmp.i181, label %if.then63.if.end65_crit_edge, label %if.end.i184

if.then63.if.end65_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.end.i184:                                      ; preds = %if.then63
  %55 = ptrtoint ptr %flags.i176 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %flags.i176, align 2
  %56 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i, align 8
  %call4.i182 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i174, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i182)
  %cmp5.i183 = icmp slt i32 %call4.i182, 0
  br i1 %cmp5.i183, label %if.end.i184.if.end65_crit_edge, label %if.then67

if.end.i184.if.end65_crit_edge:                   ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.end65:                                         ; preds = %if.end.i184.if.end65_crit_edge, %if.then63.if.end65_crit_edge
  %ret.0.i186 = phi i32 [ %call.i180, %if.then63.if.end65_crit_edge ], [ %call4.i182, %if.end.i184.if.end65_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i174) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i173) #9
  br label %done

if.then67:                                        ; preds = %if.end.i184
  %58 = ptrtoint ptr %data.i173 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data.i173, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i174) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i173) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i191) #9
  %60 = ptrtoint ptr %data.i191 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 28, ptr %data.i191, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i192) #9
  %61 = getelementptr inbounds i8, ptr %msg.i192, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 131071, ptr %61, align 4
  %63 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %addr1.i, align 2
  %65 = ptrtoint ptr %msg.i192 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %msg.i192, align 4
  %flags.i194 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i194 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i194, align 2
  %buf.i196 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192, i32 0, i32 3
  %67 = ptrtoint ptr %buf.i196 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %data.i191, ptr %buf.i196, align 4
  %68 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter.i, align 8
  %call.i198 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i192, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %cmp.i199 = icmp slt i32 %call.i198, 0
  br i1 %cmp.i199, label %if.then67.if.end69_crit_edge, label %if.end.i202

if.then67.if.end69_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end.i202:                                      ; preds = %if.then67
  %70 = ptrtoint ptr %flags.i194 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %flags.i194, align 2
  %71 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter.i, align 8
  %call4.i200 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i192, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i200)
  %cmp5.i201 = icmp slt i32 %call4.i200, 0
  br i1 %cmp5.i201, label %if.end.i202.if.end69_crit_edge, label %if.then71

if.end.i202.if.end69_crit_edge:                   ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end69:                                         ; preds = %if.end.i202.if.end69_crit_edge, %if.then67.if.end69_crit_edge
  %ret.0.i204 = phi i32 [ %call.i198, %if.then67.if.end69_crit_edge ], [ %call4.i200, %if.end.i202.if.end69_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 28) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i192) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i191) #9
  br label %done

if.then71:                                        ; preds = %if.end.i202
  %73 = ptrtoint ptr %data.i191 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %data.i191, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i192) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i191) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i209) #9
  %75 = ptrtoint ptr %data.i209 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 29, ptr %data.i209, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i210) #9
  %76 = getelementptr inbounds i8, ptr %msg.i210, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 131071, ptr %76, align 4
  %78 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %addr1.i, align 2
  %80 = ptrtoint ptr %msg.i210 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %msg.i210, align 4
  %flags.i212 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i210, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i212 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i212, align 2
  %buf.i214 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i210, i32 0, i32 3
  %82 = ptrtoint ptr %buf.i214 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %data.i209, ptr %buf.i214, align 4
  %83 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter.i, align 8
  %call.i216 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg.i210, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %cmp.i217 = icmp slt i32 %call.i216, 0
  br i1 %cmp.i217, label %if.then71.if.end73_crit_edge, label %if.end.i220

if.then71.if.end73_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.end.i220:                                      ; preds = %if.then71
  %85 = ptrtoint ptr %flags.i212 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %flags.i212, align 2
  %86 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %adapter.i, align 8
  %call4.i218 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msg.i210, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i218)
  %cmp5.i219 = icmp slt i32 %call4.i218, 0
  br i1 %cmp5.i219, label %if.end.i220.if.end73_crit_edge, label %if.end76

if.end.i220.if.end73_crit_edge:                   ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.end73:                                         ; preds = %if.end.i220.if.end73_crit_edge, %if.then71.if.end73_crit_edge
  %ret.0.i222 = phi i32 [ %call.i216, %if.then71.if.end73_crit_edge ], [ %call4.i218, %if.end.i220.if.end73_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 29) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i210) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i209) #9
  br label %done

if.end76:                                         ; preds = %if.end.i220
  %88 = ptrtoint ptr %data.i209 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %data.i209, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i210) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i209) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %44)
  %cmp77.not = icmp eq i8 %44, 102
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %59)
  %cmp81.not = icmp eq i8 %59, 80
  %or.cond293 = select i1 %cmp77.not, i1 %cmp81.not, i1 false
  br i1 %or.cond293, label %do.end93, label %do.end86

do.end86:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %conv88 = zext i8 %44 to i32
  %conv89 = zext i8 %59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %conv88, i32 noundef %conv89) #12
  br label %done

do.end93:                                         ; preds = %if.end76
  %conv97 = zext i8 %74 to i32
  %conv98 = zext i8 %89 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef 102, i32 noundef 80, i32 noundef %conv97, i32 noundef %conv98) #12
  %call99 = call fastcc i32 @ov6650_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end103, label %do.end93.done_crit_edge

do.end93.done_crit_edge:                          ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end103:                                        ; preds = %do.end93
  %clkrc = getelementptr inbounds %struct.ov6650_xclk, ptr %xclk.1243, i32 0, i32 1
  %90 = ptrtoint ptr %clkrc to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %clkrc, align 4
  %call102 = call fastcc i32 @ov6650_prog_dflt(ptr noundef %1, i8 noundef zeroext %91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool104.not = icmp eq i32 %call102, 0
  br i1 %tobool104.not, label %if.end107, label %if.end103.done_crit_edge

if.end103.done_crit_edge:                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end107:                                        ; preds = %if.end103
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mf) #9
  %92 = call ptr @memcpy(ptr %mf, ptr @ov6650_def_fmt, i32 48)
  %call106 = call fastcc i32 @ov6650_s_fmt(ptr noundef %sd, ptr noundef nonnull %mf)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool108.not = icmp eq i32 %call106, 0
  br i1 %tobool108.not, label %if.then109, label %if.end107.done_crit_edge

if.end107.done_crit_edge:                         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %hdl = getelementptr inbounds %struct.ov6650, ptr %3, i32 0, i32 1
  %call110 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #9
  br label %done

done:                                             ; preds = %if.then109, %if.end107.done_crit_edge, %if.end103.done_crit_edge, %do.end93.done_crit_edge, %do.end86, %if.end73, %if.end69, %if.end65, %if.end65.thread
  %ret.8 = phi i32 [ %ret.0.i222, %if.end73 ], [ -19, %do.end86 ], [ %call106, %if.end107.done_crit_edge ], [ %call110, %if.then109 ], [ %ret.0.i204, %if.end69 ], [ %ret.0.i172, %if.end65.thread ], [ %ret.0.i186, %if.end65 ], [ %call102, %if.end103.done_crit_edge ], [ %call99, %do.end93.done_crit_edge ]
  %93 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i.i228 = getelementptr inbounds %struct.i2c_client, ptr %94, i32 0, i32 4, i32 8
  %95 = ptrtoint ptr %driver_data.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %driver_data.i.i.i.i228, align 4
  %clk3.i229 = getelementptr inbounds %struct.ov6650, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %clk3.i229 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %clk3.i229, align 4
  call void @clk_disable(ptr noundef %98) #9
  call void @clk_unprepare(ptr noundef %98) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %ov6650_s_power.exit.cleanup_crit_edge, %23, %do.end51, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %ret.8, %done ], [ %ret.0.i, %ov6650_s_power.exit.cleanup_crit_edge ], [ -22, %23 ], [ %call28.3, %do.end51 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov6650_reset(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_reset.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_reset.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.45) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @ov6650_reg_rmw(ptr noundef %client, i8 noundef zeroext 18, i8 noundef zeroext -128, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end10_crit_edge, label %do.end8

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.46) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %do.end.if.end10_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov6650_prog_dflt(ptr noundef %client, i8 noundef zeroext %clkrc) unnamed_addr #2 align 64 {
entry:
  %data.i18 = alloca [2 x i8], align 1
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov6650_prog_dflt.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov6650_prog_dflt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov6650_prog_dflt.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.48) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #9
  %0 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 18, ptr %data.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1.i, align 2
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.thread, label %if.then5

if.end7.thread:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef 18) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #9
  br label %if.end11

if.then5:                                         ; preds = %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i18) #9
  %13 = getelementptr inbounds [2 x i8], ptr %data.i18, i32 0, i32 1
  %14 = ptrtoint ptr %data.i18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %data.i18, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %clkrc, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #9
  %16 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  %18 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr1.i, align 2
  %20 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msg.i19, align 4
  %flags.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i21 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i21, align 2
  %buf.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data.i18, ptr %buf.i23, align 4
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call.i25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i19, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 21474800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i26 = icmp slt i32 %call.i25, 0
  br i1 %cmp.i26, label %if.end7, label %if.then9

if.end7:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i27 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i27, ptr noundef nonnull @.str.7, i32 noundef 17) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i18) #9
  br label %if.end11

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i18) #9
  %call10 = call fastcc i32 @ov6650_reg_rmw(ptr noundef %client, i8 noundef zeroext 19, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7, %if.end7.thread
  %ret.1 = phi i32 [ %call.i25, %if.end7 ], [ %call10, %if.then9 ], [ %call.i, %if.end7.thread ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !81, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__initcall__kmod_ov6650__303_1107_ov6650_i2c_driver_init6, !1, !"__initcall__kmod_ov6650__303_1107_ov6650_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov6650.c", i32 1107, i32 1}
!2 = !{ptr @__exitcall_ov6650_i2c_driver_exit, !1, !"__exitcall_ov6650_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov6650.c", i32 1109, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov6650.c", i32 1110, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov6650.c", i32 1111, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov6650.c", i32 1100, i32 11}
!12 = !{ptr @ov6650_i2c_driver, !13, !"ov6650_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov6650.c", i32 1098, i32 26}
!14 = !{ptr @ov6650_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov6650.c", i32 1023, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ov6650_subdev_ops, !18, !"ov6650_subdev_ops", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/ov6650.c", i32 999, i32 37}
!19 = !{ptr @ov6650_core_ops, !20, !"ov6650_core_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/ov6650.c", i32 910, i32 42}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/ov6650.c", i32 273, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ov6650_reg_read._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ov6650_reg_read._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/ov6650.c", i32 293, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ov6650_reg_write._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @ov6650_reg_write._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ov6650_video_ops, !35, !"ov6650_video_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ov6650.c", i32 983, i32 43}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov6650.c", i32 749, i32 2}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ov6650_g_frame_interval.__UNIQUE_ID_ddebug300, !37, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ov6650.c", i32 308, i32 3}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ov6650_reg_rmw._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ov6650_reg_rmw._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/ov6650.c", i32 319, i32 3}
!47 = !{ptr @ov6650_reg_rmw._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ov6650_reg_rmw._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ov6650_pad_ops, !50, !"ov6650_pad_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ov6650.c", i32 989, i32 41}
!51 = !{ptr @ov6650_codes, !52, !"ov6650_codes", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/ov6650.c", i32 228, i32 12}
!53 = !{ptr @ov6650_def_fmt, !54, !"ov6650_def_fmt", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ov6650.c", i32 237, i32 40}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ov6650.c", i32 595, i32 3}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug292, !56, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/ov6650.c", i32 600, i32 3}
!61 = !{ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug293, !60, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov6650.c", i32 605, i32 3}
!64 = !{ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug294, !63, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/ov6650.c", i32 610, i32 3}
!67 = !{ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug295, !66, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov6650.c", i32 620, i32 3}
!70 = !{ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug296, !69, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/ov6650.c", i32 630, i32 3}
!73 = !{ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug297, !72, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov6650.c", i32 635, i32 3}
!76 = !{ptr @ov6650_s_fmt._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ov6650_s_fmt._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov6650.c", i32 649, i32 3}
!80 = !{ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug298, !79, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ov6650.c", i32 652, i32 3}
!83 = !{ptr @ov6650_s_fmt.__UNIQUE_ID_ddebug299, !82, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!84 = !{ptr @ov6550_ctrl_ops, !85, !"ov6550_ctrl_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov6650.c", i32 905, i32 35}
!86 = !{ptr @ov6650_internal_ops, !87, !"ov6650_internal_ops", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov6650.c", i32 1005, i32 46}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov6650.c", i32 827, i32 3}
!90 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ov6650_video_probe._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ov6650_video_probe._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov6650.c", i32 837, i32 3}
!95 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ov6650_video_probe._entry.28, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ov6650_video_probe._entry_ptr.31, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ov6650.c", i32 847, i32 3}
!100 = !{ptr @ov6650_video_probe._entry.32, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ov6650_video_probe._entry_ptr.34, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov6650.c", i32 852, i32 3}
!104 = !{ptr @ov6650_video_probe._entry.35, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ov6650_video_probe._entry_ptr.37, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ov6650.c", i32 879, i32 3}
!108 = !{ptr @ov6650_video_probe._entry.38, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ov6650_video_probe._entry_ptr.40, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ov6650.c", i32 885, i32 2}
!112 = !{ptr @ov6650_video_probe._entry.41, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ov6650_video_probe._entry_ptr.43, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @ov6650_xclk, !115, !"ov6650_xclk", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/ov6650.c", i32 209, i32 33}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/ov6650.c", i32 789, i32 2}
!118 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ov6650_reset.__UNIQUE_ID_ddebug301, !117, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/ov6650.c", i32 793, i32 3}
!122 = !{ptr @ov6650_reset._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ov6650_reset._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov6650.c", i32 804, i32 2}
!126 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ov6650_prog_dflt.__UNIQUE_ID_ddebug302, !125, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!128 = !{ptr @ov6650_id, !129, !"ov6650_id", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ov6650.c", i32 1092, i32 35}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i64 2148748512, i64 2148748517, i64 2148748530, i64 2148748574, i64 2148748608, i64 2148748629}
!140 = !{i8 0, i8 2}
