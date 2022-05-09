; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/imx258.c_pt.bc'
source_filename = "../drivers/media/i2c/imx258.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx258_mode = type { i32, i32, i32, i32, i32, %struct.imx258_reg_list }
%struct.imx258_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx258_link_freq_config = type { i32, %struct.imx258_reg_list }
%struct.imx258_reg = type { i16, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.imx258 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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

@__initcall__kmod_imx258__295_1389_imx258_i2c_driver_init6 = internal global ptr @imx258_i2c_driver_init, section ".initcall6.init", align 4
@imx258_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @imx258_remove, ptr @imx258_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx258_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx258_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_imx258_i2c_driver_exit = internal global ptr @imx258_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [45 x i8] c"imx258.author=Yeh, Andy <andy.yeh@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [27 x i8] c"imx258.author=Chiang, Alan\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [26 x i8] c"imx258.author=Chen, Jason\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [45 x i8] c"imx258.description=Sony IMX258 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [37 x i8] c"imx258.file=drivers/media/i2c/imx258\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [22 x i8] c"imx258.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx258\00", [25 x i8] zeroinitializer }, align 32
@imx258_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,imx258\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx258_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx258_suspend, ptr @imx258_resume, ptr @imx258_suspend, ptr @imx258_resume, ptr @imx258_suspend, ptr @imx258_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx258_power_off, ptr @imx258_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error getting clock\0A\00", [43 x i8] zeroinitializer }, align 32
@imx258_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx258_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/imx258.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"no clock provided, using clock-frequency property\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@imx258_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1275, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"input clock frequency not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx258_probe._entry_ptr = internal global ptr @imx258_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@imx258_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @imx258_video_ops, ptr null, ptr null, ptr null, ptr @imx258_pad_ops }, [32 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [3 x %struct.imx258_mode], [44 x i8] } { [3 x %struct.imx258_mode] [%struct.imx258_mode { i32 4208, i32 3118, i32 3152, i32 3152, i32 0, %struct.imx258_reg_list { i32 116, ptr @mode_4208x3118_regs } }, %struct.imx258_mode { i32 2104, i32 1560, i32 1592, i32 1592, i32 1, %struct.imx258_reg_list { i32 116, ptr @mode_2104_1560_regs } }, %struct.imx258_mode { i32 1048, i32 780, i32 844, i32 844, i32 1, %struct.imx258_reg_list { i32 116, ptr @mode_1048_780_regs } }], [44 x i8] zeroinitializer }, align 32
@imx258_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @imx258_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@imx258_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx258_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx258_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @imx258_enum_mbus_code, ptr @imx258_enum_frame_size, ptr null, ptr @imx258_get_pad_format, ptr @imx258_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@link_freq_configs = internal constant { [2 x %struct.imx258_link_freq_config], [40 x i8] } { [2 x %struct.imx258_link_freq_config] [%struct.imx258_link_freq_config { i32 5352, %struct.imx258_reg_list { i32 15, ptr @mipi_data_rate_1267mbps } }, %struct.imx258_link_freq_config { i32 5352, %struct.imx258_reg_list { i32 15, ptr @mipi_data_rate_640mbps } }], [40 x i8] zeroinitializer }, align 32
@imx258_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 956, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set plls\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx258_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@imx258_start_streaming._entry_ptr = internal global ptr @imx258_start_streaming._entry, section ".printk_index", align 4
@imx258_start_streaming._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 964, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set mode\0A\00", [41 x i8] zeroinitializer }, align 32
@imx258_start_streaming._entry_ptr.14 = internal global ptr @imx258_start_streaming._entry.12, section ".printk_index", align 4
@imx258_start_streaming._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 973, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s failed to set orientation\0A\00", [34 x i8] zeroinitializer }, align 32
@imx258_start_streaming._entry_ptr.17 = internal global ptr @imx258_start_streaming._entry.15, section ".printk_index", align 4
@mipi_data_rate_1267mbps = internal constant { [15 x %struct.imx258_reg], [36 x i8] } { [15 x %struct.imx258_reg] [%struct.imx258_reg { i16 769, i8 5 }, %struct.imx258_reg { i16 771, i8 2 }, %struct.imx258_reg { i16 773, i8 3 }, %struct.imx258_reg { i16 774, i8 0 }, %struct.imx258_reg { i16 775, i8 -58 }, %struct.imx258_reg { i16 777, i8 10 }, %struct.imx258_reg { i16 779, i8 1 }, %struct.imx258_reg { i16 781, i8 2 }, %struct.imx258_reg { i16 782, i8 0 }, %struct.imx258_reg { i16 783, i8 -40 }, %struct.imx258_reg { i16 784, i8 0 }, %struct.imx258_reg { i16 2080, i8 19 }, %struct.imx258_reg { i16 2081, i8 76 }, %struct.imx258_reg { i16 2082, i8 -52 }, %struct.imx258_reg { i16 2083, i8 -52 }], [36 x i8] zeroinitializer }, align 32
@mipi_data_rate_640mbps = internal constant { [15 x %struct.imx258_reg], [36 x i8] } { [15 x %struct.imx258_reg] [%struct.imx258_reg { i16 769, i8 5 }, %struct.imx258_reg { i16 771, i8 2 }, %struct.imx258_reg { i16 773, i8 3 }, %struct.imx258_reg { i16 774, i8 0 }, %struct.imx258_reg { i16 775, i8 100 }, %struct.imx258_reg { i16 777, i8 10 }, %struct.imx258_reg { i16 779, i8 1 }, %struct.imx258_reg { i16 781, i8 2 }, %struct.imx258_reg { i16 782, i8 0 }, %struct.imx258_reg { i16 783, i8 -40 }, %struct.imx258_reg { i16 784, i8 0 }, %struct.imx258_reg { i16 2080, i8 10 }, %struct.imx258_reg { i16 2081, i8 0 }, %struct.imx258_reg { i16 2082, i8 0 }, %struct.imx258_reg { i16 2083, i8 0 }], [36 x i8] zeroinitializer }, align 32
@imx258_write_regs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.imx258_write_regs = private unnamed_addr constant [18 x i8] c"imx258_write_regs\00", align 1
@imx258_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.imx258_write_regs, ptr @.str.3, i32 700, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write reg 0x%4.4x. error = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@imx258_write_regs._entry_ptr = internal global ptr @imx258_write_regs._entry, section ".printk_index", align 4
@imx258_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 998, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s failed to set stream\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx258_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@imx258_stop_streaming._entry_ptr = internal global ptr @imx258_stop_streaming._entry, section ".printk_index", align 4
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@link_freq_menu_items = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 633600000, i64 320000000], [16 x i8] zeroinitializer }, align 32
@imx258_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 1015, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx258_power_on\00", [16 x i8] zeroinitializer }, align 32
@imx258_power_on._entry_ptr = internal global ptr @imx258_power_on._entry, section ".printk_index", align 4
@imx258_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1114, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read chip id %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx258_identify_module\00", [41 x i8] zeroinitializer }, align 32
@imx258_identify_module._entry_ptr = internal global ptr @imx258_identify_module._entry, section ".printk_index", align 4
@imx258_identify_module._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 1120, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip id mismatch: %x!=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@imx258_identify_module._entry_ptr.29 = internal global ptr @imx258_identify_module._entry.27, section ".printk_index", align 4
@mode_4208x3118_regs = internal constant { [116 x %struct.imx258_reg], [112 x i8] } { [116 x %struct.imx258_reg] [%struct.imx258_reg { i16 310, i8 19 }, %struct.imx258_reg { i16 311, i8 51 }, %struct.imx258_reg { i16 12369, i8 0 }, %struct.imx258_reg { i16 12370, i8 0 }, %struct.imx258_reg { i16 20001, i8 20 }, %struct.imx258_reg { i16 27409, i8 -49 }, %struct.imx258_reg { i16 32752, i8 8 }, %struct.imx258_reg { i16 32753, i8 15 }, %struct.imx258_reg { i16 32754, i8 8 }, %struct.imx258_reg { i16 32755, i8 27 }, %struct.imx258_reg { i16 32756, i8 35 }, %struct.imx258_reg { i16 32757, i8 96 }, %struct.imx258_reg { i16 32758, i8 0 }, %struct.imx258_reg { i16 32759, i8 1 }, %struct.imx258_reg { i16 32760, i8 0 }, %struct.imx258_reg { i16 32761, i8 120 }, %struct.imx258_reg { i16 32762, i8 0 }, %struct.imx258_reg { i16 32763, i8 0 }, %struct.imx258_reg { i16 32764, i8 0 }, %struct.imx258_reg { i16 32765, i8 0 }, %struct.imx258_reg { i16 32766, i8 0 }, %struct.imx258_reg { i16 32767, i8 3 }, %struct.imx258_reg { i16 32630, i8 3 }, %struct.imx258_reg { i16 32631, i8 -2 }, %struct.imx258_reg { i16 32680, i8 3 }, %struct.imx258_reg { i16 32681, i8 -2 }, %struct.imx258_reg { i16 31524, i8 -127 }, %struct.imx258_reg { i16 31525, i8 0 }, %struct.imx258_reg { i16 25956, i8 7 }, %struct.imx258_reg { i16 27405, i8 65 }, %struct.imx258_reg { i16 25917, i8 4 }, %struct.imx258_reg { i16 27397, i8 -116 }, %struct.imx258_reg { i16 27398, i8 -7 }, %struct.imx258_reg { i16 27400, i8 101 }, %struct.imx258_reg { i16 27401, i8 -4 }, %struct.imx258_reg { i16 27402, i8 -49 }, %struct.imx258_reg { i16 27403, i8 -46 }, %struct.imx258_reg { i16 26368, i8 14 }, %struct.imx258_reg { i16 26375, i8 14 }, %struct.imx258_reg { i16 -28412, i8 0 }, %struct.imx258_reg { i16 17992, i8 127 }, %struct.imx258_reg { i16 29728, i8 0 }, %struct.imx258_reg { i16 29729, i8 28 }, %struct.imx258_reg { i16 29730, i8 0 }, %struct.imx258_reg { i16 29731, i8 -41 }, %struct.imx258_reg { i16 24324, i8 0 }, %struct.imx258_reg { i16 24325, i8 -19 }, %struct.imx258_reg { i16 274, i8 10 }, %struct.imx258_reg { i16 275, i8 10 }, %struct.imx258_reg { i16 276, i8 3 }, %struct.imx258_reg { i16 834, i8 20 }, %struct.imx258_reg { i16 835, i8 -24 }, %struct.imx258_reg { i16 832, i8 12 }, %struct.imx258_reg { i16 833, i8 80 }, %struct.imx258_reg { i16 836, i8 0 }, %struct.imx258_reg { i16 837, i8 0 }, %struct.imx258_reg { i16 838, i8 0 }, %struct.imx258_reg { i16 839, i8 0 }, %struct.imx258_reg { i16 840, i8 16 }, %struct.imx258_reg { i16 841, i8 111 }, %struct.imx258_reg { i16 842, i8 12 }, %struct.imx258_reg { i16 843, i8 46 }, %struct.imx258_reg { i16 897, i8 1 }, %struct.imx258_reg { i16 899, i8 1 }, %struct.imx258_reg { i16 901, i8 1 }, %struct.imx258_reg { i16 903, i8 1 }, %struct.imx258_reg { i16 2304, i8 0 }, %struct.imx258_reg { i16 2305, i8 17 }, %struct.imx258_reg { i16 1025, i8 0 }, %struct.imx258_reg { i16 1028, i8 0 }, %struct.imx258_reg { i16 1029, i8 16 }, %struct.imx258_reg { i16 1032, i8 0 }, %struct.imx258_reg { i16 1033, i8 0 }, %struct.imx258_reg { i16 1034, i8 0 }, %struct.imx258_reg { i16 1035, i8 0 }, %struct.imx258_reg { i16 1036, i8 16 }, %struct.imx258_reg { i16 1037, i8 112 }, %struct.imx258_reg { i16 1038, i8 12 }, %struct.imx258_reg { i16 1039, i8 48 }, %struct.imx258_reg { i16 12344, i8 0 }, %struct.imx258_reg { i16 12346, i8 0 }, %struct.imx258_reg { i16 12347, i8 16 }, %struct.imx258_reg { i16 12301, i8 0 }, %struct.imx258_reg { i16 844, i8 16 }, %struct.imx258_reg { i16 845, i8 112 }, %struct.imx258_reg { i16 846, i8 12 }, %struct.imx258_reg { i16 847, i8 48 }, %struct.imx258_reg { i16 848, i8 1 }, %struct.imx258_reg { i16 514, i8 12 }, %struct.imx258_reg { i16 515, i8 70 }, %struct.imx258_reg { i16 516, i8 0 }, %struct.imx258_reg { i16 517, i8 0 }, %struct.imx258_reg { i16 526, i8 1 }, %struct.imx258_reg { i16 527, i8 0 }, %struct.imx258_reg { i16 528, i8 1 }, %struct.imx258_reg { i16 529, i8 0 }, %struct.imx258_reg { i16 530, i8 1 }, %struct.imx258_reg { i16 531, i8 0 }, %struct.imx258_reg { i16 532, i8 1 }, %struct.imx258_reg { i16 533, i8 0 }, %struct.imx258_reg { i16 31693, i8 0 }, %struct.imx258_reg { i16 -27428, i8 32 }, %struct.imx258_reg { i16 -27427, i8 32 }, %struct.imx258_reg { i16 -27426, i8 32 }, %struct.imx258_reg { i16 -27172, i8 32 }, %struct.imx258_reg { i16 -27171, i8 32 }, %struct.imx258_reg { i16 -27170, i8 32 }, %struct.imx258_reg { i16 32688, i8 0 }, %struct.imx258_reg { i16 -28656, i8 62 }, %struct.imx258_reg { i16 -27623, i8 80 }, %struct.imx258_reg { i16 -27621, i8 80 }, %struct.imx258_reg { i16 -27367, i8 80 }, %struct.imx258_reg { i16 -27365, i8 80 }, %struct.imx258_reg { i16 12336, i8 0 }, %struct.imx258_reg { i16 12338, i8 0 }, %struct.imx258_reg { i16 544, i8 0 }], [112 x i8] zeroinitializer }, align 32
@mode_2104_1560_regs = internal constant { [116 x %struct.imx258_reg], [112 x i8] } { [116 x %struct.imx258_reg] [%struct.imx258_reg { i16 310, i8 19 }, %struct.imx258_reg { i16 311, i8 51 }, %struct.imx258_reg { i16 12369, i8 0 }, %struct.imx258_reg { i16 12370, i8 0 }, %struct.imx258_reg { i16 20001, i8 20 }, %struct.imx258_reg { i16 27409, i8 -49 }, %struct.imx258_reg { i16 32752, i8 8 }, %struct.imx258_reg { i16 32753, i8 15 }, %struct.imx258_reg { i16 32754, i8 8 }, %struct.imx258_reg { i16 32755, i8 27 }, %struct.imx258_reg { i16 32756, i8 35 }, %struct.imx258_reg { i16 32757, i8 96 }, %struct.imx258_reg { i16 32758, i8 0 }, %struct.imx258_reg { i16 32759, i8 1 }, %struct.imx258_reg { i16 32760, i8 0 }, %struct.imx258_reg { i16 32761, i8 120 }, %struct.imx258_reg { i16 32762, i8 0 }, %struct.imx258_reg { i16 32763, i8 0 }, %struct.imx258_reg { i16 32764, i8 0 }, %struct.imx258_reg { i16 32765, i8 0 }, %struct.imx258_reg { i16 32766, i8 0 }, %struct.imx258_reg { i16 32767, i8 3 }, %struct.imx258_reg { i16 32630, i8 3 }, %struct.imx258_reg { i16 32631, i8 -2 }, %struct.imx258_reg { i16 32680, i8 3 }, %struct.imx258_reg { i16 32681, i8 -2 }, %struct.imx258_reg { i16 31524, i8 -127 }, %struct.imx258_reg { i16 31525, i8 0 }, %struct.imx258_reg { i16 25956, i8 7 }, %struct.imx258_reg { i16 27405, i8 65 }, %struct.imx258_reg { i16 25917, i8 4 }, %struct.imx258_reg { i16 27397, i8 -116 }, %struct.imx258_reg { i16 27398, i8 -7 }, %struct.imx258_reg { i16 27400, i8 101 }, %struct.imx258_reg { i16 27401, i8 -4 }, %struct.imx258_reg { i16 27402, i8 -49 }, %struct.imx258_reg { i16 27403, i8 -46 }, %struct.imx258_reg { i16 26368, i8 14 }, %struct.imx258_reg { i16 26375, i8 14 }, %struct.imx258_reg { i16 -28412, i8 0 }, %struct.imx258_reg { i16 17992, i8 127 }, %struct.imx258_reg { i16 29728, i8 0 }, %struct.imx258_reg { i16 29729, i8 28 }, %struct.imx258_reg { i16 29730, i8 0 }, %struct.imx258_reg { i16 29731, i8 -41 }, %struct.imx258_reg { i16 24324, i8 0 }, %struct.imx258_reg { i16 24325, i8 -19 }, %struct.imx258_reg { i16 274, i8 10 }, %struct.imx258_reg { i16 275, i8 10 }, %struct.imx258_reg { i16 276, i8 3 }, %struct.imx258_reg { i16 834, i8 20 }, %struct.imx258_reg { i16 835, i8 -24 }, %struct.imx258_reg { i16 832, i8 6 }, %struct.imx258_reg { i16 833, i8 56 }, %struct.imx258_reg { i16 836, i8 0 }, %struct.imx258_reg { i16 837, i8 0 }, %struct.imx258_reg { i16 838, i8 0 }, %struct.imx258_reg { i16 839, i8 0 }, %struct.imx258_reg { i16 840, i8 16 }, %struct.imx258_reg { i16 841, i8 111 }, %struct.imx258_reg { i16 842, i8 12 }, %struct.imx258_reg { i16 843, i8 46 }, %struct.imx258_reg { i16 897, i8 1 }, %struct.imx258_reg { i16 899, i8 1 }, %struct.imx258_reg { i16 901, i8 1 }, %struct.imx258_reg { i16 903, i8 1 }, %struct.imx258_reg { i16 2304, i8 1 }, %struct.imx258_reg { i16 2305, i8 18 }, %struct.imx258_reg { i16 1025, i8 1 }, %struct.imx258_reg { i16 1028, i8 0 }, %struct.imx258_reg { i16 1029, i8 32 }, %struct.imx258_reg { i16 1032, i8 0 }, %struct.imx258_reg { i16 1033, i8 2 }, %struct.imx258_reg { i16 1034, i8 0 }, %struct.imx258_reg { i16 1035, i8 0 }, %struct.imx258_reg { i16 1036, i8 16 }, %struct.imx258_reg { i16 1037, i8 106 }, %struct.imx258_reg { i16 1038, i8 6 }, %struct.imx258_reg { i16 1039, i8 24 }, %struct.imx258_reg { i16 12344, i8 0 }, %struct.imx258_reg { i16 12346, i8 0 }, %struct.imx258_reg { i16 12347, i8 16 }, %struct.imx258_reg { i16 12301, i8 0 }, %struct.imx258_reg { i16 844, i8 8 }, %struct.imx258_reg { i16 845, i8 56 }, %struct.imx258_reg { i16 846, i8 6 }, %struct.imx258_reg { i16 847, i8 24 }, %struct.imx258_reg { i16 848, i8 1 }, %struct.imx258_reg { i16 514, i8 6 }, %struct.imx258_reg { i16 515, i8 46 }, %struct.imx258_reg { i16 516, i8 0 }, %struct.imx258_reg { i16 517, i8 0 }, %struct.imx258_reg { i16 526, i8 1 }, %struct.imx258_reg { i16 527, i8 0 }, %struct.imx258_reg { i16 528, i8 1 }, %struct.imx258_reg { i16 529, i8 0 }, %struct.imx258_reg { i16 530, i8 1 }, %struct.imx258_reg { i16 531, i8 0 }, %struct.imx258_reg { i16 532, i8 1 }, %struct.imx258_reg { i16 533, i8 0 }, %struct.imx258_reg { i16 31693, i8 1 }, %struct.imx258_reg { i16 -27428, i8 32 }, %struct.imx258_reg { i16 -27427, i8 32 }, %struct.imx258_reg { i16 -27426, i8 32 }, %struct.imx258_reg { i16 -27172, i8 32 }, %struct.imx258_reg { i16 -27171, i8 32 }, %struct.imx258_reg { i16 -27170, i8 32 }, %struct.imx258_reg { i16 32688, i8 0 }, %struct.imx258_reg { i16 -28656, i8 62 }, %struct.imx258_reg { i16 -27623, i8 80 }, %struct.imx258_reg { i16 -27621, i8 80 }, %struct.imx258_reg { i16 -27367, i8 80 }, %struct.imx258_reg { i16 -27365, i8 80 }, %struct.imx258_reg { i16 12336, i8 0 }, %struct.imx258_reg { i16 12338, i8 0 }, %struct.imx258_reg { i16 544, i8 0 }], [112 x i8] zeroinitializer }, align 32
@mode_1048_780_regs = internal constant { [116 x %struct.imx258_reg], [112 x i8] } { [116 x %struct.imx258_reg] [%struct.imx258_reg { i16 310, i8 19 }, %struct.imx258_reg { i16 311, i8 51 }, %struct.imx258_reg { i16 12369, i8 0 }, %struct.imx258_reg { i16 12370, i8 0 }, %struct.imx258_reg { i16 20001, i8 20 }, %struct.imx258_reg { i16 27409, i8 -49 }, %struct.imx258_reg { i16 32752, i8 8 }, %struct.imx258_reg { i16 32753, i8 15 }, %struct.imx258_reg { i16 32754, i8 8 }, %struct.imx258_reg { i16 32755, i8 27 }, %struct.imx258_reg { i16 32756, i8 35 }, %struct.imx258_reg { i16 32757, i8 96 }, %struct.imx258_reg { i16 32758, i8 0 }, %struct.imx258_reg { i16 32759, i8 1 }, %struct.imx258_reg { i16 32760, i8 0 }, %struct.imx258_reg { i16 32761, i8 120 }, %struct.imx258_reg { i16 32762, i8 0 }, %struct.imx258_reg { i16 32763, i8 0 }, %struct.imx258_reg { i16 32764, i8 0 }, %struct.imx258_reg { i16 32765, i8 0 }, %struct.imx258_reg { i16 32766, i8 0 }, %struct.imx258_reg { i16 32767, i8 3 }, %struct.imx258_reg { i16 32630, i8 3 }, %struct.imx258_reg { i16 32631, i8 -2 }, %struct.imx258_reg { i16 32680, i8 3 }, %struct.imx258_reg { i16 32681, i8 -2 }, %struct.imx258_reg { i16 31524, i8 -127 }, %struct.imx258_reg { i16 31525, i8 0 }, %struct.imx258_reg { i16 25956, i8 7 }, %struct.imx258_reg { i16 27405, i8 65 }, %struct.imx258_reg { i16 25917, i8 4 }, %struct.imx258_reg { i16 27397, i8 -116 }, %struct.imx258_reg { i16 27398, i8 -7 }, %struct.imx258_reg { i16 27400, i8 101 }, %struct.imx258_reg { i16 27401, i8 -4 }, %struct.imx258_reg { i16 27402, i8 -49 }, %struct.imx258_reg { i16 27403, i8 -46 }, %struct.imx258_reg { i16 26368, i8 14 }, %struct.imx258_reg { i16 26375, i8 14 }, %struct.imx258_reg { i16 -28412, i8 0 }, %struct.imx258_reg { i16 17992, i8 127 }, %struct.imx258_reg { i16 29728, i8 0 }, %struct.imx258_reg { i16 29729, i8 28 }, %struct.imx258_reg { i16 29730, i8 0 }, %struct.imx258_reg { i16 29731, i8 -41 }, %struct.imx258_reg { i16 24324, i8 0 }, %struct.imx258_reg { i16 24325, i8 -19 }, %struct.imx258_reg { i16 274, i8 10 }, %struct.imx258_reg { i16 275, i8 10 }, %struct.imx258_reg { i16 276, i8 3 }, %struct.imx258_reg { i16 834, i8 20 }, %struct.imx258_reg { i16 835, i8 -24 }, %struct.imx258_reg { i16 832, i8 3 }, %struct.imx258_reg { i16 833, i8 76 }, %struct.imx258_reg { i16 836, i8 0 }, %struct.imx258_reg { i16 837, i8 0 }, %struct.imx258_reg { i16 838, i8 0 }, %struct.imx258_reg { i16 839, i8 0 }, %struct.imx258_reg { i16 840, i8 16 }, %struct.imx258_reg { i16 841, i8 111 }, %struct.imx258_reg { i16 842, i8 12 }, %struct.imx258_reg { i16 843, i8 46 }, %struct.imx258_reg { i16 897, i8 1 }, %struct.imx258_reg { i16 899, i8 1 }, %struct.imx258_reg { i16 901, i8 1 }, %struct.imx258_reg { i16 903, i8 1 }, %struct.imx258_reg { i16 2304, i8 1 }, %struct.imx258_reg { i16 2305, i8 20 }, %struct.imx258_reg { i16 1025, i8 1 }, %struct.imx258_reg { i16 1028, i8 0 }, %struct.imx258_reg { i16 1029, i8 64 }, %struct.imx258_reg { i16 1032, i8 0 }, %struct.imx258_reg { i16 1033, i8 6 }, %struct.imx258_reg { i16 1034, i8 0 }, %struct.imx258_reg { i16 1035, i8 0 }, %struct.imx258_reg { i16 1036, i8 16 }, %struct.imx258_reg { i16 1037, i8 100 }, %struct.imx258_reg { i16 1038, i8 3 }, %struct.imx258_reg { i16 1039, i8 12 }, %struct.imx258_reg { i16 12344, i8 0 }, %struct.imx258_reg { i16 12346, i8 0 }, %struct.imx258_reg { i16 12347, i8 16 }, %struct.imx258_reg { i16 12301, i8 0 }, %struct.imx258_reg { i16 844, i8 4 }, %struct.imx258_reg { i16 845, i8 24 }, %struct.imx258_reg { i16 846, i8 3 }, %struct.imx258_reg { i16 847, i8 12 }, %struct.imx258_reg { i16 848, i8 1 }, %struct.imx258_reg { i16 514, i8 3 }, %struct.imx258_reg { i16 515, i8 66 }, %struct.imx258_reg { i16 516, i8 0 }, %struct.imx258_reg { i16 517, i8 0 }, %struct.imx258_reg { i16 526, i8 1 }, %struct.imx258_reg { i16 527, i8 0 }, %struct.imx258_reg { i16 528, i8 1 }, %struct.imx258_reg { i16 529, i8 0 }, %struct.imx258_reg { i16 530, i8 1 }, %struct.imx258_reg { i16 531, i8 0 }, %struct.imx258_reg { i16 532, i8 1 }, %struct.imx258_reg { i16 533, i8 0 }, %struct.imx258_reg { i16 31693, i8 0 }, %struct.imx258_reg { i16 -27428, i8 32 }, %struct.imx258_reg { i16 -27427, i8 32 }, %struct.imx258_reg { i16 -27426, i8 32 }, %struct.imx258_reg { i16 -27172, i8 32 }, %struct.imx258_reg { i16 -27171, i8 32 }, %struct.imx258_reg { i16 -27170, i8 32 }, %struct.imx258_reg { i16 32688, i8 0 }, %struct.imx258_reg { i16 -28656, i8 62 }, %struct.imx258_reg { i16 -27623, i8 80 }, %struct.imx258_reg { i16 -27621, i8 80 }, %struct.imx258_reg { i16 -27367, i8 80 }, %struct.imx258_reg { i16 -27365, i8 80 }, %struct.imx258_reg { i16 12336, i8 0 }, %struct.imx258_reg { i16 12338, i8 0 }, %struct.imx258_reg { i16 544, i8 0 }], [112 x i8] zeroinitializer }, align 32
@imx258_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"imx258:1159:(ctrl_hdlr)->_lock\00", [33 x i8] zeroinitializer }, align 32
@imx258_init_controls.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&imx258->mutex\00", [17 x i8] zeroinitializer }, align 32
@imx258_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @imx258_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@imx258_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [44 x i8] zeroinitializer }, align 32
@imx258_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1231, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s control init failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx258_init_controls\00", [43 x i8] zeroinitializer }, align 32
@imx258_init_controls._entry_ptr = internal global ptr @imx258_init_controls._entry, section ".printk_index", align 4
@imx258_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 808, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ctrl(id:0x%x,val:0x%x) is not handled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx258_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx258_set_ctrl._entry_ptr = internal global ptr @imx258_set_ctrl._entry, section ".printk_index", align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Solid Colour\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Eight Vertical Colour Bars\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Colour Bars With Fade to Grey\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Pseudorandom Sequence (PN9)\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963793, i64 10094869, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"imx258_i2c_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1378, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1380, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"imx258_dt_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1372, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"imx258_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1358, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1265, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1267, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1270, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1275, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1283, i32 47 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"imx258_subdev_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1138, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 567, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c"imx258_internal_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1143, i32 46 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"imx258_video_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1127, i32 43 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"imx258_pad_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1131, i32 41 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"link_freq_configs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 549, i32 45 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 956, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 964, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 972, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [24 x i8] c"mipi_data_rate_1267mbps\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 120, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"mipi_data_rate_640mbps\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 138, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 697, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 998, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 998, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 543, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1015, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1113, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1119, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c"mode_4208x3118_regs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 156, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"mode_2104_1560_regs\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 275, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"mode_1048_780_regs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 394, i32 32 }
@___asan_gen_.189 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1159, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1163, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"imx258_ctrl_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 818, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant [25 x i8] c"imx258_test_pattern_menu\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 513, i32 27 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1230, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 806, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 514, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 515, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 516, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 517, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [30 x i8] c"../drivers/media/i2c/imx258.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 518, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_imx258_i2c_driver_exit, ptr @__initcall__kmod_imx258__295_1389_imx258_i2c_driver_init6, ptr @imx258_i2c_driver_exit, ptr @imx258_identify_module._entry, ptr @imx258_identify_module._entry.27, ptr @imx258_identify_module._entry_ptr, ptr @imx258_identify_module._entry_ptr.29, ptr @imx258_init_controls._entry, ptr @imx258_init_controls._entry_ptr, ptr @imx258_power_on._entry, ptr @imx258_power_on._entry_ptr, ptr @imx258_probe._entry, ptr @imx258_probe._entry_ptr, ptr @imx258_set_ctrl._entry, ptr @imx258_set_ctrl._entry_ptr, ptr @imx258_start_streaming._entry, ptr @imx258_start_streaming._entry.12, ptr @imx258_start_streaming._entry.15, ptr @imx258_start_streaming._entry_ptr, ptr @imx258_start_streaming._entry_ptr.14, ptr @imx258_start_streaming._entry_ptr.17, ptr @imx258_stop_streaming._entry, ptr @imx258_stop_streaming._entry_ptr, ptr @imx258_write_regs._entry, ptr @imx258_write_regs._entry_ptr, ptr @imx258_i2c_driver, ptr @.str, ptr @imx258_dt_ids, ptr @imx258_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @imx258_subdev_ops, ptr @supported_modes, ptr @imx258_internal_ops, ptr @imx258_video_ops, ptr @imx258_pad_ops, ptr @link_freq_configs, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @mipi_data_rate_1267mbps, ptr @mipi_data_rate_640mbps, ptr @imx258_write_regs._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @link_freq_menu_items, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @mode_4208x3118_regs, ptr @mode_2104_1560_regs, ptr @mode_1048_780_regs, ptr @imx258_init_controls._key, ptr @.str.30, ptr @imx258_init_controls.__key, ptr @.str.31, ptr @imx258_ctrl_ops, ptr @imx258_test_pattern_menu, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_configs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_start_streaming._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_start_streaming._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_1267mbps to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_640mbps to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_write_regs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_identify_module._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_4208x3118_regs to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2104_1560_regs to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1048_780_regs to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_init_controls.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx258_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @imx258_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx258_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @imx258_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_remove(ptr noundef %client) #2 align 64 {
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
  %mutex.i = getelementptr inbounds %struct.imx258, ptr %1, i32 0, i32 9
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
  %clk.i = getelementptr inbounds %struct.imx258, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_probe(ptr noundef %client) #2 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 1
  %data_buf.i.i = alloca [4 x i8], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 536, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.imx258, ptr %call.i, i32 0, i32 11
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %2, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %tobool12.not = icmp eq ptr %call2, null
  br i1 %tobool12.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx258_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx258_probe, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !144

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx258_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %call.i115 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull %val, i32 noundef 1) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %val, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 @clk_get_rate(ptr noundef nonnull %call2) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call24, ptr %val, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %do.end
  %5 = phi i32 [ %call24, %if.else ], [ %.pr, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %5)
  %cmp.not = icmp eq i32 %5, 19200000
  br i1 %cmp.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %call.i116 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool34.not = icmp eq i32 %call.i116, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end31
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %7)
  %cmp35.not = icmp eq i32 %7, 180
  br i1 %cmp35.not, label %if.end37, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @imx258_subdev_ops) #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.imx258, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 4
  %call.i.i = call i32 @clk_prepare(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end37.imx258_power_on.exit_crit_edge

if.end37.imx258_power_on.exit_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx258_power_on.exit

if.end.i.i:                                       ; preds = %if.end37
  %call1.i.i = call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end42, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %11) #7
  br label %imx258_power_on.exit

