; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tw9910.c_pt.bc'
source_filename = "../drivers/media/i2c/tw9910.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tw9910_scale_ctrl = type { ptr, i16, i16, i16, i16 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tw9910_priv = type { %struct.v4l2_subdev, ptr, ptr, ptr, ptr, ptr, i64, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.93, i16, i16, i16, [10 x i16] }
%union.anon.93 = type { i16 }
%struct.tw9910_video_info = type { i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@__initcall__kmod_tw9910__293_1023_tw9910_i2c_driver_init6 = internal global ptr @tw9910_i2c_driver_init, section ".initcall6.init", align 4
@tw9910_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tw9910_probe, ptr @tw9910_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tw9910_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tw9910_i2c_driver_exit = internal global ptr @tw9910_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [56 x i8] c"tw9910.description=V4L2 driver for TW9910 video decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [32 x i8] c"tw9910.author=Kuninori Morimoto\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"tw9910.file=drivers/media/i2c/tw9910\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"tw9910.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw9910\00", [25 x i8] zeroinitializer }, align 32
@tw9910_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tw9910\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tw9910_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 941, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TW9910: missing platform data!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tw9910_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/tw9910.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tw9910_probe._entry_ptr = internal global ptr @tw9910_probe._entry, section ".printk_index", align 4
@tw9910_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 949, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE_DATA\0A\00", [42 x i8] zeroinitializer }, align 32
@tw9910_probe._entry_ptr.8 = internal global ptr @tw9910_probe._entry.6, section ".printk_index", align 4
@tw9910_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tw9910_subdev_core_ops, ptr null, ptr null, ptr @tw9910_subdev_video_ops, ptr null, ptr null, ptr null, ptr @tw9910_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xti\00", [28 x i8] zeroinitializer }, align 32
@tw9910_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 965, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to get xti clock\0A\00", [39 x i8] zeroinitializer }, align 32
@tw9910_probe._entry_ptr.12 = internal global ptr @tw9910_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pdn\00", [28 x i8] zeroinitializer }, align 32
@tw9910_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 972, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to get GPIO \22pdn\22\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tw9910_probe._entry_ptr.17 = internal global ptr @tw9910_probe._entry.14, section ".printk_index", align 4
@tw9910_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw9910_g_register, ptr @tw9910_s_register, ptr @tw9910_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tw9910_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr @tw9910_g_std, ptr @tw9910_s_std, ptr null, ptr null, ptr null, ptr @tw9910_g_tvnorms, ptr null, ptr null, ptr @tw9910_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tw9910_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @tw9910_enum_mbus_code, ptr null, ptr null, ptr @tw9910_get_fmt, ptr @tw9910_set_fmt, ptr @tw9910_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rstb\00", [27 x i8] zeroinitializer }, align 32
@tw9910_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 617, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to get GPIO \22rstb\22\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tw9910_power_on\00", [16 x i8] zeroinitializer }, align 32
@tw9910_power_on._entry_ptr = internal global ptr @tw9910_power_on._entry, section ".printk_index", align 4
@tw9910_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"un-supported revision\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tw9910_s_stream\00", [16 x i8] zeroinitializer }, align 32
@tw9910_s_stream._entry_ptr = internal global ptr @tw9910_s_stream._entry, section ".printk_index", align 4
@tw9910_s_stream._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 484, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"norm select error\0A\00", [45 x i8] zeroinitializer }, align 32
@tw9910_s_stream._entry_ptr.25 = internal global ptr @tw9910_s_stream._entry.23, section ".printk_index", align 4
@tw9910_s_stream.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.26, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %dx%d\0A\00", [22 x i8] zeroinitializer }, align 32
@tw9910_ntsc_scales = internal constant { [6 x %struct.tw9910_scale_ctrl], [56 x i8] } { [6 x %struct.tw9910_scale_ctrl] [%struct.tw9910_scale_ctrl { ptr @.str.27, i16 640, i16 480, i16 256, i16 256 }, %struct.tw9910_scale_ctrl { ptr @.str.28, i16 720, i16 480, i16 256, i16 256 }, %struct.tw9910_scale_ctrl { ptr @.str.29, i16 320, i16 240, i16 512, i16 512 }, %struct.tw9910_scale_ctrl { ptr @.str.30, i16 360, i16 240, i16 512, i16 512 }, %struct.tw9910_scale_ctrl { ptr @.str.31, i16 160, i16 120, i16 1024, i16 1024 }, %struct.tw9910_scale_ctrl { ptr @.str.32, i16 180, i16 120, i16 1024, i16 1024 }], [56 x i8] zeroinitializer }, align 32
@tw9910_pal_scales = internal constant { [6 x %struct.tw9910_scale_ctrl], [56 x i8] } { [6 x %struct.tw9910_scale_ctrl] [%struct.tw9910_scale_ctrl { ptr @.str.33, i16 768, i16 576, i16 256, i16 256 }, %struct.tw9910_scale_ctrl { ptr @.str.34, i16 720, i16 576, i16 256, i16 256 }, %struct.tw9910_scale_ctrl { ptr @.str.35, i16 384, i16 288, i16 512, i16 512 }, %struct.tw9910_scale_ctrl { ptr @.str.36, i16 360, i16 288, i16 512, i16 512 }, %struct.tw9910_scale_ctrl { ptr @.str.37, i16 192, i16 144, i16 1024, i16 1024 }, %struct.tw9910_scale_ctrl { ptr @.str.38, i16 180, i16 144, i16 1024, i16 1024 }], [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NTSC SQ\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NTSC CCIR601\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NTSC SQ (CIF)\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NTSC CCIR601 (CIF)\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NTSC SQ (QCIF)\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NTSC CCIR601 (QCIF)\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL SQ\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PAL CCIR601\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PAL SQ (CIF)\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PAL CCIR601 (CIF)\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PAL SQ (QCIF)\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PAL CCIR601 (QCIF)\00", [45 x i8] zeroinitializer }, align 32
@tw9910_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Field type %d invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tw9910_set_fmt\00", [17 x i8] zeroinitializer }, align 32
@tw9910_set_fmt._entry_ptr = internal global ptr @tw9910_set_fmt._entry, section ".printk_index", align 4
@tw9910_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bus width error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tw9910_video_probe\00", [45 x i8] zeroinitializer }, align 32
@tw9910_video_probe._entry_ptr = internal global ptr @tw9910_video_probe._entry, section ".printk_index", align 4
@tw9910_video_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 863, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Product ID error %x:%x\0A\00", [40 x i8] zeroinitializer }, align 32
@tw9910_video_probe._entry_ptr.45 = internal global ptr @tw9910_video_probe._entry.43, section ".printk_index", align 4
@tw9910_video_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 869, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tw9910 Product ID %0x:%0x\0A\00", [37 x i8] zeroinitializer }, align 32
@tw9910_video_probe._entry_ptr.48 = internal global ptr @tw9910_video_probe._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"tw9910_i2c_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1014, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1016, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"tw9910_id\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1008, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 941, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 948, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"tw9910_subdev_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 921, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 961, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 965, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 969, i32 52 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 972, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"tw9910_subdev_core_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 880, i32 42 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"tw9910_subdev_video_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 907, i32 43 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"tw9910_subdev_pad_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 914, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 614, i32 53 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 617, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 477, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 484, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 488, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [19 x i8] c"tw9910_ntsc_scales\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 239, i32 39 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"tw9910_pal_scales\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 284, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 241, i32 13 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 248, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 255, i32 13 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 262, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 269, i32 13 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 276, i32 13 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 286, i32 13 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 293, i32 13 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 300, i32 13 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 307, i32 13 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 314, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 321, i32 13 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 814, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 845, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 862, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [30 x i8] c"../drivers/media/i2c/tw9910.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 868, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_tw9910_i2c_driver_exit, ptr @__initcall__kmod_tw9910__293_1023_tw9910_i2c_driver_init6, ptr @tw9910_i2c_driver_exit, ptr @tw9910_power_on._entry, ptr @tw9910_power_on._entry_ptr, ptr @tw9910_probe._entry, ptr @tw9910_probe._entry.10, ptr @tw9910_probe._entry.14, ptr @tw9910_probe._entry.6, ptr @tw9910_probe._entry_ptr, ptr @tw9910_probe._entry_ptr.12, ptr @tw9910_probe._entry_ptr.17, ptr @tw9910_probe._entry_ptr.8, ptr @tw9910_s_stream._entry, ptr @tw9910_s_stream._entry.23, ptr @tw9910_s_stream._entry_ptr, ptr @tw9910_s_stream._entry_ptr.25, ptr @tw9910_set_fmt._entry, ptr @tw9910_set_fmt._entry_ptr, ptr @tw9910_video_probe._entry, ptr @tw9910_video_probe._entry.43, ptr @tw9910_video_probe._entry.46, ptr @tw9910_video_probe._entry_ptr, ptr @tw9910_video_probe._entry_ptr.45, ptr @tw9910_video_probe._entry_ptr.48, ptr @tw9910_i2c_driver, ptr @.str, ptr @tw9910_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @tw9910_subdev_ops, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @tw9910_subdev_core_ops, ptr @tw9910_subdev_video_ops, ptr @tw9910_subdev_pad_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @tw9910_ntsc_scales, ptr @tw9910_pal_scales, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_s_stream._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_ntsc_scales to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_pal_scales to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_video_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw9910_video_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tw9910_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tw9910_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @tw9910_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_probe(ptr noundef %client, ptr nocapture noundef readnone %did) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #10
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 232, i32 noundef 3520) #10
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %info17 = getelementptr inbounds %struct.tw9910_priv, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %info17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %info17, align 8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @tw9910_subdev_ops) #10
  %call19 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %clk = getelementptr inbounds %struct.tw9910_priv, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %clk, align 4
  %cmp = icmp eq ptr %call19, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %clk, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end16
  %cmp.i94 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %do.end29, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.then22
  %call36 = tail call ptr @gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 7) #10
  %pdn_gpio = getelementptr inbounds %struct.tw9910_priv, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %pdn_gpio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call36, ptr %pdn_gpio, align 4
  %cmp.i95 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %do.end42, label %if.end46

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  %15 = ptrtoint ptr %pdn_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdn_gpio, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %error_clk_put

