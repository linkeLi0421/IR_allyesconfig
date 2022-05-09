; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov5675.c_pt.bc'
source_filename = "../drivers/media/i2c/ov5675.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ov5675_mode = type { i32, i32, i32, i32, i32, i32, %struct.ov5675_reg_list }
%struct.ov5675_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov5675_link_freq_config = type { %struct.ov5675_reg_list }
%struct.ov5675_reg = type { i16, i8 }
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
%struct.ov5675 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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

@__initcall__kmod_ov5675__294_1267_ov5675_i2c_driver_init6 = internal global ptr @ov5675_i2c_driver_init, section ".initcall6.init", align 4
@ov5675_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov5675_remove, ptr @ov5675_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5675_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov5675_i2c_driver_exit = internal global ptr @ov5675_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [45 x i8] c"ov5675.author=Shawn Tu <shawnx.tu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [51 x i8] c"ov5675.description=OmniVision OV5675 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [37 x i8] c"ov5675.file=drivers/media/i2c/ov5675\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [22 x i8] c"ov5675.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov5675\00", [25 x i8] zeroinitializer }, align 32
@ov5675_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ov5675_suspend, ptr @ov5675_resume, ptr @ov5675_suspend, ptr @ov5675_resume, ptr @ov5675_suspend, ptr @ov5675_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov5675_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to check HW configuration: %d\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5675_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov5675.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov5675_probe._entry_ptr = internal global ptr @ov5675_probe._entry, section ".printk_index", align 4
@ov5675_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov5675_video_ops, ptr null, ptr null, ptr null, ptr @ov5675_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov5675_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find sensor: %d\00", [38 x i8] zeroinitializer }, align 32
@ov5675_probe._entry_ptr.8 = internal global ptr @ov5675_probe._entry.6, section ".printk_index", align 4
@ov5675_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ov5675->mutex\00", [17 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [2 x %struct.ov5675_mode], [32 x i8] } { [2 x %struct.ov5675_mode] [%struct.ov5675_mode { i32 2592, i32 1944, i32 1500, i32 2020, i32 2020, i32 0, %struct.ov5675_reg_list { i32 150, ptr @mode_2592x1944_regs } }, %struct.ov5675_mode { i32 1296, i32 972, i32 1500, i32 2020, i32 2020, i32 0, %struct.ov5675_reg_list { i32 150, ptr @mode_1296x972_regs } }], [32 x i8] zeroinitializer }, align 32
@ov5675_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@ov5675_probe._entry_ptr.12 = internal global ptr @ov5675_probe._entry.10, section ".printk_index", align 4
@ov5675_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov5675_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov5675_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ov5675_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init entity pads: %d\00", [33 x i8] zeroinitializer }, align 32
@ov5675_probe._entry_ptr.15 = internal global ptr @ov5675_probe._entry.13, section ".printk_index", align 4
@ov5675_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register V4L2 subdev: %d\00", [61 x i8] zeroinitializer }, align 32
@ov5675_probe._entry_ptr.18 = internal global ptr @ov5675_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@ov5675_check_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 1100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get clock frequency\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov5675_check_hwcfg\00", [45 x i8] zeroinitializer }, align 32
@ov5675_check_hwcfg._entry_ptr = internal global ptr @ov5675_check_hwcfg._entry, section ".printk_index", align 4
@ov5675_check_hwcfg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 1105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"external clock %d is not supported\00", [61 x i8] zeroinitializer }, align 32
@ov5675_check_hwcfg._entry_ptr.24 = internal global ptr @ov5675_check_hwcfg._entry.22, section ".printk_index", align 4
@ov5675_check_hwcfg._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 1120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"number of CSI2 data lanes %d is not supported\00", [50 x i8] zeroinitializer }, align 32
@ov5675_check_hwcfg._entry_ptr.27 = internal global ptr @ov5675_check_hwcfg._entry.25, section ".printk_index", align 4
@ov5675_check_hwcfg._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 1126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequencies defined\00", [36 x i8] zeroinitializer }, align 32
@ov5675_check_hwcfg._entry_ptr.30 = internal global ptr @ov5675_check_hwcfg._entry.28, section ".printk_index", align 4
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 450000000], [24 x i8] zeroinitializer }, align 32
@ov5675_check_hwcfg._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.3, i32 1140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no link frequency %lld supported\00", [63 x i8] zeroinitializer }, align 32
@ov5675_check_hwcfg._entry_ptr.33 = internal global ptr @ov5675_check_hwcfg._entry.31, section ".printk_index", align 4
@ov5675_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5675_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov5675_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov5675_enum_mbus_code, ptr @ov5675_enum_frame_size, ptr null, ptr @ov5675_get_format, ptr @ov5675_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@link_freq_configs = internal constant { [1 x %struct.ov5675_link_freq_config], [24 x i8] } { [1 x %struct.ov5675_link_freq_config] [%struct.ov5675_link_freq_config { %struct.ov5675_reg_list { i32 6, ptr @mipi_data_rate_900mbps } }], [24 x i8] zeroinitializer }, align 32
@ov5675_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set plls\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov5675_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@ov5675_start_streaming._entry_ptr = internal global ptr @ov5675_start_streaming._entry, section ".printk_index", align 4
@ov5675_start_streaming._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 860, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set mode\00", [45 x i8] zeroinitializer }, align 32
@ov5675_start_streaming._entry_ptr.38 = internal global ptr @ov5675_start_streaming._entry.36, section ".printk_index", align 4
@ov5675_start_streaming._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 871, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to set stream\00", [43 x i8] zeroinitializer }, align 32
@ov5675_start_streaming._entry_ptr.41 = internal global ptr @ov5675_start_streaming._entry.39, section ".printk_index", align 4
@mipi_data_rate_900mbps = internal constant { [6 x %struct.ov5675_reg], [40 x i8] } { [6 x %struct.ov5675_reg] [%struct.ov5675_reg { i16 259, i8 1 }, %struct.ov5675_reg { i16 256, i8 0 }, %struct.ov5675_reg { i16 768, i8 4 }, %struct.ov5675_reg { i16 770, i8 -115 }, %struct.ov5675_reg { i16 771, i8 0 }, %struct.ov5675_reg { i16 781, i8 38 }], [40 x i8] zeroinitializer }, align 32
@ov5675_write_reg_list._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ov5675_write_reg_list = private unnamed_addr constant [22 x i8] c"ov5675_write_reg_list\00", align 1
@ov5675_write_reg_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.ov5675_write_reg_list, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to write reg 0x%4.4x. error = %d\00", [56 x i8] zeroinitializer }, align 32
@ov5675_write_reg_list._entry_ptr = internal global ptr @ov5675_write_reg_list._entry, section ".printk_index", align 4
@ov5675_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.44, ptr @.str.3, i32 884, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov5675_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@ov5675_stop_streaming._entry_ptr = internal global ptr @ov5675_stop_streaming._entry, section ".printk_index", align 4
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov5675_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip id mismatch: %x!=%x\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov5675_identify_module\00", [41 x i8] zeroinitializer }, align 32
@ov5675_identify_module._entry_ptr = internal global ptr @ov5675_identify_module._entry, section ".printk_index", align 4
@mode_2592x1944_regs = internal constant { [150 x %struct.ov5675_reg], [136 x i8] } { [150 x %struct.ov5675_reg] [%struct.ov5675_reg { i16 12290, i8 33 }, %struct.ov5675_reg { i16 12551, i8 35 }, %struct.ov5675_reg { i16 13569, i8 32 }, %struct.ov5675_reg { i16 13571, i8 12 }, %struct.ov5675_reg { i16 13576, i8 3 }, %struct.ov5675_reg { i16 13577, i8 0 }, %struct.ov5675_reg { i16 13824, i8 102 }, %struct.ov5675_reg { i16 13826, i8 48 }, %struct.ov5675_reg { i16 13840, i8 -91 }, %struct.ov5675_reg { i16 13842, i8 -109 }, %struct.ov5675_reg { i16 13856, i8 -128 }, %struct.ov5675_reg { i16 13890, i8 14 }, %struct.ov5675_reg { i16 13921, i8 0 }, %struct.ov5675_reg { i16 13922, i8 16 }, %struct.ov5675_reg { i16 13924, i8 -13 }, %struct.ov5675_reg { i16 13925, i8 -98 }, %struct.ov5675_reg { i16 13927, i8 -91 }, %struct.ov5675_reg { i16 13934, i8 85 }, %struct.ov5675_reg { i16 13935, i8 85 }, %struct.ov5675_reg { i16 13936, i8 17 }, %struct.ov5675_reg { i16 13937, i8 17 }, %struct.ov5675_reg { i16 13938, i8 17 }, %struct.ov5675_reg { i16 13939, i8 17 }, %struct.ov5675_reg { i16 14100, i8 36 }, %struct.ov5675_reg { i16 14106, i8 62 }, %struct.ov5675_reg { i16 14131, i8 16 }, %struct.ov5675_reg { i16 14132, i8 0 }, %struct.ov5675_reg { i16 14141, i8 36 }, %struct.ov5675_reg { i16 14180, i8 32 }, %struct.ov5675_reg { i16 14181, i8 32 }, %struct.ov5675_reg { i16 14182, i8 18 }, %struct.ov5675_reg { i16 14241, i8 20 }, %struct.ov5675_reg { i16 14248, i8 28 }, %struct.ov5675_reg { i16 14251, i8 15 }, %struct.ov5675_reg { i16 14274, i8 4 }, %struct.ov5675_reg { i16 14283, i8 0 }, %struct.ov5675_reg { i16 14284, i8 0 }, %struct.ov5675_reg { i16 14285, i8 0 }, %struct.ov5675_reg { i16 14286, i8 0 }, %struct.ov5675_reg { i16 14296, i8 2 }, %struct.ov5675_reg { i16 14297, i8 8 }, %struct.ov5675_reg { i16 14300, i8 4 }, %struct.ov5675_reg { i16 14336, i8 0 }, %struct.ov5675_reg { i16 14337, i8 0 }, %struct.ov5675_reg { i16 14338, i8 0 }, %struct.ov5675_reg { i16 14339, i8 4 }, %struct.ov5675_reg { i16 14340, i8 10 }, %struct.ov5675_reg { i16 14341, i8 63 }, %struct.ov5675_reg { i16 14342, i8 7 }, %struct.ov5675_reg { i16 14343, i8 -77 }, %struct.ov5675_reg { i16 14344, i8 10 }, %struct.ov5675_reg { i16 14345, i8 32 }, %struct.ov5675_reg { i16 14346, i8 7 }, %struct.ov5675_reg { i16 14347, i8 -104 }, %struct.ov5675_reg { i16 14348, i8 2 }, %struct.ov5675_reg { i16 14349, i8 -18 }, %struct.ov5675_reg { i16 14350, i8 7 }, %struct.ov5675_reg { i16 14351, i8 -28 }, %struct.ov5675_reg { i16 14353, i8 16 }, %struct.ov5675_reg { i16 14355, i8 13 }, %struct.ov5675_reg { i16 14356, i8 1 }, %struct.ov5675_reg { i16 14357, i8 1 }, %struct.ov5675_reg { i16 14358, i8 1 }, %struct.ov5675_reg { i16 14359, i8 1 }, %struct.ov5675_reg { i16 14366, i8 2 }, %struct.ov5675_reg { i16 14368, i8 -120 }, %struct.ov5675_reg { i16 14369, i8 1 }, %struct.ov5675_reg { i16 14386, i8 4 }, %struct.ov5675_reg { i16 15488, i8 1 }, %struct.ov5675_reg { i16 15490, i8 0 }, %struct.ov5675_reg { i16 15491, i8 -56 }, %struct.ov5675_reg { i16 15500, i8 15 }, %struct.ov5675_reg { i16 15501, i8 -96 }, %struct.ov5675_reg { i16 15504, i8 7 }, %struct.ov5675_reg { i16 15505, i8 0 }, %struct.ov5675_reg { i16 15506, i8 0 }, %struct.ov5675_reg { i16 15507, i8 0 }, %struct.ov5675_reg { i16 15508, i8 -48 }, %struct.ov5675_reg { i16 15509, i8 80 }, %struct.ov5675_reg { i16 15510, i8 53 }, %struct.ov5675_reg { i16 15511, i8 0 }, %struct.ov5675_reg { i16 16385, i8 -32 }, %struct.ov5675_reg { i16 16392, i8 2 }, %struct.ov5675_reg { i16 16393, i8 13 }, %struct.ov5675_reg { i16 16399, i8 -128 }, %struct.ov5675_reg { i16 16403, i8 2 }, %struct.ov5675_reg { i16 16448, i8 0 }, %struct.ov5675_reg { i16 16449, i8 7 }, %struct.ov5675_reg { i16 16460, i8 80 }, %struct.ov5675_reg { i16 16462, i8 32 }, %struct.ov5675_reg { i16 17664, i8 6 }, %struct.ov5675_reg { i16 17667, i8 0 }, %struct.ov5675_reg { i16 17674, i8 4 }, %struct.ov5675_reg { i16 18441, i8 4 }, %struct.ov5675_reg { i16 18444, i8 18 }, %struct.ov5675_reg { i16 18457, i8 112 }, %struct.ov5675_reg { i16 18469, i8 50 }, %struct.ov5675_reg { i16 18470, i8 50 }, %struct.ov5675_reg { i16 18474, i8 6 }, %struct.ov5675_reg { i16 18483, i8 8 }, %struct.ov5675_reg { i16 18487, i8 13 }, %struct.ov5675_reg { i16 20480, i8 119 }, %struct.ov5675_reg { i16 23296, i8 1 }, %struct.ov5675_reg { i16 23297, i8 16 }, %struct.ov5675_reg { i16 23298, i8 1 }, %struct.ov5675_reg { i16 23299, i8 -37 }, %struct.ov5675_reg { i16 23301, i8 108 }, %struct.ov5675_reg { i16 24080, i8 -4 }, %struct.ov5675_reg { i16 13568, i8 0 }, %struct.ov5675_reg { i16 13569, i8 62 }, %struct.ov5675_reg { i16 13570, i8 96 }, %struct.ov5675_reg { i16 13571, i8 8 }, %struct.ov5675_reg { i16 13576, i8 4 }, %struct.ov5675_reg { i16 13577, i8 0 }, %struct.ov5675_reg { i16 14386, i8 72 }, %struct.ov5675_reg { i16 22400, i8 62 }, %struct.ov5675_reg { i16 22401, i8 15 }, %struct.ov5675_reg { i16 22402, i8 68 }, %struct.ov5675_reg { i16 22403, i8 2 }, %struct.ov5675_reg { i16 22404, i8 1 }, %struct.ov5675_reg { i16 22405, i8 1 }, %struct.ov5675_reg { i16 22406, i8 0 }, %struct.ov5675_reg { i16 22407, i8 4 }, %struct.ov5675_reg { i16 22408, i8 2 }, %struct.ov5675_reg { i16 22409, i8 15 }, %struct.ov5675_reg { i16 22410, i8 -3 }, %struct.ov5675_reg { i16 22411, i8 -11 }, %struct.ov5675_reg { i16 22412, i8 -11 }, %struct.ov5675_reg { i16 22413, i8 3 }, %struct.ov5675_reg { i16 22414, i8 8 }, %struct.ov5675_reg { i16 22415, i8 12 }, %struct.ov5675_reg { i16 22416, i8 8 }, %struct.ov5675_reg { i16 22417, i8 6 }, %struct.ov5675_reg { i16 22418, i8 0 }, %struct.ov5675_reg { i16 22419, i8 82 }, %struct.ov5675_reg { i16 22420, i8 -93 }, %struct.ov5675_reg { i16 16387, i8 64 }, %struct.ov5675_reg { i16 12551, i8 1 }, %struct.ov5675_reg { i16 15488, i8 8 }, %struct.ov5675_reg { i16 15491, i8 -79 }, %struct.ov5675_reg { i16 15500, i8 16 }, %struct.ov5675_reg { i16 15501, i8 0 }, %struct.ov5675_reg { i16 15504, i8 0 }, %struct.ov5675_reg { i16 15508, i8 0 }, %struct.ov5675_reg { i16 15509, i8 0 }, %struct.ov5675_reg { i16 15510, i8 0 }, %struct.ov5675_reg { i16 14283, i8 9 }, %struct.ov5675_reg { i16 14284, i8 21 }, %struct.ov5675_reg { i16 14285, i8 31 }, %struct.ov5675_reg { i16 14286, i8 31 }], [136 x i8] zeroinitializer }, align 32
@mode_1296x972_regs = internal constant { [150 x %struct.ov5675_reg], [136 x i8] } { [150 x %struct.ov5675_reg] [%struct.ov5675_reg { i16 12290, i8 33 }, %struct.ov5675_reg { i16 12551, i8 35 }, %struct.ov5675_reg { i16 13569, i8 32 }, %struct.ov5675_reg { i16 13571, i8 12 }, %struct.ov5675_reg { i16 13576, i8 3 }, %struct.ov5675_reg { i16 13577, i8 0 }, %struct.ov5675_reg { i16 13824, i8 102 }, %struct.ov5675_reg { i16 13826, i8 48 }, %struct.ov5675_reg { i16 13840, i8 -91 }, %struct.ov5675_reg { i16 13842, i8 -109 }, %struct.ov5675_reg { i16 13856, i8 -128 }, %struct.ov5675_reg { i16 13890, i8 14 }, %struct.ov5675_reg { i16 13921, i8 0 }, %struct.ov5675_reg { i16 13922, i8 8 }, %struct.ov5675_reg { i16 13924, i8 -13 }, %struct.ov5675_reg { i16 13925, i8 -98 }, %struct.ov5675_reg { i16 13927, i8 -91 }, %struct.ov5675_reg { i16 13934, i8 85 }, %struct.ov5675_reg { i16 13935, i8 85 }, %struct.ov5675_reg { i16 13936, i8 17 }, %struct.ov5675_reg { i16 13937, i8 17 }, %struct.ov5675_reg { i16 13938, i8 17 }, %struct.ov5675_reg { i16 13939, i8 17 }, %struct.ov5675_reg { i16 14100, i8 40 }, %struct.ov5675_reg { i16 14106, i8 62 }, %struct.ov5675_reg { i16 14131, i8 16 }, %struct.ov5675_reg { i16 14132, i8 0 }, %struct.ov5675_reg { i16 14141, i8 36 }, %struct.ov5675_reg { i16 14180, i8 32 }, %struct.ov5675_reg { i16 14181, i8 32 }, %struct.ov5675_reg { i16 14182, i8 18 }, %struct.ov5675_reg { i16 14241, i8 20 }, %struct.ov5675_reg { i16 14248, i8 28 }, %struct.ov5675_reg { i16 14251, i8 15 }, %struct.ov5675_reg { i16 14274, i8 20 }, %struct.ov5675_reg { i16 14283, i8 0 }, %struct.ov5675_reg { i16 14284, i8 0 }, %struct.ov5675_reg { i16 14285, i8 0 }, %struct.ov5675_reg { i16 14286, i8 0 }, %struct.ov5675_reg { i16 14296, i8 2 }, %struct.ov5675_reg { i16 14297, i8 4 }, %struct.ov5675_reg { i16 14300, i8 4 }, %struct.ov5675_reg { i16 14336, i8 0 }, %struct.ov5675_reg { i16 14337, i8 0 }, %struct.ov5675_reg { i16 14338, i8 0 }, %struct.ov5675_reg { i16 14339, i8 0 }, %struct.ov5675_reg { i16 14340, i8 10 }, %struct.ov5675_reg { i16 14341, i8 63 }, %struct.ov5675_reg { i16 14342, i8 7 }, %struct.ov5675_reg { i16 14343, i8 -73 }, %struct.ov5675_reg { i16 14344, i8 5 }, %struct.ov5675_reg { i16 14345, i8 16 }, %struct.ov5675_reg { i16 14346, i8 3 }, %struct.ov5675_reg { i16 14347, i8 -52 }, %struct.ov5675_reg { i16 14348, i8 2 }, %struct.ov5675_reg { i16 14349, i8 -18 }, %struct.ov5675_reg { i16 14350, i8 7 }, %struct.ov5675_reg { i16 14351, i8 -48 }, %struct.ov5675_reg { i16 14353, i8 8 }, %struct.ov5675_reg { i16 14355, i8 13 }, %struct.ov5675_reg { i16 14356, i8 3 }, %struct.ov5675_reg { i16 14357, i8 1 }, %struct.ov5675_reg { i16 14358, i8 3 }, %struct.ov5675_reg { i16 14359, i8 1 }, %struct.ov5675_reg { i16 14366, i8 2 }, %struct.ov5675_reg { i16 14368, i8 -117 }, %struct.ov5675_reg { i16 14369, i8 1 }, %struct.ov5675_reg { i16 14386, i8 4 }, %struct.ov5675_reg { i16 15488, i8 1 }, %struct.ov5675_reg { i16 15490, i8 0 }, %struct.ov5675_reg { i16 15491, i8 -56 }, %struct.ov5675_reg { i16 15500, i8 15 }, %struct.ov5675_reg { i16 15501, i8 -96 }, %struct.ov5675_reg { i16 15504, i8 7 }, %struct.ov5675_reg { i16 15505, i8 0 }, %struct.ov5675_reg { i16 15506, i8 0 }, %struct.ov5675_reg { i16 15507, i8 0 }, %struct.ov5675_reg { i16 15508, i8 -48 }, %struct.ov5675_reg { i16 15509, i8 80 }, %struct.ov5675_reg { i16 15510, i8 53 }, %struct.ov5675_reg { i16 15511, i8 0 }, %struct.ov5675_reg { i16 16385, i8 -32 }, %struct.ov5675_reg { i16 16392, i8 0 }, %struct.ov5675_reg { i16 16393, i8 7 }, %struct.ov5675_reg { i16 16399, i8 -128 }, %struct.ov5675_reg { i16 16403, i8 2 }, %struct.ov5675_reg { i16 16448, i8 0 }, %struct.ov5675_reg { i16 16449, i8 3 }, %struct.ov5675_reg { i16 16460, i8 80 }, %struct.ov5675_reg { i16 16462, i8 32 }, %struct.ov5675_reg { i16 17664, i8 6 }, %struct.ov5675_reg { i16 17667, i8 0 }, %struct.ov5675_reg { i16 17674, i8 4 }, %struct.ov5675_reg { i16 18441, i8 4 }, %struct.ov5675_reg { i16 18444, i8 18 }, %struct.ov5675_reg { i16 18457, i8 112 }, %struct.ov5675_reg { i16 18469, i8 50 }, %struct.ov5675_reg { i16 18470, i8 50 }, %struct.ov5675_reg { i16 18474, i8 6 }, %struct.ov5675_reg { i16 18483, i8 8 }, %struct.ov5675_reg { i16 18487, i8 13 }, %struct.ov5675_reg { i16 20480, i8 119 }, %struct.ov5675_reg { i16 23296, i8 1 }, %struct.ov5675_reg { i16 23297, i8 16 }, %struct.ov5675_reg { i16 23298, i8 1 }, %struct.ov5675_reg { i16 23299, i8 -37 }, %struct.ov5675_reg { i16 23301, i8 108 }, %struct.ov5675_reg { i16 24080, i8 -4 }, %struct.ov5675_reg { i16 13568, i8 0 }, %struct.ov5675_reg { i16 13569, i8 31 }, %struct.ov5675_reg { i16 13570, i8 32 }, %struct.ov5675_reg { i16 13571, i8 8 }, %struct.ov5675_reg { i16 13576, i8 4 }, %struct.ov5675_reg { i16 13577, i8 0 }, %struct.ov5675_reg { i16 14386, i8 72 }, %struct.ov5675_reg { i16 22400, i8 62 }, %struct.ov5675_reg { i16 22401, i8 15 }, %struct.ov5675_reg { i16 22402, i8 68 }, %struct.ov5675_reg { i16 22403, i8 2 }, %struct.ov5675_reg { i16 22404, i8 1 }, %struct.ov5675_reg { i16 22405, i8 1 }, %struct.ov5675_reg { i16 22406, i8 0 }, %struct.ov5675_reg { i16 22407, i8 4 }, %struct.ov5675_reg { i16 22408, i8 2 }, %struct.ov5675_reg { i16 22409, i8 15 }, %struct.ov5675_reg { i16 22410, i8 -3 }, %struct.ov5675_reg { i16 22411, i8 -11 }, %struct.ov5675_reg { i16 22412, i8 -11 }, %struct.ov5675_reg { i16 22413, i8 3 }, %struct.ov5675_reg { i16 22414, i8 8 }, %struct.ov5675_reg { i16 22415, i8 12 }, %struct.ov5675_reg { i16 22416, i8 8 }, %struct.ov5675_reg { i16 22417, i8 6 }, %struct.ov5675_reg { i16 22418, i8 0 }, %struct.ov5675_reg { i16 22419, i8 82 }, %struct.ov5675_reg { i16 22420, i8 -93 }, %struct.ov5675_reg { i16 16387, i8 64 }, %struct.ov5675_reg { i16 12551, i8 1 }, %struct.ov5675_reg { i16 15488, i8 8 }, %struct.ov5675_reg { i16 15491, i8 -79 }, %struct.ov5675_reg { i16 15500, i8 16 }, %struct.ov5675_reg { i16 15501, i8 0 }, %struct.ov5675_reg { i16 15504, i8 0 }, %struct.ov5675_reg { i16 15508, i8 0 }, %struct.ov5675_reg { i16 15509, i8 0 }, %struct.ov5675_reg { i16 15510, i8 0 }, %struct.ov5675_reg { i16 14283, i8 9 }, %struct.ov5675_reg { i16 14284, i8 21 }, %struct.ov5675_reg { i16 14285, i8 31 }, %struct.ov5675_reg { i16 14286, i8 31 }], [136 x i8] zeroinitializer }, align 32
@ov5675_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ov5675:746:(ctrl_hdlr)->_lock\00", [34 x i8] zeroinitializer }, align 32
@ov5675_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov5675_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov5675_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Standard Color Bar\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Top-Bottom Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Right-Left Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bottom-Top Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 9963793, i64 9963796, i64 9963797, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"ov5675_i2c_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1256, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1258, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"ov5675_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1243, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1174, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"ov5675_subdev_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1070, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1189, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1194, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 449, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1198, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"ov5675_internal_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1079, i32 46 }
@___asan_gen_.108 = private unnamed_addr constant [25 x i8] c"ov5675_subdev_entity_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1075, i32 45 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1209, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1215, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1097, i32 41 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1100, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1105, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1119, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1126, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 436, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1139, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"ov5675_video_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1059, i32 43 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"ov5675_pad_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1063, i32 41 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"link_freq_configs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 440, i32 45 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 853, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 860, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 871, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [23 x i8] c"mipi_data_rate_900mbps\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 113, i32 32 }
@___asan_gen_.195 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 576, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 884, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 998, i32 6 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 829, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c"mode_2592x1944_regs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 122, i32 32 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c"mode_1296x972_regs\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 275, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 746, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant [16 x i8] c"ov5675_ctrl_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 735, i32 35 }
@___asan_gen_.240 = private unnamed_addr constant [25 x i8] c"ov5675_test_pattern_menu\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 428, i32 27 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 429, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 430, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 431, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 432, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [30 x i8] c"../drivers/media/i2c/ov5675.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 433, i32 2 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ov5675_i2c_driver_exit, ptr @__initcall__kmod_ov5675__294_1267_ov5675_i2c_driver_init6, ptr @ov5675_check_hwcfg._entry, ptr @ov5675_check_hwcfg._entry.22, ptr @ov5675_check_hwcfg._entry.25, ptr @ov5675_check_hwcfg._entry.28, ptr @ov5675_check_hwcfg._entry.31, ptr @ov5675_check_hwcfg._entry_ptr, ptr @ov5675_check_hwcfg._entry_ptr.24, ptr @ov5675_check_hwcfg._entry_ptr.27, ptr @ov5675_check_hwcfg._entry_ptr.30, ptr @ov5675_check_hwcfg._entry_ptr.33, ptr @ov5675_i2c_driver_exit, ptr @ov5675_identify_module._entry, ptr @ov5675_identify_module._entry_ptr, ptr @ov5675_probe._entry, ptr @ov5675_probe._entry.10, ptr @ov5675_probe._entry.13, ptr @ov5675_probe._entry.16, ptr @ov5675_probe._entry.6, ptr @ov5675_probe._entry_ptr, ptr @ov5675_probe._entry_ptr.12, ptr @ov5675_probe._entry_ptr.15, ptr @ov5675_probe._entry_ptr.18, ptr @ov5675_probe._entry_ptr.8, ptr @ov5675_start_streaming._entry, ptr @ov5675_start_streaming._entry.36, ptr @ov5675_start_streaming._entry.39, ptr @ov5675_start_streaming._entry_ptr, ptr @ov5675_start_streaming._entry_ptr.38, ptr @ov5675_start_streaming._entry_ptr.41, ptr @ov5675_stop_streaming._entry, ptr @ov5675_stop_streaming._entry_ptr, ptr @ov5675_write_reg_list._entry, ptr @ov5675_write_reg_list._entry_ptr, ptr @ov5675_i2c_driver, ptr @.str, ptr @ov5675_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ov5675_subdev_ops, ptr @.str.7, ptr @ov5675_probe.__key, ptr @.str.9, ptr @supported_modes, ptr @.str.11, ptr @ov5675_internal_ops, ptr @ov5675_subdev_entity_ops, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @link_freq_menu_items, ptr @.str.32, ptr @ov5675_video_ops, ptr @ov5675_pad_ops, ptr @link_freq_configs, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @mipi_data_rate_900mbps, ptr @ov5675_write_reg_list._rs, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @mode_2592x1944_regs, ptr @mode_1296x972_regs, ptr @ov5675_init_controls._key, ptr @.str.48, ptr @ov5675_ctrl_ops, ptr @ov5675_test_pattern_menu, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_check_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_check_hwcfg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_check_hwcfg._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_check_hwcfg._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_check_hwcfg._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_configs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_start_streaming._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_start_streaming._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_900mbps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_write_reg_list._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_write_reg_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2592x1944_regs to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1296x972_regs to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5675_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5675_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov5675_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov5675_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ov5675_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5675_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
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
  %mutex = getelementptr inbounds %struct.ov5675, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5675_probe(ptr noundef %client) #2 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %mclk.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mclk.i) #7
  %3 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mclk.i, align 4, !annotation !145
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ov5675_check_hwcfg.exit.thread_crit_edge, label %if.end.i

