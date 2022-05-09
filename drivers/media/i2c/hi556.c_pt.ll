; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/hi556.c_pt.bc'
source_filename = "../drivers/media/i2c/hi556.c"
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
%struct.hi556_mode = type { i32, i32, i32, i32, i32, i32, %struct.hi556_reg_list }
%struct.hi556_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hi556_link_freq_config = type { %struct.hi556_reg_list }
%struct.hi556_reg = type { i16, i16 }
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
%struct.hi556 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8 }
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

@__initcall__kmod_hi556__294_1214_hi556_i2c_driver_init6 = internal global ptr @hi556_i2c_driver_init, section ".initcall6.init", align 4
@hi556_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @hi556_remove, ptr @hi556_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi556_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_hi556_i2c_driver_exit = internal global ptr @hi556_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [44 x i8] c"hi556.author=Shawn Tu <shawnx.tu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [44 x i8] c"hi556.description=Hynix HI556 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [35 x i8] c"hi556.file=drivers/media/i2c/hi556\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [21 x i8] c"hi556.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hi556\00", [26 x i8] zeroinitializer }, align 32
@hi556_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hi556_suspend, ptr @hi556_resume, ptr @hi556_suspend, ptr @hi556_resume, ptr @hi556_suspend, ptr @hi556_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hi556_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to check HW configuration: %d\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hi556_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/media/i2c/hi556.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi556_probe._entry_ptr = internal global ptr @hi556_probe._entry, section ".printk_index", align 4
@hi556_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @hi556_video_ops, ptr null, ptr null, ptr null, ptr @hi556_pad_ops }, [32 x i8] zeroinitializer }, align 32
@hi556_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find sensor: %d\00", [38 x i8] zeroinitializer }, align 32
@hi556_probe._entry_ptr.8 = internal global ptr @hi556_probe._entry.6, section ".printk_index", align 4
@hi556_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hi556->mutex\00", [18 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [2 x %struct.hi556_mode], [32 x i8] } { [2 x %struct.hi556_mode] [%struct.hi556_mode { i32 2592, i32 1944, i32 2816, i32 2068, i32 2068, i32 0, %struct.hi556_reg_list { i32 41, ptr @mode_2592x1944_regs } }, %struct.hi556_mode { i32 1296, i32 972, i32 2816, i32 2068, i32 2068, i32 0, %struct.hi556_reg_list { i32 41, ptr @mode_1296x972_regs } }], [32 x i8] zeroinitializer }, align 32
@hi556_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@hi556_probe._entry_ptr.12 = internal global ptr @hi556_probe._entry.10, section ".printk_index", align 4
@hi556_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @hi556_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@hi556_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@hi556_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init entity pads: %d\00", [33 x i8] zeroinitializer }, align 32
@hi556_probe._entry_ptr.15 = internal global ptr @hi556_probe._entry.13, section ".printk_index", align 4
@hi556_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register V4L2 subdev: %d\00", [61 x i8] zeroinitializer }, align 32
@hi556_probe._entry_ptr.18 = internal global ptr @hi556_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@hi556_check_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 1052, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get clock frequency\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hi556_check_hwcfg\00", [46 x i8] zeroinitializer }, align 32
@hi556_check_hwcfg._entry_ptr = internal global ptr @hi556_check_hwcfg._entry, section ".printk_index", align 4
@hi556_check_hwcfg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 1057, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"external clock %d is not supported\00", [61 x i8] zeroinitializer }, align 32
@hi556_check_hwcfg._entry_ptr.24 = internal global ptr @hi556_check_hwcfg._entry.22, section ".printk_index", align 4
@hi556_check_hwcfg._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 1072, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"number of CSI2 data lanes %d is not supported\00", [50 x i8] zeroinitializer }, align 32
@hi556_check_hwcfg._entry_ptr.27 = internal global ptr @hi556_check_hwcfg._entry.25, section ".printk_index", align 4
@hi556_check_hwcfg._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 1078, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequencies defined\00", [36 x i8] zeroinitializer }, align 32
@hi556_check_hwcfg._entry_ptr.30 = internal global ptr @hi556_check_hwcfg._entry.28, section ".printk_index", align 4
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 437000000], [24 x i8] zeroinitializer }, align 32
@hi556_check_hwcfg._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.3, i32 1092, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no link frequency %lld supported\00", [63 x i8] zeroinitializer }, align 32
@hi556_check_hwcfg._entry_ptr.33 = internal global ptr @hi556_check_hwcfg._entry.31, section ".printk_index", align 4
@hi556_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi556_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@hi556_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @hi556_enum_mbus_code, ptr @hi556_enum_frame_size, ptr null, ptr @hi556_get_format, ptr @hi556_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@link_freq_configs = internal constant { [1 x %struct.hi556_link_freq_config], [24 x i8] } { [1 x %struct.hi556_link_freq_config] [%struct.hi556_link_freq_config { %struct.hi556_reg_list { i32 222, ptr @mipi_data_rate_874mbps } }], [24 x i8] zeroinitializer }, align 32
@hi556_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set plls\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi556_start_streaming\00", [42 x i8] zeroinitializer }, align 32
@hi556_start_streaming._entry_ptr = internal global ptr @hi556_start_streaming._entry, section ".printk_index", align 4
@hi556_start_streaming._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set mode\00", [45 x i8] zeroinitializer }, align 32
@hi556_start_streaming._entry_ptr.38 = internal global ptr @hi556_start_streaming._entry.36, section ".printk_index", align 4
@hi556_start_streaming._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 821, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to set stream\00", [43 x i8] zeroinitializer }, align 32
@hi556_start_streaming._entry_ptr.41 = internal global ptr @hi556_start_streaming._entry.39, section ".printk_index", align 4
@mipi_data_rate_874mbps = internal constant { [222 x %struct.hi556_reg], [200 x i8] } { [222 x %struct.hi556_reg] [%struct.hi556_reg { i16 3584, i16 258 }, %struct.hi556_reg { i16 3586, i16 258 }, %struct.hi556_reg { i16 3596, i16 256 }, %struct.hi556_reg { i16 8192, i16 29696 }, %struct.hi556_reg { i16 8194, i16 28 }, %struct.hi556_reg { i16 8196, i16 578 }, %struct.hi556_reg { i16 8198, i16 2370 }, %struct.hi556_reg { i16 8200, i16 28679 }, %struct.hi556_reg { i16 8202, i16 4057 }, %struct.hi556_reg { i16 8204, i16 601 }, %struct.hi556_reg { i16 8206, i16 28680 }, %struct.hi556_reg { i16 8208, i16 5646 }, %struct.hi556_reg { i16 8210, i16 71 }, %struct.hi556_reg { i16 8212, i16 8472 }, %struct.hi556_reg { i16 8214, i16 65 }, %struct.hi556_reg { i16 8216, i16 216 }, %struct.hi556_reg { i16 8218, i16 325 }, %struct.hi556_reg { i16 8220, i16 6 }, %struct.hi556_reg { i16 8222, i16 385 }, %struct.hi556_reg { i16 8224, i16 5068 }, %struct.hi556_reg { i16 8226, i16 8279 }, %struct.hi556_reg { i16 8228, i16 28673 }, %struct.hi556_reg { i16 8230, i16 4042 }, %struct.hi556_reg { i16 8232, i16 203 }, %struct.hi556_reg { i16 8234, i16 159 }, %struct.hi556_reg { i16 8236, i16 28674 }, %struct.hi556_reg { i16 8238, i16 5068 }, %struct.hi556_reg { i16 8240, i16 411 }, %struct.hi556_reg { i16 8242, i16 333 }, %struct.hi556_reg { i16 8244, i16 10631 }, %struct.hi556_reg { i16 8246, i16 10086 }, %struct.hi556_reg { i16 8248, i16 32 }, %struct.hi556_reg { i16 8250, i16 8288 }, %struct.hi556_reg { i16 8252, i16 3677 }, %struct.hi556_reg { i16 8254, i16 6173 }, %struct.hi556_reg { i16 8256, i16 8294 }, %struct.hi556_reg { i16 8258, i16 8388 }, %struct.hi556_reg { i16 8260, i16 20480 }, %struct.hi556_reg { i16 8262, i16 5 }, %struct.hi556_reg { i16 8264, i16 0 }, %struct.hi556_reg { i16 8266, i16 475 }, %struct.hi556_reg { i16 8268, i16 602 }, %struct.hi556_reg { i16 8270, i16 192 }, %struct.hi556_reg { i16 8272, i16 5 }, %struct.hi556_reg { i16 8274, i16 6 }, %struct.hi556_reg { i16 8276, i16 2777 }, %struct.hi556_reg { i16 8278, i16 601 }, %struct.hi556_reg { i16 8280, i16 1560 }, %struct.hi556_reg { i16 8282, i16 600 }, %struct.hi556_reg { i16 8284, i16 8806 }, %struct.hi556_reg { i16 8286, i16 8392 }, %struct.hi556_reg { i16 8288, i16 8288 }, %struct.hi556_reg { i16 8290, i16 28795 }, %struct.hi556_reg { i16 8292, i16 4061 }, %struct.hi556_reg { i16 8294, i16 -32328 }, %struct.hi556_reg { i16 8296, i16 20544 }, %struct.hi556_reg { i16 8298, i16 32 }, %struct.hi556_reg { i16 8300, i16 20576 }, %struct.hi556_reg { i16 8302, i16 12611 }, %struct.hi556_reg { i16 8304, i16 20609 }, %struct.hi556_reg { i16 8306, i16 604 }, %struct.hi556_reg { i16 8308, i16 30720 }, %struct.hi556_reg { i16 8310, i16 29696 }, %struct.hi556_reg { i16 8312, i16 28 }, %struct.hi556_reg { i16 8314, i16 578 }, %struct.hi556_reg { i16 8316, i16 2370 }, %struct.hi556_reg { i16 8318, i16 3033 }, %struct.hi556_reg { i16 8320, i16 601 }, %struct.hi556_reg { i16 8322, i16 28680 }, %struct.hi556_reg { i16 8324, i16 5646 }, %struct.hi556_reg { i16 8326, i16 71 }, %struct.hi556_reg { i16 8328, i16 8472 }, %struct.hi556_reg { i16 8330, i16 65 }, %struct.hi556_reg { i16 8332, i16 216 }, %struct.hi556_reg { i16 8334, i16 325 }, %struct.hi556_reg { i16 8336, i16 6 }, %struct.hi556_reg { i16 8338, i16 385 }, %struct.hi556_reg { i16 8340, i16 5068 }, %struct.hi556_reg { i16 8342, i16 8279 }, %struct.hi556_reg { i16 8344, i16 28673 }, %struct.hi556_reg { i16 8346, i16 4042 }, %struct.hi556_reg { i16 8348, i16 203 }, %struct.hi556_reg { i16 8350, i16 159 }, %struct.hi556_reg { i16 8352, i16 28674 }, %struct.hi556_reg { i16 8354, i16 5068 }, %struct.hi556_reg { i16 8356, i16 411 }, %struct.hi556_reg { i16 8358, i16 333 }, %struct.hi556_reg { i16 8360, i16 10631 }, %struct.hi556_reg { i16 8362, i16 10086 }, %struct.hi556_reg { i16 8364, i16 32 }, %struct.hi556_reg { i16 8366, i16 8288 }, %struct.hi556_reg { i16 8368, i16 3677 }, %struct.hi556_reg { i16 8370, i16 6173 }, %struct.hi556_reg { i16 8372, i16 8294 }, %struct.hi556_reg { i16 8374, i16 8388 }, %struct.hi556_reg { i16 8376, i16 20640 }, %struct.hi556_reg { i16 8378, i16 5 }, %struct.hi556_reg { i16 8380, i16 0 }, %struct.hi556_reg { i16 8382, i16 475 }, %struct.hi556_reg { i16 8384, i16 602 }, %struct.hi556_reg { i16 8386, i16 192 }, %struct.hi556_reg { i16 8388, i16 5 }, %struct.hi556_reg { i16 8390, i16 6 }, %struct.hi556_reg { i16 8392, i16 2777 }, %struct.hi556_reg { i16 8394, i16 601 }, %struct.hi556_reg { i16 8396, i16 1560 }, %struct.hi556_reg { i16 8398, i16 600 }, %struct.hi556_reg { i16 8400, i16 8806 }, %struct.hi556_reg { i16 8402, i16 8392 }, %struct.hi556_reg { i16 8404, i16 8288 }, %struct.hi556_reg { i16 8406, i16 28795 }, %struct.hi556_reg { i16 8408, i16 4061 }, %struct.hi556_reg { i16 8410, i16 -31048 }, %struct.hi556_reg { i16 8412, i16 20704 }, %struct.hi556_reg { i16 8414, i16 32 }, %struct.hi556_reg { i16 8416, i16 20736 }, %struct.hi556_reg { i16 8418, i16 12611 }, %struct.hi556_reg { i16 8420, i16 20769 }, %struct.hi556_reg { i16 8422, i16 30720 }, %struct.hi556_reg { i16 8424, i16 12608 }, %struct.hi556_reg { i16 8426, i16 452 }, %struct.hi556_reg { i16 8428, i16 449 }, %struct.hi556_reg { i16 8430, i16 448 }, %struct.hi556_reg { i16 8432, i16 452 }, %struct.hi556_reg { i16 8434, i16 9984 }, %struct.hi556_reg { i16 8436, i16 15680 }, %struct.hi556_reg { i16 8438, i16 30720 }, %struct.hi556_reg { i16 8440, i16 -1 }, %struct.hi556_reg { i16 10238, i16 -8192 }, %struct.hi556_reg { i16 12288, i16 24824 }, %struct.hi556_reg { i16 12290, i16 6271 }, %struct.hi556_reg { i16 12292, i16 28768 }, %struct.hi556_reg { i16 12294, i16 276 }, %struct.hi556_reg { i16 12296, i16 24752 }, %struct.hi556_reg { i16 12298, i16 5235 }, %struct.hi556_reg { i16 12300, i16 19 }, %struct.hi556_reg { i16 12302, i16 5135 }, %struct.hi556_reg { i16 12304, i16 64 }, %struct.hi556_reg { i16 12306, i16 4111 }, %struct.hi556_reg { i16 12308, i16 24824 }, %struct.hi556_reg { i16 12310, i16 6271 }, %struct.hi556_reg { i16 12312, i16 28768 }, %struct.hi556_reg { i16 12314, i16 276 }, %struct.hi556_reg { i16 12316, i16 24752 }, %struct.hi556_reg { i16 12318, i16 5235 }, %struct.hi556_reg { i16 12320, i16 19 }, %struct.hi556_reg { i16 12322, i16 5135 }, %struct.hi556_reg { i16 12324, i16 64 }, %struct.hi556_reg { i16 12326, i16 15 }, %struct.hi556_reg { i16 2816, i16 0 }, %struct.hi556_reg { i16 2818, i16 69 }, %struct.hi556_reg { i16 2820, i16 -19451 }, %struct.hi556_reg { i16 2822, i16 -15357 }, %struct.hi556_reg { i16 2824, i16 129 }, %struct.hi556_reg { i16 2826, i16 -32174 }, %struct.hi556_reg { i16 2828, i16 -2028 }, %struct.hi556_reg { i16 2830, i16 -14824 }, %struct.hi556_reg { i16 2832, i16 -22488 }, %struct.hi556_reg { i16 2834, i16 76 }, %struct.hi556_reg { i16 2836, i16 16488 }, %struct.hi556_reg { i16 2838, i16 0 }, %struct.hi556_reg { i16 3888, i16 23317 }, %struct.hi556_reg { i16 3890, i16 28775 }, %struct.hi556_reg { i16 2388, i16 9 }, %struct.hi556_reg { i16 2390, i16 0 }, %struct.hi556_reg { i16 2392, i16 -17536 }, %struct.hi556_reg { i16 2394, i16 20800 }, %struct.hi556_reg { i16 3072, i16 4368 }, %struct.hi556_reg { i16 3074, i16 17 }, %struct.hi556_reg { i16 3076, i16 0 }, %struct.hi556_reg { i16 3078, i16 512 }, %struct.hi556_reg { i16 3088, i16 64 }, %struct.hi556_reg { i16 3090, i16 64 }, %struct.hi556_reg { i16 3092, i16 64 }, %struct.hi556_reg { i16 3094, i16 64 }, %struct.hi556_reg { i16 2576, i16 16384 }, %struct.hi556_reg { i16 12392, i16 -2048 }, %struct.hi556_reg { i16 12394, i16 -1930 }, %struct.hi556_reg { i16 108, i16 0 }, %struct.hi556_reg { i16 94, i16 512 }, %struct.hi556_reg { i16 14, i16 256 }, %struct.hi556_reg { i16 3594, i16 1 }, %struct.hi556_reg { i16 74, i16 256 }, %struct.hi556_reg { i16 76, i16 0 }, %struct.hi556_reg { i16 78, i16 256 }, %struct.hi556_reg { i16 12, i16 34 }, %struct.hi556_reg { i16 8, i16 2816 }, %struct.hi556_reg { i16 90, i16 514 }, %struct.hi556_reg { i16 18, i16 14 }, %struct.hi556_reg { i16 24, i16 2611 }, %struct.hi556_reg { i16 34, i16 8 }, %struct.hi556_reg { i16 40, i16 23 }, %struct.hi556_reg { i16 36, i16 40 }, %struct.hi556_reg { i16 42, i16 45 }, %struct.hi556_reg { i16 38, i16 48 }, %struct.hi556_reg { i16 44, i16 1993 }, %struct.hi556_reg { i16 46, i16 4369 }, %struct.hi556_reg { i16 48, i16 4369 }, %struct.hi556_reg { i16 50, i16 4369 }, %struct.hi556_reg { i16 6, i16 1980 }, %struct.hi556_reg { i16 2594, i16 0 }, %struct.hi556_reg { i16 2578, i16 2592 }, %struct.hi556_reg { i16 2580, i16 1944 }, %struct.hi556_reg { i16 62, i16 0 }, %struct.hi556_reg { i16 116, i16 2062 }, %struct.hi556_reg { i16 112, i16 1031 }, %struct.hi556_reg { i16 2, i16 0 }, %struct.hi556_reg { i16 2562, i16 256 }, %struct.hi556_reg { i16 2596, i16 256 }, %struct.hi556_reg { i16 70, i16 0 }, %struct.hi556_reg { i16 118, i16 0 }, %struct.hi556_reg { i16 96, i16 0 }, %struct.hi556_reg { i16 98, i16 1328 }, %struct.hi556_reg { i16 100, i16 1280 }, %struct.hi556_reg { i16 102, i16 1328 }, %struct.hi556_reg { i16 104, i16 1280 }, %struct.hi556_reg { i16 290, i16 768 }, %struct.hi556_reg { i16 346, i16 -248 }, %struct.hi556_reg { i16 2052, i16 768 }, %struct.hi556_reg { i16 2054, i16 256 }, %struct.hi556_reg { i16 92, i16 258 }, %struct.hi556_reg { i16 2586, i16 2048 }], [200 x i8] zeroinitializer }, align 32
@hi556_write_reg_list._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hi556_write_reg_list = private unnamed_addr constant [21 x i8] c"hi556_write_reg_list\00", align 1
@hi556_write_reg_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.hi556_write_reg_list, ptr @.str.3, i32 572, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to write reg 0x%4.4x. error = %d\00", [56 x i8] zeroinitializer }, align 32
@hi556_write_reg_list._entry_ptr = internal global ptr @hi556_write_reg_list._entry, section ".printk_index", align 4
@hi556_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.44, ptr @.str.3, i32 834, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi556_stop_streaming\00", [43 x i8] zeroinitializer }, align 32
@hi556_stop_streaming._entry_ptr = internal global ptr @hi556_stop_streaming._entry, section ".printk_index", align 4
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@hi556_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 779, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip id mismatch: %x!=%x\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi556_identify_module\00", [42 x i8] zeroinitializer }, align 32
@hi556_identify_module._entry_ptr = internal global ptr @hi556_identify_module._entry, section ".printk_index", align 4
@mode_2592x1944_regs = internal constant { [41 x %struct.hi556_reg], [60 x i8] } { [41 x %struct.hi556_reg] [%struct.hi556_reg { i16 2560, i16 0 }, %struct.hi556_reg { i16 2826, i16 -32174 }, %struct.hi556_reg { i16 3888, i16 23317 }, %struct.hi556_reg { i16 3890, i16 28775 }, %struct.hi556_reg { i16 74, i16 256 }, %struct.hi556_reg { i16 76, i16 0 }, %struct.hi556_reg { i16 78, i16 256 }, %struct.hi556_reg { i16 12, i16 34 }, %struct.hi556_reg { i16 8, i16 2816 }, %struct.hi556_reg { i16 90, i16 514 }, %struct.hi556_reg { i16 18, i16 14 }, %struct.hi556_reg { i16 24, i16 2611 }, %struct.hi556_reg { i16 34, i16 8 }, %struct.hi556_reg { i16 40, i16 23 }, %struct.hi556_reg { i16 36, i16 40 }, %struct.hi556_reg { i16 42, i16 45 }, %struct.hi556_reg { i16 38, i16 48 }, %struct.hi556_reg { i16 44, i16 1993 }, %struct.hi556_reg { i16 46, i16 4369 }, %struct.hi556_reg { i16 48, i16 4369 }, %struct.hi556_reg { i16 50, i16 4369 }, %struct.hi556_reg { i16 6, i16 2068 }, %struct.hi556_reg { i16 2594, i16 0 }, %struct.hi556_reg { i16 2578, i16 2592 }, %struct.hi556_reg { i16 2580, i16 1944 }, %struct.hi556_reg { i16 62, i16 0 }, %struct.hi556_reg { i16 116, i16 2066 }, %struct.hi556_reg { i16 112, i16 1033 }, %struct.hi556_reg { i16 2052, i16 768 }, %struct.hi556_reg { i16 2054, i16 256 }, %struct.hi556_reg { i16 2564, i16 330 }, %struct.hi556_reg { i16 2316, i16 4060 }, %struct.hi556_reg { i16 2318, i16 45 }, %struct.hi556_reg { i16 2306, i16 17177 }, %struct.hi556_reg { i16 2324, i16 -16118 }, %struct.hi556_reg { i16 2326, i16 1823 }, %struct.hi556_reg { i16 2328, i16 1032 }, %struct.hi556_reg { i16 2330, i16 3085 }, %struct.hi556_reg { i16 2332, i16 3849 }, %struct.hi556_reg { i16 2334, i16 2560 }, %struct.hi556_reg { i16 2392, i16 -17536 }], [60 x i8] zeroinitializer }, align 32
@mode_1296x972_regs = internal constant { [41 x %struct.hi556_reg], [60 x i8] } { [41 x %struct.hi556_reg] [%struct.hi556_reg { i16 2560, i16 0 }, %struct.hi556_reg { i16 2826, i16 -32167 }, %struct.hi556_reg { i16 3888, i16 23317 }, %struct.hi556_reg { i16 3890, i16 29031 }, %struct.hi556_reg { i16 74, i16 256 }, %struct.hi556_reg { i16 76, i16 0 }, %struct.hi556_reg { i16 78, i16 256 }, %struct.hi556_reg { i16 12, i16 290 }, %struct.hi556_reg { i16 8, i16 2816 }, %struct.hi556_reg { i16 90, i16 1028 }, %struct.hi556_reg { i16 18, i16 12 }, %struct.hi556_reg { i16 24, i16 2611 }, %struct.hi556_reg { i16 34, i16 8 }, %struct.hi556_reg { i16 40, i16 23 }, %struct.hi556_reg { i16 36, i16 34 }, %struct.hi556_reg { i16 42, i16 43 }, %struct.hi556_reg { i16 38, i16 48 }, %struct.hi556_reg { i16 44, i16 1993 }, %struct.hi556_reg { i16 46, i16 13073 }, %struct.hi556_reg { i16 48, i16 13073 }, %struct.hi556_reg { i16 50, i16 13073 }, %struct.hi556_reg { i16 6, i16 2068 }, %struct.hi556_reg { i16 2594, i16 0 }, %struct.hi556_reg { i16 2578, i16 1296 }, %struct.hi556_reg { i16 2580, i16 972 }, %struct.hi556_reg { i16 62, i16 0 }, %struct.hi556_reg { i16 116, i16 2066 }, %struct.hi556_reg { i16 112, i16 1033 }, %struct.hi556_reg { i16 2052, i16 776 }, %struct.hi556_reg { i16 2054, i16 256 }, %struct.hi556_reg { i16 2564, i16 362 }, %struct.hi556_reg { i16 2318, i16 16 }, %struct.hi556_reg { i16 2316, i16 2496 }, %struct.hi556_reg { i16 2306, i16 17177 }, %struct.hi556_reg { i16 2324, i16 -16122 }, %struct.hi556_reg { i16 2326, i16 1038 }, %struct.hi556_reg { i16 2328, i16 772 }, %struct.hi556_reg { i16 2330, i16 1800 }, %struct.hi556_reg { i16 2332, i16 3590 }, %struct.hi556_reg { i16 2334, i16 768 }, %struct.hi556_reg { i16 2392, i16 -17536 }], [60 x i8] zeroinitializer }, align 32
@hi556_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hi556:695:(ctrl_hdlr)->_lock\00", [35 x i8] zeroinitializer }, align 32
@hi556_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @hi556_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@hi556_test_pattern_menu = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Solid Colour\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"100% Colour Bars\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Fade To Grey Colour Bars\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PN9\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Gradient Horizontal\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Gradient Vertical\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Check Board\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Slant Pattern\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963793, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"hi556_i2c_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1203, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1205, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"hi556_pm_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1190, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1126, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"hi556_subdev_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1023, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1141, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1146, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 451, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1150, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"hi556_internal_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1032, i32 46 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"hi556_subdev_entity_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1028, i32 45 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1161, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1167, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1050, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1052, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1057, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1071, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1078, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 438, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1091, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [16 x i8] c"hi556_video_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1012, i32 43 }
@___asan_gen_.169 = private unnamed_addr constant [14 x i8] c"hi556_pad_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1016, i32 41 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"link_freq_configs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 442, i32 44 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 802, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 809, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 821, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [23 x i8] c"mipi_data_rate_874mbps\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 110, i32 31 }
@___asan_gen_.199 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 570, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 834, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 998, i32 6 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 778, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c"mode_2592x1944_regs\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 336, i32 31 }
@___asan_gen_.232 = private unnamed_addr constant [19 x i8] c"mode_1296x972_regs\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 381, i32 31 }
@___asan_gen_.235 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 695, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant [15 x i8] c"hi556_ctrl_ops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 684, i32 35 }
@___asan_gen_.244 = private unnamed_addr constant [24 x i8] c"hi556_test_pattern_menu\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 426, i32 27 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 427, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 428, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 429, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 430, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 431, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 432, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 433, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 434, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [29 x i8] c"../drivers/media/i2c/hi556.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 435, i32 2 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_hi556_i2c_driver_exit, ptr @__initcall__kmod_hi556__294_1214_hi556_i2c_driver_init6, ptr @hi556_check_hwcfg._entry, ptr @hi556_check_hwcfg._entry.22, ptr @hi556_check_hwcfg._entry.25, ptr @hi556_check_hwcfg._entry.28, ptr @hi556_check_hwcfg._entry.31, ptr @hi556_check_hwcfg._entry_ptr, ptr @hi556_check_hwcfg._entry_ptr.24, ptr @hi556_check_hwcfg._entry_ptr.27, ptr @hi556_check_hwcfg._entry_ptr.30, ptr @hi556_check_hwcfg._entry_ptr.33, ptr @hi556_i2c_driver_exit, ptr @hi556_identify_module._entry, ptr @hi556_identify_module._entry_ptr, ptr @hi556_probe._entry, ptr @hi556_probe._entry.10, ptr @hi556_probe._entry.13, ptr @hi556_probe._entry.16, ptr @hi556_probe._entry.6, ptr @hi556_probe._entry_ptr, ptr @hi556_probe._entry_ptr.12, ptr @hi556_probe._entry_ptr.15, ptr @hi556_probe._entry_ptr.18, ptr @hi556_probe._entry_ptr.8, ptr @hi556_start_streaming._entry, ptr @hi556_start_streaming._entry.36, ptr @hi556_start_streaming._entry.39, ptr @hi556_start_streaming._entry_ptr, ptr @hi556_start_streaming._entry_ptr.38, ptr @hi556_start_streaming._entry_ptr.41, ptr @hi556_stop_streaming._entry, ptr @hi556_stop_streaming._entry_ptr, ptr @hi556_write_reg_list._entry, ptr @hi556_write_reg_list._entry_ptr, ptr @hi556_i2c_driver, ptr @.str, ptr @hi556_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hi556_subdev_ops, ptr @.str.7, ptr @hi556_probe.__key, ptr @.str.9, ptr @supported_modes, ptr @.str.11, ptr @hi556_internal_ops, ptr @hi556_subdev_entity_ops, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @link_freq_menu_items, ptr @.str.32, ptr @hi556_video_ops, ptr @hi556_pad_ops, ptr @link_freq_configs, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @mipi_data_rate_874mbps, ptr @hi556_write_reg_list._rs, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @mode_2592x1944_regs, ptr @mode_1296x972_regs, ptr @hi556_init_controls._key, ptr @.str.48, ptr @hi556_ctrl_ops, ptr @hi556_test_pattern_menu, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_check_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_check_hwcfg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_check_hwcfg._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_check_hwcfg._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_check_hwcfg._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_configs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_start_streaming._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_start_streaming._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_874mbps to i32), i32 888, i32 1088, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_write_reg_list._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_write_reg_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2592x1944_regs to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1296x972_regs to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi556_test_pattern_menu to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi556_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @hi556_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi556_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @hi556_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi556_remove(ptr noundef %client) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.hi556, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi556_probe(ptr noundef %client) #2 align 64 {
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
  store i32 -1, ptr %mclk.i, align 4, !annotation !153
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.hi556_check_hwcfg.exit.thread_crit_edge, label %if.end.i