if.end46:                                         ; preds = %if.end34
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %info.i = getelementptr inbounds %struct.tw9910_priv, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %do.end.i [
    i32 16, label %if.end46.if.end.i_crit_edge
    i32 8, label %if.end46.if.end.i_crit_edge99
  ]

if.end46.if.end.i_crit_edge99:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end46.if.end.i_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %error_gpio_put

if.end.i:                                         ; preds = %if.end46.if.end.i_crit_edge, %if.end46.if.end.i_crit_edge99
  %call4.i = tail call i32 @tw9910_s_power(ptr noundef %19, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.error_gpio_put_crit_edge, label %if.end7.i

if.end.i.error_gpio_put_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_gpio_put

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #10
  %and.i96 = and i32 %call8.i, 7
  %revision.i = getelementptr inbounds %struct.tw9910_priv, ptr %19, i32 0, i32 7
  %25 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i96, ptr %revision.i, align 8
  %and9.i = lshr i32 %call8.i, 3
  %26 = and i32 %and9.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %26)
  %cmp10.not.i = icmp ne i32 %26, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i96)
  %cmp12.i = icmp ugt i32 %and.i96, 1
  %or.cond.i = select i1 %cmp10.not.i, i1 true, i1 %cmp12.i
  br i1 %or.cond.i, label %do.end16.i, label %do.end22.i

do.end16.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %26, i32 noundef %and.i96) #13
  br label %done.i

do.end22.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef 11, i32 noundef %and.i96) #13
  %norm.i = getelementptr inbounds %struct.tw9910_priv, ptr %19, i32 0, i32 6
  %27 = ptrtoint ptr %norm.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 45056, ptr %norm.i, align 8
  %scale.i = getelementptr inbounds %struct.tw9910_priv, ptr %19, i32 0, i32 5
  %28 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @tw9910_ntsc_scales, ptr %scale.i, align 4
  br label %done.i

done.i:                                           ; preds = %do.end22.i, %do.end16.i
  %ret.0.i = phi i32 [ -19, %do.end16.i ], [ %call4.i, %do.end22.i ]
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 11
  %29 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %clk.i5.i.i = getelementptr inbounds %struct.tw9910_priv, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %clk.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk.i5.i.i, align 4
  tail call void @clk_disable(ptr noundef %34) #10
  tail call void @clk_unprepare(ptr noundef %34) #10
  %pdn_gpio.i6.i.i = getelementptr inbounds %struct.tw9910_priv, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %pdn_gpio.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdn_gpio.i6.i.i, align 4
  %tobool.not.i.i7.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i7.i.i, label %done.i.tw9910_video_probe.exit_crit_edge, label %if.then.i.i8.i.i

