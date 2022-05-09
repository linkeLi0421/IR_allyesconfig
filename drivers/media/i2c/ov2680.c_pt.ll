; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov2680.c_pt.bc'
source_filename = "../drivers/media/i2c/ov2680.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ov2680_mode_info = type { ptr, i32, i32, i32, ptr, i32 }
%struct.reg_value = type { i16, i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ov2680_dev = type { ptr, %struct.v4l2_subdev, %struct.media_pad, ptr, i32, [3 x %struct.regulator_bulk_data], ptr, %struct.mutex, i8, i8, i8, %struct.ov2680_ctrls, %struct.v4l2_mbus_framefmt, %struct.v4l2_fract, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.ov2680_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.100, %struct.anon.101, ptr, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_fract = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@__initcall__kmod_ov2680__294_1164_ov2680_i2c_driver_init6 = internal global ptr @ov2680_i2c_driver_init, section ".initcall6.init", align 4
@ov2680_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov2680_remove, ptr @ov2680_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov2680_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2680_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov2680_i2c_driver_exit = internal global ptr @ov2680_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [54 x i8] c"ov2680.author=Rui Miguel Silva <rui.silva@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [51 x i8] c"ov2680.description=OV2680 CMOS Image Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [37 x i8] c"ov2680.file=drivers/media/i2c/ov2680\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [22 x i8] c"ov2680.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov2680\00", [25 x i8] zeroinitializer }, align 32
@ov2680_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov2680\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov2680_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ov2680_suspend, ptr @ov2680_resume, ptr @ov2680_suspend, ptr @ov2680_resume, ptr @ov2680_suspend, ptr @ov2680_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov2680_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1075, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov2680_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov2680.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov2680_probe._entry_ptr = internal global ptr @ov2680_probe._entry, section ".printk_index", align 4
@ov2680_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sensor->lock\00", [18 x i8] zeroinitializer }, align 32
@ov2680_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1089, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov2680 init correctly\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov2680_probe._entry_ptr.10 = internal global ptr @ov2680_probe._entry.7, section ".printk_index", align 4
@ov2680_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov2680 init fail: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ov2680_probe._entry_ptr.13 = internal global ptr @ov2680_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov2680_parse_dt.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 1, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov2680_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error while getting reset gpio: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xvclk\00", [26 x i8] zeroinitializer }, align 32
@ov2680_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 1039, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xvclk clock missing or invalid\0A\00", [32 x i8] zeroinitializer }, align 32
@ov2680_parse_dt._entry_ptr = internal global ptr @ov2680_parse_dt._entry, section ".printk_index", align 4
@ov2680_parse_dt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 1046, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"wrong xvclk frequency %d HZ, expected: %d Hz\0A\00", [50 x i8] zeroinitializer }, align 32
@ov2680_parse_dt._entry_ptr.21 = internal global ptr @ov2680_parse_dt._entry.19, section ".printk_index", align 4
@ov2680_mode_init_data = internal constant { %struct.ov2680_mode_info, [40 x i8] } { %struct.ov2680_mode_info { ptr @.str.22, i32 0, i32 800, i32 600, ptr @ov2680_setting_30fps_QUXGA_800_600, i32 20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mode_quxga_800_600\00", [45 x i8] zeroinitializer }, align 32
@ov2680_setting_30fps_QUXGA_800_600 = internal constant { [20 x %struct.reg_value], [48 x i8] } { [20 x %struct.reg_value] [%struct.reg_value { i16 12422, i8 1 }, %struct.reg_value { i16 14090, i8 35 }, %struct.reg_value { i16 14344, i8 3 }, %struct.reg_value { i16 14345, i8 32 }, %struct.reg_value { i16 14346, i8 2 }, %struct.reg_value { i16 14347, i8 88 }, %struct.reg_value { i16 14348, i8 6 }, %struct.reg_value { i16 14349, i8 -84 }, %struct.reg_value { i16 14350, i8 2 }, %struct.reg_value { i16 14351, i8 -124 }, %struct.reg_value { i16 14353, i8 4 }, %struct.reg_value { i16 14355, i8 4 }, %struct.reg_value { i16 14356, i8 49 }, %struct.reg_value { i16 14357, i8 49 }, %struct.reg_value { i16 14368, i8 -64 }, %struct.reg_value { i16 16392, i8 0 }, %struct.reg_value { i16 16393, i8 3 }, %struct.reg_value { i16 18487, i8 30 }, %struct.reg_value { i16 13569, i8 78 }, %struct.reg_value { i16 13570, i8 -32 }], [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DOVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@ov2680_check_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1011, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read chip id high\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov2680_check_id\00", [16 x i8] zeroinitializer }, align 32
@ov2680_check_id._entry_ptr = internal global ptr @ov2680_check_id._entry, section ".printk_index", align 4
@ov2680_check_id._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 1017, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"chip id: 0x%04x does not match expected 0x%04x\0A\00", [48 x i8] zeroinitializer }, align 32
@ov2680_check_id._entry_ptr.30 = internal global ptr @ov2680_check_id._entry.28, section ".printk_index", align 4
@ov2680_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov2680_power_on\00", [16 x i8] zeroinitializer }, align 32
@ov2680_power_on._entry_ptr = internal global ptr @ov2680_power_on._entry, section ".printk_index", align 4
@ov2680_power_on._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sensor soft reset failed\0A\00", [38 x i8] zeroinitializer }, align 32
@ov2680_power_on._entry_ptr.35 = internal global ptr @ov2680_power_on._entry.33, section ".printk_index", align 4
@__ov2680_write_reg._entry = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"write error: reg=0x%4x: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__ov2680_write_reg\00", [45 x i8] zeroinitializer }, align 32
@__ov2680_write_reg._entry_ptr = internal global ptr @__ov2680_write_reg._entry, section ".printk_index", align 4
@__ov2680_read_reg._entry = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, align 1
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"read error: reg=0x%4x: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__ov2680_read_reg\00", [46 x i8] zeroinitializer }, align 32
@__ov2680_read_reg._entry_ptr = internal global ptr @__ov2680_read_reg._entry, section ".printk_index", align 4
@ov2680_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ov2680_g_volatile_ctrl, ptr null, ptr @ov2680_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov2680_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov2680_core_ops, ptr null, ptr null, ptr @ov2680_video_ops, ptr null, ptr null, ptr null, ptr @ov2680_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov2680_v4l2_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov2680:939:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [44 x i8] zeroinitializer }, align 32
@ov2680_hv_flip_bayer_order = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12295, i32 12298, i32 12302, i32 12303], [16 x i8] zeroinitializer }, align 32
@ov2680_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2680_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ov2680_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2680_s_stream, ptr null, ptr @ov2680_s_g_frame_interval, ptr @ov2680_s_g_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov2680_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @ov2680_init_cfg, ptr @ov2680_enum_mbus_code, ptr @ov2680_enum_frame_size, ptr @ov2680_enum_frame_interval, ptr @ov2680_get_fmt, ptr @ov2680_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov2680_mode_data = internal constant { [3 x %struct.ov2680_mode_info], [56 x i8] } { [3 x %struct.ov2680_mode_info] [%struct.ov2680_mode_info { ptr @.str.22, i32 0, i32 800, i32 600, ptr @ov2680_setting_30fps_QUXGA_800_600, i32 20 }, %struct.ov2680_mode_info { ptr @.str.41, i32 1, i32 1280, i32 720, ptr @ov2680_setting_30fps_720P_1280_720, i32 15 }, %struct.ov2680_mode_info { ptr @.str.42, i32 2, i32 1600, i32 1200, ptr @ov2680_setting_30fps_UXGA_1600_1200, i32 18 }], [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mode_720p_1280_720\00", [45 x i8] zeroinitializer }, align 32
@ov2680_setting_30fps_720P_1280_720 = internal constant { [15 x %struct.reg_value], [36 x i8] } { [15 x %struct.reg_value] [%struct.reg_value { i16 12422, i8 0 }, %struct.reg_value { i16 14344, i8 5 }, %struct.reg_value { i16 14345, i8 0 }, %struct.reg_value { i16 14346, i8 2 }, %struct.reg_value { i16 14347, i8 -48 }, %struct.reg_value { i16 14348, i8 6 }, %struct.reg_value { i16 14349, i8 -88 }, %struct.reg_value { i16 14350, i8 5 }, %struct.reg_value { i16 14351, i8 14 }, %struct.reg_value { i16 14353, i8 8 }, %struct.reg_value { i16 14355, i8 6 }, %struct.reg_value { i16 14356, i8 17 }, %struct.reg_value { i16 14357, i8 17 }, %struct.reg_value { i16 14368, i8 -64 }, %struct.reg_value { i16 16392, i8 0 }], [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mode_uxga_1600_1200\00", [44 x i8] zeroinitializer }, align 32
@ov2680_setting_30fps_UXGA_1600_1200 = internal constant { [18 x %struct.reg_value], [56 x i8] } { [18 x %struct.reg_value] [%struct.reg_value { i16 12422, i8 0 }, %struct.reg_value { i16 13569, i8 78 }, %struct.reg_value { i16 13570, i8 -32 }, %struct.reg_value { i16 14344, i8 6 }, %struct.reg_value { i16 14345, i8 64 }, %struct.reg_value { i16 14346, i8 4 }, %struct.reg_value { i16 14347, i8 -80 }, %struct.reg_value { i16 14348, i8 6 }, %struct.reg_value { i16 14349, i8 -88 }, %struct.reg_value { i16 14350, i8 5 }, %struct.reg_value { i16 14351, i8 14 }, %struct.reg_value { i16 14353, i8 0 }, %struct.reg_value { i16 14355, i8 0 }, %struct.reg_value { i16 14356, i8 17 }, %struct.reg_value { i16 14357, i8 17 }, %struct.reg_value { i16 14368, i8 -64 }, %struct.reg_value { i16 16392, i8 0 }, %struct.reg_value { i16 18487, i8 24 }], [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color Bars\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Random Data\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Square\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Black Image\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963793, i64 9963795]
@__sancov_gen_cov_switch_values.49 = internal global [9 x i64] [i64 7, i64 32, i64 9963793, i64 9963794, i64 9963795, i64 9963796, i64 9963797, i64 10094849, i64 10422531]
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"ov2680_i2c_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1155, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1157, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"ov2680_dt_ids\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1149, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"ov2680_pm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1145, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1075, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1079, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1089, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1094, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1029, i32 52 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1033, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1037, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1039, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1045, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"ov2680_mode_init_data\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 163, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 164, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [35 x i8] c"ov2680_setting_30fps_QUXGA_800_600\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 140, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 70, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 71, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 72, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1011, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1016, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 551, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 558, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 211, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 251, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [16 x i8] c"ov2680_ctrl_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 866, i32 35 }
@___asan_gen_.188 = private unnamed_addr constant [18 x i8] c"ov2680_subdev_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 890, i32 37 }
@___asan_gen_.191 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 939, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"test_pattern_menu\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 125, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"ov2680_hv_flip_bayer_order\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 133, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"ov2680_core_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 871, i32 42 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"ov2680_video_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 875, i32 43 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"ov2680_pad_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 881, i32 41 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"ov2680_mode_data\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 169, i32 38 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 173, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [35 x i8] c"ov2680_setting_30fps_720P_1280_720\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 148, i32 31 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 176, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [36 x i8] c"ov2680_setting_30fps_UXGA_1600_1200\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 155, i32 31 }
@___asan_gen_.228 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 998, i32 6 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 126, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 127, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 128, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 129, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private constant [30 x i8] c"../drivers/media/i2c/ov2680.c\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 130, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ov2680_i2c_driver_exit, ptr @__initcall__kmod_ov2680__294_1164_ov2680_i2c_driver_init6, ptr @__ov2680_read_reg._entry, ptr @__ov2680_read_reg._entry_ptr, ptr @__ov2680_write_reg._entry, ptr @__ov2680_write_reg._entry_ptr, ptr @ov2680_check_id._entry, ptr @ov2680_check_id._entry.28, ptr @ov2680_check_id._entry_ptr, ptr @ov2680_check_id._entry_ptr.30, ptr @ov2680_i2c_driver_exit, ptr @ov2680_parse_dt._entry, ptr @ov2680_parse_dt._entry.19, ptr @ov2680_parse_dt._entry_ptr, ptr @ov2680_parse_dt._entry_ptr.21, ptr @ov2680_power_on._entry, ptr @ov2680_power_on._entry.33, ptr @ov2680_power_on._entry_ptr, ptr @ov2680_power_on._entry_ptr.35, ptr @ov2680_probe._entry, ptr @ov2680_probe._entry.11, ptr @ov2680_probe._entry.7, ptr @ov2680_probe._entry_ptr, ptr @ov2680_probe._entry_ptr.10, ptr @ov2680_probe._entry_ptr.13, ptr @ov2680_i2c_driver, ptr @.str, ptr @ov2680_dt_ids, ptr @ov2680_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ov2680_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @ov2680_mode_init_data, ptr @.str.22, ptr @ov2680_setting_30fps_QUXGA_800_600, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ov2680_ctrl_ops, ptr @ov2680_subdev_ops, ptr @ov2680_v4l2_register._key, ptr @.str.40, ptr @test_pattern_menu, ptr @ov2680_hv_flip_bayer_order, ptr @ov2680_core_ops, ptr @ov2680_video_ops, ptr @ov2680_pad_ops, ptr @ov2680_mode_data, ptr @.str.41, ptr @ov2680_setting_30fps_720P_1280_720, ptr @.str.42, ptr @ov2680_setting_30fps_UXGA_1600_1200, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_parse_dt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_mode_init_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_setting_30fps_QUXGA_800_600 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_check_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_check_id._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_power_on._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_v4l2_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_hv_flip_bayer_order to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_mode_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_setting_30fps_720P_1280_720 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2680_setting_30fps_UXGA_1600_1200 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov2680_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov2680_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ov2680_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %lock = getelementptr i8, ptr %1, i32 276
  tail call void @mutex_destroy(ptr noundef %lock) #7
  %ctrls = getelementptr i8, ptr %1, i32 372
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 648, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %call2 = tail call fastcc i32 @ov2680_parse_dt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fmt.i = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 12
  %code.i = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 12, i32 2
  %1 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12295, ptr %code.i, align 4
  %2 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 800, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 600, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 12, i32 3
  %4 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 12, i32 4
  %5 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %colorspace.i, align 4
  %frame_interval.i = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 13
  %denominator.i = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 30, ptr %denominator.i, align 4
  %7 = ptrtoint ptr %frame_interval.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %frame_interval.i, align 4
  %current_mode.i = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ov2680_mode_init_data, ptr %current_mode.i, align 4
  %mode_pending_changes.i = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %mode_pending_changes.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mode_pending_changes.i, align 4
  %arrayidx1.i = getelementptr %struct.ov2680_dev, ptr %call.i, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.23, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.ov2680_dev, ptr %call.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.24, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.ov2680_dev, ptr %call.i, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.25, ptr %arrayidx1.2.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %call.i53 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef 3, ptr noundef %arrayidx1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp10 = icmp slt i32 %call.i53, 0
  br i1 %cmp10, label %do.end, label %do.body13

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

do.body13:                                        ; preds = %if.end4
  %lock = getelementptr inbounds %struct.ov2680_dev, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ov2680_probe.__key) #7
  %call16 = tail call fastcc i32 @ov2680_check_id(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body13.do.end29_crit_edge, label %if.end19

do.body13.do.end29_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

if.end19:                                         ; preds = %do.body13
  %call20 = tail call fastcc i32 @ov2680_v4l2_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.do.end29_crit_edge, label %do.end26

if.end19.do.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

do.end29:                                         ; preds = %if.end19.do.end29_crit_edge, %do.body13.do.end29_crit_edge
  %ret.0 = phi i32 [ %call16, %do.body13.do.end29_crit_edge ], [ %call20, %if.end19.do.end29_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %ret.0) #10
  tail call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end26, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i53, %do.end ], [ %ret.0, %do.end29 ], [ 0, %do.end26 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_parse_dt(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call1 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 6
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %reset_gpio, align 4
  %cmp.i.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call1 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp = icmp slt i32 %spec.select.i, 0
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2680_parse_dt.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2680_parse_dt, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !144

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2680_parse_dt.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef %spec.select.i) #7
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #7
  %xvclk = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %xvclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %xvclk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #10
  %5 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xvclk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %call20 = tail call i32 @clk_get_rate(ptr noundef %call9) #7
  %xvclk_freq = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 4
  %8 = ptrtoint ptr %xvclk_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call20, ptr %xvclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call20)
  %cmp22.not = icmp eq i32 %call20, 24000000
  br i1 %cmp22.not, label %if.end18.cleanup_crit_edge, label %do.end26

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %call20, i32 noundef 24000000) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end18.cleanup_crit_edge, %do.end15, %if.then7, %do.body
  %retval.0 = phi i32 [ %7, %do.end15 ], [ -22, %do.end26 ], [ %3, %if.then7 ], [ 0, %if.end18.cleanup_crit_edge ], [ %3, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_check_id(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i = alloca [2 x i8], align 1
  %data_buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call1 = tail call fastcc i32 @ov2680_power_on(ptr noundef %sensor)
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i) #7
  %6 = getelementptr inbounds [2 x i8], ptr %addr_buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %addr_buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 48, ptr %addr_buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i) #7
  %9 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data_buf.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr.i, align 2
  %12 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %addr_buf.i, ptr %buf.i, align 4
  %16 = load i16, ptr %addr.i, align 2
  %arrayidx11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx11.i, align 4
  %flags14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags14.i, align 2
  %len17.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len17.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %len17.i, align 4
  %arrayidx18.i = getelementptr inbounds [4 x i8], ptr %data_buf.i, i32 0, i32 2
  %buf20.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %buf20.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx18.i, ptr %buf20.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp22.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp22.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i14 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i14, ptr noundef nonnull @.str.38, i32 noundef 12298, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9856, i32 %24)
  %cmp3.not = icmp eq i32 %24, 9856
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %24, i32 noundef 9856) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_v4l2_register(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11
  %sd = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 1
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %1, ptr noundef nonnull @ov2680_subdev_ops) #7
  %flags = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 2
  %flags3 = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %flags3, align 4
  %function = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 131073, ptr %function, align 4
  %call = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls1, i32 noundef 7, ptr noundef nonnull @ov2680_v4l2_register._key, ptr noundef nonnull @.str.40) #7
  %lock = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 7
  %lock9 = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 0, i32 1
  %5 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lock, ptr %lock9, align 4
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov2680_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %vflip, align 4
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov2680_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %hflip = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 3
  %7 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %hflip, align 4
  %call12 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls1, ptr noundef nonnull @ov2680_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @test_pattern_menu) #7
  %test_pattern = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 5
  %8 = ptrtoint ptr %test_pattern to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %test_pattern, align 4
  %call13 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @ov2680_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #7
  %9 = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13, ptr %9, align 4
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov2680_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 32767, i64 noundef 1, i64 noundef 0) #7
  %exposure = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 1, i32 1
  %11 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %exposure, align 4
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov2680_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %12 = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %12, align 4
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov2680_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 2047, i64 noundef 1, i64 noundef 0) #7
  %gain = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 2, i32 1
  %14 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %gain, align 4
  %error = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 0, i32 9
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end19, label %if.end.cleanup_entity_crit_edge

