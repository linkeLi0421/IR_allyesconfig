; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/imx208.c_pt.bc'
source_filename = "../drivers/media/i2c/imx208.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx208_mode = type { i32, i32, i32, i32, i32, %struct.imx208_reg_list }
%struct.imx208_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx208_link_freq_config = type { i32, %struct.imx208_reg_list }
%struct.imx208_reg = type { i16, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
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
%struct.imx208 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, [40 x i8], i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_imx208__294_1106_imx208_i2c_driver_init6 = internal global ptr @imx208_i2c_driver_init, section ".initcall6.init", align 4
@imx208_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @imx208_remove, ptr @imx208_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx208_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_imx208_i2c_driver_exit = internal global ptr @imx208_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [45 x i8] c"imx208.author=Yeh, Andy <andy.yeh@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [59 x i8] c"imx208.author=Chen, Ping-chung <ping-chung.chen@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [45 x i8] c"imx208.author=Shawn Tu <shawnx.tu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [45 x i8] c"imx208.description=Sony IMX208 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [37 x i8] c"imx208.file=drivers/media/i2c/imx208\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [22 x i8] c"imx208.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx208\00", [25 x i8] zeroinitializer }, align 32
@imx208_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx208_suspend, ptr @imx208_resume, ptr @imx208_suspend, ptr @imx208_resume, ptr @imx208_suspend, ptr @imx208_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bin_attr_otp = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 40, ptr null, ptr null, ptr @otp_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otp\00", [28 x i8] zeroinitializer }, align 32
@imx208_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 638, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read chip id %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx208_identify_module\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/imx208.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx208_identify_module._entry_ptr = internal global ptr @imx208_identify_module._entry, section ".printk_index", align 4
@imx208_identify_module._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip id mismatch: %x!=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@imx208_identify_module._entry_ptr.9 = internal global ptr @imx208_identify_module._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@imx208_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 988, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unsupported clock-frequency %u. Expected 19200000.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx208_probe\00", [19 x i8] zeroinitializer }, align 32
@imx208_probe._entry_ptr = internal global ptr @imx208_probe._entry, section ".printk_index", align 4
@imx208_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @imx208_video_ops, ptr null, ptr null, ptr null, ptr @imx208_pad_ops }, [32 x i8] zeroinitializer }, align 32
@imx208_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 1004, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find sensor: %d\00", [38 x i8] zeroinitializer }, align 32
@imx208_probe._entry_ptr.15 = internal global ptr @imx208_probe._entry.13, section ".printk_index", align 4
@supported_modes = internal constant { [2 x %struct.imx208_mode], [40 x i8] } { [2 x %struct.imx208_mode] [%struct.imx208_mode { i32 1936, i32 1096, i32 1138, i32 1112, i32 0, %struct.imx208_reg_list { i32 20, ptr @mode_1936x1096_60fps_regs } }, %struct.imx208_mode { i32 968, i32 548, i32 569, i32 560, i32 1, %struct.imx208_reg_list { i32 20, ptr @mode_968_548_60fps_regs } }], [40 x i8] zeroinitializer }, align 32
@imx208_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 1014, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@imx208_probe._entry_ptr.18 = internal global ptr @imx208_probe._entry.16, section ".printk_index", align 4
@imx208_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @imx208_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@imx208_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.4, i32 1027, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s failed:%d\0A\00", [18 x i8] zeroinitializer }, align 32
@imx208_probe._entry_ptr.21 = internal global ptr @imx208_probe._entry.19, section ".printk_index", align 4
@imx208_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.4, i32 1037, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sysfs otp creation failed\0A\00", [37 x i8] zeroinitializer }, align 32
@imx208_probe._entry_ptr.24 = internal global ptr @imx208_probe._entry.22, section ".printk_index", align 4
@imx208_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx208_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx208_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @imx208_enum_mbus_code, ptr @imx208_enum_frame_size, ptr null, ptr @imx208_get_pad_format, ptr @imx208_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@link_freq_configs = internal constant { [2 x %struct.imx208_link_freq_config], [40 x i8] } { [2 x %struct.imx208_link_freq_config] [%struct.imx208_link_freq_config { i32 2248, %struct.imx208_reg_list { i32 3, ptr @pll_ctrl_reg } }, %struct.imx208_link_freq_config { i32 2248, %struct.imx208_reg_list { i32 3, ptr @pll_ctrl_reg } }], [40 x i8] zeroinitializer }, align 32
@imx208_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 669, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set plls\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx208_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@imx208_start_streaming._entry_ptr = internal global ptr @imx208_start_streaming._entry, section ".printk_index", align 4
@imx208_start_streaming._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 677, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set mode\0A\00", [41 x i8] zeroinitializer }, align 32
@imx208_start_streaming._entry_ptr.29 = internal global ptr @imx208_start_streaming._entry.27, section ".printk_index", align 4
@pll_ctrl_reg = internal constant { [3 x %struct.imx208_reg], [20 x i8] } { [3 x %struct.imx208_reg] [%struct.imx208_reg { i16 773, i8 2 }, %struct.imx208_reg { i16 775, i8 80 }, %struct.imx208_reg { i16 12348, i8 60 }], [20 x i8] zeroinitializer }, align 32
@imx208_write_regs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.imx208_write_regs = private unnamed_addr constant [18 x i8] c"imx208_write_regs\00", align 1
@imx208_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.imx208_write_regs, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write reg 0x%4.4x. error = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@imx208_write_regs._entry_ptr = internal global ptr @imx208_write_regs._entry, section ".printk_index", align 4
@imx208_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 701, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s failed to set stream\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx208_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@imx208_stop_streaming._entry_ptr = internal global ptr @imx208_stop_streaming._entry, section ".printk_index", align 4
@imx208_get_format_code.codes = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 12303, i32 12298], [2 x i32] [i32 12302, i32 12295]], [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@link_freq_menu_items = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 384000000, i64 96000000], [16 x i8] zeroinitializer }, align 32
@mode_1936x1096_60fps_regs = internal constant { [20 x %struct.imx208_reg], [48 x i8] } { [20 x %struct.imx208_reg] [%struct.imx208_reg { i16 832, i8 4 }, %struct.imx208_reg { i16 833, i8 114 }, %struct.imx208_reg { i16 834, i8 4 }, %struct.imx208_reg { i16 835, i8 100 }, %struct.imx208_reg { i16 844, i8 7 }, %struct.imx208_reg { i16 845, i8 -112 }, %struct.imx208_reg { i16 846, i8 4 }, %struct.imx208_reg { i16 847, i8 72 }, %struct.imx208_reg { i16 897, i8 1 }, %struct.imx208_reg { i16 899, i8 1 }, %struct.imx208_reg { i16 901, i8 1 }, %struct.imx208_reg { i16 903, i8 1 }, %struct.imx208_reg { i16 12360, i8 0 }, %struct.imx208_reg { i16 12368, i8 1 }, %struct.imx208_reg { i16 12501, i8 0 }, %struct.imx208_reg { i16 13057, i8 0 }, %struct.imx208_reg { i16 13080, i8 98 }, %struct.imx208_reg { i16 514, i8 1 }, %struct.imx208_reg { i16 515, i8 -112 }, %struct.imx208_reg { i16 517, i8 0 }], [48 x i8] zeroinitializer }, align 32
@mode_968_548_60fps_regs = internal constant { [20 x %struct.imx208_reg], [48 x i8] } { [20 x %struct.imx208_reg] [%struct.imx208_reg { i16 832, i8 2 }, %struct.imx208_reg { i16 833, i8 57 }, %struct.imx208_reg { i16 834, i8 8 }, %struct.imx208_reg { i16 835, i8 -56 }, %struct.imx208_reg { i16 844, i8 3 }, %struct.imx208_reg { i16 845, i8 -56 }, %struct.imx208_reg { i16 846, i8 2 }, %struct.imx208_reg { i16 847, i8 36 }, %struct.imx208_reg { i16 897, i8 1 }, %struct.imx208_reg { i16 899, i8 3 }, %struct.imx208_reg { i16 901, i8 1 }, %struct.imx208_reg { i16 903, i8 3 }, %struct.imx208_reg { i16 12360, i8 1 }, %struct.imx208_reg { i16 12368, i8 2 }, %struct.imx208_reg { i16 12501, i8 3 }, %struct.imx208_reg { i16 13057, i8 16 }, %struct.imx208_reg { i16 13080, i8 117 }, %struct.imx208_reg { i16 514, i8 1 }, %struct.imx208_reg { i16 515, i8 -112 }, %struct.imx208_reg { i16 517, i8 0 }], [48 x i8] zeroinitializer }, align 32
@imx208_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"imx208:890:(ctrl_hdlr)->_lock\00", [34 x i8] zeroinitializer }, align 32
@imx208_init_controls.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&imx208->imx208_mx\00", [45 x i8] zeroinitializer }, align 32
@imx208_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @imx208_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@imx208_digital_gain_control = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @imx208_ctrl_ops, ptr null, i32 10422533, ptr @.str.41, i32 9, i64 0, i64 4, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr @imx208_discrete_digital_gain, i8 0 }, [48 x i8] zeroinitializer }, align 32
@imx208_test_pattern_menu = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [52 x i8] zeroinitializer }, align 32
@imx208_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 957, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s control init failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx208_init_controls\00", [43 x i8] zeroinitializer }, align 32
@imx208_init_controls._entry_ptr = internal global ptr @imx208_init_controls._entry, section ".printk_index", align 4
@imx208_test_pattern_val = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 256, i32 257, i32 258, i32 259, i32 260, i32 261], [52 x i8] zeroinitializer }, align 32
@imx208_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 479, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ctrl(id:0x%x,val:0x%x) is not handled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx208_set_ctrl\00", [16 x i8] zeroinitializer }, align 32
@imx208_set_ctrl._entry_ptr = internal global ptr @imx208_set_ctrl._entry, section ".printk_index", align 4
@imx208_discrete_digital_gain = internal constant { [5 x i64], [56 x i8] } { [5 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16], [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Digital Gain\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Solid Color\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"100% Color Bar\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fade to Grey Color Bar\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PN9\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fixed Pattern1\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fixed Pattern2\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fixed Pattern3\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fixed Pattern4\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fixed Pattern5\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fixed Pattern6\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 9963793, i64 9963796, i64 9963797, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"imx208_i2c_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1095, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1097, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"imx208_pm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1082, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"bin_attr_otp\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 876, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 637, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 643, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 984, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 986, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"imx208_subdev_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 801, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1004, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 245, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1014, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"imx208_internal_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 806, i32 46 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1027, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1037, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"imx208_video_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 790, i32 43 }
@___asan_gen_.140 = private unnamed_addr constant [15 x i8] c"imx208_pad_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 794, i32 41 }
@___asan_gen_.143 = private unnamed_addr constant [18 x i8] c"link_freq_configs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 227, i32 45 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 669, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 677, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"pll_ctrl_reg\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 110, i32 32 }
@___asan_gen_.164 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 386, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 701, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 316, i32 19 }
@___asan_gen_.189 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 998, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 221, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant [26 x i8] c"mode_1936x1096_60fps_regs\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 116, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant [24 x i8] c"mode_968_548_60fps_regs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 139, i32 32 }
@___asan_gen_.200 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 890, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 894, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [16 x i8] c"imx208_ctrl_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 488, i32 35 }
@___asan_gen_.215 = private unnamed_addr constant [28 x i8] c"imx208_digital_gain_control\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 492, i32 38 }
@___asan_gen_.218 = private unnamed_addr constant [25 x i8] c"imx208_test_pattern_menu\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 166, i32 27 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 956, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [24 x i8] c"imx208_test_pattern_val\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 180, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 477, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [29 x i8] c"imx208_discrete_digital_gain\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 162, i32 18 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 495, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 167, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 168, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 169, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 170, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 171, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 172, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 173, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 174, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 175, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 176, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private constant [30 x i8] c"../drivers/media/i2c/imx208.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 177, i32 2 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_imx208_i2c_driver_exit, ptr @__initcall__kmod_imx208__294_1106_imx208_i2c_driver_init6, ptr @imx208_i2c_driver_exit, ptr @imx208_identify_module._entry, ptr @imx208_identify_module._entry.7, ptr @imx208_identify_module._entry_ptr, ptr @imx208_identify_module._entry_ptr.9, ptr @imx208_init_controls._entry, ptr @imx208_init_controls._entry_ptr, ptr @imx208_probe._entry, ptr @imx208_probe._entry.13, ptr @imx208_probe._entry.16, ptr @imx208_probe._entry.19, ptr @imx208_probe._entry.22, ptr @imx208_probe._entry_ptr, ptr @imx208_probe._entry_ptr.15, ptr @imx208_probe._entry_ptr.18, ptr @imx208_probe._entry_ptr.21, ptr @imx208_probe._entry_ptr.24, ptr @imx208_set_ctrl._entry, ptr @imx208_set_ctrl._entry_ptr, ptr @imx208_start_streaming._entry, ptr @imx208_start_streaming._entry.27, ptr @imx208_start_streaming._entry_ptr, ptr @imx208_start_streaming._entry_ptr.29, ptr @imx208_stop_streaming._entry, ptr @imx208_stop_streaming._entry_ptr, ptr @imx208_write_regs._entry, ptr @imx208_write_regs._entry_ptr, ptr @imx208_i2c_driver, ptr @.str, ptr @imx208_pm_ops, ptr @bin_attr_otp, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @imx208_subdev_ops, ptr @.str.14, ptr @supported_modes, ptr @.str.17, ptr @imx208_internal_ops, ptr @.str.20, ptr @.str.23, ptr @imx208_video_ops, ptr @imx208_pad_ops, ptr @link_freq_configs, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @pll_ctrl_reg, ptr @imx208_write_regs._rs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @imx208_get_format_code.codes, ptr @.str.34, ptr @link_freq_menu_items, ptr @mode_1936x1096_60fps_regs, ptr @mode_968_548_60fps_regs, ptr @imx208_init_controls._key, ptr @.str.35, ptr @imx208_init_controls.__key, ptr @.str.36, ptr @imx208_ctrl_ops, ptr @imx208_digital_gain_control, ptr @imx208_test_pattern_menu, ptr @.str.37, ptr @.str.38, ptr @imx208_test_pattern_val, ptr @.str.39, ptr @.str.40, ptr @imx208_discrete_digital_gain, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_otp to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_identify_module._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_configs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_start_streaming._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ctrl_reg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_write_regs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_get_format_code.codes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1936x1096_60fps_regs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_968_548_60fps_regs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_init_controls.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_digital_gain_control to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_test_pattern_menu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_test_pattern_val to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx208_discrete_digital_gain to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @imx208_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx208_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @imx208_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @device_remove_bin_file(ptr noundef %dev, ptr noundef nonnull @bin_attr_otp) #7
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler.i, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %imx208_mx = getelementptr inbounds %struct.imx208, ptr %1, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %imx208_mx) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_probe(ptr noundef %client) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %val, i32 noundef 1) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %2)
  %cmp.not = icmp eq i32 %2, 19200000
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i106 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 576, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i106, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i106, ptr noundef %client, ptr noundef nonnull @imx208_subdev_ops) #7
  %call10 = call fastcc i32 @imx208_identify_module(ptr noundef nonnull %call.i106)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call10) #10
  br label %error_probe