done.i.tw9910_video_probe.exit_crit_edge:         ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_video_probe.exit

if.then.i.i8.i.i:                                 ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %36, i32 noundef 1) #10
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  br label %tw9910_video_probe.exit

tw9910_video_probe.exit:                          ; preds = %if.then.i.i8.i.i, %done.i.tw9910_video_probe.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp48 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp48, label %tw9910_video_probe.exit.error_gpio_put_crit_edge, label %if.end50

tw9910_video_probe.exit.error_gpio_put_crit_edge: ; preds = %tw9910_video_probe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_gpio_put

if.end50:                                         ; preds = %tw9910_video_probe.exit
  %call52 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end50.cleanup_crit_edge, label %if.end50.error_gpio_put_crit_edge

if.end50.error_gpio_put_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_gpio_put

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_gpio_put:                                   ; preds = %if.end50.error_gpio_put_crit_edge, %tw9910_video_probe.exit.error_gpio_put_crit_edge, %if.end.i.error_gpio_put_crit_edge, %do.end.i
  %ret.0 = phi i32 [ %ret.0.i, %tw9910_video_probe.exit.error_gpio_put_crit_edge ], [ %call52, %if.end50.error_gpio_put_crit_edge ], [ %call4.i, %if.end.i.error_gpio_put_crit_edge ], [ -19, %do.end.i ]
  %37 = ptrtoint ptr %pdn_gpio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdn_gpio, align 4
  %tobool57.not = icmp eq ptr %38, null
  br i1 %tobool57.not, label %error_gpio_put.error_clk_put_crit_edge, label %if.then58

error_gpio_put.error_clk_put_crit_edge:           ; preds = %error_gpio_put
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_clk_put

if.then58:                                        ; preds = %error_gpio_put
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_put(ptr noundef nonnull %38) #10
  br label %error_clk_put

error_clk_put:                                    ; preds = %if.then58, %error_gpio_put.error_clk_put_crit_edge, %do.end42
  %ret.1 = phi i32 [ %17, %do.end42 ], [ %ret.0, %if.then58 ], [ %ret.0, %error_gpio_put.error_clk_put_crit_edge ]
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %40) #10
  br label %cleanup

cleanup:                                          ; preds = %error_clk_put, %if.end50.cleanup_crit_edge, %do.end29, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %ret.1, %error_clk_put ], [ %13, %do.end29 ], [ -5, %do.end9 ], [ -22, %do.end ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdn_gpio = getelementptr inbounds %struct.tw9910_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdn_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdn_gpio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_put(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.tw9910_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %5) #10
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %1)
  %cmp = icmp ugt i64 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1, ptr %size, align 1
  %conv = trunc i64 %1 to i8
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv815 = zext i32 %call3 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %conv815, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %3)
  %cmp = icmp ugt i64 %3, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %5)
  %cmp2 = icmp ugt i64 %5, 255
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i64 %3 to i8
  %conv5 = trunc i64 %5 to i8
  %call6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_s_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %clk.i = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %cond.true.if.end5.i_crit_edge, label %if.then.i

cond.true.if.end5.i_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %cond.true
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.cond.end_crit_edge

if.then.i.cond.end_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef nonnull %7) #10
  br label %cond.end

if.end5.i:                                        ; preds = %if.end.i.i.if.end5.i_crit_edge, %cond.true.if.end5.i_crit_edge
  %pdn_gpio.i = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %pdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdn_gpio.i, align 4
  %tobool.not.i39.i = icmp eq ptr %9, null
  br i1 %tobool.not.i39.i, label %if.end5.i.tw9910_set_gpio_value.exit.i_crit_edge, label %if.then.i.i

if.end5.i.tw9910_set_gpio_value.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_gpio_value.exit.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %9, i32 noundef 0) #10
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  br label %tw9910_set_gpio_value.exit.i

tw9910_set_gpio_value.exit.i:                     ; preds = %if.then.i.i, %if.end5.i.tw9910_set_gpio_value.exit.i_crit_edge
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call6.i = tail call ptr @gpiod_get_optional(ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef 3) #10
  %rstb_gpio.i = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %rstb_gpio.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6.i, ptr %rstb_gpio.i, align 8
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %tw9910_set_gpio_value.exit.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.19) #13
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %12) #10
  tail call void @clk_unprepare(ptr noundef %12) #10
  %13 = ptrtoint ptr %pdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdn_gpio.i, align 4
  %tobool.not.i41.i = icmp eq ptr %14, null
  br i1 %tobool.not.i41.i, label %do.end.i.tw9910_set_gpio_value.exit44.i_crit_edge, label %if.then.i42.i

do.end.i.tw9910_set_gpio_value.exit44.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_gpio_value.exit44.i

if.then.i42.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %14, i32 noundef 1) #10
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  br label %tw9910_set_gpio_value.exit44.i

tw9910_set_gpio_value.exit44.i:                   ; preds = %if.then.i42.i, %do.end.i.tw9910_set_gpio_value.exit44.i_crit_edge
  %15 = ptrtoint ptr %rstb_gpio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rstb_gpio.i, align 8
  %17 = ptrtoint ptr %16 to i32
  br label %cond.end

if.end15.i:                                       ; preds = %tw9910_set_gpio_value.exit.i
  %tobool17.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool17.not.i, label %if.end15.i.cond.end_crit_edge, label %tw9910_set_gpio_value.exit48.i

if.end15.i.cond.end_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

tw9910_set_gpio_value.exit48.i:                   ; preds = %if.end15.i
  tail call void @gpiod_set_value(ptr noundef nonnull %call6.i, i32 noundef 1) #10
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  %18 = ptrtoint ptr %rstb_gpio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rstb_gpio.i, align 8
  %tobool.not.i49.i = icmp eq ptr %19, null
  br i1 %tobool.not.i49.i, label %tw9910_set_gpio_value.exit48.i.tw9910_set_gpio_value.exit52.i_crit_edge, label %if.then.i50.i