entry.ov5675_check_hwcfg.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5675_check_hwcfg.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %mclk.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %ov5675_check_hwcfg.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 19200000
  br i1 %cmp.not.i, label %if.end9.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %5) #10
  br label %ov5675_check_hwcfg.exit.thread

if.end9.i:                                        ; preds = %if.end4.i
  %call10.i = call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call.i, ptr noundef null) #7
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.ov5675_check_hwcfg.exit.thread_crit_edge, label %if.end13.i

if.end9.i.ov5675_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5675_check_hwcfg.exit.thread

if.end13.i:                                       ; preds = %if.end9.i
  %call14.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call10.i, ptr noundef nonnull %bus_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call10.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.ov5675_check_hwcfg.exit.thread_crit_edge

if.end13.i.ov5675_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5675_check_hwcfg.exit.thread

if.end17.i:                                       ; preds = %if.end13.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2, i32 2, i32 3
  %6 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp18.not.i = icmp eq i8 %7, 2
  br i1 %cmp18.not.i, label %if.end28.i, label %do.end23.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #10
  br label %ov5675_check_hwcfg.exit.thread130

if.end28.i:                                       ; preds = %if.end17.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %8 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool29.not.i = icmp eq i32 %9, 0
  br i1 %tobool29.not.i, label %do.end33.i, label %for.body41.lr.ph.i