if.end18:                                         ; preds = %if.end5
  %cur_mode = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 9
  %3 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i106, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 2
  %call1.i = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 8, ptr noundef nonnull @imx208_init_controls._key, ptr noundef nonnull @.str.35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end18.do.end24_crit_edge

if.end18.do.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.body.i:                                        ; preds = %if.end18
  %imx208_mx.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 10
  call void @__mutex_init(ptr noundef %imx208_mx.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @imx208_init_controls.__key) #7
  %lock.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %imx208_mx.i, ptr %lock.i, align 4
  %call3.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #7
  %link_freq.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 3
  %7 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3.i, ptr %link_freq.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %do.body.i.if.end8.i_crit_edge, label %if.then6.i

do.body.i.if.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call3.i, i32 0, i32 20
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %9, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %do.body.i.if.end8.i_crit_edge
  %10 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 768000000, i64 3689348814741910323) #11, !srcloc !162
  %11 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 768000000, i64 %10) #11, !srcloc !163
  %12 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 192000000, i64 3689348814741910323) #11, !srcloc !162
  %13 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 192000000, i64 %12) #11, !srcloc !163
  %call11.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_ctrl_ops, i32 noundef 10422530, i64 noundef %13, i64 noundef %11, i64 noundef 1, i64 noundef %11) #7
  %pixel_rate.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 4
  %14 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11.i, ptr %pixel_rate.i, align 4
  %15 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_mode, align 4
  %vts_def.i = getelementptr inbounds %struct.imx208_mode, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vts_def.i, align 4
  %height.i = getelementptr inbounds %struct.imx208_mode, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %sub.i = sub i32 %18, %20
  %conv.i = zext i32 %sub.i to i64
  %vts_min.i = getelementptr inbounds %struct.imx208_mode, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %vts_min.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vts_min.i, align 4
  %sub16.i = sub i32 %22, %20
  %conv17.i = zext i32 %sub16.i to i64
  %sub20.i = sub i32 65535, %20
  %conv21.i = zext i32 %sub20.i to i64
  %call22.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_ctrl_ops, i32 noundef 10356993, i64 noundef %conv17.i, i64 noundef %conv21.i, i64 noundef 1, i64 noundef %conv.i) #7
  %vblank.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 5
  %23 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call22.i, ptr %vblank.i, align 4
  %24 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_mode, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %sub24.i = sub i32 2248, %27
  %conv25.i = zext i32 %sub24.i to i64
  %call34.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_ctrl_ops, i32 noundef 10356994, i64 noundef %conv25.i, i64 noundef %conv25.i, i64 noundef 1, i64 noundef %conv25.i) #7
  %hblank.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 6
  %28 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call34.i, ptr %hblank.i, align 4
  %tobool36.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool36.not.i, label %if.end8.i.if.end41.i_crit_edge, label %if.then37.i