if.end.cleanup_entity_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_entity

if.end19:                                         ; preds = %if.end
  %flags21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call16, i32 0, i32 20
  %17 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags21, align 4
  %or = or i32 %18, 128
  store i32 %or, ptr %flags21, align 4
  %19 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %exposure, align 4
  %flags23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags23, align 4
  %or24 = or i32 %22, 128
  store i32 %or24, ptr %flags23, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %12, i8 noundef zeroext 0, i1 noundef zeroext true) #7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %9, i8 noundef zeroext 1, i1 noundef zeroext true) #7
  %ctrl_handler = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ctrls1, ptr %ctrl_handler, align 4
  %call29 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end19.cleanup_entity_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19.cleanup_entity_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_entity

cleanup_entity:                                   ; preds = %if.end19.cleanup_entity_crit_edge, %if.end.cleanup_entity_crit_edge
  %ret.0 = phi i32 [ %call29, %if.end19.cleanup_entity_crit_edge ], [ %16, %if.end.cleanup_entity_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup_entity, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup_entity ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_power_on(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %buf.i.i46 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %is_enabled = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 9
  %2 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_enabled, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 5
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call1) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %reset_gpio = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 6
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then5, label %ov2680_power_down.exit

if.then5:                                         ; preds = %if.end3
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 259, ptr %buf.i, align 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 16777216, ptr %8, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp4.not.i, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i39 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i39, ptr noundef nonnull @.str.36, i32 noundef 259, i32 noundef %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end13

ov2680_power_down.exit:                           ; preds = %if.end3
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_gpio, align 4
  %tobool.not.i41 = icmp eq ptr %12, null
  br i1 %tobool.not.i41, label %ov2680_power_down.exit.if.end13_crit_edge, label %if.end.i42

ov2680_power_down.exit.if.end13_crit_edge:        ; preds = %ov2680_power_down.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.i42:                                       ; preds = %ov2680_power_down.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %12, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end.i42, %ov2680_power_down.exit.if.end13_crit_edge, %if.end12
  %xvclk = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 3
  %13 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xvclk, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i43 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i43, label %if.end.i44, label %if.end13.clk_prepare_enable.exit_crit_edge

if.end13.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i44:                                       ; preds = %if.end13
  %call1.i = call i32 @clk_enable(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i44.if.end17_crit_edge, label %if.then3.i

if.end.i44.if.end17_crit_edge:                    ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then3.i:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %14) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end13.clk_prepare_enable.exit_crit_edge
  %retval.0.i45 = phi i32 [ %call.i, %if.end13.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i45)
  %cmp15 = icmp slt i32 %retval.0.i45, 0
  br i1 %cmp15, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end17_crit_edge

clk_prepare_enable.exit.if.end17_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %clk_prepare_enable.exit.if.end17_crit_edge, %if.end.i44.if.end17_crit_edge
  %15 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %is_enabled, align 1
  %16 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %18 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 256, ptr %buf.i.i, align 2
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 16777216, ptr %18, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 3
  br i1 %cmp4.not.i.i, label %if.end17.ov2680_stream_enable.exit_crit_edge, label %do.end.i.i

if.end17.ov2680_stream_enable.exit_crit_edge:     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2680_stream_enable.exit

do.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.36, i32 noundef 256, i32 noundef %call.i.i.i) #10
  br label %ov2680_stream_enable.exit