tw9910_set_gpio_value.exit48.i.tw9910_set_gpio_value.exit52.i_crit_edge: ; preds = %tw9910_set_gpio_value.exit48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_gpio_value.exit52.i

if.then.i50.i:                                    ; preds = %tw9910_set_gpio_value.exit48.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %19, i32 noundef 0) #10
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  br label %tw9910_set_gpio_value.exit52.i

tw9910_set_gpio_value.exit52.i:                   ; preds = %if.then.i50.i, %tw9910_set_gpio_value.exit48.i.tw9910_set_gpio_value.exit52.i_crit_edge
  %20 = ptrtoint ptr %rstb_gpio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rstb_gpio.i, align 8
  tail call void @gpiod_put(ptr noundef %21) #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %clk.i5 = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %clk.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i5, align 4
  tail call void @clk_disable(ptr noundef %23) #10
  tail call void @clk_unprepare(ptr noundef %23) #10
  %pdn_gpio.i6 = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %pdn_gpio.i6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdn_gpio.i6, align 4
  %tobool.not.i.i7 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i7, label %cond.false.cond.end_crit_edge, label %if.then.i.i8

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.then.i.i8:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef nonnull %25, i32 noundef 1) #10
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i8, %cond.false.cond.end_crit_edge, %tw9910_set_gpio_value.exit52.i, %if.end15.i.cond.end_crit_edge, %tw9910_set_gpio_value.exit44.i, %if.then3.i.i, %if.then.i.cond.end_crit_edge
  %cond = phi i32 [ %17, %tw9910_set_gpio_value.exit44.i ], [ 0, %tw9910_set_gpio_value.exit52.i ], [ 0, %if.end15.i.cond.end_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then.i.cond.end_crit_edge ], [ 0, %cond.false.cond.end_crit_edge ], [ 0, %if.then.i.i8 ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw9910_g_std(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %norm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %norm2 = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %norm2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %norm2, align 8
  %6 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_s_std(ptr nocapture noundef readonly %sd, i64 noundef %norm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %and = and i64 %norm, 45311
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %norm2 = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %norm2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %norm, ptr %norm2, align 8
  %and3 = and i64 %norm, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  %call.i48 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  br i1 %cmp.i49, label %if.then5.cleanup_crit_edge, label %if.end.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %5 = trunc i32 %call.i48 to i8
  %conv4.i = or i8 %5, 16
  br label %if.end8

if.else:                                          ; preds = %if.end
  br i1 %cmp.i49, label %if.else.cleanup_crit_edge, label %if.end.i52

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i52:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %6 = trunc i32 %call.i48 to i8
  %7 = and i8 %6, -17
  br label %if.end8

if.end8:                                          ; preds = %if.end.i52, %if.end.i
  %.sink = phi i8 [ %7, %if.end.i52 ], [ %conv4.i, %if.end.i ]
  %vact.0 = phi i32 [ 288, %if.end.i52 ], [ 240, %if.end.i ]
  %vdelay.0 = phi i8 [ 24, %if.end.i52 ], [ 18, %if.end.i ]
  %call5.i51 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 85, i8 noundef zeroext %.sink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i51)
  %tobool9.not = icmp eq i32 %call5.i51, 0
  br i1 %tobool9.not, label %if.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %shr12 = lshr exact i32 %vact.0, 4
  %8 = trunc i32 %shr12 to i8
  %9 = and i8 %8, 16
  %conv = or i8 %9, 2
  %call16 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %call22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext %vdelay.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %conv27 = trunc i32 %vact.0 to i8
  %call28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 9, i8 noundef zeroext %conv27) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call22, %if.end23.cleanup_crit_edge ], [ %call28, %if.then25 ], [ %call16, %if.end17.cleanup_crit_edge ], [ %call5.i51, %if.end8.cleanup_crit_edge ], [ %call.i48, %if.else.cleanup_crit_edge ], [ %call.i48, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tw9910_g_tvnorms(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %norm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 45311, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %revision = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %revision, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %5, label %do.end [
    i32 0, label %if.then.if.end23_crit_edge
    i32 1, label %sw.bb2
  ]

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %scale = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scale, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %do.end7, label %do.body9

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.24) #13
  br label %cleanup

do.body9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw9910_s_stream.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw9910_s_stream, %if.then14)) #10
          to label %if.end23 [label %if.then14], !srcloc !123

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scale, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %width = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %width, align 4
  %conv = zext i16 %14 to i32
  %height = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %height, align 2
  %conv19 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw9910_s_stream.__UNIQUE_ID_ddebug292, ptr noundef %dev15, ptr noundef nonnull @.str.26, ptr noundef %12, i32 noundef %conv, i32 noundef %conv19) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %do.body9, %sw.bb2, %if.then.if.end23_crit_edge
  %val.0 = phi i8 [ 0, %if.then14 ], [ 7, %sw.bb2 ], [ 6, %if.then.if.end23_crit_edge ], [ 0, %do.body9 ]
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end23.cleanup_crit_edge, label %tw9910_mask_set.exit

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tw9910_mask_set.exit:                             ; preds = %if.end23
  %17 = trunc i32 %call.i to i8
  %18 = and i8 %17, -8
  %conv4.i = or i8 %18, %val.0
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %conv4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp slt i32 %call5.i, 0
  br i1 %cmp, label %tw9910_mask_set.exit.cleanup_crit_edge, label %if.end27

tw9910_mask_set.exit.cleanup_crit_edge:           ; preds = %tw9910_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %tw9910_mask_set.exit
  %.8.i = select i1 %tobool.not, i8 64, i8 0
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end27.cleanup_crit_edge, label %tw9910_mask_set.exit.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tw9910_mask_set.exit.i:                           ; preds = %if.end27
  %..i = select i1 %tobool.not, i8 14, i8 0
  %19 = trunc i32 %call.i.i to i8
  %20 = and i8 %19, -15
  %conv4.i.i = or i8 %20, %..i
  %call5.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %conv4.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i44 = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i44, label %tw9910_mask_set.exit.i.cleanup_crit_edge, label %if.end2.i