imx258_power_on.exit:                             ; preds = %if.then3.i.i, %if.end37.imx258_power_on.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end37.imx258_power_on.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end.i.i
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %14 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  %16 = getelementptr inbounds [2 x i8], ptr %addr_buf.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %addr_buf.i.i, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 22, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %19 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %data_buf.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i.i, align 2
  %22 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i.i, align 2
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %14, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %26 = load i16, ptr %addr.i.i, align 2
  %arrayidx11.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx11.i.i, align 4
  %flags14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %flags14.i.i, align 2
  %len17.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %len17.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %len17.i.i, align 4
  %arrayidx18.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 2
  %buf20.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %buf20.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx18.i.i, ptr %buf20.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %31 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i.i, align 8
  %call22.i.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call22.i.i)
  %cmp23.not.i.i = icmp eq i32 %call22.i.i, 2
  br i1 %cmp23.not.i.i, label %if.end.i, label %do.end.i117

do.end.i117:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 600) #10
  br label %error_identify

if.end.i:                                         ; preds = %if.end42
  %33 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 600
  br i1 %cmp.not.i, label %if.end46, label %do.end5.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.28, i32 noundef 600, i32 noundef %34) #10
  br label %error_identify

if.end46:                                         ; preds = %if.end.i
  %cur_mode = getelementptr inbounds %struct.imx258, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %call47 = call fastcc i32 @imx258_init_controls(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.error_identify_crit_edge

if.end46.error_identify_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_identify

if.end50:                                         ; preds = %if.end46
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @imx258_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or = or i32 %38, 4
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.imx258, ptr %call.i, i32 0, i32 1
  %flags54 = getelementptr inbounds %struct.imx258, ptr %call.i, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %flags54 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %flags54, align 4
  %call58 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end50.error_handler_free_crit_edge

if.end50.error_handler_free_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_handler_free

if.end61:                                         ; preds = %if.end50
  %call63 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end61.error_handler_free_crit_edge, label %if.end66

if.end61.error_handler_free_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_handler_free

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call.i119 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i120 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #7
  br label %cleanup

error_handler_free:                               ; preds = %if.end61.error_handler_free_crit_edge, %if.end50.error_handler_free_crit_edge
  %ret.0 = phi i32 [ %call58, %if.end50.error_handler_free_crit_edge ], [ %call63, %if.end61.error_handler_free_crit_edge ]
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl_handler.i, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %42) #7
  %mutex.i = getelementptr inbounds %struct.imx258, ptr %call.i, i32 0, i32 9
  call void @mutex_destroy(ptr noundef %mutex.i) #7
  br label %error_identify