ov2680_stream_enable.exit:                        ; preds = %do.end.i.i, %if.end17.ov2680_stream_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %21 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i46) #7
  %23 = getelementptr inbounds [6 x i8], ptr %buf.i.i46, i32 0, i32 2
  %24 = ptrtoint ptr %buf.i.i46 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 256, ptr %buf.i.i46, align 2
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %23, align 2
  %call.i.i.i47 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %buf.i.i46, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i47)
  %cmp4.not.i.i48 = icmp eq i32 %call.i.i.i47, 3
  br i1 %cmp4.not.i.i48, label %ov2680_stream_enable.exit.ov2680_stream_disable.exit_crit_edge, label %do.end.i.i50

ov2680_stream_enable.exit.ov2680_stream_disable.exit_crit_edge: ; preds = %ov2680_stream_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2680_stream_disable.exit

do.end.i.i50:                                     ; preds = %ov2680_stream_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i49 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i49, ptr noundef nonnull @.str.36, i32 noundef 256, i32 noundef %call.i.i.i47) #10
  br label %ov2680_stream_disable.exit

ov2680_stream_disable.exit:                       ; preds = %do.end.i.i50, %ov2680_stream_enable.exit.ov2680_stream_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i46) #7
  br label %cleanup

cleanup:                                          ; preds = %ov2680_stream_disable.exit, %clk_prepare_enable.exit.cleanup_crit_edge, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %ov2680_stream_disable.exit ], [ -5, %do.end11 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i45, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %msgs.i.i26 = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i27 = alloca [2 x i8], align 1
  %data_buf.i.i28 = alloca [4 x i8], align 4
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 1
  %data_buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -376
  %is_enabled = getelementptr i8, ptr %1, i32 -3
  %2 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_enabled, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963795, label %sw.bb
    i32 9963793, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %9 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  %11 = getelementptr inbounds [2 x i8], ptr %addr_buf.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 53, ptr %addr_buf.i.i, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %14 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %data_buf.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i.i, align 2
  %17 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i, align 2
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %9, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %21 = load i16, ptr %addr.i.i, align 2
  %arrayidx11.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx11.i.i, align 4
  %flags14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags14.i.i, align 2
  %len17.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len17.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %len17.i.i, align 4
  %arrayidx18.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 2
  %buf20.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %buf20.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx18.i.i, ptr %buf20.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp22.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp22.not.i.i, label %ov2680_gain_get.exit, label %ov2680_gain_get.exit.thread

ov2680_gain_get.exit.thread:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, i32 noundef 13578, i32 noundef %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %cleanup

ov2680_gain_get.exit:                             ; preds = %sw.bb
  %28 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp slt i32 %29, 0
  br i1 %cmp, label %ov2680_gain_get.exit.cleanup_crit_edge, label %if.end5

ov2680_gain_get.exit.cleanup_crit_edge:           ; preds = %ov2680_gain_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %ov2680_gain_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %gain = getelementptr i8, ptr %1, i32 196
  %30 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gain, align 4
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %val6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %val6, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i26) #7
  %35 = getelementptr inbounds i8, ptr %msgs.i.i26, i32 4
  %36 = call ptr @memset(ptr %35, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i27) #7
  %37 = getelementptr inbounds [2 x i8], ptr %addr_buf.i.i27, i32 0, i32 1
  %38 = ptrtoint ptr %addr_buf.i.i27 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 53, ptr %addr_buf.i.i27, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i28) #7
  %40 = ptrtoint ptr %data_buf.i.i28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %data_buf.i.i28, align 4
  %addr.i.i29 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 1
  %41 = ptrtoint ptr %addr.i.i29 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %addr.i.i29, align 2
  %43 = ptrtoint ptr %msgs.i.i26 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %msgs.i.i26, align 4
  %flags.i.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i26, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i.i30 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i.i30, align 2
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2, ptr %35, align 4
  %buf.i.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i26, i32 0, i32 3
  %46 = ptrtoint ptr %buf.i.i31 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %addr_buf.i.i27, ptr %buf.i.i31, align 4
  %47 = load i16, ptr %addr.i.i29, align 2
  %arrayidx11.i.i32 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i26, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx11.i.i32 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx11.i.i32, align 4
  %flags14.i.i33 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i26, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %flags14.i.i33 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags14.i.i33, align 2
  %len17.i.i34 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i26, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %len17.i.i34 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 3, ptr %len17.i.i34, align 4
  %arrayidx18.i.i35 = getelementptr inbounds [4 x i8], ptr %data_buf.i.i28, i32 0, i32 1
  %buf20.i.i36 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i26, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %buf20.i.i36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx18.i.i35, ptr %buf20.i.i36, align 4
  %adapter.i.i37 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 3
  %52 = ptrtoint ptr %adapter.i.i37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i.i37, align 8
  %call.i.i38 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msgs.i.i26, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i38)
  %cmp22.not.i.i39 = icmp eq i32 %call.i.i38, 2
  br i1 %cmp22.not.i.i39, label %ov2680_exposure_get.exit, label %ov2680_exposure_get.exit.thread