for.body41.lr.ph.i:                               ; preds = %if.end28.i
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %10 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body41.i

do.end33.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #10
  br label %ov5675_check_hwcfg.exit.thread130

for.body41.i:                                     ; preds = %for.inc.i.for.body41.i_crit_edge, %for.body41.lr.ph.i
  %j.085.i = phi i32 [ 0, %for.body41.lr.ph.i ], [ %inc.i, %for.inc.i.for.body41.i_crit_edge ]
  %arrayidx42.i = getelementptr i64, ptr %11, i32 %j.085.i
  %12 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 450000000, i64 %13)
  %cmp43.i = icmp eq i64 %13, 450000000
  br i1 %cmp43.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body41.i
  %inc.i = add nuw i32 %j.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.do.end53.i_crit_edge, label %for.inc.i.for.body41.i_crit_edge

for.inc.i.for.body41.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.i

for.inc.i.do.end53.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53.i

for.end.i:                                        ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.085.i, i32 %9)
  %cmp48.i = icmp eq i32 %j.085.i, %9
  br i1 %cmp48.i, label %for.end.i.do.end53.i_crit_edge, label %if.end

for.end.i.do.end53.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53.i

do.end53.i:                                       ; preds = %for.end.i.do.end53.i_crit_edge, %for.inc.i.do.end53.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i64 noundef 450000000) #10
  br label %ov5675_check_hwcfg.exit.thread130