if.end8.i.if.end41.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags39.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call34.i, i32 0, i32 20
  %29 = ptrtoint ptr %flags39.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags39.i, align 4
  %or40.i = or i32 %30, 4
  store i32 %or40.i, ptr %flags39.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end8.i.if.end41.i_crit_edge
  %31 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_mode, align 4
  %vts_def43.i = getelementptr inbounds %struct.imx208_mode, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %vts_def43.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vts_def43.i, align 4
  %sub44.i = add i32 %34, -8
  %conv45.i = zext i32 %sub44.i to i64
  %call46.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv45.i, i64 noundef 1, i64 noundef 400) #7
  %call47.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %hflip.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 8
  %35 = ptrtoint ptr %hflip.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call47.i, ptr %hflip.i, align 4
  %call48.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 7
  %36 = ptrtoint ptr %vflip.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call48.i, ptr %vflip.i, align 4
  %call49.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 224, i64 noundef 1, i64 noundef 0) #7
  %call50.i = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_digital_gain_control, ptr noundef null) #7
  %call51.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @imx208_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 10, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @imx208_test_pattern_menu) #7
  %error.i = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 2, i32 9
  %37 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool52.not.i = icmp eq i32 %38, 0
  br i1 %tobool52.not.i, label %if.end26, label %if.then53.i

if.then53.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %38) #10
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #7
  call void @mutex_destroy(ptr noundef %imx208_mx.i) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then53.i, %if.end18.do.end24_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end18.do.end24_crit_edge ], [ %38, %if.then53.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i.ph) #10
  br label %error_probe

if.end26:                                         ; preds = %if.end41.i
  %ctrl_handler60.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i106, i32 0, i32 8
  %39 = ptrtoint ptr %ctrl_handler60.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ctrl_handler.i, ptr %ctrl_handler60.i, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i106, i32 0, i32 7
  %40 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @imx208_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i106, i32 0, i32 4
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %or = or i32 %42, 4
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i106, i32 0, i32 3
  %43 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 1
  %flags30 = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %flags30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %flags30, align 4
  %call34 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i106, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, i32 noundef %call34) #10
  br label %error_handler_free