error_identify:                                   ; preds = %error_handler_free, %if.end46.error_identify_crit_edge, %do.end5.i, %do.end.i117
  %ret.1 = phi i32 [ %call47, %if.end46.error_identify_crit_edge ], [ %ret.0, %error_handler_free ], [ -5, %do.end.i117 ], [ -5, %do.end5.i ]
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i122 = getelementptr inbounds %struct.imx258, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %clk.i122 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk.i122, align 4
  call void @clk_disable(ptr noundef %46) #7
  call void @clk_unprepare(ptr noundef %46) #7
  br label %cleanup

cleanup:                                          ; preds = %error_identify, %if.end66, %imx258_power_on.exit, %lor.lhs.false.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end29, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then5 ], [ -22, %do.end29 ], [ %ret.1, %error_identify ], [ 0, %if.end66 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ %retval.0.i.ph.i, %imx258_power_on.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_power_off(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.imx258, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
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
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_power_on(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.imx258, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.if.end_crit_edge
  %retval.0.i8 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx258_init_controls(ptr noundef %imx258) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %imx258, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %ctrl_handler = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 2
  %call1 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 8, ptr noundef nonnull @imx258_init_controls._key, ptr noundef nonnull @.str.30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.31, ptr noundef nonnull @imx258_init_controls.__key) #7
  %lock = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mutex, ptr %lock, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @imx258_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #7
  %link_freq = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 3
  %3 = ptrtoint ptr %link_freq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %link_freq, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.body.if.end8_crit_edge, label %if.then6

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call3, i32 0, i32 20
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body.if.end8_crit_edge
  %6 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 2534400000, i64 3689348814741910323) #11, !srcloc !145
  %7 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 2534400000, i64 %6) #11, !srcloc !146
  %8 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 1280000000, i64 3689348814741910323) #11, !srcloc !145
  %9 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 1280000000, i64 %8) #11, !srcloc !146
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx258_ctrl_ops, i32 noundef 10422530, i64 noundef %9, i64 noundef %7, i64 noundef 1, i64 noundef %7) #7
  %pixel_rate = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 4
  %10 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %pixel_rate, align 4
  %cur_mode = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 8
  %11 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_mode, align 4
  %vts_def = getelementptr inbounds %struct.imx258_mode, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vts_def, align 4
  %height = getelementptr inbounds %struct.imx258_mode, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %sub = sub i32 %14, %16
  %conv = zext i32 %sub to i64
  %vts_min = getelementptr inbounds %struct.imx258_mode, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vts_min, align 4
  %sub16 = sub i32 %18, %16
  %conv17 = zext i32 %sub16 to i64
  %sub20 = sub i32 65535, %16
  %conv21 = zext i32 %sub20 to i64
  %call22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx258_ctrl_ops, i32 noundef 10356993, i64 noundef %conv17, i64 noundef %conv21, i64 noundef 1, i64 noundef %conv) #7
  %vblank = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 5
  %19 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call22, ptr %vblank, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end8.if.end29_crit_edge, label %if.then25

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then25:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %flags27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call22, i32 0, i32 20
  %20 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags27, align 4
  %or28 = or i32 %21, 4
  store i32 %or28, ptr %flags27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end8.if.end29_crit_edge
  %22 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_mode, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %sub31 = sub i32 5352, %25
  %conv32 = zext i32 %sub31 to i64
  %call41 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx258_ctrl_ops, i32 noundef 10356994, i64 noundef %conv32, i64 noundef %conv32, i64 noundef 1, i64 noundef %conv32) #7
  %hblank = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 6
  %26 = ptrtoint ptr %hblank to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call41, ptr %hblank, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.end29.if.end48_crit_edge, label %if.then44

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then44:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %flags46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call41, i32 0, i32 20
  %27 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags46, align 4
  %or47 = or i32 %28, 4
  store i32 %or47, ptr %flags46, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end29.if.end48_crit_edge
  %call49 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx258_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef 65535, i64 noundef 1, i64 noundef 1600) #7
  %exposure = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 7
  %29 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call49, ptr %exposure, align 4
  %call50 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx258_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 480, i64 noundef 1, i64 noundef 0) #7
  %call51 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx258_ctrl_ops, i32 noundef 10422533, i64 noundef 0, i64 noundef 4096, i64 noundef 1, i64 noundef 1024) #7
  %call52 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @imx258_ctrl_ops, i32 noundef 10094869, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call53 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler, ptr noundef nonnull @imx258_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @imx258_test_pattern_menu) #7
  %error = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 2, i32 9
  %30 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool54.not = icmp eq i32 %31, 0
  br i1 %tobool54.not, label %if.end60, label %if.then55

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %31) #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