ov5675_check_hwcfg.exit.thread:                   ; preds = %if.end13.i.ov5675_check_hwcfg.exit.thread_crit_edge, %if.end9.i.ov5675_check_hwcfg.exit.thread_crit_edge, %do.end8.i, %do.end.i, %entry.ov5675_check_hwcfg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call14.i, %if.end13.i.ov5675_check_hwcfg.exit.thread_crit_edge ], [ -6, %if.end9.i.ov5675_check_hwcfg.exit.thread_crit_edge ], [ -6, %entry.ov5675_check_hwcfg.exit.thread_crit_edge ], [ -22, %do.end8.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

ov5675_check_hwcfg.exit.thread130:                ; preds = %do.end53.i, %do.end33.i, %do.end23.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

do.end:                                           ; preds = %ov5675_check_hwcfg.exit.thread130, %ov5675_check_hwcfg.exit.thread
  %retval.0.i128 = phi i32 [ %retval.0.i.ph, %ov5675_check_hwcfg.exit.thread ], [ -22, %ov5675_check_hwcfg.exit.thread130 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i128) #10
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %call.i110 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 532, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i110, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i110, ptr noundef %client, ptr noundef nonnull @ov5675_subdev_ops) #7
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 11
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %identified.i = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 11
  %16 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %identified.i, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i111 = icmp eq i8 %17, 0
  br i1 %tobool.not.i111, label %if.end.i112, label %if.end6.do.body20_crit_edge

if.end6.do.body20_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.end.i112:                                      ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %18 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %20 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %data_buf.i.i, align 4
  %21 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 12298, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr.i.i, align 2
  %24 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i.i, align 2
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %18, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %28 = load i16, ptr %addr.i.i, align 2
  %arrayidx9.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx9.i.i, align 4
  %flags12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %flags12.i.i, align 2
  %len14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 3, ptr %len14.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 1
  %buf18.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %buf18.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx16.i.i, ptr %buf18.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i.i, align 8
  %call20.i.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i)
  %cmp21.not.i.i = icmp eq i32 %call20.i.i, 2
  br i1 %cmp21.not.i.i, label %if.end4.i114, label %ov5675_read_reg.exit.i

ov5675_read_reg.exit.i:                           ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %do.end16

if.end4.i114:                                     ; preds = %if.end.i112
  %35 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 22133, i32 %36)
  %cmp.not.i113 = icmp eq i32 %36, 22133
  br i1 %cmp.not.i113, label %if.end6.i, label %do.end.i115

do.end.i115:                                      ; preds = %if.end4.i114
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef 22133, i32 noundef %36) #10
  br label %do.end16

if.end6.i:                                        ; preds = %if.end4.i114
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %identified.i, align 1
  br label %do.body20

do.end16:                                         ; preds = %do.end.i115, %ov5675_read_reg.exit.i
  %retval.0.i116 = phi i32 [ -6, %do.end.i115 ], [ -5, %ov5675_read_reg.exit.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i116) #10
  br label %cleanup

do.body20:                                        ; preds = %if.end6.i, %if.end6.do.body20_crit_edge
  %mutex = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 9
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @ov5675_probe.__key) #7
  %cur_mode = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 8
  %38 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 2
  %call.i117 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 8, ptr noundef nonnull @ov5675_init_controls._key, ptr noundef nonnull @.str.48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i118, label %if.end.i119, label %do.body20.do.end28_crit_edge