if.end41:                                         ; preds = %if.end26
  %call43 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i106) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end41.error_handler_free_crit_edge, label %if.end46

if.end41.error_handler_free_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_handler_free

if.end46:                                         ; preds = %if.end41
  %call48 = call i32 @device_create_bin_file(ptr noundef %dev, ptr noundef nonnull @bin_attr_otp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then57, label %do.end53

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  call void @v4l2_async_unregister_subdev(ptr noundef nonnull %call.i106) #7
  br label %error_handler_free

if.then57:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call.i107 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i108 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #7
  br label %cleanup

error_handler_free:                               ; preds = %do.end53, %if.end41.error_handler_free_crit_edge, %do.end39
  %ret.1 = phi i32 [ %call34, %do.end39 ], [ %call43, %if.end41.error_handler_free_crit_edge ], [ %call48, %do.end53 ]
  %45 = ptrtoint ptr %ctrl_handler60.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_handler60.i, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %46) #7
  br label %error_probe

error_probe:                                      ; preds = %error_handler_free, %do.end24, %do.end15
  %ret.2 = phi i32 [ %call10, %do.end15 ], [ %retval.0.i.ph, %do.end24 ], [ %ret.1, %error_handler_free ]
  %imx208_mx = getelementptr inbounds %struct.imx208, ptr %call.i106, i32 0, i32 10
  call void @mutex_destroy(ptr noundef %imx208_mx) #7
  br label %cleanup

cleanup:                                          ; preds = %error_probe, %if.then57, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.2, %error_probe ], [ 0, %if.then57 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otp_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %kobj, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %4 = call ptr @memset(ptr %msgs.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i) #7
  %5 = ptrtoint ptr %addr_buf.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 13568, ptr %addr_buf.i, align 2
  %imx208_mx.i = getelementptr inbounds %struct.imx208, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %imx208_mx.i, i32 noundef 0) #7
  %otp_read.i = getelementptr inbounds %struct.imx208, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %otp_read.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %otp_read.i, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %imx208_read_otp.exit.thread12

imx208_read_otp.exit.thread12:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %imx208_mx.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then2.i.imx208_read_otp.exit.thread_crit_edge, label %do.end11.i.i.i.i.i

if.then2.i.imx208_read_otp.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx208_read_otp.exit.thread

do.end11.i.i.i.i.i:                               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !167
  br label %imx208_read_otp.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call fastcc i32 @imx208_identify_module(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.imx208_read_otp.exit_crit_edge

if.end4.i.imx208_read_otp.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx208_read_otp.exit

if.end8.i:                                        ; preds = %if.end4.i
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
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
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 2
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %len.i, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %addr_buf.i, ptr %buf.i, align 4
  %15 = load i16, ptr %addr.i, align 2
  %arrayidx14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx14.i, align 4
  %flags17.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %flags17.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags17.i, align 2
  %len19.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %len19.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 40, ptr %len19.i, align 4
  %otp_data.i = getelementptr inbounds %struct.imx208, ptr %1, i32 0, i32 13
  %buf22.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %buf22.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %otp_data.i, ptr %buf22.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call24.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call24.i)
  %cmp25.i = icmp eq i32 %call24.i, 2
  br i1 %cmp25.i, label %if.then26.i, label %if.end8.i.imx208_read_otp.exit_crit_edge

if.end8.i.imx208_read_otp.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx208_read_otp.exit

if.then26.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %otp_read.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %otp_read.i, align 1
  br label %imx208_read_otp.exit

imx208_read_otp.exit.thread:                      ; preds = %do.end11.i.i.i.i.i, %if.then2.i.imx208_read_otp.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %imx208_mx.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  br label %cleanup

imx208_read_otp.exit:                             ; preds = %if.then26.i, %if.end8.i.imx208_read_otp.exit_crit_edge, %if.end4.i.imx208_read_otp.exit_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %if.end4.i.imx208_read_otp.exit_crit_edge ], [ 0, %if.then26.i ], [ %call24.i, %if.end8.i.imx208_read_otp.exit_crit_edge ]
  %call.i46.i = call i32 @__pm_runtime_idle(ptr noundef %dev.i, i32 noundef 5) #7
  call void @mutex_unlock(ptr noundef %imx208_mx.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %imx208_read_otp.exit.if.end_crit_edge, label %imx208_read_otp.exit.cleanup_crit_edge

imx208_read_otp.exit.cleanup_crit_edge:           ; preds = %imx208_read_otp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

imx208_read_otp.exit.if.end_crit_edge:            ; preds = %imx208_read_otp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %imx208_read_otp.exit.if.end_crit_edge, %imx208_read_otp.exit.thread12
  %idxprom = trunc i64 %off to i32
  %arrayidx = getelementptr %struct.imx208, ptr %1, i32 0, i32 13, i32 %idxprom
  %23 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %imx208_read_otp.exit.cleanup_crit_edge, %imx208_read_otp.exit.thread
  %retval.0 = phi i32 [ %count, %if.end ], [ %ret.0.i, %imx208_read_otp.exit.cleanup_crit_edge ], [ %call.i.i, %imx208_read_otp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx208_identify_module(ptr nocapture noundef %imx208) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i = alloca [2 x i8], align 1
  %data_buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %imx208, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %identified = getelementptr inbounds %struct.imx208, ptr %imx208, i32 0, i32 14
  %2 = ptrtoint ptr %identified to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %identified, align 2, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i) #7
  %6 = getelementptr inbounds [2 x i8], ptr %addr_buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %addr_buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %addr_buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i) #7
  %9 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data_buf.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
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
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.i, align 8
  %call22.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call22.i)
  %cmp23.not.i = icmp eq i32 %call22.i, 2
  br i1 %cmp23.not.i, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 520) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %23 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 520, i32 %24)
  %cmp.not = icmp eq i32 %24, 520
  br i1 %cmp.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.8, i32 noundef 520, i32 noundef %24) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %identified to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %identified, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end8 ], [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %imx208_mx = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %imx208_mx, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !164
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %imx208_mx) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4 = icmp ne i32 %enable, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %if.then5.err_rpm_put_crit_edge, label %if.end10

if.then5.err_rpm_put_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rpm_put

if.end10:                                         ; preds = %if.then5
  %call11 = tail call fastcc i32 @imx208_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %if.end10.err_rpm_put_crit_edge

if.end10.err_rpm_put_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rpm_put

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else:                                          ; preds = %if.end
  %5 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %7 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %buf.i.i, align 2
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %7, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %if.else.imx208_stop_streaming.exit_crit_edge, label %do.end.i

if.else.imx208_stop_streaming.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx208_stop_streaming.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #10
  br label %imx208_stop_streaming.exit