tw9910_mask_set.exit.i.cleanup_crit_edge:         ; preds = %tw9910_mask_set.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i:                                        ; preds = %tw9910_mask_set.exit.i
  %call.i9.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %cmp.i10.i = icmp slt i32 %call.i9.i, 0
  br i1 %cmp.i10.i, label %if.end2.i.cleanup_crit_edge, label %if.end.i14.i

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i14.i:                                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = trunc i32 %call.i9.i to i8
  %22 = and i8 %21, -65
  %conv4.i12.i = or i8 %22, %.8.i
  %call5.i13.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 26, i8 noundef zeroext %conv4.i12.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i14.i, %if.end2.i.cleanup_crit_edge, %tw9910_mask_set.exit.i.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %tw9910_mask_set.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -1, %do.end7 ], [ -22, %do.end ], [ %call5.i, %tw9910_mask_set.exit.cleanup_crit_edge ], [ %call5.i.i, %tw9910_mask_set.exit.i.cleanup_crit_edge ], [ %call5.i13.i, %if.end.i14.i ], [ %call.i9.i, %if.end2.i.cleanup_crit_edge ], [ %call.i.i, %if.end27.cleanup_crit_edge ], [ %call.i, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw9910_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8198, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %scale = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scale, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %norm = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %norm, align 8
  %call5 = tail call fastcc ptr @tw9910_select_norm(i64 noundef %9, i32 noundef 640, i32 noundef 480)
  %10 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %scale, align 4
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %11 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scale, align 4
  %width = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %width, align 4
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %format1, align 4
  %16 = load ptr, ptr %scale, align 4
  %height = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %height, align 2
  %conv15 = zext i16 %18 to i32
  %height16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv15, ptr %height16, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8198, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 9, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw9910_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %7, label %do.end [
    i32 0, label %if.then3
    i32 9, label %if.end.if.end10_crit_edge
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %field, align 4
  br label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %7) #13
  br label %cleanup

if.end10:                                         ; preds = %if.then3, %if.end.if.end10_crit_edge
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8198, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %colorspace, align 4
  %norm = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %norm, align 8
  %14 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %call11 = tail call fastcc ptr @tw9910_select_norm(i64 noundef %13, i32 noundef %15, i32 noundef %17)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %width15 = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %call11, i32 0, i32 1
  %18 = ptrtoint ptr %width15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %width15, align 4
  %conv = zext i16 %19 to i32
  %20 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %format1, align 4
  %height17 = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %call11, i32 0, i32 2
  %21 = ptrtoint ptr %height17 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %height17, align 2
  %conv18 = zext i16 %22 to i32
  %23 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv18, ptr %height, align 4
  %24 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp20 = icmp eq i32 %25, 1
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end14
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %28 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %field, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %29, label %do.end.i [
    i32 9, label %if.then22.if.end.i_crit_edge
    i32 0, label %if.then22.if.end.i_crit_edge45
  ]

if.then22.if.end.i_crit_edge45:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then22.if.end.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 781, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then22.if.end.i_crit_edge, %if.then22.if.end.i_crit_edge45
  %31 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %32)
  %cmp23.not.i = icmp eq i32 %32, 8198
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25.i:                                       ; preds = %if.end.i
  %33 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %colorspace, align 4
  %34 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %norm.i.i = getelementptr inbounds %struct.tw9910_priv, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %norm.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %norm.i.i, align 8
  %call2.i.i = tail call fastcc ptr @tw9910_select_norm(i64 noundef %39, i32 noundef %conv, i32 noundef %27) #10
  %scale.i.i = getelementptr inbounds %struct.tw9910_priv, ptr %37, i32 0, i32 5
  %40 = ptrtoint ptr %scale.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call2.i.i, ptr %scale.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.end25.i.tw9910_set_fmt_error.i.i_crit_edge, label %if.end.i.i

if.end25.i.tw9910_set_fmt_error.i.i_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

if.end.i.i:                                       ; preds = %if.end25.i
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.tw9910_reset.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.tw9910_reset.exit.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_reset.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = trunc i32 %call.i.i.i.i to i8
  %conv4.i.i.i.i = or i8 %41, -128
  %call5.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 6, i8 noundef zeroext %conv4.i.i.i.i) #10
  br label %tw9910_reset.exit.i.i

tw9910_reset.exit.i.i:                            ; preds = %if.end.i.i.i.i, %if.end.i.i.tw9910_reset.exit.i.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #10
  %info.i.i = getelementptr inbounds %struct.tw9910_priv, ptr %37, i32 0, i32 2
  %42 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info.i.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %tw9910_reset.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %tw9910_mask_set.exit.i.i

tw9910_reset.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge: ; preds = %tw9910_reset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

tw9910_mask_set.exit.i.i:                         ; preds = %tw9910_reset.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %45)
  %cmp.i.i = icmp eq i32 %45, 16
  %spec.store.select.i.i = select i1 %cmp.i.i, i8 64, i8 0
  %46 = trunc i32 %call.i.i.i to i8
  %47 = and i8 %46, -65
  %conv4.i.i.i = or i8 %47, %spec.store.select.i.i
  %call5.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 3, i8 noundef zeroext %conv4.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp7.i.i = icmp slt i32 %call5.i.i.i, 0
  br i1 %cmp7.i.i, label %tw9910_mask_set.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %if.end9.i.i

tw9910_mask_set.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge: ; preds = %tw9910_mask_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

if.end9.i.i:                                      ; preds = %tw9910_mask_set.exit.i.i
  %48 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info.i.i, align 8
  %mpout.i.i = getelementptr inbounds %struct.tw9910_video_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %mpout.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mpout.i.i, align 4
  %call.i62.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i.i)
  %cmp.i63.i.i = icmp slt i32 %call.i62.i.i, 0
  br i1 %cmp.i63.i.i, label %if.end9.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %tw9910_mask_set.exit69.i.i

if.end9.i.i.tw9910_set_fmt_error.i.i_crit_edge:   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

tw9910_mask_set.exit69.i.i:                       ; preds = %if.end9.i.i
  %switch.tableidx = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %52 = icmp ult i32 %switch.tableidx, 7
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %val.0.i.i = select i1 %52, i8 %switch.offset, i8 0
  %53 = trunc i32 %call.i62.i.i to i8
  %54 = and i8 %53, -8
  %conv4.i65.i.i = or i8 %54, %val.0.i.i
  %call5.i66.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 25, i8 noundef zeroext %conv4.i65.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i66.i.i)
  %cmp19.i.i = icmp slt i32 %call5.i66.i.i, 0
  br i1 %cmp19.i.i, label %tw9910_mask_set.exit69.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %if.end21.i.i