ov2680_exposure_get.exit.thread:                  ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i40 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i40, ptr noundef nonnull @.str.38, i32 noundef 13568, i32 noundef %call.i.i38) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i28) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i27) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i26) #7
  br label %cleanup

ov2680_exposure_get.exit:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %data_buf.i.i28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_buf.i.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i28) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i27) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i26) #7
  %shr.i = lshr i32 %55, 4
  %exposure = getelementptr i8, ptr %1, i32 188
  %56 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %exposure, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %57, i32 0, i32 22
  %58 = ptrtoint ptr %val12 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shr.i, ptr %val12, align 4
  br label %cleanup

cleanup:                                          ; preds = %ov2680_exposure_get.exit, %ov2680_exposure_get.exit.thread, %if.end5, %ov2680_gain_get.exit.cleanup_crit_edge, %ov2680_gain_get.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %29, %ov2680_gain_get.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %ov2680_exposure_get.exit ], [ 0, %if.end5 ], [ -5, %ov2680_gain_get.exit.thread ], [ -5, %ov2680_exposure_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i.i103 = alloca [6 x i8], align 2
  %buf.i.i88 = alloca [6 x i8], align 2
  %buf.i.i68 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -376
  %is_enabled = getelementptr i8, ptr %1, i32 -3
  %2 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_enabled, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963794, label %sw.bb
    i32 9963795, label %sw.bb6
    i32 10094849, label %sw.bb12
    i32 9963793, label %sw.bb18
    i32 9963797, label %sw.bb24
    i32 9963796, label %sw.bb33
    i32 10422531, label %sw.bb44
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3 = icmp ne i32 %8, 0
  %conv.i = select i1 %tobool3, i8 0, i8 2
  %call.i = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 13571, i8 noundef zeroext 2, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %brmerge.i = or i1 %tobool3, %cmp.i
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  br i1 %brmerge.i, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb
  %gain5.i = getelementptr i8, ptr %1, i32 196
  %10 = ptrtoint ptr %gain5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gain5.i, align 4
  %is_new.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %is_new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i = load i32, ptr %is_new.i, align 4
  %13 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.i = icmp eq i32 %13, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end8.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %18 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 13578, ptr %buf.i.i, align 2
  %shl.i.i = shl i32 %15, 16
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %shl.i.i, ptr %18, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp4.not.i.i, label %if.end8.i.__ov2680_write_reg.exit.i_crit_edge, label %do.end.i.i

if.end8.i.__ov2680_write_reg.exit.i_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov2680_write_reg.exit.i

do.end.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.36, i32 noundef 13578, i32 noundef %call.i.i.i) #10
  br label %__ov2680_write_reg.exit.i

__ov2680_write_reg.exit.i:                        ; preds = %do.end.i.i, %if.end8.i.__ov2680_write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %21 = getelementptr i8, ptr %1, i32 192
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8 = icmp ne i32 %25, 0
  %conv.i69 = select i1 %tobool8, i8 0, i8 2
  %call.i70 = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 13571, i8 noundef zeroext 2, i8 noundef zeroext %conv.i69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp.i71 = icmp slt i32 %call.i70, 0
  %brmerge.i72 = or i1 %tobool8, %cmp.i71
  %26 = tail call i32 @llvm.smin.i32(i32 %call.i70, i32 0) #7
  br i1 %brmerge.i72, label %sw.bb6.cleanup_crit_edge, label %lor.lhs.false.i77

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i77:                                ; preds = %sw.bb6
  %gain5.i73 = getelementptr i8, ptr %1, i32 196
  %27 = ptrtoint ptr %gain5.i73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gain5.i73, align 4
  %is_new.i74 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %is_new.i74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i75 = load i32, ptr %is_new.i74, align 4
  %30 = and i32 %bf.load.i75, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool6.not.i76 = icmp eq i32 %30, 0
  br i1 %tobool6.not.i76, label %lor.lhs.false.i77.cleanup_crit_edge, label %if.end8.i82

lor.lhs.false.i77.cleanup_crit_edge:              ; preds = %lor.lhs.false.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i82:                                      ; preds = %lor.lhs.false.i77
  %val.i78 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %31 = ptrtoint ptr %val.i78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i78, align 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i68) #7
  %35 = getelementptr inbounds [6 x i8], ptr %buf.i.i68, i32 0, i32 2
  %36 = ptrtoint ptr %buf.i.i68 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 13578, ptr %buf.i.i68, align 2
  %shl.i.i79 = shl i32 %32, 16
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %shl.i.i79, ptr %35, align 2
  %call.i.i.i80 = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buf.i.i68, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i80)
  %cmp4.not.i.i81 = icmp eq i32 %call.i.i.i80, 4
  br i1 %cmp4.not.i.i81, label %if.end8.i82.__ov2680_write_reg.exit.i85_crit_edge, label %do.end.i.i84

if.end8.i82.__ov2680_write_reg.exit.i85_crit_edge: ; preds = %if.end8.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov2680_write_reg.exit.i85

do.end.i.i84:                                     ; preds = %if.end8.i82
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i83 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i83, ptr noundef nonnull @.str.36, i32 noundef 13578, i32 noundef %call.i.i.i80) #10
  br label %__ov2680_write_reg.exit.i85

__ov2680_write_reg.exit.i85:                      ; preds = %do.end.i.i84, %if.end8.i82.__ov2680_write_reg.exit.i85_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i68) #7
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %38 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool14 = icmp ne i32 %39, 0
  %not.auto_exp.i = xor i1 %tobool14, true
  %conv.i89 = zext i1 %not.auto_exp.i to i8
  %call.i90 = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 13571, i8 noundef zeroext 1, i8 noundef zeroext %conv.i89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  %brmerge.i92 = or i1 %tobool14, %cmp.i91
  %40 = tail call i32 @llvm.smin.i32(i32 %call.i90, i32 0) #7
  br i1 %brmerge.i92, label %sw.bb12.cleanup_crit_edge, label %lor.lhs.false.i95

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i95:                                ; preds = %sw.bb12
  %exposure.i = getelementptr i8, ptr %1, i32 188
  %41 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %exposure.i, align 4
  %is_new.i93 = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %is_new.i93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load.i94 = load i32, ptr %is_new.i93, align 4
  %44 = and i32 %bf.load.i94, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool5.not.i = icmp eq i32 %44, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i95.cleanup_crit_edge, label %if.end7.i

lor.lhs.false.i95.cleanup_crit_edge:              ; preds = %lor.lhs.false.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %lor.lhs.false.i95
  %val.i96 = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 22
  %45 = ptrtoint ptr %val.i96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i96, align 4
  %shl.i = shl i32 %46, 12
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i88) #7
  %49 = getelementptr inbounds [6 x i8], ptr %buf.i.i88, i32 0, i32 2
  %50 = ptrtoint ptr %buf.i.i88 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 13568, ptr %buf.i.i88, align 2
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %shl.i, ptr %49, align 2
  %call.i.i.i97 = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buf.i.i88, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i97)
  %cmp4.not.i.i98 = icmp eq i32 %call.i.i.i97, 5
  br i1 %cmp4.not.i.i98, label %if.end7.i.__ov2680_write_reg.exit.i101_crit_edge, label %do.end.i.i100

if.end7.i.__ov2680_write_reg.exit.i101_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov2680_write_reg.exit.i101

do.end.i.i100:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i99 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i99, ptr noundef nonnull @.str.36, i32 noundef 13568, i32 noundef %call.i.i.i97) #10
  br label %__ov2680_write_reg.exit.i101

__ov2680_write_reg.exit.i101:                     ; preds = %do.end.i.i100, %if.end7.i.__ov2680_write_reg.exit.i101_crit_edge
  %retval.0.i.i = phi i32 [ -5, %do.end.i.i100 ], [ 0, %if.end7.i.__ov2680_write_reg.exit.i101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i88) #7
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  %52 = getelementptr i8, ptr %1, i32 184
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool20 = icmp ne i32 %56, 0
  %not.auto_exp.i104 = xor i1 %tobool20, true
  %conv.i105 = zext i1 %not.auto_exp.i104 to i8
  %call.i106 = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 13571, i8 noundef zeroext 1, i8 noundef zeroext %conv.i105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.i107 = icmp slt i32 %call.i106, 0
  %brmerge.i108 = or i1 %tobool20, %cmp.i107
  %57 = tail call i32 @llvm.smin.i32(i32 %call.i106, i32 0) #7
  br i1 %brmerge.i108, label %sw.bb18.cleanup_crit_edge, label %lor.lhs.false.i113

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i113:                               ; preds = %sw.bb18
  %exposure.i109 = getelementptr i8, ptr %1, i32 188
  %58 = ptrtoint ptr %exposure.i109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %exposure.i109, align 4
  %is_new.i110 = getelementptr inbounds %struct.v4l2_ctrl, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %is_new.i110 to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load.i111 = load i32, ptr %is_new.i110, align 4
  %61 = and i32 %bf.load.i111, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool5.not.i112 = icmp eq i32 %61, 0
  br i1 %tobool5.not.i112, label %lor.lhs.false.i113.cleanup_crit_edge, label %if.end7.i118