imx208_stop_streaming.exit:                       ; preds = %do.end.i, %if.else.imx208_stop_streaming.exit_crit_edge
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i48 = call i32 @__pm_runtime_idle(ptr noundef %dev16, i32 noundef 5) #7
  br label %if.end18

if.end18:                                         ; preds = %imx208_stop_streaming.exit, %if.end10.if.end18_crit_edge
  %frombool = zext i1 %tobool4 to i8
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %imx208_mx) #7
  %vflip = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 7
  %11 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vflip, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end18.v4l2_ctrl_grab.exit_crit_edge, label %if.end.i

if.end18.v4l2_ctrl_grab.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_ctrl_grab.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %16, i32 noundef 0) #7
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %12, i1 noundef zeroext %tobool4) #7
  %17 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handler.i.i, align 8
  %lock.i6.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %lock.i6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock.i6.i, align 4
  call void @mutex_unlock(ptr noundef %20) #7
  br label %v4l2_ctrl_grab.exit

v4l2_ctrl_grab.exit:                              ; preds = %if.end.i, %if.end18.v4l2_ctrl_grab.exit_crit_edge
  %hflip = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 8
  %21 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hflip, align 4
  %tobool.not.i49 = icmp eq ptr %22, null
  br i1 %tobool.not.i49, label %v4l2_ctrl_grab.exit.cleanup_crit_edge, label %if.end.i53

v4l2_ctrl_grab.exit.cleanup_crit_edge:            ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i53:                                       ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %handler.i.i50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler.i.i50, align 8
  %lock.i.i51 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lock.i.i51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock.i.i51, align 4
  call void @mutex_lock_nested(ptr noundef %26, i32 noundef 0) #7
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %22, i1 noundef zeroext %tobool4) #7
  %27 = ptrtoint ptr %handler.i.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handler.i.i50, align 8
  %lock.i6.i52 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %lock.i6.i52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lock.i6.i52, align 4
  call void @mutex_unlock(ptr noundef %30) #7
  br label %cleanup

err_rpm_put:                                      ; preds = %if.end10.err_rpm_put_crit_edge, %if.then5.err_rpm_put_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then5.err_rpm_put_crit_edge ], [ %call11, %if.end10.err_rpm_put_crit_edge ]
  %call.i55 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  tail call void @mutex_unlock(ptr noundef %imx208_mx) #7
  br label %cleanup

cleanup:                                          ; preds = %err_rpm_put, %if.end.i53, %v4l2_ctrl_grab.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %err_rpm_put ], [ 0, %v4l2_ctrl_grab.exit.cleanup_crit_edge ], [ 0, %if.end.i53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx208_start_streaming(ptr nocapture noundef %imx208) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  %buf.i.i47 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %imx208, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call fastcc i32 @imx208_identify_module(ptr noundef %imx208)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_mode = getelementptr inbounds %struct.imx208, ptr %imx208, i32 0, i32 9
  %2 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_mode, align 4
  %link_freq_index2 = getelementptr inbounds %struct.imx208_mode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %link_freq_index2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_freq_index2, align 4
  %reg_list3 = getelementptr [2 x %struct.imx208_link_freq_config], ptr @link_freq_configs, i32 0, i32 %5, i32 1
  %regs = getelementptr [2 x %struct.imx208_link_freq_config], ptr @link_freq_configs, i32 0, i32 %5, i32 1, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = ptrtoint ptr %reg_list3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_list3, align 4
  %10 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24.not.i = icmp eq i32 %9, 0
  br i1 %cmp24.not.i, label %if.end.if.end7_crit_edge, label %for.body.lr.ph.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %if.end
  %12 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.if.end7_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.end7_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx208_reg, ptr %7, i32 %i.025.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %val.i = getelementptr %struct.imx208_reg, ptr %7, i32 %i.025.i, i32 1
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val.i, align 2
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %14, ptr %buf.i.i, align 2
  %shl.i.i = shl nuw i32 %conv.i, 24
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %shl.i.i, ptr %12, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %for.cond.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @imx208_write_regs._rs, ptr noundef nonnull @__func__.imx208_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end_crit_edge, label %do.end.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 2
  %conv9.i = zext i16 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %conv9.i, i32 noundef -5) #10
  br label %do.end

do.end:                                           ; preds = %do.end.i, %do.body.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end7:                                          ; preds = %for.cond.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %23 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_mode, align 4
  %reg_list9 = getelementptr inbounds %struct.imx208_mode, ptr %24, i32 0, i32 5
  %regs10 = getelementptr inbounds %struct.imx208_mode, ptr %24, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs10, align 4
  %27 = ptrtoint ptr %reg_list9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_list9, align 4
  %29 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp24.not.i49 = icmp eq i32 %28, 0
  br i1 %cmp24.not.i49, label %if.end7.if.end19_crit_edge, label %for.body.lr.ph.i50

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body.lr.ph.i50:                               ; preds = %if.end7
  %31 = getelementptr inbounds [6 x i8], ptr %buf.i.i47, i32 0, i32 2
  br label %for.body.i61

for.cond.i53:                                     ; preds = %for.body.i61
  %inc.i51 = add nuw i32 %i.025.i54, 1
  %exitcond.not.i52 = icmp eq i32 %inc.i51, %28
  br i1 %exitcond.not.i52, label %for.cond.i53.if.end19_crit_edge, label %for.cond.i53.for.body.i61_crit_edge

for.cond.i53.for.body.i61_crit_edge:              ; preds = %for.cond.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i61

for.cond.i53.if.end19_crit_edge:                  ; preds = %for.cond.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body.i61:                                     ; preds = %for.cond.i53.for.body.i61_crit_edge, %for.body.lr.ph.i50
  %i.025.i54 = phi i32 [ 0, %for.body.lr.ph.i50 ], [ %inc.i51, %for.cond.i53.for.body.i61_crit_edge ]
  %arrayidx.i55 = getelementptr %struct.imx208_reg, ptr %26, i32 %i.025.i54
  %32 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i55, align 2
  %val.i56 = getelementptr %struct.imx208_reg, ptr %26, i32 %i.025.i54, i32 1
  %34 = ptrtoint ptr %val.i56 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %val.i56, align 2
  %conv.i57 = zext i8 %35 to i32
  %36 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i47) #7
  %38 = ptrtoint ptr %buf.i.i47 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %33, ptr %buf.i.i47, align 2
  %shl.i.i58 = shl nuw i32 %conv.i57, 24
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %shl.i.i58, ptr %31, align 2
  %call.i.i.i59 = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %buf.i.i47, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i59)
  %cmp5.not.i.i60 = icmp eq i32 %call.i.i.i59, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i47) #7
  br i1 %cmp5.not.i.i60, label %for.cond.i53, label %do.body.i64