tw9910_mask_set.exit69.i.i.tw9910_set_fmt_error.i.i_crit_edge: ; preds = %tw9910_mask_set.exit69.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

if.end21.i.i:                                     ; preds = %tw9910_mask_set.exit69.i.i
  %55 = ptrtoint ptr %scale.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %scale.i.i, align 4
  %vscale.i.i.i = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %vscale.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vscale.i.i.i, align 2
  %59 = lshr i16 %58, 4
  %60 = and i16 %59, 240
  %hscale.i.i.i = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %56, i32 0, i32 3
  %61 = ptrtoint ptr %hscale.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hscale.i.i.i, align 4
  %63 = lshr i16 %62, 8
  %64 = and i16 %63, 15
  %or29.i.i.i = or i16 %64, %60
  %conv4.i70.i.i = trunc i16 %or29.i.i.i to i8
  %call.i71.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 14, i8 noundef zeroext %conv4.i70.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i.i)
  %cmp.i72.i.i = icmp slt i32 %call.i71.i.i, 0
  br i1 %cmp.i72.i.i, label %if.end21.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %if.end.i73.i.i

if.end21.i.i.tw9910_set_fmt_error.i.i_crit_edge:  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

if.end.i73.i.i:                                   ; preds = %if.end21.i.i
  %65 = ptrtoint ptr %hscale.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hscale.i.i.i, align 4
  %conv9.i.i.i = trunc i16 %66 to i8
  %call10.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 15, i8 noundef zeroext %conv9.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %cmp11.i.i.i = icmp slt i32 %call10.i.i.i, 0
  br i1 %cmp11.i.i.i, label %if.end.i73.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %tw9910_set_scale.exit.i.i

if.end.i73.i.i.tw9910_set_fmt_error.i.i_crit_edge: ; preds = %if.end.i73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

tw9910_set_scale.exit.i.i:                        ; preds = %if.end.i73.i.i
  %67 = ptrtoint ptr %vscale.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vscale.i.i.i, align 2
  %conv18.i.i.i = trunc i16 %68 to i8
  %call19.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 13, i8 noundef zeroext %conv18.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %cmp24.i.i = icmp slt i32 %call19.i.i.i, 0
  br i1 %cmp24.i.i, label %tw9910_set_scale.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %if.end26.i.i

tw9910_set_scale.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge: ; preds = %tw9910_set_scale.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

if.end26.i.i:                                     ; preds = %tw9910_set_scale.exit.i.i
  %69 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 107, i8 noundef zeroext 76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i75.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i75.i.i, label %if.end26.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %if.end.i76.i.i

if.end26.i.i.tw9910_set_fmt_error.i.i_crit_edge:  ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

if.end.i76.i.i:                                   ; preds = %if.end26.i.i
  %call2.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 108, i8 noundef zeroext 96) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp3.i.i.i, label %if.end.i76.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %if.end5.i.i.i

if.end.i76.i.i.tw9910_set_fmt_error.i.i_crit_edge: ; preds = %if.end.i76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i76.i.i
  %revision.i.i.i = getelementptr inbounds %struct.tw9910_priv, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %revision.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp6.i.i.i = icmp eq i32 %72, 1
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %if.end5.i.i.i.tw9910_set_frame.exit.i_crit_edge

if.end5.i.i.i.tw9910_set_frame.exit.i_crit_edge:  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_frame.exit.i

if.then7.i.i.i:                                   ; preds = %if.end5.i.i.i
  %call.i.i77.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77.i.i)
  %cmp.i.i78.i.i = icmp slt i32 %call.i.i77.i.i, 0
  br i1 %cmp.i.i78.i.i, label %if.then7.i.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %tw9910_set_hsync.exit.i.i

if.then7.i.i.i.tw9910_set_fmt_error.i.i_crit_edge: ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

tw9910_set_hsync.exit.i.i:                        ; preds = %if.then7.i.i.i
  %73 = trunc i32 %call.i.i77.i.i to i8
  %74 = and i8 %73, -120
  %call5.i.i79.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 78, i8 noundef zeroext %74) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i79.i.i)
  %cmp28.i.i = icmp slt i32 %call5.i.i79.i.i, 0
  br i1 %cmp28.i.i, label %tw9910_set_hsync.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge, label %tw9910_set_hsync.exit.i.i.tw9910_set_frame.exit.i_crit_edge

tw9910_set_hsync.exit.i.i.tw9910_set_frame.exit.i_crit_edge: ; preds = %tw9910_set_hsync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_frame.exit.i

tw9910_set_hsync.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge: ; preds = %tw9910_set_hsync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_fmt_error.i.i

tw9910_set_fmt_error.i.i:                         ; preds = %tw9910_set_hsync.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge, %if.then7.i.i.i.tw9910_set_fmt_error.i.i_crit_edge, %if.end.i76.i.i.tw9910_set_fmt_error.i.i_crit_edge, %if.end26.i.i.tw9910_set_fmt_error.i.i_crit_edge, %tw9910_set_scale.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge, %if.end.i73.i.i.tw9910_set_fmt_error.i.i_crit_edge, %if.end21.i.i.tw9910_set_fmt_error.i.i_crit_edge, %tw9910_mask_set.exit69.i.i.tw9910_set_fmt_error.i.i_crit_edge, %if.end9.i.i.tw9910_set_fmt_error.i.i_crit_edge, %tw9910_mask_set.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge, %tw9910_reset.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge, %if.end25.i.tw9910_set_fmt_error.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call5.i.i.i, %tw9910_mask_set.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call5.i66.i.i, %tw9910_mask_set.exit69.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call19.i.i.i, %tw9910_set_scale.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call5.i.i79.i.i, %tw9910_set_hsync.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ -22, %if.end25.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call.i.i.i, %tw9910_reset.exit.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call.i62.i.i, %if.end9.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call10.i.i.i, %if.end.i73.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call.i71.i.i, %if.end21.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call.i.i77.i.i, %if.then7.i.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call2.i.i.i, %if.end.i76.i.i.tw9910_set_fmt_error.i.i_crit_edge ], [ %call1.i.i.i, %if.end26.i.i.tw9910_set_fmt_error.i.i_crit_edge ]
  %call.i.i82.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82.i.i)
  %cmp.i.i83.i.i = icmp slt i32 %call.i.i82.i.i, 0
  br i1 %cmp.i.i83.i.i, label %tw9910_set_fmt_error.i.i.tw9910_set_frame.exit.thread.i_crit_edge, label %if.end.i.i86.i.i