if.end60:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_handler62 = getelementptr inbounds %struct.v4l2_subdev, ptr %imx258, i32 0, i32 8
  %32 = ptrtoint ptr %ctrl_handler62 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ctrl_handler, ptr %ctrl_handler62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %if.then55 ], [ 0, %if.end60 ], [ %call1, %entry.cleanup_crit_edge ]
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
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mutex = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !147
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4 = icmp ne i32 %enable, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %if.then5
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_unlock_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_unlock_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !150
  br label %err_unlock

if.end10:                                         ; preds = %if.then5
  %call11 = tail call fastcc i32 @imx258_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %err_rpm_put

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %buf.i.i, align 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %8, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %if.else.imx258_stop_streaming.exit_crit_edge, label %do.end.i

if.else.imx258_stop_streaming.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx258_stop_streaming.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #10
  br label %imx258_stop_streaming.exit

imx258_stop_streaming.exit:                       ; preds = %do.end.i, %if.else.imx258_stop_streaming.exit_crit_edge
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i42 = call i32 @__pm_runtime_idle(ptr noundef %dev16, i32 noundef 5) #7
  br label %if.end18

if.end18:                                         ; preds = %imx258_stop_streaming.exit, %if.end10.if.end18_crit_edge
  %frombool = zext i1 %tobool4 to i8
  %11 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