do.body.i64:                                      ; preds = %for.body.i61
  %call3.i62 = call i32 @___ratelimit(ptr noundef nonnull @imx208_write_regs._rs, ptr noundef nonnull @__func__.imx208_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i62)
  %tobool4.not.i63 = icmp eq i32 %call3.i62, 0
  br i1 %tobool4.not.i63, label %do.body.i64.do.end17_crit_edge, label %do.end.i67

do.body.i64.do.end17_crit_edge:                   ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end.i67:                                       ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i65 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  %40 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i55, align 2
  %conv9.i66 = zext i16 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i65, ptr noundef nonnull @.str.31, i32 noundef %conv9.i66, i32 noundef -5) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end.i67, %do.body.i64.do.end17_crit_edge
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end19:                                         ; preds = %for.cond.i53.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %imx208, i32 0, i32 8
  %42 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctrl_handler, align 4
  %call21 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %46 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %47 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 256, ptr %buf.i, align 2
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 16777216, ptr %46, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %45, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 3
  %retval.0.i71 = select i1 %cmp5.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end17 ], [ %retval.0.i71, %if.end24 ], [ %call1, %entry.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx208_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
  %vflip.i = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vflip.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 8
  %6 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hflip.i, align 4
  %val1.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val1.i, align 4
  %arrayidx2.i = getelementptr [2 x [2 x i32]], ptr @imx208_get_format_code.codes, i32 0, i32 %5, i32 %9
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %12 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx208_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %vflip.i = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 7
  %4 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vflip.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 8
  %8 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hflip.i, align 4
  %val1.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val1.i, align 4
  %arrayidx2.i = getelementptr [2 x [2 x i32]], ptr @imx208_get_format_code.codes, i32 0, i32 %7, i32 %11
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %13)
  %cmp2.not = icmp eq i32 %3, %13
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x %struct.imx208_mode], ptr @supported_modes, i32 0, i32 %1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %16 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %17 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %max_width, align 4
  %height = getelementptr [2 x %struct.imx208_mode], ptr @supported_modes, i32 0, i32 %1, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %20 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %21 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %imx208_mx = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %imx208_mx, i32 noundef 0) #7
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !168

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  %8 = call ptr @memcpy(ptr %format.i, ptr %arrayidx.i.i, i32 48)
  br label %__imx208_get_pad_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode.i = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 9
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
  %height.i.i = getelementptr inbounds %struct.imx208_mode, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i.i, align 4
  %height3.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height3.i.i, align 4
  %vflip.i.i.i = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 7
  %17 = ptrtoint ptr %vflip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vflip.i.i.i, align 4
  %val.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.i.i, align 4
  %hflip.i.i.i = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 8
  %21 = ptrtoint ptr %hflip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hflip.i.i.i, align 4
  %val1.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %val1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val1.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr [2 x [2 x i32]], ptr @imx208_get_format_code.codes, i32 0, i32 %20, i32 %24
  %25 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %code.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field.i.i, align 4
  br label %__imx208_get_pad_format.exit

__imx208_get_pad_format.exit:                     ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  tail call void @mutex_unlock(ptr noundef %imx208_mx) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %imx208_mx = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %imx208_mx, i32 noundef 0) #7
  %vflip.i = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 7
  %0 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vflip.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 8
  %4 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hflip.i, align 4
  %val1.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val1.i, align 4
  %arrayidx2.i = getelementptr [2 x [2 x i32]], ptr @imx208_get_format_code.codes, i32 0, i32 %3, i32 %7
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %code, align 4
  %11 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %call4 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 2, i32 noundef 28, i32 noundef 0, i32 noundef 4, i32 noundef %12, i32 noundef %14) #7
  %15 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call4, align 4
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.imx208_mode, ptr %call4, i32 0, i32 1
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height.i, align 4
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height, align 4
  %21 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vflip.i, align 4
  %val.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i.i, align 4
  %25 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hflip.i, align 4
  %val1.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %val1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val1.i.i, align 4
  %arrayidx2.i.i = getelementptr [2 x [2 x i32]], ptr @imx208_get_format_code.codes, i32 0, i32 %24, i32 %28
  %29 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.i.i, align 4
  %31 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %code, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %field.i, align 4
  %33 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp eq i32 %34, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %35 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %37 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %36, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !168

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %36, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %39 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %40, i32 %spec.select.i
  %41 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 9
  %42 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call4, ptr %cur_mode, align 4
  %link_freq7 = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 3
  %43 = ptrtoint ptr %link_freq7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %link_freq7, align 4
  %link_freq_index = getelementptr inbounds %struct.imx208_mode, ptr %call4, i32 0, i32 4
  %45 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %link_freq_index, align 4
  %call8 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %44, i32 noundef %46) #7
  %47 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %link_freq_index, align 4
  %arrayidx = getelementptr [2 x i64], ptr @link_freq_menu_items, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx, align 8
  %51 = shl i64 %50, 1
  %div80260.i = and i64 %51, 9223372036854775806
  %52 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div80260.i, i64 3689348814741910323) #11, !srcloc !162
  %53 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div80260.i, i64 %52) #11, !srcloc !163
  %pixel_rate11 = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 4
  %54 = ptrtoint ptr %pixel_rate11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pixel_rate11, align 4
  %call12 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %55, i64 noundef %53) #7
  %56 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cur_mode, align 4
  %vts_def = getelementptr inbounds %struct.imx208_mode, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vts_def, align 4
  %height15 = getelementptr inbounds %struct.imx208_mode, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %height15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height15, align 4
  %sub = sub i32 %59, %61
  %vts_min = getelementptr inbounds %struct.imx208_mode, ptr %57, i32 0, i32 3
  %62 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vts_min, align 4
  %sub19 = sub i32 %63, %61
  %vblank = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 5
  %64 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vblank, align 4
  %conv = sext i32 %sub19 to i64
  %sub22 = sub i32 65535, %61
  %conv23 = zext i32 %sub22 to i64
  %conv24 = sext i32 %sub to i64
  %call25 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %65, i64 noundef %conv, i64 noundef %conv23, i64 noundef 1, i64 noundef %conv24) #7
  %66 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vblank, align 4
  %call27 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %67, i32 noundef %sub) #7
  %68 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %link_freq_index, align 4
  %arrayidx29 = getelementptr [2 x %struct.imx208_link_freq_config], ptr @link_freq_configs, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx29, align 4
  %72 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur_mode, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %sub32 = sub i32 %71, %75
  %conv33 = zext i32 %sub32 to i64
  %hblank = getelementptr inbounds %struct.imx208, ptr %sd, i32 0, i32 6
  %76 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hblank, align 4
  %call34 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %77, i64 noundef %conv33, i64 noundef %conv33, i64 noundef 1, i64 noundef %conv33) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %imx208_mx) #7
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
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i64 = alloca [6 x i8], align 2
  %buf.i58 = alloca [6 x i8], align 2
  %buf.i52 = alloca [6 x i8], align 2
  %buf.i13.i = alloca [6 x i8], align 2
  %buf.i7.i = alloca [6 x i8], align 2
  %buf.i1.i = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  %buf.i45 = alloca [6 x i8], align 2
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
  %tobool.not = icmp eq i32 %call.i, 0
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
  switch i32 %5, label %sw.default [
    i32 10356995, label %sw.bb
    i32 9963793, label %sw.bb3
    i32 10422533, label %sw.bb6
    i32 10356993, label %sw.bb9
    i32 10422531, label %sw.bb12
    i32 9963796, label %if.end.sw.bb15_crit_edge
    i32 9963797, label %if.end.sw.bb15_crit_edge71
  ]