entry.hi556_check_hwcfg.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi556_check_hwcfg.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %mclk.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %hi556_check_hwcfg.exit.thread

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
  br label %hi556_check_hwcfg.exit.thread

if.end9.i:                                        ; preds = %if.end4.i
  %call10.i = call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call.i, ptr noundef null) #7
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.hi556_check_hwcfg.exit.thread_crit_edge, label %if.end13.i

if.end9.i.hi556_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi556_check_hwcfg.exit.thread

if.end13.i:                                       ; preds = %if.end9.i
  %call14.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call10.i, ptr noundef nonnull %bus_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call10.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.hi556_check_hwcfg.exit.thread_crit_edge

if.end13.i.hi556_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi556_check_hwcfg.exit.thread

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
  br label %hi556_check_hwcfg.exit.thread129

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
  br label %hi556_check_hwcfg.exit.thread129

for.body41.i:                                     ; preds = %for.inc.i.for.body41.i_crit_edge, %for.body41.lr.ph.i
  %j.085.i = phi i32 [ 0, %for.body41.lr.ph.i ], [ %inc.i, %for.inc.i.for.body41.i_crit_edge ]
  %arrayidx42.i = getelementptr i64, ptr %11, i32 %j.085.i
  %12 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 437000000, i64 %13)
  %cmp43.i = icmp eq i64 %13, 437000000
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i64 noundef 437000000) #10
  br label %hi556_check_hwcfg.exit.thread129