do.body20.do.end28_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.end.i119:                                      ; preds = %do.body20
  %lock.i = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %mutex, ptr %lock.i, align 4
  %call1.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #7
  %link_freq.i = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 3
  %40 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call1.i, ptr %link_freq.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i119.if.end6.i122_crit_edge, label %if.then4.i

if.end.i119.if.end6.i122_crit_edge:               ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i122

if.then4.i:                                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call1.i, i32 0, i32 20
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %42, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end6.i122

if.end6.i122:                                     ; preds = %if.then4.i, %if.end.i119.if.end6.i122_crit_edge
  %43 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 900000000, i64 3689348814741910323) #11, !srcloc !147
  %44 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 900000000, i64 %43) #11, !srcloc !148
  %call9.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 10422530, i64 noundef 0, i64 noundef %44, i64 noundef 1, i64 noundef %44) #7
  %pixel_rate.i = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 4
  %45 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i, ptr %pixel_rate.i, align 4
  %46 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_mode, align 4
  %vts_min.i = getelementptr inbounds %struct.ov5675_mode, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %vts_min.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vts_min.i, align 4
  %height.i = getelementptr inbounds %struct.ov5675_mode, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height.i, align 4
  %sub.i = sub i32 %49, %51
  %conv.i120 = zext i32 %sub.i to i64
  %sub13.i = sub i32 32767, %51
  %conv14.i = zext i32 %sub13.i to i64
  %vts_def.i = getelementptr inbounds %struct.ov5675_mode, ptr %47, i32 0, i32 3
  %52 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vts_def.i, align 4
  %sub18.i = sub i32 %53, %51
  %conv19.i = zext i32 %sub18.i to i64
  %call20.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 10356993, i64 noundef %conv.i120, i64 noundef %conv14.i, i64 noundef 1, i64 noundef %conv19.i) #7
  %vblank.i = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 5
  %54 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call20.i, ptr %vblank.i, align 4
  %55 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur_mode, align 4
  %hts.i = getelementptr inbounds %struct.ov5675_mode, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %hts.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hts.i, align 4
  %conv.i.i = zext i32 %58 to i64
  %mul.i.i = mul i64 %44, %conv.i.i
  %59 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 6877444662696557083, i64 %mul.i.i) #11, !srcloc !149
  %60 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 6877444662696557083, i64 %mul.i.i, i64 %59, i32 0) #11, !srcloc !150
  %asmresult10.i.i.i = extractvalue { i64, i32 } %60, 0
  %div162263.i.i = lshr i64 %asmresult10.i.i.i, 25
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %56, align 4
  %conv25.i = zext i32 %62 to i64
  %sub26.i = sub nsw i64 %div162263.i.i, %conv25.i
  %call27.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 10356994, i64 noundef %sub26.i, i64 noundef %sub26.i, i64 noundef 1, i64 noundef %sub26.i) #7
  %hblank.i = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 6
  %63 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call27.i, ptr %hblank.i, align 4
  %tobool29.not.i121 = icmp eq ptr %call27.i, null
  br i1 %tobool29.not.i121, label %if.end6.i122.if.end34.i_crit_edge, label %if.then30.i

if.end6.i122.if.end34.i_crit_edge:                ; preds = %if.end6.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then30.i:                                      ; preds = %if.end6.i122
  call void @__sanitizer_cov_trace_pc() #9
  %flags32.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call27.i, i32 0, i32 20
  %64 = ptrtoint ptr %flags32.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags32.i, align 4
  %or33.i = or i32 %65, 4
  store i32 %or33.i, ptr %flags32.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %if.end6.i122.if.end34.i_crit_edge
  %call35.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 10356995, i64 noundef 128, i64 noundef 2047, i64 noundef 1, i64 noundef 128) #7
  %call36.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 10422533, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 1024) #7
  %66 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur_mode, align 4
  %vts_def38.i = getelementptr inbounds %struct.ov5675_mode, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %vts_def38.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vts_def38.i, align 4
  %sub39.i = add i32 %69, -4
  %conv40.i = zext i32 %sub39.i to i64
  %call41.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv40.i, i64 noundef 1, i64 noundef %conv40.i) #7
  %exposure.i = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 7
  %70 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call41.i, ptr %exposure.i, align 4
  %call42.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov5675_test_pattern_menu) #7
  %call43.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call44.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov5675_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %error.i = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 2, i32 9
  %71 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool45.not.i = icmp eq i32 %72, 0
  br i1 %tobool45.not.i, label %if.end30, label %if.end34.i.do.end28_crit_edge

if.end34.i.do.end28_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

do.end28:                                         ; preds = %if.end34.i.do.end28_crit_edge, %do.body20.do.end28_crit_edge
  %retval.0.i123.ph = phi i32 [ %72, %if.end34.i.do.end28_crit_edge ], [ %call.i117, %do.body20.do.end28_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i123.ph) #10
  br label %probe_error_v4l2_ctrl_handler_free

if.end30:                                         ; preds = %if.end34.i
  %ctrl_handler49.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 8
  %73 = ptrtoint ptr %ctrl_handler49.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ctrl_handler.i, ptr %ctrl_handler49.i, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 7
  %74 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @ov5675_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 4
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %or = or i32 %76, 4
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i110, i32 0, i32 11
  %77 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @ov5675_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i110, i32 0, i32 3
  %78 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 1
  %flags36 = getelementptr inbounds %struct.ov5675, ptr %call.i110, i32 0, i32 1, i32 4
  %79 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %flags36, align 4
  %call40 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i110, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call40) #10
  br label %probe_error_v4l2_ctrl_handler_free

if.end47:                                         ; preds = %if.end30
  %call49 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i110) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp = icmp slt i32 %call49, 0
  br i1 %cmp, label %do.end53, label %if.then57

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call49) #10
  br label %probe_error_v4l2_ctrl_handler_free

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %call.i124 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i125 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #7
  br label %cleanup

probe_error_v4l2_ctrl_handler_free:               ; preds = %do.end53, %do.end45, %do.end28
  %ret.0 = phi i32 [ %retval.0.i123.ph, %do.end28 ], [ %call40, %do.end45 ], [ %call49, %do.end53 ]
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 8
  %80 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %81) #7
  call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %probe_error_v4l2_ctrl_handler_free, %if.then57, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i128, %do.end ], [ %retval.0.i116, %do.end16 ], [ %ret.0, %probe_error_v4l2_ctrl_handler_free ], [ 0, %if.then57 ], [ -12, %if.end.cleanup_crit_edge ]
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5675_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i40 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %streaming = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !146
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then3
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !152
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then7_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then7_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !153
  br label %if.then7

if.then7:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %call10 = tail call fastcc i32 @ov5675_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then12:                                        ; preds = %if.end9
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
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp9.not.i.i, label %if.then12.if.end18.sink.split_crit_edge, label %do.end.i

if.then12.if.end18.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40) #10
  br label %if.end18.sink.split

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i40) #7
  %13 = getelementptr inbounds [6 x i8], ptr %buf.i.i40, i32 0, i32 2
  %14 = ptrtoint ptr %buf.i.i40 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 256, ptr %buf.i.i40, align 2
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %13, align 2
  %call.i.i.i42 = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i.i40, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i42)
  %cmp9.not.i.i43 = icmp eq i32 %call.i.i.i42, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i40) #7
  br i1 %cmp9.not.i.i43, label %if.else.ov5675_stop_streaming.exit46_crit_edge, label %do.end.i45

if.else.ov5675_stop_streaming.exit46_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5675_stop_streaming.exit46

do.end.i45:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i44 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44, ptr noundef nonnull @.str.40) #10
  br label %ov5675_stop_streaming.exit46

ov5675_stop_streaming.exit46:                     ; preds = %do.end.i45, %if.else.ov5675_stop_streaming.exit46_crit_edge
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %ov5675_stop_streaming.exit46, %do.end.i, %if.then12.if.end18.sink.split_crit_edge
  %dev.sink = phi ptr [ %dev16, %ov5675_stop_streaming.exit46 ], [ %dev, %if.then12.if.end18.sink.split_crit_edge ], [ %dev, %do.end.i ]
  %ret.0.ph = phi i32 [ 0, %ov5675_stop_streaming.exit46 ], [ %call10, %if.then12.if.end18.sink.split_crit_edge ], [ %call10, %do.end.i ]
  %call.i39 = call i32 @__pm_runtime_idle(ptr noundef %dev.sink, i32 noundef 5) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.end9.if.end18_crit_edge
  %tobool19 = phi i1 [ true, %if.end9.if.end18_crit_edge ], [ false, %if.end18.sink.split ]
  %ret.0 = phi i32 [ 0, %if.end9.if.end18_crit_edge ], [ %ret.0.ph, %if.end18.sink.split ]
  %frombool = zext i1 %tobool19 to i8
  %16 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then7 ], [ %ret.0, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5675_start_streaming(ptr nocapture noundef %ov5675) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov5675, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %identified.i = getelementptr inbounds %struct.ov5675, ptr %ov5675, i32 0, i32 11
  %2 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %identified.i, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %4 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %6 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_buf.i.i, align 4
  %7 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 12298, ptr %addr_buf.i.i, align 2
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
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %14 = load i16, ptr %addr.i.i, align 2
  %arrayidx9.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx9.i.i, align 4
  %flags12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags12.i.i, align 2
  %len14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3, ptr %len14.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 1
  %buf18.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf18.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx16.i.i, ptr %buf18.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i.i, align 8
  %call20.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i)
  %cmp21.not.i.i = icmp eq i32 %call20.i.i, 2
  br i1 %cmp21.not.i.i, label %if.end4.i, label %ov5675_read_reg.exit.i