lor.lhs.false.i113.cleanup_crit_edge:             ; preds = %lor.lhs.false.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i118:                                     ; preds = %lor.lhs.false.i113
  %val.i114 = getelementptr inbounds %struct.v4l2_ctrl, ptr %59, i32 0, i32 22
  %62 = ptrtoint ptr %val.i114 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i114, align 4
  %shl.i115 = shl i32 %63, 12
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i103) #7
  %66 = getelementptr inbounds [6 x i8], ptr %buf.i.i103, i32 0, i32 2
  %67 = ptrtoint ptr %buf.i.i103 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 13568, ptr %buf.i.i103, align 2
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %shl.i115, ptr %66, align 2
  %call.i.i.i116 = call i32 @i2c_transfer_buffer_flags(ptr noundef %65, ptr noundef nonnull %buf.i.i103, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i116)
  %cmp4.not.i.i117 = icmp eq i32 %call.i.i.i116, 5
  br i1 %cmp4.not.i.i117, label %if.end7.i118.__ov2680_write_reg.exit.i122_crit_edge, label %do.end.i.i120

if.end7.i118.__ov2680_write_reg.exit.i122_crit_edge: ; preds = %if.end7.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov2680_write_reg.exit.i122

do.end.i.i120:                                    ; preds = %if.end7.i118
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i119 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i119, ptr noundef nonnull @.str.36, i32 noundef 13568, i32 noundef %call.i.i.i116) #10
  br label %__ov2680_write_reg.exit.i122

__ov2680_write_reg.exit.i122:                     ; preds = %do.end.i.i120, %if.end7.i118.__ov2680_write_reg.exit.i122_crit_edge
  %retval.0.i.i121 = phi i32 [ -5, %do.end.i.i120 ], [ 0, %if.end7.i118.__ov2680_write_reg.exit.i122_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i103) #7
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %is_streaming = getelementptr i8, ptr %1, i32 -2
  %69 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %is_streaming, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool25.not = icmp eq i8 %70, 0
  br i1 %tobool25.not, label %if.end27, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %sw.bb24
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %71 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool29.not = icmp eq i32 %72, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call fastcc i32 @ov2680_vflip_enable(ptr noundef %add.ptr.i)
  br label %cleanup

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call fastcc i32 @ov2680_vflip_disable(ptr noundef %add.ptr.i)
  br label %cleanup

sw.bb33:                                          ; preds = %if.end
  %is_streaming34 = getelementptr i8, ptr %1, i32 -2
  %73 = ptrtoint ptr %is_streaming34 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_streaming34, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool35.not = icmp eq i8 %74, 0
  br i1 %tobool35.not, label %if.end37, label %sw.bb33.cleanup_crit_edge

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %sw.bb33
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %75 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool39.not = icmp eq i32 %76, 0
  br i1 %tobool39.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call fastcc i32 @ov2680_hflip_enable(ptr noundef %add.ptr.i)
  br label %cleanup

if.else42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call fastcc i32 @ov2680_hflip_disable(ptr noundef %add.ptr.i)
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %77 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  %call.i125 = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 20608, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb44
  %79 = trunc i32 %78 to i8
  %conv.i126 = add i8 %79, -1
  %call1.i = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 20608, i8 noundef zeroext 3, i8 noundef zeroext %conv.i126) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i127 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i127, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 20608, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  %80 = tail call i32 @llvm.smin.i32(i32 %call5.i, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.end.i.cleanup_crit_edge, %if.then.i, %if.else42, %if.then40, %sw.bb33.cleanup_crit_edge, %if.else, %if.then30, %sw.bb24.cleanup_crit_edge, %__ov2680_write_reg.exit.i122, %lor.lhs.false.i113.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %__ov2680_write_reg.exit.i101, %lor.lhs.false.i95.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %__ov2680_write_reg.exit.i85, %lor.lhs.false.i77.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %__ov2680_write_reg.exit.i, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.then40 ], [ %call43, %if.else42 ], [ %call31, %if.then30 ], [ %call32, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ -16, %sw.bb24.cleanup_crit_edge ], [ -16, %sw.bb33.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %__ov2680_write_reg.exit.i ], [ %9, %sw.bb.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %__ov2680_write_reg.exit.i85 ], [ %26, %sw.bb6.cleanup_crit_edge ], [ 0, %lor.lhs.false.i77.cleanup_crit_edge ], [ %retval.0.i.i, %__ov2680_write_reg.exit.i101 ], [ %40, %sw.bb12.cleanup_crit_edge ], [ 0, %lor.lhs.false.i95.cleanup_crit_edge ], [ %retval.0.i.i121, %__ov2680_write_reg.exit.i122 ], [ %57, %sw.bb18.cleanup_crit_edge ], [ 0, %lor.lhs.false.i113.cleanup_crit_edge ], [ %call.i125, %if.then.i ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %80, %if.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_vflip_enable(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %sensor, i16 noundef zeroext 14368, i8 noundef zeroext 4, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @ov2680_bayer_order(ptr noundef %sensor)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_vflip_disable(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %sensor, i16 noundef zeroext 14368, i8 noundef zeroext 4, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @ov2680_bayer_order(ptr noundef %sensor)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_hflip_enable(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %sensor, i16 noundef zeroext 14369, i8 noundef zeroext 4, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @ov2680_bayer_order(ptr noundef %sensor)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_hflip_disable(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %sensor, i16 noundef zeroext 14369, i8 noundef zeroext 4, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @ov2680_bayer_order(ptr noundef %sensor)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_mod_reg(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf.i17 = alloca [6 x i8], align 2
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i = alloca [2 x i8], align 1
  %data_buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %2 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %addr_buf.i, i32 0, i32 1
  %5 = lshr i16 %reg, 8
  %conv1.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %addr_buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %addr_buf.i, align 1
  %conv3.i = trunc i16 %reg to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i) #7
  %8 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data_buf.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %addr_buf.i, ptr %buf.i, align 4
  %15 = load i16, ptr %addr.i, align 2
  %arrayidx11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx11.i, align 4
  %flags14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags14.i, align 2
  %len17.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %len17.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len17.i, align 4
  %arrayidx18.i = getelementptr inbounds [4 x i8], ptr %data_buf.i, i32 0, i32 3
  %buf20.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %buf20.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx18.i, ptr %buf20.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp22.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp22.not.i, label %if.end, label %__ov2680_read_reg.exit.thread

__ov2680_read_reg.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %reg to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %conv.i, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  %conv = zext i8 %mask to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %23, %neg
  %and316 = and i8 %val, %mask
  %24 = trunc i32 %and to i8
  %conv6 = or i8 %and316, %24
  %conv7 = zext i8 %conv6 to i32
  %25 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i17) #7
  %27 = getelementptr inbounds [6 x i8], ptr %buf.i17, i32 0, i32 2
  %28 = ptrtoint ptr %buf.i17 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %reg, ptr %buf.i17, align 2
  %shl.i = shl nuw i32 %conv7, 24
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %shl.i, ptr %27, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buf.i17, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp4.not.i, label %if.end.__ov2680_write_reg.exit_crit_edge, label %do.end.i20

if.end.__ov2680_write_reg.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov2680_write_reg.exit

do.end.i20:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i18 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %conv.i19 = zext i16 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i18, ptr noundef nonnull @.str.36, i32 noundef %conv.i19, i32 noundef %call.i.i) #10
  br label %__ov2680_write_reg.exit

__ov2680_write_reg.exit:                          ; preds = %do.end.i20, %if.end.__ov2680_write_reg.exit_crit_edge
  %retval.0.i21 = phi i32 [ -5, %do.end.i20 ], [ 0, %if.end.__ov2680_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i17) #7
  br label %cleanup

cleanup:                                          ; preds = %__ov2680_write_reg.exit, %__ov2680_read_reg.exit.thread
  %retval.0 = phi i32 [ %retval.0.i21, %__ov2680_write_reg.exit ], [ -5, %__ov2680_read_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_bayer_order(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %msgs.i14 = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i15 = alloca [2 x i8], align 1
  %data_buf.i16 = alloca [4 x i8], align 4
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i = alloca [2 x i8], align 1
  %data_buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %2 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %addr_buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %addr_buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 56, ptr %addr_buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i) #7
  %7 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data_buf.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %10 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %addr_buf.i, ptr %buf.i, align 4
  %14 = load i16, ptr %addr.i, align 2
  %arrayidx11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx11.i, align 4
  %flags14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags14.i, align 2
  %len17.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len17.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len17.i, align 4
  %arrayidx18.i = getelementptr inbounds [4 x i8], ptr %data_buf.i, i32 0, i32 3
  %buf20.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf20.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx18.i, ptr %buf20.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp22.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp22.not.i, label %if.end, label %__ov2680_read_reg.exit.thread

__ov2680_read_reg.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef 14368, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  %23 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i14) #7
  %25 = getelementptr inbounds i8, ptr %msgs.i14, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i15) #7
  %27 = getelementptr inbounds [2 x i8], ptr %addr_buf.i15, i32 0, i32 1
  %28 = ptrtoint ptr %addr_buf.i15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 56, ptr %addr_buf.i15, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 33, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i16) #7
  %30 = ptrtoint ptr %data_buf.i16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %data_buf.i16, align 4
  %addr.i17 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 1
  %31 = ptrtoint ptr %addr.i17 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr.i17, align 2
  %33 = ptrtoint ptr %msgs.i14 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %msgs.i14, align 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i14, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i18, align 2
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2, ptr %25, align 4
  %buf.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i14, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %addr_buf.i15, ptr %buf.i20, align 4
  %37 = load i16, ptr %addr.i17, align 2
  %arrayidx11.i21 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i14, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx11.i21 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx11.i21, align 4
  %flags14.i22 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i14, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %flags14.i22 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags14.i22, align 2
  %len17.i23 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i14, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %len17.i23 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %len17.i23, align 4
  %arrayidx18.i24 = getelementptr inbounds [4 x i8], ptr %data_buf.i16, i32 0, i32 3
  %buf20.i25 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i14, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %buf20.i25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx18.i24, ptr %buf20.i25, align 4
  %adapter.i26 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 3
  %42 = ptrtoint ptr %adapter.i26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i26, align 8
  %call.i27 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msgs.i14, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i27)
  %cmp22.not.i28 = icmp eq i32 %call.i27, 2
  br i1 %cmp22.not.i28, label %if.end4, label %__ov2680_read_reg.exit33.thread