hi556_check_hwcfg.exit.thread:                    ; preds = %if.end13.i.hi556_check_hwcfg.exit.thread_crit_edge, %if.end9.i.hi556_check_hwcfg.exit.thread_crit_edge, %do.end8.i, %do.end.i, %entry.hi556_check_hwcfg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call14.i, %if.end13.i.hi556_check_hwcfg.exit.thread_crit_edge ], [ -6, %if.end9.i.hi556_check_hwcfg.exit.thread_crit_edge ], [ -6, %entry.hi556_check_hwcfg.exit.thread_crit_edge ], [ -22, %do.end8.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

hi556_check_hwcfg.exit.thread129:                 ; preds = %do.end53.i, %do.end33.i, %do.end23.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

do.end:                                           ; preds = %hi556_check_hwcfg.exit.thread129, %hi556_check_hwcfg.exit.thread
  %retval.0.i127 = phi i32 [ %retval.0.i.ph, %hi556_check_hwcfg.exit.thread ], [ -22, %hi556_check_hwcfg.exit.thread129 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i127) #10
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
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i110, ptr noundef %client, ptr noundef nonnull @hi556_subdev_ops) #7
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 11
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %identified.i = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 11
  %16 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %identified.i, align 1, !range !154
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
  store i16 3862, ptr %addr_buf.i.i, align 2
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
  store i16 2, ptr %len14.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 2
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
  br i1 %cmp21.not.i.i, label %if.end4.i114, label %hi556_read_reg.exit.i