ov5675_read_reg.exit.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 22133, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 22133
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef 22133, i32 noundef %22) #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %identified.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %entry.if.end_crit_edge
  %cur_mode = getelementptr inbounds %struct.ov5675, ptr %ov5675, i32 0, i32 8
  %24 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_mode, align 4
  %link_freq_index2 = getelementptr inbounds %struct.ov5675_mode, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %link_freq_index2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link_freq_index2, align 4
  %arrayidx = getelementptr [1 x %struct.ov5675_link_freq_config], ptr @link_freq_configs, i32 0, i32 %27
  %call4 = call fastcc i32 @ov5675_write_reg_list(ptr noundef %ov5675, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %28 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_mode, align 4
  %reg_list9 = getelementptr inbounds %struct.ov5675_mode, ptr %29, i32 0, i32 6
  %call10 = call fastcc i32 @ov5675_write_reg_list(ptr noundef %ov5675, ptr noundef %reg_list9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %ov5675, i32 0, i32 8
  %30 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_handler, align 4
  %call19 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %32 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %34 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %35 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 256, ptr %buf.i, align 2
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 16777216, ptr %34, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp9.not.i, label %if.end22.cleanup_crit_edge, label %do.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.40) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end15, %do.end, %do.end.i, %ov5675_read_reg.exit.i
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call10, %do.end15 ], [ -5, %do.end28 ], [ %call19, %if.end17.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ -6, %do.end.i ], [ -5, %ov5675_read_reg.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5675_write_reg_list(ptr nocapture noundef readonly %ov5675, ptr nocapture noundef readonly %r_list) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov5675, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %r_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regs = getelementptr inbounds %struct.ov5675_reg_list, ptr %r_list, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.ov5675_reg, ptr %6, i32 %i.029
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %val = getelementptr %struct.ov5675_reg, ptr %6, i32 %i.029, i32 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 2
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %buf.i, align 2
  %shl.i = shl nuw i32 %conv, 24
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %shl.i, ptr %4, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp9.not.i, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @ov5675_write_reg_list._rs, ptr noundef nonnull @__func__.ov5675_write_reg_list) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %arrayidx9 = getelementptr %struct.ov5675_reg, ptr %16, i32 %i.029
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx9, align 2
  %conv11 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %conv11, i32 noundef -5) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.029, 1
  %19 = ptrtoint ptr %r_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r_list, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5675_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
define internal i32 @ov5675_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
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
  %arrayidx = getelementptr [2 x %struct.ov5675_mode], ptr @supported_modes, i32 0, i32 %1
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
  %height = getelementptr [2 x %struct.ov5675_mode], ptr @supported_modes, i32 0, i32 %1, i32 1
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
define internal i32 @ov5675_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !154

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
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
  %cur_mode = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 8
  %9 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_mode, align 4
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %format2, align 4
  %height.i = getelementptr inbounds %struct.ov5675_mode, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height2.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12298, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %field.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5675_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %call = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 2, i32 noundef 32, i32 noundef 0, i32 noundef 4, i32 noundef %1, i32 noundef %3) #7
  %mutex = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov5675_mode, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height.i, align 4
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12298, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %field.i, align 4
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %14 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %16 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %15, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !154

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %15, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %19, i32 %spec.select.i
  %20 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 8
  %21 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %cur_mode, align 4
  %link_freq = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 3
  %22 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link_freq, align 4
  %link_freq_index = getelementptr inbounds %struct.ov5675_mode, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_freq_index, align 4
  %call6 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %23, i32 noundef %25) #7
  %pixel_rate = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 4
  %26 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pixel_rate, align 4
  %28 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 900000000, i64 3689348814741910323) #11, !srcloc !147
  %29 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 900000000, i64 %28) #11, !srcloc !148
  %call9 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %27, i64 noundef %29) #7
  %vts_def = getelementptr inbounds %struct.ov5675_mode, ptr %call, i32 0, i32 3
  %30 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vts_def, align 4
  %32 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height.i, align 4
  %sub = sub i32 %31, %33
  %vblank = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 5
  %34 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vblank, align 4
  %vts_min = getelementptr inbounds %struct.ov5675_mode, ptr %call, i32 0, i32 4
  %36 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vts_min, align 4
  %sub12 = sub i32 %37, %33
  %conv = zext i32 %sub12 to i64
  %sub14 = sub i32 32767, %33
  %conv15 = zext i32 %sub14 to i64
  %conv16 = sext i32 %sub to i64
  %call17 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %35, i64 noundef %conv, i64 noundef %conv15, i64 noundef 1, i64 noundef %conv16) #7
  %38 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vblank, align 4
  %call19 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %39, i32 noundef %sub) #7
  %hts = getelementptr inbounds %struct.ov5675_mode, ptr %call, i32 0, i32 2
  %40 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hts, align 4
  %conv.i58 = zext i32 %41 to i64
  %mul.i = mul i64 %29, %conv.i58
  %42 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 6877444662696557083, i64 %mul.i) #11, !srcloc !149
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 6877444662696557083, i64 %mul.i, i64 %42, i32 0) #11, !srcloc !150
  %asmresult10.i.i = extractvalue { i64, i32 } %43, 0
  %div162263.i = lshr i64 %asmresult10.i.i, 25
  %44 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call, align 4
  %46 = trunc i64 %div162263.i to i32
  %conv25 = sub i32 %46, %45
  %hblank = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 6
  %47 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hblank, align 4
  %conv26 = sext i32 %conv25 to i64
  %call29 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %48, i64 noundef %conv26, i64 noundef %conv26, i64 noundef 1, i64 noundef %conv26) #7
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
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5675_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i23.i = alloca [6 x i8], align 2
  %msgs.i4.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i5.i = alloca [2 x i8], align 2
  %data_buf.i6.i = alloca [4 x i8], align 4
  %buf.i1.i85 = alloca [6 x i8], align 2
  %msgs.i.i86 = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i87 = alloca [2 x i8], align 2
  %data_buf.i.i88 = alloca [4 x i8], align 4
  %buf.i1.i = alloca [6 x i8], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  %buf.i.i75 = alloca [6 x i8], align 2
  %buf.i69 = alloca [6 x i8], align 2
  %buf.i63 = alloca [6 x i8], align 2
  %buf.i19.i = alloca [6 x i8], align 2
  %buf.i13.i = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
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
  %cur_mode = getelementptr i8, ptr %1, i32 204
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov5675_mode, ptr %7, i32 0, i32 1
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
  %call3 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %13, i64 noundef %15, i64 noundef %conv, i64 noundef %18, i64 noundef %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end6.sw.epilog_crit_edge [
    i32 10356995, label %sw.bb
    i32 10422533, label %sw.bb10
    i32 9963793, label %sw.bb13
    i32 10356993, label %sw.bb16
    i32 10422531, label %sw.bb23
    i32 9963796, label %sw.bb26
    i32 9963797, label %sw.bb29
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val8, align 4
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %26 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 13576, ptr %buf.i, align 2
  %shl.i = shl i32 %23, 16
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %shl.i, ptr %26, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 4
  %retval.0.i = select i1 %cmp9.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val11, align 4
  %31 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %33 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 20505, ptr %buf.i.i, align 2
  %shl.i.i = shl i32 %30, 16
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %shl.i.i, ptr %33, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp9.not.i.i, label %if.end.i, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb10
  %36 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i13.i) #7
  %38 = getelementptr inbounds [6 x i8], ptr %buf.i13.i, i32 0, i32 2
  %39 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 20507, ptr %buf.i13.i, align 2
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %shl.i.i, ptr %38, align 2
  %call.i.i16.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %buf.i13.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i16.i)
  %cmp9.not.i17.i = icmp eq i32 %call.i.i16.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i13.i) #7
  br i1 %cmp9.not.i17.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i19.i) #7
  %43 = getelementptr inbounds [6 x i8], ptr %buf.i19.i, i32 0, i32 2
  %44 = ptrtoint ptr %buf.i19.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 20509, ptr %buf.i19.i, align 2
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %shl.i.i, ptr %43, align 2
  %call.i.i22.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %buf.i19.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i22.i)
  %cmp9.not.i23.i = icmp eq i32 %call.i.i22.i, 4
  %retval.0.i24.i = select i1 %cmp9.not.i23.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i19.i) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %46 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val14, align 4
  %shl = shl i32 %47, 11
  %48 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i63) #7
  %50 = getelementptr inbounds [6 x i8], ptr %buf.i63, i32 0, i32 2
  %51 = ptrtoint ptr %buf.i63 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 13568, ptr %buf.i63, align 2
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %shl, ptr %50, align 2
  %call.i.i66 = call i32 @i2c_transfer_buffer_flags(ptr noundef %49, ptr noundef nonnull %buf.i63, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i66)
  %cmp9.not.i67 = icmp eq i32 %call.i.i66, 5
  %retval.0.i68 = select i1 %cmp9.not.i67, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i63) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode17 = getelementptr i8, ptr %1, i32 204
  %53 = ptrtoint ptr %cur_mode17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_mode17, align 4
  %height18 = getelementptr inbounds %struct.ov5675_mode, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height18, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %57 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val19, align 4
  %add20 = add i32 %58, %56
  %59 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i69) #7
  %61 = getelementptr inbounds [6 x i8], ptr %buf.i69, i32 0, i32 2
  %62 = ptrtoint ptr %buf.i69 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 14350, ptr %buf.i69, align 2
  %add21 = shl i32 %add20, 16
  %shl.i71 = add i32 %add21, 655360
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %shl.i71, ptr %61, align 2
  %call.i.i72 = call i32 @i2c_transfer_buffer_flags(ptr noundef %60, ptr noundef nonnull %buf.i69, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i72)
  %cmp9.not.i73 = icmp eq i32 %call.i.i72, 4
  %retval.0.i74 = select i1 %cmp9.not.i73, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i69) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %64 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i = icmp eq i32 %65, 0
  %sub.i = shl i32 %65, 26
  %66 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i75) #7
  %68 = getelementptr inbounds [6 x i8], ptr %buf.i.i75, i32 0, i32 2
  %69 = ptrtoint ptr %buf.i.i75 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 17667, ptr %buf.i.i75, align 2
  %or.i = add i32 %sub.i, 2080374784
  %or.op.i = or i32 %or.i, -2147483648
  %shl.i.i77 = select i1 %tobool.not.i, i32 0, i32 %or.op.i
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %shl.i.i77, ptr %68, align 2
  %call.i.i.i78 = call i32 @i2c_transfer_buffer_flags(ptr noundef %67, ptr noundef nonnull %buf.i.i75, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i78)
  %cmp9.not.i.i79 = icmp eq i32 %call.i.i.i78, 3
  %retval.0.i.i = select i1 %cmp9.not.i.i79, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i75) #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end6
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %71 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val27, align 4
  %73 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %75 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %76 = call ptr @memset(ptr %75, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %77 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %data_buf.i.i, align 4
  %78 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 14368, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %addr.i.i, align 2
  %81 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %flags.i.i, align 2
  %83 = ptrtoint ptr %75 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 2, ptr %75, align 4
  %buf.i.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %buf.i.i81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %addr_buf.i.i, ptr %buf.i.i81, align 4
  %85 = load i16, ptr %addr.i.i, align 2
  %arrayidx9.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %arrayidx9.i.i, align 4
  %flags12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %flags12.i.i, align 2
  %len14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %88 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %len14.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 3
  %buf18.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %89 = ptrtoint ptr %buf18.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx16.i.i, ptr %buf18.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 3
  %90 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %adapter.i.i, align 8
  %call20.i.i = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i)
  %cmp21.not.i.i = icmp eq i32 %call20.i.i, 2
  br i1 %cmp21.not.i.i, label %if.end.i84, label %ov5675_read_reg.exit.i