__ov2680_read_reg.exit33.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i29 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i29, ptr noundef nonnull @.str.38, i32 noundef 14369, i32 noundef %call.i27) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i16) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i14) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %data_buf.i16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_buf.i16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i16) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i14) #7
  %and = and i32 %45, 8
  %and5 = and i32 %22, 4
  %or = or i32 %and, %and5
  %arrayidx = getelementptr [4 x i32], ptr @ov2680_hv_flip_bayer_order, i32 0, i32 %or
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %code = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 12, i32 2
  %48 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %code, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %__ov2680_read_reg.exit33.thread, %__ov2680_read_reg.exit.thread
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -5, %__ov2680_read_reg.exit.thread ], [ -5, %__ov2680_read_reg.exit33.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %buf.i.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %lock = getelementptr i8, ptr %sd, i32 276
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @ov2680_power_on(ptr noundef %add.ptr.i)
  br label %if.end

if.else:                                          ; preds = %entry
  %is_enabled.i = getelementptr i8, ptr %sd, i32 369
  %0 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_enabled.i, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %xvclk.i = getelementptr i8, ptr %sd, i32 228
  %2 = ptrtoint ptr %xvclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xvclk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %reset_gpio.i.i = getelementptr i8, ptr %sd, i32 272
  %4 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.ov2680_power_down.exit.i_crit_edge, label %if.end.i.i

if.end.i.ov2680_power_down.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2680_power_down.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  br label %ov2680_power_down.exit.i

ov2680_power_down.exit.i:                         ; preds = %if.end.i.i, %if.end.i.ov2680_power_down.exit.i_crit_edge
  %supplies.i = getelementptr i8, ptr %sd, i32 236
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  %6 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_enabled.i, align 1
  br label %if.end

if.end:                                           ; preds = %ov2680_power_down.exit.i, %if.else.if.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %if.else.if.end_crit_edge ], [ 0, %ov2680_power_down.exit.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp eq i32 %ret.0, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %ctrls = getelementptr i8, ptr %sd, i32 372
  %call6 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %7 = getelementptr inbounds [6 x i8], ptr %buf.i.i.i, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9
  %i.013.i.i = phi i32 [ 0, %if.end9 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %regs.012.i.i = phi ptr [ @ov2680_setting_30fps_QUXGA_800_600, %if.end9 ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %regs.012.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %regs.012.i.i, align 2
  %val2.i.i = getelementptr inbounds %struct.reg_value, ptr %regs.012.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %val2.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val2.i.i, align 2
  %conv.i.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  %14 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %9, ptr %buf.i.i.i, align 2
  %shl.i.i.i = shl nuw i32 %conv.i.i, 24
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %shl.i.i.i, ptr %7, align 2
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %buf.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %call.i.i.i.i, 3
  br i1 %cmp4.not.i.i.i, label %for.inc.i.i, label %ov2680_load_regs.exit.thread.i

ov2680_load_regs.exit.thread.i:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %conv.i.i.i = zext i16 %9 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.36, i32 noundef %conv.i.i.i, i32 noundef %call.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  br label %cleanup

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.reg_value, ptr %regs.012.i.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i.i, 20
  br i1 %exitcond.not.i, label %if.end.i22, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end.i22:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc i32 @ov2680_mode_set(ptr noundef %add.ptr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i22, %ov2680_load_regs.exit.thread.i, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5.cleanup_crit_edge ], [ %ret.0, %if.end.cleanup_crit_edge ], [ %call1.i, %if.end.i22 ], [ -5, %ov2680_load_regs.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2680_mode_set(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %buf.i.i55 = alloca [6 x i8], align 2
  %buf.i.i42 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @ov2680_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 2, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %gain5.i = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 2, i32 1
  %0 = ptrtoint ptr %gain5.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gain5.i, align 4
  %is_new.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_new.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %is_new.i, align 4
  %3 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not.i = icmp eq i32 %3, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end8.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 13578, ptr %buf.i.i, align 2
  %shl.i.i = shl i32 %5, 16
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %shl.i.i, ptr %8, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp4.not.i.i, label %if.end8.i.__ov2680_write_reg.exit.i_crit_edge, label %do.end.i.i

if.end8.i.__ov2680_write_reg.exit.i_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov2680_write_reg.exit.i

do.end.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.36, i32 noundef 13578, i32 noundef %call.i.i.i) #10
  br label %__ov2680_write_reg.exit.i

__ov2680_write_reg.exit.i:                        ; preds = %do.end.i.i, %if.end8.i.__ov2680_write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br label %if.end

if.end:                                           ; preds = %__ov2680_write_reg.exit.i, %lor.lhs.false.i.if.end_crit_edge
  %call.i43 = call fastcc i32 @ov2680_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i44 = icmp slt i32 %call.i43, 0
  %11 = call i32 @llvm.smin.i32(i32 %call.i43, i32 0) #7
  br i1 %cmp.i44, label %if.end.ov2680_exposure_set.exit_crit_edge, label %lor.lhs.false.i47

if.end.ov2680_exposure_set.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2680_exposure_set.exit

lor.lhs.false.i47:                                ; preds = %if.end
  %exposure.i = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 1, i32 1
  %12 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exposure.i, align 4
  %is_new.i45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %is_new.i45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i46 = load i32, ptr %is_new.i45, align 4
  %15 = and i32 %bf.load.i46, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not.i = icmp eq i32 %15, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i47.if.end5_crit_edge, label %if.end7.i

lor.lhs.false.i47.if.end5_crit_edge:              ; preds = %lor.lhs.false.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end7.i:                                        ; preds = %lor.lhs.false.i47
  %val.i48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %16 = ptrtoint ptr %val.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i48, align 4
  %shl.i = shl i32 %17, 12
  %18 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i42) #7
  %20 = getelementptr inbounds [6 x i8], ptr %buf.i.i42, i32 0, i32 2
  %21 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 13568, ptr %buf.i.i42, align 2
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %shl.i, ptr %20, align 2
  %call.i.i.i49 = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %buf.i.i42, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i49)
  %cmp4.not.i.i50 = icmp eq i32 %call.i.i.i49, 5
  br i1 %cmp4.not.i.i50, label %if.end7.i.__ov2680_write_reg.exit.i53_crit_edge, label %do.end.i.i52

if.end7.i.__ov2680_write_reg.exit.i53_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ov2680_write_reg.exit.i53

do.end.i.i52:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i51 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i51, ptr noundef nonnull @.str.36, i32 noundef 13568, i32 noundef %call.i.i.i49) #10
  br label %__ov2680_write_reg.exit.i53

__ov2680_write_reg.exit.i53:                      ; preds = %do.end.i.i52, %if.end7.i.__ov2680_write_reg.exit.i53_crit_edge
  %retval.0.i.i = phi i32 [ -5, %do.end.i.i52 ], [ 0, %if.end7.i.__ov2680_write_reg.exit.i53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i42) #7
  br label %ov2680_exposure_set.exit

ov2680_exposure_set.exit:                         ; preds = %__ov2680_write_reg.exit.i53, %if.end.ov2680_exposure_set.exit_crit_edge
  %retval.0.i54 = phi i32 [ %retval.0.i.i, %__ov2680_write_reg.exit.i53 ], [ %11, %if.end.ov2680_exposure_set.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i54)
  %cmp3 = icmp slt i32 %retval.0.i54, 0
  br i1 %cmp3, label %ov2680_exposure_set.exit.cleanup_crit_edge, label %ov2680_exposure_set.exit.if.end5_crit_edge

ov2680_exposure_set.exit.if.end5_crit_edge:       ; preds = %ov2680_exposure_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

ov2680_exposure_set.exit.cleanup_crit_edge:       ; preds = %ov2680_exposure_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %ov2680_exposure_set.exit.if.end5_crit_edge, %lor.lhs.false.i47.if.end5_crit_edge
  %current_mode = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 14
  %23 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %current_mode, align 4
  %reg_data_size.i = getelementptr inbounds %struct.ov2680_mode_info, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %reg_data_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_data_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp11.not.i = icmp eq i32 %26, 0
  br i1 %cmp11.not.i, label %if.end5.if.end9_crit_edge, label %for.body.lr.ph.i

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.body.lr.ph.i:                                 ; preds = %if.end5
  %reg_data.i = getelementptr inbounds %struct.ov2680_mode_info, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_data.i, align 4
  %29 = getelementptr inbounds [6 x i8], ptr %buf.i.i55, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %regs.012.i = phi ptr [ %28, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %regs.012.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %regs.012.i, align 2
  %val2.i = getelementptr inbounds %struct.reg_value, ptr %regs.012.i, i32 0, i32 1
  %32 = ptrtoint ptr %val2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val2.i, align 2
  %conv.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i55) #7
  %36 = ptrtoint ptr %buf.i.i55 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %31, ptr %buf.i.i55, align 2
  %shl.i.i56 = shl nuw i32 %conv.i, 24
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %shl.i.i56, ptr %29, align 2
  %call.i.i.i57 = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %buf.i.i55, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i57)
  %cmp4.not.i.i58 = icmp eq i32 %call.i.i.i57, 3
  br i1 %cmp4.not.i.i58, label %for.inc.i, label %ov2680_load_regs.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i55) #7
  %inc.i = add nuw i32 %i.013.i, 1
  %incdec.ptr.i = getelementptr %struct.reg_value, ptr %regs.012.i, i32 1
  %38 = ptrtoint ptr %reg_data_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_data_size.i, align 4
  %cmp.i61 = icmp ult i32 %inc.i, %39
  br i1 %cmp.i61, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end9_crit_edge