hi556_read_reg.exit.i:                            ; preds = %if.end.i112
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1366, i32 %36)
  %cmp.not.i113 = icmp eq i32 %36, 1366
  br i1 %cmp.not.i113, label %if.end6.i, label %do.end.i115

do.end.i115:                                      ; preds = %if.end4.i114
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef 1366, i32 noundef %36) #10
  br label %do.end16

if.end6.i:                                        ; preds = %if.end4.i114
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %identified.i, align 1
  br label %do.body20

do.end16:                                         ; preds = %do.end.i115, %hi556_read_reg.exit.i
  %retval.0.i116 = phi i32 [ -6, %do.end.i115 ], [ -5, %hi556_read_reg.exit.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i116) #10
  br label %cleanup

do.body20:                                        ; preds = %if.end6.i, %if.end6.do.body20_crit_edge
  %mutex = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 9
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @hi556_probe.__key) #7
  %cur_mode = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 8
  %38 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 2
  %call.i117 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 8, ptr noundef nonnull @hi556_init_controls._key, ptr noundef nonnull @.str.48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i118, label %if.end.i119, label %do.body20.do.end28_crit_edge

do.body20.do.end28_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.end.i119:                                      ; preds = %do.body20
  %lock.i = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %mutex, ptr %lock.i, align 4
  %call1.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi556_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #7
  %link_freq.i = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 3
  %40 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call1.i, ptr %link_freq.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i119.if.end6.i121_crit_edge, label %if.then4.i