ov5675_read_reg.exit.i:                           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %sw.epilog

if.end.i84:                                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool1.not.i = icmp eq i32 %72, 0
  %and.i = and i32 %93, 247
  %masksel.i = select i1 %tobool1.not.i, i32 8, i32 0
  %cond.i = or i32 %and.i, %masksel.i
  %94 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i1.i) #7
  %96 = getelementptr inbounds [6 x i8], ptr %buf.i1.i, i32 0, i32 2
  %97 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 14368, ptr %buf.i1.i, align 2
  %shl.i.i82 = shl nuw i32 %cond.i, 24
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %shl.i.i82, ptr %96, align 2
  %call.i.i.i83 = call i32 @i2c_transfer_buffer_flags(ptr noundef %95, ptr noundef nonnull %buf.i1.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i1.i) #7
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end6
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %99 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val30, align 4
  %101 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i86) #7
  %103 = getelementptr inbounds i8, ptr %msgs.i.i86, i32 4
  %104 = call ptr @memset(ptr %103, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i87) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i88) #7
  %105 = ptrtoint ptr %data_buf.i.i88 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %data_buf.i.i88, align 4
  %106 = ptrtoint ptr %addr_buf.i.i87 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 14368, ptr %addr_buf.i.i87, align 2
  %addr.i.i90 = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 1
  %107 = ptrtoint ptr %addr.i.i90 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %addr.i.i90, align 2
  %109 = ptrtoint ptr %msgs.i.i86 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %msgs.i.i86, align 4
  %flags.i.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i.i91 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i.i91, align 2
  %111 = ptrtoint ptr %103 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 2, ptr %103, align 4
  %buf.i.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86, i32 0, i32 3
  %112 = ptrtoint ptr %buf.i.i92 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %addr_buf.i.i87, ptr %buf.i.i92, align 4
  %113 = load i16, ptr %addr.i.i90, align 2
  %arrayidx9.i.i93 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i86, i32 0, i32 1
  %114 = ptrtoint ptr %arrayidx9.i.i93 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %arrayidx9.i.i93, align 4
  %flags12.i.i94 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i86, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %flags12.i.i94 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %flags12.i.i94, align 2
  %len14.i.i95 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i86, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %len14.i.i95 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %len14.i.i95, align 4
  %arrayidx16.i.i96 = getelementptr inbounds [4 x i8], ptr %data_buf.i.i88, i32 0, i32 3
  %buf18.i.i97 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i86, i32 0, i32 1, i32 3
  %117 = ptrtoint ptr %buf18.i.i97 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %arrayidx16.i.i96, ptr %buf18.i.i97, align 4
  %adapter.i.i98 = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 3
  %118 = ptrtoint ptr %adapter.i.i98 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %adapter.i.i98, align 8
  %call20.i.i99 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msgs.i.i86, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i99)
  %cmp21.not.i.i100 = icmp eq i32 %call20.i.i99, 2
  br i1 %cmp21.not.i.i100, label %if.end.i108, label %ov5675_read_reg.exit.i101

ov5675_read_reg.exit.i101:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i88) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i87) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i86) #7
  br label %sw.epilog

if.end.i108:                                      ; preds = %sw.bb29
  %conv31 = trunc i32 %100 to i8
  %120 = ptrtoint ptr %data_buf.i.i88 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %data_buf.i.i88, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i88) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i87) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i86) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv31)
  %tobool1.not.i102 = icmp eq i8 %conv31, 0
  %and3.i = and i32 %121, 207
  %masksel.i103 = select i1 %tobool1.not.i102, i32 0, i32 48
  %cond.i104 = or i32 %and3.i, %masksel.i103
  %122 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i1.i85) #7
  %124 = getelementptr inbounds [6 x i8], ptr %buf.i1.i85, i32 0, i32 2
  %125 = ptrtoint ptr %buf.i1.i85 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 14368, ptr %buf.i1.i85, align 2
  %shl.i.i105 = shl nuw i32 %cond.i104, 24
  %126 = ptrtoint ptr %124 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %shl.i.i105, ptr %124, align 2
  %call.i.i.i106 = call i32 @i2c_transfer_buffer_flags(ptr noundef %123, ptr noundef nonnull %buf.i1.i85, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i106)
  %cmp9.not.i.i107 = icmp eq i32 %call.i.i.i106, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i1.i85) #7
  br i1 %cmp9.not.i.i107, label %if.end7.i, label %if.end.i108.sw.epilog_crit_edge

if.end.i108.sw.epilog_crit_edge:                  ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.end.i108
  %127 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i4.i) #7
  %129 = getelementptr inbounds i8, ptr %msgs.i4.i, i32 4
  %130 = call ptr @memset(ptr %129, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i5.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i6.i) #7
  %131 = ptrtoint ptr %data_buf.i6.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %data_buf.i6.i, align 4
  %132 = ptrtoint ptr %addr_buf.i5.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 14141, ptr %addr_buf.i5.i, align 2
  %addr.i8.i = getelementptr inbounds %struct.i2c_client, ptr %128, i32 0, i32 1
  %133 = ptrtoint ptr %addr.i8.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %addr.i8.i, align 2
  %135 = ptrtoint ptr %msgs.i4.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %msgs.i4.i, align 4
  %flags.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i4.i, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i9.i, align 2
  %137 = ptrtoint ptr %129 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 2, ptr %129, align 4
  %buf.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i4.i, i32 0, i32 3
  %138 = ptrtoint ptr %buf.i11.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %addr_buf.i5.i, ptr %buf.i11.i, align 4
  %139 = load i16, ptr %addr.i8.i, align 2
  %arrayidx9.i12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i4.i, i32 0, i32 1
  %140 = ptrtoint ptr %arrayidx9.i12.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %arrayidx9.i12.i, align 4
  %flags12.i13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i4.i, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %flags12.i13.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %flags12.i13.i, align 2
  %len14.i14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i4.i, i32 0, i32 1, i32 2
  %142 = ptrtoint ptr %len14.i14.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %len14.i14.i, align 4
  %arrayidx16.i15.i = getelementptr inbounds [4 x i8], ptr %data_buf.i6.i, i32 0, i32 3
  %buf18.i16.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i4.i, i32 0, i32 1, i32 3
  %143 = ptrtoint ptr %buf18.i16.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %arrayidx16.i15.i, ptr %buf18.i16.i, align 4
  %adapter.i17.i = getelementptr inbounds %struct.i2c_client, ptr %128, i32 0, i32 3
  %144 = ptrtoint ptr %adapter.i17.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %adapter.i17.i, align 8
  %call20.i18.i = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %msgs.i4.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i18.i)
  %cmp21.not.i19.i = icmp eq i32 %call20.i18.i, 2
  br i1 %cmp21.not.i19.i, label %if.end11.i, label %ov5675_read_reg.exit22.i