err_rpm_put:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call.i43 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %err_unlock

err_unlock:                                       ; preds = %err_rpm_put, %do.end11.i.i.i.i.i, %if.then.i.err_unlock_crit_edge
  %ret.1 = phi i32 [ %call11, %err_rpm_put ], [ %call.i, %if.then.i.err_unlock_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.end18, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %err_unlock ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx258_start_streaming(ptr nocapture noundef readonly %imx258) unnamed_addr #2 align 64 {
entry:
  %buf.i77 = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  %buf.i.i52 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %imx258, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cur_mode = getelementptr inbounds %struct.imx258, ptr %imx258, i32 0, i32 8
  %2 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_mode, align 4
  %link_freq_index1 = getelementptr inbounds %struct.imx258_mode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %link_freq_index1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_freq_index1, align 4
  %reg_list2 = getelementptr [2 x %struct.imx258_link_freq_config], ptr @link_freq_configs, i32 0, i32 %5, i32 1
  %regs = getelementptr [2 x %struct.imx258_link_freq_config], ptr @link_freq_configs, i32 0, i32 %5, i32 1, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = ptrtoint ptr %reg_list2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_list2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24.not.i = icmp eq i32 %9, 0
  br i1 %cmp24.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %10 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx258_reg, ptr %7, i32 %i.025.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %val.i = getelementptr %struct.imx258_reg, ptr %7, i32 %i.025.i, i32 1
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i, align 2
  %conv.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %12, ptr %buf.i.i, align 2
  %shl.i.i = shl nuw i32 %conv.i, 24
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %shl.i.i, ptr %10, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %for.cond.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @imx258_write_regs._rs, ptr noundef nonnull @__func__.imx258_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end_crit_edge, label %do.end.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i, align 2
  %conv9.i = zext i16 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %conv9.i, i32 noundef -5) #10
  br label %do.end