if.end.i119.if.end6.i121_crit_edge:               ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i121

if.then4.i:                                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call1.i, i32 0, i32 20
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %42, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end6.i121

if.end6.i121:                                     ; preds = %if.then4.i, %if.end.i119.if.end6.i121_crit_edge
  %43 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 874000000, i64 3689348814741910323) #11, !srcloc !155
  %44 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 874000000, i64 %43) #11, !srcloc !156
  %call9.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi556_ctrl_ops, i32 noundef 10422530, i64 noundef 0, i64 noundef %44, i64 noundef 1, i64 noundef %44) #7
  %pixel_rate.i = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 4
  %45 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i, ptr %pixel_rate.i, align 4
  %46 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_mode, align 4
  %fll_min.i = getelementptr inbounds %struct.hi556_mode, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %fll_min.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fll_min.i, align 4
  %height.i = getelementptr inbounds %struct.hi556_mode, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height.i, align 4
  %sub.i = sub i32 %49, %51
  %conv.i120 = zext i32 %sub.i to i64
  %sub13.i = sub i32 32767, %51
  %conv14.i = zext i32 %sub13.i to i64
  %fll_def.i = getelementptr inbounds %struct.hi556_mode, ptr %47, i32 0, i32 3
  %52 = ptrtoint ptr %fll_def.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fll_def.i, align 4
  %sub18.i = sub i32 %53, %51
  %conv19.i = zext i32 %sub18.i to i64
  %call20.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi556_ctrl_ops, i32 noundef 10356993, i64 noundef %conv.i120, i64 noundef %conv14.i, i64 noundef 1, i64 noundef %conv19.i) #7
  %vblank.i = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 5
  %54 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call20.i, ptr %vblank.i, align 4
  %55 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur_mode, align 4
  %llp.i = getelementptr inbounds %struct.hi556_mode, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %llp.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %llp.i, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 4
  %sub23.i = sub i32 %58, %60
  %conv24.i = zext i32 %sub23.i to i64
  %call25.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi556_ctrl_ops, i32 noundef 10356994, i64 noundef %conv24.i, i64 noundef %conv24.i, i64 noundef 1, i64 noundef %conv24.i) #7
  %hblank.i = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 6
  %61 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call25.i, ptr %hblank.i, align 4
  %tobool27.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool27.not.i, label %if.end6.i121.if.end32.i_crit_edge, label %if.then28.i