ov5675_read_reg.exit22.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i6.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i5.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i4.i) #7
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %data_buf.i6.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %data_buf.i6.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i6.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i5.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i4.i) #7
  %and17.i = and i32 %147, 253
  %masksel41.i = select i1 %tobool1.not.i102, i32 0, i32 2
  %cond19.i = or i32 %and17.i, %masksel41.i
  %148 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i23.i) #7
  %150 = getelementptr inbounds [6 x i8], ptr %buf.i23.i, i32 0, i32 2
  %151 = ptrtoint ptr %buf.i23.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 14141, ptr %buf.i23.i, align 2
  %shl.i25.i = shl nuw i32 %cond19.i, 24
  %152 = ptrtoint ptr %150 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 %shl.i25.i, ptr %150, align 2
  %call.i.i26.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %149, ptr noundef nonnull %buf.i23.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i23.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end11.i, %ov5675_read_reg.exit22.i, %if.end.i108.sw.epilog_crit_edge, %ov5675_read_reg.exit.i101, %if.end.i84, %ov5675_read_reg.exit.i, %sw.bb23, %sw.bb16, %sw.bb13, %if.end4.i, %if.end.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb, %if.end6.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.i, %sw.bb23 ], [ %retval.0.i74, %sw.bb16 ], [ %retval.0.i68, %sw.bb13 ], [ %retval.0.i, %sw.bb ], [ -22, %if.end6.sw.epilog_crit_edge ], [ %retval.0.i24.i, %if.end4.i ], [ -5, %sw.bb10.sw.epilog_crit_edge ], [ -5, %if.end.i.sw.epilog_crit_edge ], [ 0, %ov5675_read_reg.exit.i ], [ 0, %if.end.i84 ], [ 0, %ov5675_read_reg.exit.i101 ], [ 0, %if.end.i108.sw.epilog_crit_edge ], [ 0, %ov5675_read_reg.exit22.i ], [ 0, %if.end11.i ]
  %call.i109 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5675_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov5675, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !155

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2592, ptr %5, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1944, ptr %height2.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12298, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5675_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.ov5675, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.ov5675, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !146
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
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp9.not.i.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5675_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.ov5675, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.ov5675, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @ov5675_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end6_crit_edge, label %if.then3

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.then
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %streaming, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
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
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp9.not.i.i, label %if.then3.ov5675_stop_streaming.exit_crit_edge, label %do.end.i

if.then3.ov5675_stop_streaming.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5675_stop_streaming.exit

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40) #10
  br label %ov5675_stop_streaming.exit

ov5675_stop_streaming.exit:                       ; preds = %do.end.i, %if.then3.ov5675_stop_streaming.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %ov5675_stop_streaming.exit
  %retval.0 = phi i32 [ %call1, %ov5675_stop_streaming.exit ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !92, !93, !94, !96, !97, !98, !100, !102, !104, !105, !106, !107, !109, !111, !113, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_ov5675__294_1267_ov5675_i2c_driver_init6, !1, !"__initcall__kmod_ov5675__294_1267_ov5675_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov5675.c", i32 1267, i32 1}
!2 = !{ptr @__exitcall_ov5675_i2c_driver_exit, !1, !"__exitcall_ov5675_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov5675.c", i32 1269, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov5675.c", i32 1270, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov5675.c", i32 1271, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov5675.c", i32 1258, i32 11}
!12 = !{ptr @ov5675_i2c_driver, !13, !"ov5675_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov5675.c", i32 1256, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov5675.c", i32 1174, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov5675_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov5675_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov5675.c", i32 1189, i32 4}
!24 = !{ptr @ov5675_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov5675_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ov5675_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov5675.c", i32 1194, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/ov5675.c", i32 1198, i32 3}
!31 = !{ptr @ov5675_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ov5675_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ov5675.c", i32 1209, i32 3}
!35 = !{ptr @ov5675_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ov5675_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ov5675.c", i32 1215, i32 3}
!39 = !{ptr @ov5675_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ov5675_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov5675.c", i32 1097, i32 41}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ov5675.c", i32 1100, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ov5675_check_hwcfg._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ov5675_check_hwcfg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov5675.c", i32 1105, i32 3}
!50 = !{ptr @ov5675_check_hwcfg._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ov5675_check_hwcfg._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov5675.c", i32 1119, i32 3}
!54 = !{ptr @ov5675_check_hwcfg._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ov5675_check_hwcfg._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov5675.c", i32 1126, i32 3}
!58 = !{ptr @ov5675_check_hwcfg._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ov5675_check_hwcfg._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov5675.c", i32 1139, i32 4}
!62 = !{ptr @ov5675_check_hwcfg._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ov5675_check_hwcfg._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @link_freq_menu_items, !65, !"link_freq_menu_items", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov5675.c", i32 436, i32 18}
!66 = !{ptr @ov5675_subdev_ops, !67, !"ov5675_subdev_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov5675.c", i32 1070, i32 37}
!68 = !{ptr @ov5675_video_ops, !69, !"ov5675_video_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov5675.c", i32 1059, i32 43}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov5675.c", i32 853, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ov5675_start_streaming._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ov5675_start_streaming._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/ov5675.c", i32 860, i32 3}
!77 = !{ptr @ov5675_start_streaming._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ov5675_start_streaming._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ov5675.c", i32 871, i32 3}
!81 = !{ptr @ov5675_start_streaming._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ov5675_start_streaming._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @link_freq_configs, !84, !"link_freq_configs", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ov5675.c", i32 440, i32 45}
!85 = !{ptr @mipi_data_rate_900mbps, !86, !"mipi_data_rate_900mbps", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/ov5675.c", i32 113, i32 32}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/ov5675.c", i32 576, i32 4}
!89 = !{ptr @ov5675_write_reg_list._rs, !88, !"_rs", i1 false, i1 false}
!90 = !{ptr @__func__.ov5675_write_reg_list, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ov5675_write_reg_list._entry, !88, !"_entry", i1 false, i1 false}
!93 = !{ptr @ov5675_write_reg_list._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/ov5675.c", i32 884, i32 3}
!96 = !{ptr @ov5675_stop_streaming._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ov5675_stop_streaming._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @ov5675_pad_ops, !99, !"ov5675_pad_ops", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ov5675.c", i32 1063, i32 41}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov5675.c", i32 829, i32 3}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ov5675_identify_module._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ov5675_identify_module._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @supported_modes, !108, !"supported_modes", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/ov5675.c", i32 449, i32 33}
!109 = !{ptr @mode_2592x1944_regs, !110, !"mode_2592x1944_regs", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov5675.c", i32 122, i32 32}
!111 = !{ptr @mode_1296x972_regs, !112, !"mode_1296x972_regs", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov5675.c", i32 275, i32 32}
!113 = !{ptr @ov5675_init_controls._key, !114, !"_key", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov5675.c", i32 746, i32 8}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ov5675_ctrl_ops, !117, !"ov5675_ctrl_ops", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/ov5675.c", i32 735, i32 35}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/ov5675.c", i32 429, i32 2}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/ov5675.c", i32 430, i32 2}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ov5675.c", i32 431, i32 2}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov5675.c", i32 432, i32 2}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ov5675.c", i32 433, i32 2}
!128 = !{ptr @ov5675_test_pattern_menu, !129, !"ov5675_test_pattern_menu", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ov5675.c", i32 428, i32 27}
!130 = !{ptr @ov5675_internal_ops, !131, !"ov5675_internal_ops", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/ov5675.c", i32 1079, i32 46}
!132 = !{ptr @ov5675_subdev_entity_ops, !133, !"ov5675_subdev_entity_ops", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov5675.c", i32 1075, i32 45}
!134 = !{ptr @ov5675_pm_ops, !135, !"ov5675_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov5675.c", i32 1243, i32 32}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"auto-init"}
!146 = !{i8 0, i8 2}
!147 = !{i64 1526943, i64 1526970}
!148 = !{i64 1527283, i64 1527310, i64 1527344, i64 1527365}
!149 = !{i64 1526773, i64 1526800}
!150 = !{i64 1527468, i64 1527495, i64 1527528, i64 1527549, i64 1527576, i64 1527602}
!151 = !{i64 2148373935}
!152 = !{i64 858758, i64 858783, i64 858805, i64 858821, i64 858833, i64 858853, i64 858877, i64 858893, i64 858905}
!153 = !{i64 2148374123}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{!"branch_weights", i32 1, i32 2000}