do.end:                                           ; preds = %do.end.i, %do.body.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %21 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur_mode, align 4
  %reg_list5 = getelementptr inbounds %struct.imx258_mode, ptr %22, i32 0, i32 5
  %regs6 = getelementptr inbounds %struct.imx258_mode, ptr %22, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs6, align 4
  %25 = ptrtoint ptr %reg_list5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_list5, align 4
  %27 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp24.not.i54 = icmp eq i32 %26, 0
  br i1 %cmp24.not.i54, label %if.end.if.end15_crit_edge, label %for.body.lr.ph.i55

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

for.body.lr.ph.i55:                               ; preds = %if.end
  %29 = getelementptr inbounds [6 x i8], ptr %buf.i.i52, i32 0, i32 2
  br label %for.body.i66

for.cond.i58:                                     ; preds = %for.body.i66
  %inc.i56 = add nuw i32 %i.025.i59, 1
  %exitcond.not.i57 = icmp eq i32 %inc.i56, %26
  br i1 %exitcond.not.i57, label %for.cond.i58.if.end15_crit_edge, label %for.cond.i58.for.body.i66_crit_edge

for.cond.i58.for.body.i66_crit_edge:              ; preds = %for.cond.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i66

for.cond.i58.if.end15_crit_edge:                  ; preds = %for.cond.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

for.body.i66:                                     ; preds = %for.cond.i58.for.body.i66_crit_edge, %for.body.lr.ph.i55
  %i.025.i59 = phi i32 [ 0, %for.body.lr.ph.i55 ], [ %inc.i56, %for.cond.i58.for.body.i66_crit_edge ]
  %arrayidx.i60 = getelementptr %struct.imx258_reg, ptr %24, i32 %i.025.i59
  %30 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i60, align 2
  %val.i61 = getelementptr %struct.imx258_reg, ptr %24, i32 %i.025.i59, i32 1
  %32 = ptrtoint ptr %val.i61 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i61, align 2
  %conv.i62 = zext i8 %33 to i32
  %34 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i52) #7
  %36 = ptrtoint ptr %buf.i.i52 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %31, ptr %buf.i.i52, align 2
  %shl.i.i63 = shl nuw i32 %conv.i62, 24
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %shl.i.i63, ptr %29, align 2
  %call.i.i.i64 = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %buf.i.i52, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i64)
  %cmp5.not.i.i65 = icmp eq i32 %call.i.i.i64, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i52) #7
  br i1 %cmp5.not.i.i65, label %for.cond.i58, label %do.body.i69

do.body.i69:                                      ; preds = %for.body.i66
  %call3.i67 = call i32 @___ratelimit(ptr noundef nonnull @imx258_write_regs._rs, ptr noundef nonnull @__func__.imx258_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i67)
  %tobool4.not.i68 = icmp eq i32 %call3.i67, 0
  br i1 %tobool4.not.i68, label %do.body.i69.do.end13_crit_edge, label %do.end.i72

do.body.i69.do.end13_crit_edge:                   ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end.i72:                                       ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i70 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i60, align 2
  %conv9.i71 = zext i16 %39 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i70, ptr noundef nonnull @.str.19, i32 noundef %conv9.i71, i32 noundef -5) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end.i72, %do.body.i69.do.end13_crit_edge
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end15:                                         ; preds = %for.cond.i58.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %40 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %42 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %43 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 257, ptr %buf.i, align 2
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 50331648, ptr %42, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp5.not.i, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %imx258, i32 0, i32 8
  %45 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_handler, align 4
  %call25 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i77) #7
  %49 = getelementptr inbounds [6 x i8], ptr %buf.i77, i32 0, i32 2
  %50 = ptrtoint ptr %buf.i77 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 256, ptr %buf.i77, align 2
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 16777216, ptr %49, align 2
  %call.i.i79 = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buf.i77, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i79)
  %cmp5.not.i80 = icmp eq i32 %call.i.i79, 3
  %retval.0.i81 = select i1 %cmp5.not.i80, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i77) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %do.end21, %do.end13, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end13 ], [ -5, %do.end21 ], [ %retval.0.i81, %if.end28 ], [ %call25, %if.end23.cleanup_crit_edge ]
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
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx258_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
define internal i32 @imx258_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [3 x %struct.imx258_mode], ptr @supported_modes, i32 0, i32 %1
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
  %height = getelementptr [3 x %struct.imx258_mode], ptr @supported_modes, i32 0, i32 %1, i32 1
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
define internal i32 @imx258_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !151

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  %8 = call ptr @memcpy(ptr %format.i, ptr %arrayidx.i.i, i32 48)
  br label %__imx258_get_pad_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode.i = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 8
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
  %height.i.i = getelementptr inbounds %struct.imx258_mode, ptr %10, i32 0, i32 1
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
  br label %__imx258_get_pad_format.exit