if.end6.i121.if.end32.i_crit_edge:                ; preds = %if.end6.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.end6.i121
  call void @__sanitizer_cov_trace_pc() #9
  %flags30.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call25.i, i32 0, i32 20
  %62 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags30.i, align 4
  %or31.i = or i32 %63, 4
  store i32 %or31.i, ptr %flags30.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %if.end6.i121.if.end32.i_crit_edge
  %call33.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi556_ctrl_ops, i32 noundef 10356995, i64 noundef 0, i64 noundef 240, i64 noundef 1, i64 noundef 0) #7
  %call34.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi556_ctrl_ops, i32 noundef 10422533, i64 noundef 0, i64 noundef 2048, i64 noundef 1, i64 noundef 256) #7
  %64 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_mode, align 4
  %fll_def36.i = getelementptr inbounds %struct.hi556_mode, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %fll_def36.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fll_def36.i, align 4
  %sub37.i = add i32 %67, -2
  %conv38.i = zext i32 %sub37.i to i64
  %call39.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi556_ctrl_ops, i32 noundef 9963793, i64 noundef 6, i64 noundef %conv38.i, i64 noundef 1, i64 noundef %conv38.i) #7
  %exposure.i = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 7
  %68 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call39.i, ptr %exposure.i, align 4
  %call40.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @hi556_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 8, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @hi556_test_pattern_menu) #7
  %error.i = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 2, i32 9
  %69 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool41.not.i = icmp eq i32 %70, 0
  br i1 %tobool41.not.i, label %if.end30, label %if.end32.i.do.end28_crit_edge

if.end32.i.do.end28_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

do.end28:                                         ; preds = %if.end32.i.do.end28_crit_edge, %do.body20.do.end28_crit_edge
  %retval.0.i122.ph = phi i32 [ %70, %if.end32.i.do.end28_crit_edge ], [ %call.i117, %do.body20.do.end28_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i122.ph) #10
  br label %probe_error_v4l2_ctrl_handler_free

if.end30:                                         ; preds = %if.end32.i
  %ctrl_handler45.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 8
  %71 = ptrtoint ptr %ctrl_handler45.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ctrl_handler.i, ptr %ctrl_handler45.i, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 7
  %72 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @hi556_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 4
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags, align 4
  %or = or i32 %74, 4
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i110, i32 0, i32 11
  %75 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @hi556_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i110, i32 0, i32 3
  %76 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 1
  %flags36 = getelementptr inbounds %struct.hi556, ptr %call.i110, i32 0, i32 1, i32 4
  %77 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %77)
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
  %call.i123 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i124 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #7
  br label %cleanup

probe_error_v4l2_ctrl_handler_free:               ; preds = %do.end53, %do.end45, %do.end28
  %ret.0 = phi i32 [ %retval.0.i122.ph, %do.end28 ], [ %call40, %do.end45 ], [ %call49, %do.end53 ]
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i110, i32 0, i32 8
  %78 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %79) #7
  call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %probe_error_v4l2_ctrl_handler_free, %if.then57, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i127, %do.end ], [ %retval.0.i116, %do.end16 ], [ %ret.0, %probe_error_v4l2_ctrl_handler_free ], [ 0, %if.then57 ], [ -12, %if.end.cleanup_crit_edge ]
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
define internal i32 @hi556_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i40 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %streaming = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !154
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 9
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !158
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then7_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then7_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !159
  br label %if.then7

if.then7:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %call10 = tail call fastcc i32 @hi556_start_streaming(ptr noundef %sd)
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
  store i16 2560, ptr %buf.i.i, align 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %8, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 4
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
  store i16 2560, ptr %buf.i.i40, align 2
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %13, align 2
  %call.i.i.i42 = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i.i40, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i42)
  %cmp9.not.i.i43 = icmp eq i32 %call.i.i.i42, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i40) #7
  br i1 %cmp9.not.i.i43, label %if.else.hi556_stop_streaming.exit46_crit_edge, label %do.end.i45

if.else.hi556_stop_streaming.exit46_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi556_stop_streaming.exit46

do.end.i45:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i44 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44, ptr noundef nonnull @.str.40) #10
  br label %hi556_stop_streaming.exit46

hi556_stop_streaming.exit46:                      ; preds = %do.end.i45, %if.else.hi556_stop_streaming.exit46_crit_edge
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %hi556_stop_streaming.exit46, %do.end.i, %if.then12.if.end18.sink.split_crit_edge
  %dev.sink = phi ptr [ %dev16, %hi556_stop_streaming.exit46 ], [ %dev, %if.then12.if.end18.sink.split_crit_edge ], [ %dev, %do.end.i ]
  %ret.0.ph = phi i32 [ 0, %hi556_stop_streaming.exit46 ], [ %call10, %if.then12.if.end18.sink.split_crit_edge ], [ %call10, %do.end.i ]
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
define internal fastcc i32 @hi556_start_streaming(ptr nocapture noundef %hi556) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %hi556, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %identified.i = getelementptr inbounds %struct.hi556, ptr %hi556, i32 0, i32 11
  %2 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %identified.i, align 1, !range !154
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
  store i16 3862, ptr %addr_buf.i.i, align 2
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
  store i16 2, ptr %len14.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 2
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
  br i1 %cmp21.not.i.i, label %if.end4.i, label %hi556_read_reg.exit.i