for.inc.i.if.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ov2680_load_regs.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i59 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %conv.i.i = zext i16 %31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i59, ptr noundef nonnull @.str.36, i32 noundef %conv.i.i, i32 noundef %call.i.i.i57) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i55) #7
  br label %cleanup

if.end9:                                          ; preds = %for.inc.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %40 = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 22
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  br i1 %tobool.not, label %if.end9.if.end15_crit_edge, label %if.then10

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end9
  %call.i63 = call fastcc i32 @ov2680_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  %45 = call i32 @llvm.smin.i32(i32 %call.i63, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp12 = icmp slt i32 %call.i63, 0
  br i1 %cmp12, label %if.then10.cleanup_crit_edge, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %46 = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 11, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp17 = icmp eq i32 %50, 0
  br i1 %cmp17, label %if.then18, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  %call.i67 = call fastcc i32 @ov2680_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %51 = call i32 @llvm.smin.i32(i32 %call.i67, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp20 = icmp slt i32 %call.i67, 0
  br i1 %cmp20, label %if.then18.cleanup_crit_edge, label %if.then18.if.end23_crit_edge

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.then18.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %mode_pending_changes = getelementptr inbounds %struct.ov2680_dev, ptr %sensor, i32 0, i32 8
  %52 = ptrtoint ptr %mode_pending_changes to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %mode_pending_changes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then18.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %ov2680_load_regs.exit, %ov2680_exposure_set.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %retval.0.i54, %ov2680_exposure_set.exit.cleanup_crit_edge ], [ -5, %ov2680_load_regs.exit ], [ %45, %if.then10.cleanup_crit_edge ], [ %51, %if.then18.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i38 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %lock = getelementptr i8, ptr %sd, i32 276
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %is_streaming = getelementptr i8, ptr %sd, i32 370
  %0 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_streaming, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1 = icmp ne i32 %enable, 0
  %2 = zext i1 %tobool1 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %mode_pending_changes = getelementptr i8, ptr %sd, i32 368
  %3 = ptrtoint ptr %mode_pending_changes to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode_pending_changes, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.then15_crit_edge, label %if.then7

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then7:                                         ; preds = %land.lhs.true
  %call8 = tail call fastcc i32 @ov2680_mode_set(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then7.unlock_crit_edge, label %if.then7.if.then15_crit_edge

if.then7.if.then15_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then7.unlock_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then15:                                        ; preds = %if.then7.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %7 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %buf.i.i, align 2
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 16777216, ptr %7, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 3
  br i1 %cmp4.not.i.i, label %if.then15.ov2680_stream_enable.exit_crit_edge, label %do.end.i.i

if.then15.ov2680_stream_enable.exit_crit_edge:    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2680_stream_enable.exit

do.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.36, i32 noundef 256, i32 noundef %call.i.i.i) #10
  br label %ov2680_stream_enable.exit

ov2680_stream_enable.exit:                        ; preds = %do.end.i.i, %if.then15.ov2680_stream_enable.exit_crit_edge
  %retval.0.i.i = phi i32 [ -5, %do.end.i.i ], [ 0, %if.then15.ov2680_stream_enable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br label %if.end18

if.else:                                          ; preds = %if.end
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i38) #7
  %12 = getelementptr inbounds [6 x i8], ptr %buf.i.i38, i32 0, i32 2
  %13 = ptrtoint ptr %buf.i.i38 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %buf.i.i38, align 2
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %12, align 2
  %call.i.i.i39 = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %buf.i.i38, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i39)
  %cmp4.not.i.i40 = icmp eq i32 %call.i.i.i39, 3
  br i1 %cmp4.not.i.i40, label %if.else.ov2680_stream_disable.exit_crit_edge, label %do.end.i.i42

if.else.ov2680_stream_disable.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2680_stream_disable.exit

do.end.i.i42:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i41 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i41, ptr noundef nonnull @.str.36, i32 noundef 256, i32 noundef %call.i.i.i39) #10
  br label %ov2680_stream_disable.exit

ov2680_stream_disable.exit:                       ; preds = %do.end.i.i42, %if.else.ov2680_stream_disable.exit_crit_edge
  %retval.0.i.i43 = phi i32 [ -5, %do.end.i.i42 ], [ 0, %if.else.ov2680_stream_disable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i38) #7
  br label %if.end18

if.end18:                                         ; preds = %ov2680_stream_disable.exit, %ov2680_stream_enable.exit
  %ret.0 = phi i32 [ %retval.0.i.i, %ov2680_stream_enable.exit ], [ %retval.0.i.i43, %ov2680_stream_disable.exit ]
  %15 = ptrtoint ptr %is_streaming to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %2, ptr %is_streaming, align 2
  br label %unlock

unlock:                                           ; preds = %if.end18, %if.then7.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.1 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %call8, %if.then7.unlock_crit_edge ], [ %ret.0, %if.end18 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_s_g_frame_interval(ptr noundef %sd, ptr nocapture noundef writeonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 276
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %frame_interval = getelementptr i8, ptr %sd, i32 632
  %0 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %frame_interval, align 4
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_init_cfg(ptr noundef %sd, ptr noundef readonly %sd_state) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #7
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
  store i32 800, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 600, ptr %height, align 4
  %call = call i32 @ov2680_set_fmt(ptr noundef %sd, ptr noundef %sd_state, ptr noundef nonnull %fmt)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov2680_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %code2 = getelementptr i8, ptr %sd, i32 592
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
define internal i32 @ov2680_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %2 = icmp ugt i32 %1, 2
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %width = getelementptr [3 x %struct.ov2680_mode_info], ptr @ov2680_mode_data, i32 0, i32 %1, i32 2
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %5 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %min_width, align 4
  %height = getelementptr [3 x %struct.ov2680_mode_info], ptr @ov2680_mode_data, i32 0, i32 %1, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %8 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %9 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %10 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov2680_enum_frame_interval(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1600
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %5)
  %cmp3 = icmp ugt i32 %5, 1200
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 6
  %6 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp5 = icmp ugt i32 %7, 1
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %interval, align 4
  %tpf.sroa.5.0.interval.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %tpf.sroa.5.0.interval.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 30, ptr %tpf.sroa.5.0.interval.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 276
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
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
  br i1 %cmp.not.i, label %if.then2.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !146

if.then2.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then2.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %5, %if.then2.v4l2_subdev_get_try_format.exit_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fmt6 = getelementptr i8, ptr %sd, i32 584
  br label %if.end7

if.end7:                                          ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %fmt.0 = phi ptr [ %arrayidx.i, %v4l2_subdev_get_try_format.exit ], [ %fmt6, %if.else ]
  %tobool.not = icmp eq ptr %fmt.0, null
  br i1 %tobool.not, label %if.end7.if.end10_crit_edge, label %if.then8

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %format9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format9, ptr %fmt.0, i32 48)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end7.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 276
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %is_streaming = getelementptr i8, ptr %sd, i32 370
  %2 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_streaming, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.end:                                           ; preds = %if.end
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %call4 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov2680_mode_data, i32 noundef 3, i32 noundef 24, i32 noundef 8, i32 noundef 12, i32 noundef %5, i32 noundef %7) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.unlock_crit_edge, label %if.end7

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end7:                                          ; preds = %do.end
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %10 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.not.i.not = icmp eq i16 %11, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then9.v4l2_subdev_get_try_format.exit_crit_edge, !prof !147