if.end.sw.bb15_crit_edge71:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

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
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i45) #7
  %18 = getelementptr inbounds [6 x i8], ptr %buf.i45, i32 0, i32 2
  %19 = ptrtoint ptr %buf.i45 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 514, ptr %buf.i45, align 2
  %shl.i47 = shl i32 %15, 16
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %shl.i47, ptr %18, align 2
  %call.i.i48 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %buf.i45, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i48)
  %cmp5.not.i49 = icmp eq i32 %call.i.i48, 4
  %retval.0.i50 = select i1 %cmp5.not.i49, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i45) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val7, align 4
  %arrayidx.i = getelementptr [5 x i64], ptr @imx208_discrete_digital_gain, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i, align 8
  %.tr.i = trunc i64 %24 to i32
  %conv.i = shl i32 %.tr.i, 24
  %25 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %27 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 526, ptr %buf.i.i, align 2
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %conv.i, ptr %27, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp5.not.i.i, label %if.end.i, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb6
  %30 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i1.i) #7
  %32 = getelementptr inbounds [6 x i8], ptr %buf.i1.i, i32 0, i32 2
  %33 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 532, ptr %buf.i1.i, align 2
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %conv.i, ptr %32, align 2
  %call.i.i4.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %buf.i1.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i4.i)
  %cmp5.not.i5.i = icmp eq i32 %call.i.i4.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i1.i) #7
  br i1 %cmp5.not.i5.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  %35 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i7.i) #7
  %37 = getelementptr inbounds [6 x i8], ptr %buf.i7.i, i32 0, i32 2
  %38 = ptrtoint ptr %buf.i7.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 528, ptr %buf.i7.i, align 2
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %conv.i, ptr %37, align 2
  %call.i.i10.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %buf.i7.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i10.i)
  %cmp5.not.i11.i = icmp eq i32 %call.i.i10.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i7.i) #7
  br i1 %cmp5.not.i11.i, label %if.end8.i, label %if.end4.i.sw.epilog_crit_edge

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i13.i) #7
  %42 = getelementptr inbounds [6 x i8], ptr %buf.i13.i, i32 0, i32 2
  %43 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 530, ptr %buf.i13.i, align 2
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %conv.i, ptr %42, align 2
  %call.i.i16.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %buf.i13.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i16.i)
  %cmp5.not.i17.i = icmp eq i32 %call.i.i16.i, 4
  %retval.0.i18.i = select i1 %cmp5.not.i17.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i13.i) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr i8, ptr %1, i32 208
  %45 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.imx208_mode, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %49 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val10, align 4
  %add = add i32 %50, %48
  %51 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i52) #7
  %53 = getelementptr inbounds [6 x i8], ptr %buf.i52, i32 0, i32 2
  %54 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 832, ptr %buf.i52, align 2
  %shl.i54 = shl i32 %add, 16
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %shl.i54, ptr %53, align 2
  %call.i.i55 = call i32 @i2c_transfer_buffer_flags(ptr noundef %52, ptr noundef nonnull %buf.i52, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i55)
  %cmp5.not.i56 = icmp eq i32 %call.i.i55, 4
  %retval.0.i57 = select i1 %cmp5.not.i56, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i52) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %56 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val13, align 4
  %arrayidx = getelementptr [11 x i32], ptr @imx208_test_pattern_val, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %60 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i58) #7
  %62 = getelementptr inbounds [6 x i8], ptr %buf.i58, i32 0, i32 2
  %63 = ptrtoint ptr %buf.i58 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1536, ptr %buf.i58, align 2
  %shl.i60 = shl i32 %59, 16
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %shl.i60, ptr %62, align 2
  %call.i.i61 = call i32 @i2c_transfer_buffer_flags(ptr noundef %61, ptr noundef nonnull %buf.i58, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i61)
  %cmp5.not.i62 = icmp eq i32 %call.i.i61, 4
  %retval.0.i63 = select i1 %cmp5.not.i62, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i58) #7
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end.sw.bb15_crit_edge, %if.end.sw.bb15_crit_edge71
  %hflip = getelementptr i8, ptr %1, i32 204
  %65 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hflip, align 4
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val16, align 4
  %vflip = getelementptr i8, ptr %1, i32 200
  %69 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vflip, align 4
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %70, i32 0, i32 22
  %71 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val17, align 4
  %73 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i64) #7
  %75 = getelementptr inbounds [6 x i8], ptr %buf.i64, i32 0, i32 2
  %76 = ptrtoint ptr %buf.i64 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 257, ptr %buf.i64, align 2
  %77 = shl i32 %72, 25
  %78 = shl i32 %68, 24
  %shl.i66 = or i32 %77, %78
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %shl.i66, ptr %75, align 2
  %call.i.i67 = call i32 @i2c_transfer_buffer_flags(ptr noundef %74, ptr noundef nonnull %buf.i64, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i67)
  %cmp5.not.i68 = icmp eq i32 %call.i.i67, 3
  %retval.0.i69 = select i1 %cmp5.not.i68, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i64) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %80 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %5, i32 noundef %81) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb12, %sw.bb9, %if.end8.i, %if.end4.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %sw.bb3, %sw.bb
  %ret.0 = phi i32 [ -22, %sw.default ], [ %retval.0.i69, %sw.bb15 ], [ %retval.0.i63, %sw.bb12 ], [ %retval.0.i57, %sw.bb9 ], [ %retval.0.i50, %sw.bb3 ], [ %retval.0.i, %sw.bb ], [ %retval.0.i18.i, %if.end8.i ], [ -5, %sw.bb6.sw.epilog_crit_edge ], [ -5, %if.end.i.sw.epilog_crit_edge ], [ -5, %if.end4.i.sw.epilog_crit_edge ]
  %call.i70 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !169

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1936, ptr %5, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1096, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12303, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %streaming = getelementptr inbounds %struct.imx208, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !164
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx208_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %streaming = getelementptr inbounds %struct.imx208, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @imx208_start_streaming(ptr noundef %1)
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
  br i1 %cmp5.not.i.i, label %error.imx208_stop_streaming.exit_crit_edge, label %do.end.i