hi556_read_reg.exit.i:                            ; preds = %if.end.i
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1366, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 1366
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef 1366, i32 noundef %22) #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %identified.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %entry.if.end_crit_edge
  %cur_mode = getelementptr inbounds %struct.hi556, ptr %hi556, i32 0, i32 8
  %24 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_mode, align 4
  %link_freq_index2 = getelementptr inbounds %struct.hi556_mode, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %link_freq_index2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link_freq_index2, align 4
  %arrayidx = getelementptr [1 x %struct.hi556_link_freq_config], ptr @link_freq_configs, i32 0, i32 %27
  %call4 = call fastcc i32 @hi556_write_reg_list(ptr noundef %hi556, ptr noundef %arrayidx)
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
  %reg_list9 = getelementptr inbounds %struct.hi556_mode, ptr %29, i32 0, i32 6
  %call10 = call fastcc i32 @hi556_write_reg_list(ptr noundef %hi556, ptr noundef %reg_list9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %hi556, i32 0, i32 8
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
  store i16 2560, ptr %buf.i, align 2
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 16777216, ptr %34, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 4
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

cleanup:                                          ; preds = %do.end28, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end15, %do.end, %do.end.i, %hi556_read_reg.exit.i
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call10, %do.end15 ], [ -5, %do.end28 ], [ %call19, %if.end17.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ -6, %do.end.i ], [ -5, %hi556_read_reg.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi556_write_reg_list(ptr nocapture noundef readonly %hi556, ptr nocapture noundef readonly %r_list) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %hi556, i32 0, i32 11
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
  %regs = getelementptr inbounds %struct.hi556_reg_list, ptr %r_list, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.hi556_reg, ptr %6, i32 %i.029
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %val = getelementptr %struct.hi556_reg, ptr %6, i32 %i.029, i32 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val, align 2
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %buf.i, align 2
  %shl.i = shl nuw i32 %conv, 16
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %shl.i, ptr %4, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp9.not.i, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @hi556_write_reg_list._rs, ptr noundef nonnull @__func__.hi556_write_reg_list) #7
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
  %arrayidx9 = getelementptr %struct.hi556_reg, ptr %16, i32 %i.029
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
define internal i32 @hi556_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
define internal i32 @hi556_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
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
  %arrayidx = getelementptr [2 x %struct.hi556_mode], ptr @supported_modes, i32 0, i32 %1
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
  %height = getelementptr [2 x %struct.hi556_mode], ptr @supported_modes, i32 0, i32 %1, i32 1
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
define internal i32 @hi556_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 9
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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !160

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
  %cur_mode = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 8
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
  %height.i = getelementptr inbounds %struct.hi556_mode, ptr %10, i32 0, i32 1
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
define internal i32 @hi556_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.hi556_mode, ptr %call, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !160

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
  %cur_mode = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 8
  %21 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %cur_mode, align 4
  %link_freq = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 3
  %22 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link_freq, align 4
  %link_freq_index = getelementptr inbounds %struct.hi556_mode, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_freq_index, align 4
  %call6 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %23, i32 noundef %25) #7
  %pixel_rate = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 4
  %26 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pixel_rate, align 4
  %28 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 874000000, i64 3689348814741910323) #11, !srcloc !155
  %29 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 874000000, i64 %28) #11, !srcloc !156
  %call9 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %27, i64 noundef %29) #7
  %fll_def = getelementptr inbounds %struct.hi556_mode, ptr %call, i32 0, i32 3
  %30 = ptrtoint ptr %fll_def to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fll_def, align 4
  %32 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height.i, align 4
  %sub = sub i32 %31, %33
  %vblank = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 5
  %34 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vblank, align 4
  %fll_min = getelementptr inbounds %struct.hi556_mode, ptr %call, i32 0, i32 4
  %36 = ptrtoint ptr %fll_min to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fll_min, align 4
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
  %40 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur_mode, align 4
  %llp = getelementptr inbounds %struct.hi556_mode, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %llp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %llp, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 4
  %sub23 = sub i32 %43, %45
  %hblank = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 6
  %46 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hblank, align 4
  %conv24 = sext i32 %sub23 to i64
  %call27 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %47, i64 noundef %conv24, i64 noundef %conv24, i64 noundef 1, i64 noundef %conv24) #7
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
define internal i32 @hi556_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i19.i = alloca [6 x i8], align 2
  %buf.i16.i = alloca [6 x i8], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  %buf.i57 = alloca [6 x i8], align 2
  %buf.i51 = alloca [6 x i8], align 2
  %buf.i33.i = alloca [6 x i8], align 2
  %buf.i27.i = alloca [6 x i8], align 2
  %buf.i21.i = alloca [6 x i8], align 2
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
  %height = getelementptr inbounds %struct.hi556_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -2
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
    i32 10422531, label %sw.bb22
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
  store i16 119, ptr %buf.i, align 2
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
  store i16 120, ptr %buf.i.i, align 2
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
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i21.i) #7
  %38 = getelementptr inbounds [6 x i8], ptr %buf.i21.i, i32 0, i32 2
  %39 = ptrtoint ptr %buf.i21.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 122, ptr %buf.i21.i, align 2
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %shl.i.i, ptr %38, align 2
  %call.i.i24.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %buf.i21.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i24.i)
  %cmp9.not.i25.i = icmp eq i32 %call.i.i24.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i21.i) #7
  br i1 %cmp9.not.i25.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  %41 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i27.i) #7
  %43 = getelementptr inbounds [6 x i8], ptr %buf.i27.i, i32 0, i32 2
  %44 = ptrtoint ptr %buf.i27.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 124, ptr %buf.i27.i, align 2
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %shl.i.i, ptr %43, align 2
  %call.i.i30.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %buf.i27.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i30.i)
  %cmp9.not.i31.i = icmp eq i32 %call.i.i30.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i27.i) #7
  br i1 %cmp9.not.i31.i, label %if.end8.i, label %if.end4.i.sw.epilog_crit_edge

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i33.i) #7
  %48 = getelementptr inbounds [6 x i8], ptr %buf.i33.i, i32 0, i32 2
  %49 = ptrtoint ptr %buf.i33.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 126, ptr %buf.i33.i, align 2
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %shl.i.i, ptr %48, align 2
  %call.i.i36.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull %buf.i33.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i36.i)
  %cmp9.not.i37.i = icmp eq i32 %call.i.i36.i, 4
  %retval.0.i38.i = select i1 %cmp9.not.i37.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i33.i) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %51 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val14, align 4
  %53 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i51) #7
  %55 = getelementptr inbounds [6 x i8], ptr %buf.i51, i32 0, i32 2
  %56 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 116, ptr %buf.i51, align 2
  %shl.i53 = shl i32 %52, 16
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %shl.i53, ptr %55, align 2
  %call.i.i54 = call i32 @i2c_transfer_buffer_flags(ptr noundef %54, ptr noundef nonnull %buf.i51, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i54)
  %cmp9.not.i55 = icmp eq i32 %call.i.i54, 4
  %retval.0.i56 = select i1 %cmp9.not.i55, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i51) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode17 = getelementptr i8, ptr %1, i32 204
  %58 = ptrtoint ptr %cur_mode17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cur_mode17, align 4
  %height18 = getelementptr inbounds %struct.hi556_mode, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height18, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %62 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val19, align 4
  %add20 = add i32 %63, %61
  %64 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i57) #7
  %66 = getelementptr inbounds [6 x i8], ptr %buf.i57, i32 0, i32 2
  %67 = ptrtoint ptr %buf.i57 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 6, ptr %buf.i57, align 2
  %shl.i59 = shl i32 %add20, 16
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %shl.i59, ptr %66, align 2
  %call.i.i60 = call i32 @i2c_transfer_buffer_flags(ptr noundef %65, ptr noundef nonnull %buf.i57, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i60)
  %cmp9.not.i61 = icmp eq i32 %call.i.i60, 4
  %retval.0.i62 = select i1 %cmp9.not.i61, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i57) #7
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end6
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %69 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %sw.bb22.if.end7.i_crit_edge, label %if.then.i

sw.bb22.if.end7.i_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %sw.bb22
  %71 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %73 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %74 = call ptr @memset(ptr %73, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %75 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %data_buf.i.i, align 4
  %76 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 2565, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %addr.i.i, align 2
  %79 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i.i, align 2
  %81 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2, ptr %73, align 4
  %buf.i.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %buf.i.i64 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %addr_buf.i.i, ptr %buf.i.i64, align 4
  %83 = load i16, ptr %addr.i.i, align 2
  %arrayidx9.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %arrayidx9.i.i, align 4
  %flags12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %flags12.i.i, align 2
  %len14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %86 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 1, ptr %len14.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 3
  %buf18.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %buf18.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx16.i.i, ptr %buf18.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 3
  %88 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adapter.i.i, align 8
  %call20.i.i = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i)
  %cmp21.not.i.i = icmp eq i32 %call20.i.i, 2
  br i1 %cmp21.not.i.i, label %if.end.i68, label %hi556_read_reg.exit.i

hi556_read_reg.exit.i:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %sw.epilog

if.end.i68:                                       ; preds = %if.then.i
  %90 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %92 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i16.i) #7
  %94 = getelementptr inbounds [6 x i8], ptr %buf.i16.i, i32 0, i32 2
  %95 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 2565, ptr %buf.i16.i, align 2
  %or.i = shl i32 %91, 24
  %shl.i.i65 = or i32 %or.i, 16777216
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %shl.i.i65, ptr %94, align 2
  %call.i.i.i66 = call i32 @i2c_transfer_buffer_flags(ptr noundef %93, ptr noundef nonnull %buf.i16.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i66)
  %cmp9.not.i.i67 = icmp eq i32 %call.i.i.i66, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i16.i) #7
  br i1 %cmp9.not.i.i67, label %if.end.i68.if.end7.i_crit_edge, label %if.end.i68.sw.epilog_crit_edge