if.then9.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then9.v4l2_subdev_get_try_format.exit_crit_edge
  %12 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_state, align 4
  %14 = call ptr @memcpy(ptr %format1, ptr %13, i32 48)
  br label %unlock

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %width13 = getelementptr inbounds %struct.ov2680_mode_info, ptr %call4, i32 0, i32 2
  %15 = ptrtoint ptr %width13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width13, align 4
  %17 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format1, align 4
  %height15 = getelementptr inbounds %struct.ov2680_mode_info, ptr %call4, i32 0, i32 3
  %18 = ptrtoint ptr %height15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height15, align 4
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height, align 4
  %fmt17 = getelementptr i8, ptr %sd, i32 584
  %code = getelementptr i8, ptr %sd, i32 592
  %21 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code, align 4
  %code18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %code18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %code18, align 4
  %colorspace = getelementptr i8, ptr %sd, i32 600
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %colorspace, align 4
  %colorspace20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %colorspace20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %colorspace20, align 4
  %current_mode = getelementptr i8, ptr %sd, i32 640
  %27 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call4, ptr %current_mode, align 4
  %28 = call ptr @memcpy(ptr %fmt17, ptr %format1, i32 48)
  %mode_pending_changes = getelementptr i8, ptr %sd, i32 368
  %29 = ptrtoint ptr %mode_pending_changes to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %mode_pending_changes, align 4
  br label %unlock

unlock:                                           ; preds = %if.end12, %v4l2_subdev_get_try_format.exit, %do.end.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ 0, %if.end12 ], [ -16, %if.end.unlock_crit_edge ], [ -22, %do.end.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_streaming = getelementptr i8, ptr %1, i32 370
  %2 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_streaming, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
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
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 3
  br i1 %cmp4.not.i.i, label %if.then.ov2680_stream_disable.exit_crit_edge, label %do.end.i.i

if.then.ov2680_stream_disable.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2680_stream_disable.exit

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.36, i32 noundef 256, i32 noundef %call.i.i.i) #10
  br label %ov2680_stream_disable.exit

ov2680_stream_disable.exit:                       ; preds = %do.end.i.i, %if.then.ov2680_stream_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br label %if.end

if.end:                                           ; preds = %ov2680_stream_disable.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2680_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i13 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %is_streaming = getelementptr i8, ptr %1, i32 370
  %2 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_streaming, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 16777216, ptr %6, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 3
  br i1 %cmp4.not.i.i, label %ov2680_stream_enable.exit, label %stream_disable

ov2680_stream_enable.exit:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br label %cleanup

stream_disable:                                   ; preds = %if.then
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.36, i32 noundef 256, i32 noundef %call.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i13) #7
  %11 = getelementptr inbounds [6 x i8], ptr %buf.i.i13, i32 0, i32 2
  %12 = ptrtoint ptr %buf.i.i13 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 256, ptr %buf.i.i13, align 2
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %11, align 2
  %call.i.i.i14 = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %buf.i.i13, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i14)
  %cmp4.not.i.i15 = icmp eq i32 %call.i.i.i14, 3
  br i1 %cmp4.not.i.i15, label %stream_disable.ov2680_stream_disable.exit_crit_edge, label %do.end.i.i17

stream_disable.ov2680_stream_disable.exit_crit_edge: ; preds = %stream_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov2680_stream_disable.exit

do.end.i.i17:                                     ; preds = %stream_disable
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i16 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i16, ptr noundef nonnull @.str.36, i32 noundef 256, i32 noundef %call.i.i.i14) #10
  br label %ov2680_stream_disable.exit

ov2680_stream_disable.exit:                       ; preds = %do.end.i.i17, %stream_disable.ov2680_stream_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i13) #7
  %14 = ptrtoint ptr %is_streaming to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_streaming, align 2
  br label %cleanup

cleanup:                                          ; preds = %ov2680_stream_disable.exit, %ov2680_stream_enable.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %ov2680_stream_disable.exit ], [ 0, %ov2680_stream_enable.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_ov2680__294_1164_ov2680_i2c_driver_init6, !1, !"__initcall__kmod_ov2680__294_1164_ov2680_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov2680.c", i32 1164, i32 1}
!2 = !{ptr @__exitcall_ov2680_i2c_driver_exit, !1, !"__exitcall_ov2680_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov2680.c", i32 1166, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov2680.c", i32 1167, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov2680.c", i32 1168, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov2680.c", i32 1157, i32 12}
!12 = !{ptr @ov2680_i2c_driver, !13, !"ov2680_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov2680.c", i32 1155, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov2680.c", i32 1075, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov2680_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov2680_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ov2680_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov2680.c", i32 1079, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/ov2680.c", i32 1089, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ov2680_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov2680_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov2680.c", i32 1094, i32 2}
!32 = !{ptr @ov2680_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ov2680_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ov2680.c", i32 1029, i32 52}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov2680.c", i32 1033, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ov2680_parse_dt.__UNIQUE_ID_ddebug293, !37, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ov2680.c", i32 1037, i32 36}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/ov2680.c", i32 1039, i32 3}
!44 = !{ptr @ov2680_parse_dt._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ov2680_parse_dt._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov2680.c", i32 1045, i32 3}
!48 = !{ptr @ov2680_parse_dt._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ov2680_parse_dt._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov2680.c", i32 164, i32 2}
!52 = !{ptr @ov2680_mode_init_data, !53, !"ov2680_mode_init_data", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov2680.c", i32 163, i32 38}
!54 = !{ptr @ov2680_setting_30fps_QUXGA_800_600, !55, !"ov2680_setting_30fps_QUXGA_800_600", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov2680.c", i32 140, i32 31}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov2680.c", i32 70, i32 2}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov2680.c", i32 71, i32 2}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov2680.c", i32 72, i32 2}
!62 = distinct !{null, !63, !"ov2680_supply_name", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov2680.c", i32 69, i32 27}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov2680.c", i32 1011, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ov2680_check_id._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ov2680_check_id._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/ov2680.c", i32 1016, i32 3}
!71 = !{ptr @ov2680_check_id._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ov2680_check_id._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/ov2680.c", i32 551, i32 3}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ov2680_power_on._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ov2680_power_on._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov2680.c", i32 558, i32 4}
!80 = !{ptr @ov2680_power_on._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ov2680_power_on._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov2680.c", i32 211, i32 3}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @__ov2680_write_reg._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @__ov2680_write_reg._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/ov2680.c", i32 251, i32 3}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @__ov2680_read_reg._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @__ov2680_read_reg._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @ov2680_v4l2_register._key, !93, !"_key", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov2680.c", i32 939, i32 2}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ov2680_ctrl_ops, !96, !"ov2680_ctrl_ops", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/ov2680.c", i32 866, i32 35}
!97 = !{ptr @ov2680_hv_flip_bayer_order, !98, !"ov2680_hv_flip_bayer_order", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov2680.c", i32 133, i32 18}
!99 = !{ptr @ov2680_subdev_ops, !100, !"ov2680_subdev_ops", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ov2680.c", i32 890, i32 37}
!101 = !{ptr @ov2680_core_ops, !102, !"ov2680_core_ops", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/ov2680.c", i32 871, i32 42}
!103 = !{ptr @ov2680_video_ops, !104, !"ov2680_video_ops", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/ov2680.c", i32 875, i32 43}
!105 = !{ptr @ov2680_pad_ops, !106, !"ov2680_pad_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov2680.c", i32 881, i32 41}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/ov2680.c", i32 173, i32 3}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov2680.c", i32 176, i32 3}
!111 = !{ptr @ov2680_mode_data, !112, !"ov2680_mode_data", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov2680.c", i32 169, i32 38}
!113 = !{ptr @ov2680_setting_30fps_720P_1280_720, !114, !"ov2680_setting_30fps_720P_1280_720", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov2680.c", i32 148, i32 31}
!115 = !{ptr @ov2680_setting_30fps_UXGA_1600_1200, !116, !"ov2680_setting_30fps_UXGA_1600_1200", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ov2680.c", i32 155, i32 31}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ov2680.c", i32 126, i32 2}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ov2680.c", i32 127, i32 2}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/ov2680.c", i32 128, i32 2}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/ov2680.c", i32 129, i32 2}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/ov2680.c", i32 130, i32 2}
!129 = !{ptr @test_pattern_menu, !130, !"test_pattern_menu", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/ov2680.c", i32 125, i32 27}
!131 = !{ptr @ov2680_dt_ids, !132, !"ov2680_dt_ids", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/ov2680.c", i32 1149, i32 34}
!133 = !{ptr @ov2680_pm_ops, !134, !"ov2680_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/ov2680.c", i32 1145, i32 32}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 2148758734, i64 2148758739, i64 2148758752, i64 2148758796, i64 2148758830, i64 2148758851}
!145 = !{i8 0, i8 2}
!146 = !{!"branch_weights", i32 2000, i32 1}
!147 = !{!"branch_weights", i32 1, i32 2000}