tw9910_set_fmt_error.i.i.tw9910_set_frame.exit.thread.i_crit_edge: ; preds = %tw9910_set_fmt_error.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw9910_set_frame.exit.thread.i

if.end.i.i86.i.i:                                 ; preds = %tw9910_set_fmt_error.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = trunc i32 %call.i.i82.i.i to i8
  %conv4.i.i84.i.i = or i8 %75, -128
  %call5.i.i85.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 6, i8 noundef zeroext %conv4.i.i84.i.i) #10
  br label %tw9910_set_frame.exit.thread.i

tw9910_set_frame.exit.thread.i:                   ; preds = %if.end.i.i86.i.i, %tw9910_set_fmt_error.i.i.tw9910_set_frame.exit.thread.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #10
  %76 = ptrtoint ptr %scale.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %scale.i.i, align 4
  br label %cleanup

tw9910_set_frame.exit.i:                          ; preds = %tw9910_set_hsync.exit.i.i.tw9910_set_frame.exit.i_crit_edge, %if.end5.i.i.i.tw9910_set_frame.exit.i_crit_edge
  %retval.0.i8199.i.i = phi i32 [ %call5.i.i79.i.i, %tw9910_set_hsync.exit.i.i.tw9910_set_frame.exit.i_crit_edge ], [ %call2.i.i.i, %if.end5.i.i.i.tw9910_set_frame.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i8199.i.i)
  %tobool26.not.i = icmp eq i32 %retval.0.i8199.i.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %tw9910_set_frame.exit.i.cleanup_crit_edge

tw9910_set_frame.exit.i.cleanup_crit_edge:        ; preds = %tw9910_set_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28.i:                                       ; preds = %tw9910_set_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %scale.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %scale.i.i, align 4
  %height34.i.i = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %height34.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %height34.i.i, align 2
  %conv35.i.i = zext i16 %80 to i32
  %width32.i.i = getelementptr inbounds %struct.tw9910_scale_ctrl, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %width32.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %width32.i.i, align 4
  %conv.i.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv.i.i, ptr %format1, align 4
  %84 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv35.i.i, ptr %height, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sd_state, align 4
  %87 = call ptr @memcpy(ptr %86, ptr %format1, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end28.i, %tw9910_set_frame.exit.i.cleanup_crit_edge, %tw9910_set_frame.exit.thread.i, %if.end.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ 0, %if.end28.i ], [ -22, %if.end.i.cleanup_crit_edge ], [ %retval.0.i8199.i.i, %tw9910_set_frame.exit.i.cleanup_crit_edge ], [ %ret.0.i.i, %tw9910_set_frame.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw9910_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp ugt i32 %7, 2
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %8 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %top, align 4
  %norm = getelementptr inbounds %struct.tw9910_priv, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %norm, align 8
  %and = and i64 %11, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %width10 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %. = select i1 %tobool.not, i32 768, i32 640
  %.23 = select i1 %tobool.not, i32 576, i32 480
  %12 = ptrtoint ptr %width10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %., ptr %width10, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.23, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tw9910_select_norm(i64 noundef %norm, i32 noundef %width, i32 noundef %height) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %norm, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.else:                                          ; preds = %entry
  %and1 = and i64 %norm, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %scale.0 = phi ptr [ @tw9910_ntsc_scales, %entry.if.end5_crit_edge ], [ @tw9910_pal_scales, %if.else.if.end5_crit_edge ]
  %width6 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 0, i32 1
  %0 = ptrtoint ptr %width6 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %width6, align 4
  %conv = zext i16 %1 to i32
  %sub = sub i32 %width, %conv
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %height13 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 0, i32 2
  %3 = ptrtoint ptr %height13 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %height13, align 2
  %conv14 = zext i16 %4 to i32
  %sub15 = sub i32 %height, %conv14
  %5 = tail call i32 @llvm.abs.i32(i32 %sub15, i1 false)
  %add = add i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp24.not = icmp eq i32 %add, -1
  %ret.1 = select i1 %cmp24.not, ptr null, ptr %scale.0
  %arrayidx.1 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 1
  %width6.1 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 1, i32 1
  %6 = ptrtoint ptr %width6.1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %width6.1, align 4
  %conv.1 = zext i16 %7 to i32
  %sub.1 = sub i32 %width, %conv.1
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  %height13.1 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 1, i32 2
  %9 = ptrtoint ptr %height13.1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %height13.1, align 2
  %conv14.1 = zext i16 %10 to i32
  %sub15.1 = sub i32 %height, %conv14.1
  %11 = tail call i32 @llvm.abs.i32(i32 %sub15.1, i1 false)
  %add.1 = add i32 %11, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %add)
  %cmp24.1 = icmp ult i32 %add.1, %add
  %ret.1.1 = select i1 %cmp24.1, ptr %arrayidx.1, ptr %ret.1
  %12 = tail call i32 @llvm.umin.i32(i32 %add.1, i32 %add)
  %arrayidx.2 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 2
  %width6.2 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 2, i32 1
  %13 = ptrtoint ptr %width6.2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %width6.2, align 4
  %conv.2 = zext i16 %14 to i32
  %sub.2 = sub i32 %width, %conv.2
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  %height13.2 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 2, i32 2
  %16 = ptrtoint ptr %height13.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %height13.2, align 2
  %conv14.2 = zext i16 %17 to i32
  %sub15.2 = sub i32 %height, %conv14.2
  %18 = tail call i32 @llvm.abs.i32(i32 %sub15.2, i1 false)
  %add.2 = add i32 %18, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %12)
  %cmp24.2 = icmp ult i32 %add.2, %12
  %ret.1.2 = select i1 %cmp24.2, ptr %arrayidx.2, ptr %ret.1.1
  %19 = tail call i32 @llvm.umin.i32(i32 %add.2, i32 %12)
  %arrayidx.3 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 3
  %width6.3 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 3, i32 1
  %20 = ptrtoint ptr %width6.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %width6.3, align 4
  %conv.3 = zext i16 %21 to i32
  %sub.3 = sub i32 %width, %conv.3
  %22 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  %height13.3 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 3, i32 2
  %23 = ptrtoint ptr %height13.3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %height13.3, align 2
  %conv14.3 = zext i16 %24 to i32
  %sub15.3 = sub i32 %height, %conv14.3
  %25 = tail call i32 @llvm.abs.i32(i32 %sub15.3, i1 false)
  %add.3 = add i32 %25, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %19)
  %cmp24.3 = icmp ult i32 %add.3, %19
  %ret.1.3 = select i1 %cmp24.3, ptr %arrayidx.3, ptr %ret.1.2
  %26 = tail call i32 @llvm.umin.i32(i32 %add.3, i32 %19)
  %arrayidx.4 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 4
  %width6.4 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 4, i32 1
  %27 = ptrtoint ptr %width6.4 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %width6.4, align 4
  %conv.4 = zext i16 %28 to i32
  %sub.4 = sub i32 %width, %conv.4
  %29 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  %height13.4 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 4, i32 2
  %30 = ptrtoint ptr %height13.4 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %height13.4, align 2
  %conv14.4 = zext i16 %31 to i32
  %sub15.4 = sub i32 %height, %conv14.4
  %32 = tail call i32 @llvm.abs.i32(i32 %sub15.4, i1 false)
  %add.4 = add i32 %32, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add.4, i32 %26)
  %cmp24.4 = icmp ult i32 %add.4, %26
  %ret.1.4 = select i1 %cmp24.4, ptr %arrayidx.4, ptr %ret.1.3
  %33 = tail call i32 @llvm.umin.i32(i32 %add.4, i32 %26)
  %arrayidx.5 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 5
  %width6.5 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 5, i32 1
  %34 = ptrtoint ptr %width6.5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %width6.5, align 4
  %conv.5 = zext i16 %35 to i32
  %sub.5 = sub i32 %width, %conv.5
  %36 = tail call i32 @llvm.abs.i32(i32 %sub.5, i1 false)
  %height13.5 = getelementptr %struct.tw9910_scale_ctrl, ptr %scale.0, i32 5, i32 2
  %37 = ptrtoint ptr %height13.5 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %height13.5, align 2
  %conv14.5 = zext i16 %38 to i32
  %sub15.5 = sub i32 %height, %conv14.5
  %39 = tail call i32 @llvm.abs.i32(i32 %sub15.5, i1 false)
  %add.5 = add i32 %39, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add.5, i32 %33)
  %cmp24.5 = icmp ult i32 %add.5, %33
  %ret.1.5 = select i1 %cmp24.5, ptr %arrayidx.5, ptr %ret.1.4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.else.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.else.cleanup_crit_edge ], [ %ret.1.5, %if.end5 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_tw9910__293_1023_tw9910_i2c_driver_init6, !1, !"__initcall__kmod_tw9910__293_1023_tw9910_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tw9910.c", i32 1023, i32 1}