if.end.i68.sw.epilog_crit_edge:                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i68.if.end7.i_crit_edge:                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i68.if.end7.i_crit_edge, %sw.bb22.if.end7.i_crit_edge
  %97 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i19.i) #7
  %99 = getelementptr inbounds [6 x i8], ptr %buf.i19.i, i32 0, i32 2
  %100 = ptrtoint ptr %buf.i19.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 513, ptr %buf.i19.i, align 2
  %shl.i21.i = shl i32 %70, 24
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %shl.i21.i, ptr %99, align 2
  %call.i.i22.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %98, ptr noundef nonnull %buf.i19.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i22.i)
  %cmp9.not.i23.i = icmp eq i32 %call.i.i22.i, 3
  %retval.0.i24.i = select i1 %cmp9.not.i23.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i19.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end7.i, %if.end.i68.sw.epilog_crit_edge, %hi556_read_reg.exit.i, %sw.bb16, %sw.bb13, %if.end8.i, %if.end4.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb, %if.end6.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i62, %sw.bb16 ], [ %retval.0.i56, %sw.bb13 ], [ %retval.0.i, %sw.bb ], [ -22, %if.end6.sw.epilog_crit_edge ], [ %retval.0.i38.i, %if.end8.i ], [ -5, %sw.bb10.sw.epilog_crit_edge ], [ -5, %if.end.i.sw.epilog_crit_edge ], [ -5, %if.end4.i.sw.epilog_crit_edge ], [ %retval.0.i24.i, %if.end7.i ], [ -5, %hi556_read_reg.exit.i ], [ -5, %if.end.i68.sw.epilog_crit_edge ]
  %call.i70 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi556_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.hi556, ptr %sd, i32 0, i32 9
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !161

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
define internal i32 @hi556_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.hi556, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.hi556, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !154
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
  store i16 2560, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %6, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 4
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
define internal i32 @hi556_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.hi556, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.hi556, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @hi556_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %error

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
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
  store i16 2560, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %6, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp9.not.i.i, label %error.hi556_stop_streaming.exit_crit_edge, label %do.end.i

error.hi556_stop_streaming.exit_crit_edge:        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi556_stop_streaming.exit

do.end.i:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40) #10
  br label %hi556_stop_streaming.exit

hi556_stop_streaming.exit:                        ; preds = %do.end.i, %error.hi556_stop_streaming.exit_crit_edge
  %9 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %hi556_stop_streaming.exit, %if.end4
  %retval.0 = phi i32 [ %call1, %hi556_stop_streaming.exit ], [ 0, %if.end4 ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !92, !93, !94, !96, !97, !98, !100, !102, !104, !105, !106, !107, !109, !111, !113, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_hi556__294_1214_hi556_i2c_driver_init6, !1, !"__initcall__kmod_hi556__294_1214_hi556_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/hi556.c", i32 1214, i32 1}
!2 = !{ptr @__exitcall_hi556_i2c_driver_exit, !1, !"__exitcall_hi556_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/hi556.c", i32 1216, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/hi556.c", i32 1217, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/hi556.c", i32 1218, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/hi556.c", i32 1205, i32 11}
!12 = !{ptr @hi556_i2c_driver, !13, !"hi556_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/hi556.c", i32 1203, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/hi556.c", i32 1126, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hi556_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hi556_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/hi556.c", i32 1141, i32 4}
!24 = !{ptr @hi556_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hi556_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @hi556_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/hi556.c", i32 1146, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/hi556.c", i32 1150, i32 3}
!31 = !{ptr @hi556_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @hi556_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/hi556.c", i32 1161, i32 3}
!35 = !{ptr @hi556_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @hi556_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/hi556.c", i32 1167, i32 3}
!39 = !{ptr @hi556_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hi556_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/hi556.c", i32 1050, i32 41}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/hi556.c", i32 1052, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hi556_check_hwcfg._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @hi556_check_hwcfg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/hi556.c", i32 1057, i32 3}
!50 = !{ptr @hi556_check_hwcfg._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @hi556_check_hwcfg._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/hi556.c", i32 1071, i32 3}
!54 = !{ptr @hi556_check_hwcfg._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @hi556_check_hwcfg._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/hi556.c", i32 1078, i32 3}
!58 = !{ptr @hi556_check_hwcfg._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hi556_check_hwcfg._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/hi556.c", i32 1091, i32 4}
!62 = !{ptr @hi556_check_hwcfg._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hi556_check_hwcfg._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @link_freq_menu_items, !65, !"link_freq_menu_items", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/hi556.c", i32 438, i32 18}
!66 = !{ptr @hi556_subdev_ops, !67, !"hi556_subdev_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/hi556.c", i32 1023, i32 37}
!68 = !{ptr @hi556_video_ops, !69, !"hi556_video_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/hi556.c", i32 1012, i32 43}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/hi556.c", i32 802, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @hi556_start_streaming._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @hi556_start_streaming._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/hi556.c", i32 809, i32 3}
!77 = !{ptr @hi556_start_streaming._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @hi556_start_streaming._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/hi556.c", i32 821, i32 3}
!81 = !{ptr @hi556_start_streaming._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @hi556_start_streaming._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @link_freq_configs, !84, !"link_freq_configs", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/hi556.c", i32 442, i32 44}
!85 = !{ptr @mipi_data_rate_874mbps, !86, !"mipi_data_rate_874mbps", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/hi556.c", i32 110, i32 31}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/hi556.c", i32 570, i32 4}
!89 = !{ptr @hi556_write_reg_list._rs, !88, !"_rs", i1 false, i1 false}
!90 = !{ptr @__func__.hi556_write_reg_list, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @hi556_write_reg_list._entry, !88, !"_entry", i1 false, i1 false}
!93 = !{ptr @hi556_write_reg_list._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/hi556.c", i32 834, i32 3}
!96 = !{ptr @hi556_stop_streaming._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @hi556_stop_streaming._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @hi556_pad_ops, !99, !"hi556_pad_ops", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/hi556.c", i32 1016, i32 41}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/hi556.c", i32 778, i32 3}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @hi556_identify_module._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @hi556_identify_module._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @supported_modes, !108, !"supported_modes", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/hi556.c", i32 451, i32 32}
!109 = !{ptr @mode_2592x1944_regs, !110, !"mode_2592x1944_regs", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/hi556.c", i32 336, i32 31}
!111 = !{ptr @mode_1296x972_regs, !112, !"mode_1296x972_regs", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/hi556.c", i32 381, i32 31}
!113 = !{ptr @hi556_init_controls._key, !114, !"_key", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/hi556.c", i32 695, i32 8}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @hi556_ctrl_ops, !117, !"hi556_ctrl_ops", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/hi556.c", i32 684, i32 35}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/hi556.c", i32 427, i32 2}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/hi556.c", i32 428, i32 2}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/hi556.c", i32 429, i32 2}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/hi556.c", i32 430, i32 2}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/hi556.c", i32 431, i32 2}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/hi556.c", i32 432, i32 2}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/hi556.c", i32 433, i32 2}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/hi556.c", i32 434, i32 2}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/hi556.c", i32 435, i32 2}
!136 = !{ptr @hi556_test_pattern_menu, !137, !"hi556_test_pattern_menu", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/hi556.c", i32 426, i32 27}
!138 = !{ptr @hi556_internal_ops, !139, !"hi556_internal_ops", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/hi556.c", i32 1032, i32 46}
!140 = !{ptr @hi556_subdev_entity_ops, !141, !"hi556_subdev_entity_ops", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/hi556.c", i32 1028, i32 45}
!142 = !{ptr @hi556_pm_ops, !143, !"hi556_pm_ops", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/hi556.c", i32 1190, i32 32}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"auto-init"}
!154 = !{i8 0, i8 2}
!155 = !{i64 1525439, i64 1525466}
!156 = !{i64 1525779, i64 1525806, i64 1525840, i64 1525861}
!157 = !{i64 2148372431}
!158 = !{i64 857254, i64 857279, i64 857301, i64 857317, i64 857329, i64 857349, i64 857373, i64 857389, i64 857401}
!159 = !{i64 2148372619}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{!"branch_weights", i32 1, i32 2000}