__imx258_get_pad_format.exit:                     ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
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
  %call3 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 3, i32 noundef 28, i32 noundef 0, i32 noundef 4, i32 noundef %2, i32 noundef %4) #7
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call3, align 4
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.imx258_mode, ptr %call3, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !151

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 8
  %22 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call3, ptr %cur_mode, align 4
  %link_freq6 = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 3
  %23 = ptrtoint ptr %link_freq6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_freq6, align 4
  %link_freq_index = getelementptr inbounds %struct.imx258_mode, ptr %call3, i32 0, i32 4
  %25 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_freq_index, align 4
  %call7 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %24, i32 noundef %26) #7
  %27 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_freq_index, align 4
  %arrayidx = getelementptr [2 x i64], ptr @link_freq_menu_items, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx, align 8
  %31 = shl i64 %30, 2
  %div80260.i = and i64 %31, 9223372036854775804
  %32 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div80260.i, i64 3689348814741910323) #11, !srcloc !145
  %33 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div80260.i, i64 %32) #11, !srcloc !146
  %pixel_rate10 = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 4
  %34 = ptrtoint ptr %pixel_rate10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pixel_rate10, align 4
  %call11 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %35, i64 noundef %33) #7
  %36 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur_mode, align 4
  %vts_def = getelementptr inbounds %struct.imx258_mode, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vts_def, align 4
  %height14 = getelementptr inbounds %struct.imx258_mode, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height14, align 4
  %sub = sub i32 %39, %41
  %vts_min = getelementptr inbounds %struct.imx258_mode, ptr %37, i32 0, i32 3
  %42 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vts_min, align 4
  %sub18 = sub i32 %43, %41
  %vblank = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 5
  %44 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vblank, align 4
  %conv = sext i32 %sub18 to i64
  %sub21 = sub i32 65535, %41
  %conv22 = zext i32 %sub21 to i64
  %conv23 = sext i32 %sub to i64
  %call24 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %45, i64 noundef %conv, i64 noundef %conv22, i64 noundef 1, i64 noundef %conv23) #7
  %46 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vblank, align 4
  %call26 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %47, i32 noundef %sub) #7
  %48 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_freq_index, align 4
  %arrayidx28 = getelementptr [2 x %struct.imx258_link_freq_config], ptr @link_freq_configs, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx28, align 4
  %52 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_mode, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %sub31 = sub i32 %51, %55
  %conv32 = zext i32 %sub31 to i64
  %hblank = getelementptr inbounds %struct.imx258, ptr %sd, i32 0, i32 6
  %56 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hblank, align 4
  %call33 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %57, i64 noundef %conv32, i64 noundef %conv32, i64 noundef 1, i64 noundef %conv32) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #7
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
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i81 = alloca [6 x i8], align 2
  %buf.i76 = alloca [6 x i8], align 2
  %buf.i71 = alloca [6 x i8], align 2
  %buf.i65 = alloca [6 x i8], align 2
  %buf.i59 = alloca [6 x i8], align 2
  %buf.i13.i = alloca [6 x i8], align 2
  %buf.i7.i = alloca [6 x i8], align 2
  %buf.i1.i = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  %buf.i52 = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -76
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

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
  switch i32 %5, label %do.end [
    i32 10356995, label %sw.bb
    i32 9963793, label %sw.bb3
    i32 10422533, label %sw.bb6
    i32 10422531, label %sw.bb9
    i32 10094869, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %11 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 516, ptr %buf.i, align 2
  %shl.i = shl i32 %8, 16
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %shl.i, ptr %11, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 4
  %retval.0.i = select i1 %cmp5.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val4, align 4
  %16 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i52) #7
  %18 = getelementptr inbounds [6 x i8], ptr %buf.i52, i32 0, i32 2
  %19 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 514, ptr %buf.i52, align 2
  %shl.i54 = shl i32 %15, 16
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %shl.i54, ptr %18, align 2
  %call.i.i55 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %buf.i52, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i55)
  %cmp5.not.i56 = icmp eq i32 %call.i.i55, 4
  %retval.0.i57 = select i1 %cmp5.not.i56, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i52) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val7, align 4
  %23 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %25 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 526, ptr %buf.i.i, align 2
  %shl.i.i = shl i32 %22, 16
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %shl.i.i, ptr %25, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %if.end.i, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb6
  %28 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i1.i) #7
  %30 = getelementptr inbounds [6 x i8], ptr %buf.i1.i, i32 0, i32 2
  %31 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 532, ptr %buf.i1.i, align 2
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %shl.i.i, ptr %30, align 2
  %call.i.i4.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %buf.i1.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i4.i)
  %cmp5.not.i5.i = icmp eq i32 %call.i.i4.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i1.i) #7
  br i1 %cmp5.not.i5.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i7.i) #7
  %35 = getelementptr inbounds [6 x i8], ptr %buf.i7.i, i32 0, i32 2
  %36 = ptrtoint ptr %buf.i7.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 528, ptr %buf.i7.i, align 2
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %shl.i.i, ptr %35, align 2
  %call.i.i10.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buf.i7.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i10.i)
  %cmp5.not.i11.i = icmp eq i32 %call.i.i10.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i7.i) #7
  br i1 %cmp5.not.i11.i, label %if.end8.i, label %if.end4.i.sw.epilog_crit_edge

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i13.i) #7
  %40 = getelementptr inbounds [6 x i8], ptr %buf.i13.i, i32 0, i32 2
  %41 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 530, ptr %buf.i13.i, align 2
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %shl.i.i, ptr %40, align 2
  %call.i.i16.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %buf.i13.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i16.i)
  %cmp5.not.i17.i = icmp eq i32 %call.i.i16.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i13.i) #7
  %.call9.i = select i1 %cmp5.not.i17.i, i32 0, i32 -5
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %43 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val10, align 4
  %45 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i59) #7
  %47 = getelementptr inbounds [6 x i8], ptr %buf.i59, i32 0, i32 2
  %48 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1536, ptr %buf.i59, align 2
  %shl.i61 = shl i32 %44, 16
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %shl.i61, ptr %47, align 2
  %call.i.i62 = call i32 @i2c_transfer_buffer_flags(ptr noundef %46, ptr noundef nonnull %buf.i59, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i59) #7
  %50 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not = icmp eq i32 %51, 0
  %cond = select i1 %tobool.not, i32 50331648, i32 33554432
  %52 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i65) #7
  %54 = getelementptr inbounds [6 x i8], ptr %buf.i65, i32 0, i32 2
  %55 = ptrtoint ptr %buf.i65 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 257, ptr %buf.i65, align 2
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %cond, ptr %54, align 2
  %call.i.i68 = call i32 @i2c_transfer_buffer_flags(ptr noundef %53, ptr noundef nonnull %buf.i65, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i68)
  %cmp5.not.i69 = icmp eq i32 %call.i.i68, 3
  %retval.0.i70 = select i1 %cmp5.not.i69, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i65) #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %57 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool16.not = icmp eq i32 %58, 0
  %59 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_priv.i, align 4
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i71) #7
  %61 = getelementptr inbounds [6 x i8], ptr %buf.i71, i32 0, i32 2
  %62 = ptrtoint ptr %buf.i71 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 544, ptr %buf.i71, align 2
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 0, ptr %61, align 2
  %call.i.i73 = call i32 @i2c_transfer_buffer_flags(ptr noundef %60, ptr noundef nonnull %buf.i71, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i73)
  %cmp5.not.i74 = icmp eq i32 %call.i.i73, 3
  %retval.0.i75 = select i1 %cmp5.not.i74, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i71) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i76) #7
  %64 = getelementptr inbounds [6 x i8], ptr %buf.i76, i32 0, i32 2
  %65 = ptrtoint ptr %buf.i76 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 544, ptr %buf.i76, align 2
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 16777216, ptr %64, align 2
  %call.i.i78 = call i32 @i2c_transfer_buffer_flags(ptr noundef %60, ptr noundef nonnull %buf.i76, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i78)
  %cmp5.not.i79 = icmp eq i32 %call.i.i78, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i76) #7
  br i1 %cmp5.not.i79, label %if.end22, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i81) #7
  %69 = getelementptr inbounds [6 x i8], ptr %buf.i81, i32 0, i32 2
  %70 = ptrtoint ptr %buf.i81 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 546, ptr %buf.i81, align 2
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 536870912, ptr %69, align 2
  %call.i.i83 = call i32 @i2c_transfer_buffer_flags(ptr noundef %68, ptr noundef nonnull %buf.i81, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i83)
  %cmp5.not.i84 = icmp eq i32 %call.i.i83, 3
  %retval.0.i85 = select i1 %cmp5.not.i84, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i81) #7
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %5, i32 noundef %73) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end22, %if.else.sw.epilog_crit_edge, %if.then17, %sw.bb9, %if.end8.i, %if.end4.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %sw.bb3, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end ], [ -5, %if.else.sw.epilog_crit_edge ], [ %retval.0.i85, %if.end22 ], [ %retval.0.i75, %if.then17 ], [ %retval.0.i70, %sw.bb9 ], [ %retval.0.i57, %sw.bb3 ], [ %retval.0.i, %sw.bb ], [ -5, %sw.bb6.sw.epilog_crit_edge ], [ -5, %if.end.i.sw.epilog_crit_edge ], [ -5, %if.end4.i.sw.epilog_crit_edge ], [ %.call9.i, %if.end8.i ]
  %call.i86 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !152

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4208, ptr %5, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3118, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12298, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.imx258, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !147
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
  br i1 %cmp5.not.i.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx258_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.imx258, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @imx258_start_streaming(ptr noundef %1)
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
  br i1 %cmp5.not.i.i, label %error.imx258_stop_streaming.exit_crit_edge, label %do.end.i