error.imx208_stop_streaming.exit_crit_edge:       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx208_stop_streaming.exit

do.end.i:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #10
  br label %imx208_stop_streaming.exit

imx208_stop_streaming.exit:                       ; preds = %do.end.i, %error.imx208_stop_streaming.exit_crit_edge
  %9 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %imx208_stop_streaming.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %imx208_stop_streaming.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !104, !105, !107, !108, !109, !110, !112, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_imx208__294_1106_imx208_i2c_driver_init6, !1, !"__initcall__kmod_imx208__294_1106_imx208_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/imx208.c", i32 1106, i32 1}
!2 = !{ptr @__exitcall_imx208_i2c_driver_exit, !1, !"__exitcall_imx208_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/imx208.c", i32 1108, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/imx208.c", i32 1109, i32 1}
!7 = !{ptr @__UNIQUE_ID_author297, !8, !"__UNIQUE_ID_author297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/imx208.c", i32 1110, i32 1}
!9 = !{ptr @__UNIQUE_ID_description298, !10, !"__UNIQUE_ID_description298", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/imx208.c", i32 1111, i32 1}
!11 = !{ptr @__UNIQUE_ID_file299, !12, !"__UNIQUE_ID_file299", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/imx208.c", i32 1112, i32 1}
!13 = !{ptr @__UNIQUE_ID_license300, !12, !"__UNIQUE_ID_license300", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/imx208.c", i32 1097, i32 11}
!16 = !{ptr @imx208_i2c_driver, !17, !"imx208_i2c_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/imx208.c", i32 1095, i32 26}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/imx208.c", i32 876, i32 14}
!20 = !{ptr @bin_attr_otp, !19, !"bin_attr_otp", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/imx208.c", i32 637, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @imx208_identify_module._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @imx208_identify_module._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/imx208.c", i32 643, i32 3}
!31 = !{ptr @imx208_identify_module._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @imx208_identify_module._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/imx208.c", i32 984, i32 41}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/imx208.c", i32 986, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @imx208_probe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @imx208_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/imx208.c", i32 1004, i32 4}
!42 = !{ptr @imx208_probe._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @imx208_probe._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/imx208.c", i32 1014, i32 3}
!46 = !{ptr @imx208_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx208_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/imx208.c", i32 1027, i32 3}
!50 = !{ptr @imx208_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @imx208_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/imx208.c", i32 1037, i32 3}
!54 = !{ptr @imx208_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @imx208_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @imx208_subdev_ops, !57, !"imx208_subdev_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/imx208.c", i32 801, i32 37}
!58 = !{ptr @imx208_video_ops, !59, !"imx208_video_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/imx208.c", i32 790, i32 43}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/imx208.c", i32 669, i32 3}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @imx208_start_streaming._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx208_start_streaming._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/imx208.c", i32 677, i32 3}
!67 = !{ptr @imx208_start_streaming._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @imx208_start_streaming._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @link_freq_configs, !70, !"link_freq_configs", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/imx208.c", i32 227, i32 45}
!71 = !{ptr @pll_ctrl_reg, !72, !"pll_ctrl_reg", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/imx208.c", i32 110, i32 32}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/imx208.c", i32 386, i32 4}
!75 = !{ptr @imx208_write_regs._rs, !74, !"_rs", i1 false, i1 false}
!76 = !{ptr @__func__.imx208_write_regs, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @imx208_write_regs._entry, !74, !"_entry", i1 false, i1 false}
!79 = !{ptr @imx208_write_regs._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/imx208.c", i32 701, i32 3}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @imx208_stop_streaming._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @imx208_stop_streaming._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @imx208_pad_ops, !86, !"imx208_pad_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/imx208.c", i32 794, i32 41}
!87 = !{ptr @imx208_get_format_code.codes, !88, !"codes", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/imx208.c", i32 316, i32 19}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!91 = !{ptr @link_freq_menu_items, !92, !"link_freq_menu_items", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/imx208.c", i32 221, i32 18}
!93 = !{ptr @supported_modes, !94, !"supported_modes", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/imx208.c", i32 245, i32 33}
!95 = !{ptr @mode_1936x1096_60fps_regs, !96, !"mode_1936x1096_60fps_regs", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/imx208.c", i32 116, i32 32}
!97 = !{ptr @mode_968_548_60fps_regs, !98, !"mode_968_548_60fps_regs", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/imx208.c", i32 139, i32 32}
!99 = !{ptr @imx208_init_controls._key, !100, !"_key", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/imx208.c", i32 890, i32 8}
!101 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @imx208_init_controls.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/imx208.c", i32 894, i32 2}
!104 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/imx208.c", i32 956, i32 3}
!107 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @imx208_init_controls._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @imx208_init_controls._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @imx208_ctrl_ops, !111, !"imx208_ctrl_ops", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/imx208.c", i32 488, i32 35}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/imx208.c", i32 477, i32 3}
!114 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @imx208_set_ctrl._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @imx208_set_ctrl._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @imx208_discrete_digital_gain, !118, !"imx208_discrete_digital_gain", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/imx208.c", i32 162, i32 18}
!119 = !{ptr @imx208_test_pattern_val, !120, !"imx208_test_pattern_val", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/imx208.c", i32 180, i32 18}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/imx208.c", i32 495, i32 10}
!123 = !{ptr @imx208_digital_gain_control, !124, !"imx208_digital_gain_control", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/imx208.c", i32 492, i32 38}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/imx208.c", i32 167, i32 2}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/imx208.c", i32 168, i32 2}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/imx208.c", i32 169, i32 2}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/imx208.c", i32 170, i32 2}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/imx208.c", i32 171, i32 2}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/imx208.c", i32 172, i32 2}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/imx208.c", i32 173, i32 2}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/imx208.c", i32 174, i32 2}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/imx208.c", i32 175, i32 2}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/imx208.c", i32 176, i32 2}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/imx208.c", i32 177, i32 2}
!147 = !{ptr @imx208_test_pattern_menu, !148, !"imx208_test_pattern_menu", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/imx208.c", i32 166, i32 27}
!149 = !{ptr @imx208_internal_ops, !150, !"imx208_internal_ops", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/imx208.c", i32 806, i32 46}
!151 = !{ptr @imx208_pm_ops, !152, !"imx208_pm_ops", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/imx208.c", i32 1082, i32 32}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 1512792, i64 1512819}
!163 = !{i64 1513132, i64 1513159, i64 1513193, i64 1513214}
!164 = !{i8 0, i8 2}
!165 = !{i64 2148328393}
!166 = !{i64 813216, i64 813241, i64 813263, i64 813279, i64 813291, i64 813311, i64 813335, i64 813351, i64 813363}
!167 = !{i64 2148328581}
!168 = !{!"branch_weights", i32 2000, i32 1}
!169 = !{!"branch_weights", i32 1, i32 2000}