!2 = !{ptr @__exitcall_tw9910_i2c_driver_exit, !1, !"__exitcall_tw9910_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/tw9910.c", i32 1025, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/tw9910.c", i32 1026, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/tw9910.c", i32 1027, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/tw9910.c", i32 1016, i32 11}
!12 = !{ptr @tw9910_i2c_driver, !13, !"tw9910_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/tw9910.c", i32 1014, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/tw9910.c", i32 941, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tw9910_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tw9910_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/tw9910.c", i32 948, i32 3}
!24 = !{ptr @tw9910_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tw9910_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/tw9910.c", i32 961, i32 36}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/tw9910.c", i32 965, i32 3}
!30 = !{ptr @tw9910_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tw9910_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/tw9910.c", i32 969, i32 52}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/tw9910.c", i32 972, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tw9910_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @tw9910_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @tw9910_subdev_ops, !40, !"tw9910_subdev_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/tw9910.c", i32 921, i32 37}
!41 = !{ptr @tw9910_subdev_core_ops, !42, !"tw9910_subdev_core_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/tw9910.c", i32 880, i32 42}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/tw9910.c", i32 614, i32 53}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/tw9910.c", i32 617, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tw9910_power_on._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tw9910_power_on._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @tw9910_subdev_video_ops, !51, !"tw9910_subdev_video_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/tw9910.c", i32 907, i32 43}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/tw9910.c", i32 477, i32 4}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tw9910_s_stream._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @tw9910_s_stream._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/tw9910.c", i32 484, i32 4}
!59 = !{ptr @tw9910_s_stream._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tw9910_s_stream._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/tw9910.c", i32 488, i32 3}
!63 = !{ptr @tw9910_s_stream.__UNIQUE_ID_ddebug292, !62, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!64 = !{ptr @tw9910_subdev_pad_ops, !65, !"tw9910_subdev_pad_ops", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/tw9910.c", i32 914, i32 41}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/tw9910.c", i32 241, i32 13}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/tw9910.c", i32 248, i32 13}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/tw9910.c", i32 255, i32 13}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/tw9910.c", i32 262, i32 13}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/tw9910.c", i32 269, i32 13}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/tw9910.c", i32 276, i32 13}
!78 = !{ptr @tw9910_ntsc_scales, !79, !"tw9910_ntsc_scales", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/tw9910.c", i32 239, i32 39}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/tw9910.c", i32 286, i32 13}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/tw9910.c", i32 293, i32 13}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/tw9910.c", i32 300, i32 13}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/tw9910.c", i32 307, i32 13}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/tw9910.c", i32 314, i32 13}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/tw9910.c", i32 321, i32 13}
!92 = !{ptr @tw9910_pal_scales, !93, !"tw9910_pal_scales", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/tw9910.c", i32 284, i32 39}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/tw9910.c", i32 814, i32 3}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tw9910_set_fmt._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @tw9910_set_fmt._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/tw9910.c", i32 845, i32 3}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @tw9910_video_probe._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @tw9910_video_probe._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/tw9910.c", i32 862, i32 3}
!106 = !{ptr @tw9910_video_probe._entry.43, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tw9910_video_probe._entry_ptr.45, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/tw9910.c", i32 868, i32 2}
!110 = !{ptr @tw9910_video_probe._entry.46, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tw9910_video_probe._entry_ptr.48, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @tw9910_id, !113, !"tw9910_id", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/tw9910.c", i32 1008, i32 35}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148744729, i64 2148744734, i64 2148744747, i64 2148744791, i64 2148744825, i64 2148744846}