error.imx258_stop_streaming.exit_crit_edge:       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx258_stop_streaming.exit

do.end.i:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #10
  br label %imx258_stop_streaming.exit

imx258_stop_streaming.exit:                       ; preds = %do.end.i, %error.imx258_stop_streaming.exit_crit_edge
  %9 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %imx258_stop_streaming.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %imx258_stop_streaming.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96, !98, !100, !101, !103, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_imx258__295_1389_imx258_i2c_driver_init6, !1, !"__initcall__kmod_imx258__295_1389_imx258_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/imx258.c", i32 1389, i32 1}
!2 = !{ptr @__exitcall_imx258_i2c_driver_exit, !1, !"__exitcall_imx258_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/imx258.c", i32 1391, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/imx258.c", i32 1392, i32 1}
!7 = !{ptr @__UNIQUE_ID_author298, !8, !"__UNIQUE_ID_author298", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/imx258.c", i32 1393, i32 1}
!9 = !{ptr @__UNIQUE_ID_description299, !10, !"__UNIQUE_ID_description299", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/imx258.c", i32 1394, i32 1}
!11 = !{ptr @__UNIQUE_ID_file300, !12, !"__UNIQUE_ID_file300", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/imx258.c", i32 1395, i32 1}
!13 = !{ptr @__UNIQUE_ID_license301, !12, !"__UNIQUE_ID_license301", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/imx258.c", i32 1380, i32 11}
!16 = !{ptr @imx258_i2c_driver, !17, !"imx258_i2c_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/imx258.c", i32 1378, i32 26}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/imx258.c", i32 1265, i32 10}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/imx258.c", i32 1267, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx258_probe.__UNIQUE_ID_ddebug294, !21, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/imx258.c", i32 1270, i32 42}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/imx258.c", i32 1275, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @imx258_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @imx258_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/imx258.c", i32 1283, i32 47}
!35 = !{ptr @imx258_subdev_ops, !36, !"imx258_subdev_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/imx258.c", i32 1138, i32 37}
!37 = !{ptr @imx258_video_ops, !38, !"imx258_video_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/imx258.c", i32 1127, i32 43}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/imx258.c", i32 956, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @imx258_start_streaming._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @imx258_start_streaming._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/imx258.c", i32 964, i32 3}
!46 = !{ptr @imx258_start_streaming._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx258_start_streaming._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/imx258.c", i32 972, i32 3}
!50 = !{ptr @imx258_start_streaming._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @imx258_start_streaming._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @link_freq_configs, !53, !"link_freq_configs", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/imx258.c", i32 549, i32 45}
!54 = !{ptr @mipi_data_rate_1267mbps, !55, !"mipi_data_rate_1267mbps", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/imx258.c", i32 120, i32 32}
!56 = !{ptr @mipi_data_rate_640mbps, !57, !"mipi_data_rate_640mbps", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/imx258.c", i32 138, i32 32}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/imx258.c", i32 697, i32 4}
!60 = !{ptr @imx258_write_regs._rs, !59, !"_rs", i1 false, i1 false}
!61 = !{ptr @__func__.imx258_write_regs, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @imx258_write_regs._entry, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx258_write_regs._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/imx258.c", i32 998, i32 3}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @imx258_stop_streaming._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @imx258_stop_streaming._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @imx258_pad_ops, !71, !"imx258_pad_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/imx258.c", i32 1131, i32 41}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!74 = !{ptr @link_freq_menu_items, !75, !"link_freq_menu_items", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/imx258.c", i32 543, i32 18}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/imx258.c", i32 1015, i32 3}
!78 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @imx258_power_on._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @imx258_power_on._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/imx258.c", i32 1113, i32 3}
!83 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @imx258_identify_module._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @imx258_identify_module._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/imx258.c", i32 1119, i32 3}
!88 = !{ptr @imx258_identify_module._entry.27, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @imx258_identify_module._entry_ptr.29, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @supported_modes, !91, !"supported_modes", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/imx258.c", i32 567, i32 33}
!92 = !{ptr @mode_4208x3118_regs, !93, !"mode_4208x3118_regs", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/imx258.c", i32 156, i32 32}
!94 = !{ptr @mode_2104_1560_regs, !95, !"mode_2104_1560_regs", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/imx258.c", i32 275, i32 32}
!96 = !{ptr @mode_1048_780_regs, !97, !"mode_1048_780_regs", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/imx258.c", i32 394, i32 32}
!98 = !{ptr @imx258_init_controls._key, !99, !"_key", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/imx258.c", i32 1159, i32 8}
!100 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @imx258_init_controls.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/imx258.c", i32 1163, i32 2}
!103 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/imx258.c", i32 1230, i32 3}
!106 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @imx258_init_controls._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @imx258_init_controls._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @imx258_ctrl_ops, !110, !"imx258_ctrl_ops", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/imx258.c", i32 818, i32 35}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/imx258.c", i32 806, i32 3}
!113 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @imx258_set_ctrl._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @imx258_set_ctrl._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/imx258.c", i32 514, i32 2}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/imx258.c", i32 515, i32 2}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/imx258.c", i32 516, i32 2}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/imx258.c", i32 517, i32 2}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/imx258.c", i32 518, i32 2}
!127 = !{ptr @imx258_test_pattern_menu, !128, !"imx258_test_pattern_menu", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/imx258.c", i32 513, i32 27}
!129 = !{ptr @imx258_internal_ops, !130, !"imx258_internal_ops", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/imx258.c", i32 1143, i32 46}
!131 = !{ptr @imx258_dt_ids, !132, !"imx258_dt_ids", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/imx258.c", i32 1372, i32 34}
!133 = !{ptr @imx258_pm_ops, !134, !"imx258_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/imx258.c", i32 1358, i32 32}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 2148977979, i64 2148977984, i64 2148977997, i64 2148978041, i64 2148978075, i64 2148978096}
!145 = !{i64 1517505, i64 1517532}
!146 = !{i64 1517845, i64 1517872, i64 1517906, i64 1517927}
!147 = !{i8 0, i8 2}
!148 = !{i64 2148333106}
!149 = !{i64 817929, i64 817954, i64 817976, i64 817992, i64 818004, i64 818024, i64 818048, i64 818064, i64 818076}
!150 = !{i64 2148333294}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{!"branch_weights", i32 1, i32 2000}
