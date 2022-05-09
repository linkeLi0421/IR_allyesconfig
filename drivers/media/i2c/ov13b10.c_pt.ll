; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov13b10.c_pt.bc'
source_filename = "../drivers/media/i2c/ov13b10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov13b10_mode = type { i32, i32, i32, i32, i32, %struct.ov13b10_reg_list }
%struct.ov13b10_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov13b10_link_freq_config = type { i32, %struct.ov13b10_reg_list }
%struct.ov13b10_reg = type { i16, i8 }
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
%struct.ov13b10 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_fwnode_device_properties = type { i32, i32 }
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

@__initcall__kmod_ov13b10__294_1487_ov13b10_i2c_driver_init6 = internal global ptr @ov13b10_i2c_driver_init, section ".initcall6.init", align 4
@ov13b10_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov13b10_remove, ptr @ov13b10_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov13b10_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov13b10_i2c_driver_exit = internal global ptr @ov13b10_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [46 x i8] c"ov13b10.author=Kao, Arec <arec.kao@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [53 x i8] c"ov13b10.description=Omnivision ov13b10 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [39 x i8] c"ov13b10.file=drivers/media/i2c/ov13b10\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [23 x i8] c"ov13b10.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ov13b10\00", [24 x i8] zeroinitializer }, align 32
@ov13b10_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ov13b10_suspend, ptr @ov13b10_resume, ptr @ov13b10_suspend, ptr @ov13b10_resume, ptr @ov13b10_suspend, ptr @ov13b10_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov13b10_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to check hwcfg: %d\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov13b10_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/ov13b10.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov13b10_probe._entry_ptr = internal global ptr @ov13b10_probe._entry, section ".printk_index", align 4
@ov13b10_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov13b10_video_ops, ptr null, ptr null, ptr null, ptr @ov13b10_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov13b10_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to find sensor: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ov13b10_probe._entry_ptr.8 = internal global ptr @ov13b10_probe._entry.6, section ".printk_index", align 4
@supported_modes = internal constant { [5 x %struct.ov13b10_mode], [52 x i8] } { [5 x %struct.ov13b10_mode] [%struct.ov13b10_mode { i32 4208, i32 3120, i32 3196, i32 3196, i32 0, %struct.ov13b10_reg_list { i32 41, ptr @mode_4208x3120_regs } }, %struct.ov13b10_mode { i32 4160, i32 3120, i32 3196, i32 3196, i32 0, %struct.ov13b10_reg_list { i32 41, ptr @mode_4160x3120_regs } }, %struct.ov13b10_mode { i32 4160, i32 2340, i32 3196, i32 3196, i32 0, %struct.ov13b10_reg_list { i32 41, ptr @mode_4160x2340_regs } }, %struct.ov13b10_mode { i32 2104, i32 1560, i32 1598, i32 1598, i32 0, %struct.ov13b10_reg_list { i32 41, ptr @mode_2104x1560_regs } }, %struct.ov13b10_mode { i32 2080, i32 1170, i32 1598, i32 1598, i32 0, %struct.ov13b10_reg_list { i32 41, ptr @mode_2080x1170_regs } }], [52 x i8] zeroinitializer }, align 32
@ov13b10_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov13b10_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov13b10_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ov13b10_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s failed:%d\0A\00", [18 x i8] zeroinitializer }, align 32
@ov13b10_probe._entry_ptr.11 = internal global ptr @ov13b10_probe._entry.9, section ".printk_index", align 4
@ov13b10_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ov13b10_probe._entry_ptr.13 = internal global ptr @ov13b10_probe._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@ov13b10_check_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 1326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get clock frequency\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ov13b10_check_hwcfg\00", [44 x i8] zeroinitializer }, align 32
@ov13b10_check_hwcfg._entry_ptr = internal global ptr @ov13b10_check_hwcfg._entry, section ".printk_index", align 4
@ov13b10_check_hwcfg._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 1332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"external clock %d is not supported\00", [61 x i8] zeroinitializer }, align 32
@ov13b10_check_hwcfg._entry_ptr.19 = internal global ptr @ov13b10_check_hwcfg._entry.17, section ".printk_index", align 4
@ov13b10_check_hwcfg._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 1347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"number of CSI2 data lanes %d is not supported\00", [50 x i8] zeroinitializer }, align 32
@ov13b10_check_hwcfg._entry_ptr.22 = internal global ptr @ov13b10_check_hwcfg._entry.20, section ".printk_index", align 4
@ov13b10_check_hwcfg._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 1353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequencies defined\00", [36 x i8] zeroinitializer }, align 32
@ov13b10_check_hwcfg._entry_ptr.25 = internal global ptr @ov13b10_check_hwcfg._entry.23, section ".printk_index", align 4
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 560000000], [24 x i8] zeroinitializer }, align 32
@ov13b10_check_hwcfg._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 1367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no link frequency %lld supported\00", [63 x i8] zeroinitializer }, align 32
@ov13b10_check_hwcfg._entry_ptr.28 = internal global ptr @ov13b10_check_hwcfg._entry.26, section ".printk_index", align 4
@ov13b10_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov13b10_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov13b10_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov13b10_enum_mbus_code, ptr @ov13b10_enum_frame_size, ptr null, ptr @ov13b10_get_pad_format, ptr @ov13b10_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov13b10_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1037, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failed to set powerup registers\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov13b10_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@ov13b10_start_streaming._entry_ptr = internal global ptr @ov13b10_start_streaming._entry, section ".printk_index", align 4
@link_freq_configs = internal constant { [1 x %struct.ov13b10_link_freq_config], [20 x i8] } { [1 x %struct.ov13b10_link_freq_config] [%struct.ov13b10_link_freq_config { i32 4704, %struct.ov13b10_reg_list { i32 128, ptr @mipi_data_rate_1120mbps } }], [20 x i8] zeroinitializer }, align 32
@ov13b10_start_streaming._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 1045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set plls\0A\00", [41 x i8] zeroinitializer }, align 32
@ov13b10_start_streaming._entry_ptr.33 = internal global ptr @ov13b10_start_streaming._entry.31, section ".printk_index", align 4
@ov13b10_start_streaming._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 1053, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s failed to set mode\0A\00", [41 x i8] zeroinitializer }, align 32
@ov13b10_start_streaming._entry_ptr.36 = internal global ptr @ov13b10_start_streaming._entry.34, section ".printk_index", align 4
@mipi_data_rate_1120mbps = internal constant { [128 x %struct.ov13b10_reg], [128 x i8] } { [128 x %struct.ov13b10_reg] [%struct.ov13b10_reg { i16 259, i8 1 }, %struct.ov13b10_reg { i16 771, i8 4 }, %struct.ov13b10_reg { i16 773, i8 -81 }, %struct.ov13b10_reg { i16 801, i8 0 }, %struct.ov13b10_reg { i16 803, i8 4 }, %struct.ov13b10_reg { i16 804, i8 1 }, %struct.ov13b10_reg { i16 805, i8 -92 }, %struct.ov13b10_reg { i16 806, i8 -127 }, %struct.ov13b10_reg { i16 807, i8 4 }, %struct.ov13b10_reg { i16 12306, i8 7 }, %struct.ov13b10_reg { i16 12307, i8 50 }, %struct.ov13b10_reg { i16 12551, i8 35 }, %struct.ov13b10_reg { i16 13569, i8 12 }, %struct.ov13b10_reg { i16 13570, i8 16 }, %struct.ov13b10_reg { i16 13572, i8 8 }, %struct.ov13b10_reg { i16 13576, i8 7 }, %struct.ov13b10_reg { i16 13577, i8 -64 }, %struct.ov13b10_reg { i16 13824, i8 22 }, %struct.ov13b10_reg { i16 13825, i8 84 }, %struct.ov13b10_reg { i16 13842, i8 78 }, %struct.ov13b10_reg { i16 13856, i8 0 }, %struct.ov13b10_reg { i16 13857, i8 104 }, %struct.ov13b10_reg { i16 13858, i8 102 }, %struct.ov13b10_reg { i16 13859, i8 3 }, %struct.ov13b10_reg { i16 13922, i8 -110 }, %struct.ov13b10_reg { i16 13926, i8 -69 }, %struct.ov13b10_reg { i16 13927, i8 68 }, %struct.ov13b10_reg { i16 13934, i8 -1 }, %struct.ov13b10_reg { i16 13935, i8 -13 }, %struct.ov13b10_reg { i16 13941, i8 68 }, %struct.ov13b10_reg { i16 13942, i8 0 }, %struct.ov13b10_reg { i16 13951, i8 -23 }, %struct.ov13b10_reg { i16 13953, i8 50 }, %struct.ov13b10_reg { i16 13954, i8 31 }, %struct.ov13b10_reg { i16 13955, i8 11 }, %struct.ov13b10_reg { i16 13956, i8 11 }, %struct.ov13b10_reg { i16 14084, i8 15 }, %struct.ov13b10_reg { i16 14086, i8 64 }, %struct.ov13b10_reg { i16 14088, i8 59 }, %struct.ov13b10_reg { i16 14089, i8 114 }, %struct.ov13b10_reg { i16 14091, i8 -94 }, %struct.ov13b10_reg { i16 14100, i8 36 }, %struct.ov13b10_reg { i16 14106, i8 62 }, %struct.ov13b10_reg { i16 14117, i8 66 }, %struct.ov13b10_reg { i16 14137, i8 18 }, %struct.ov13b10_reg { i16 14183, i8 0 }, %struct.ov13b10_reg { i16 14202, i8 13 }, %struct.ov13b10_reg { i16 14217, i8 24 }, %struct.ov13b10_reg { i16 14224, i8 64 }, %struct.ov13b10_reg { i16 14225, i8 -94 }, %struct.ov13b10_reg { i16 14274, i8 4 }, %struct.ov13b10_reg { i16 14275, i8 -15 }, %struct.ov13b10_reg { i16 14297, i8 12 }, %struct.ov13b10_reg { i16 14298, i8 2 }, %struct.ov13b10_reg { i16 14300, i8 2 }, %struct.ov13b10_reg { i16 14305, i8 4 }, %struct.ov13b10_reg { i16 14306, i8 10 }, %struct.ov13b10_reg { i16 14336, i8 0 }, %struct.ov13b10_reg { i16 14337, i8 0 }, %struct.ov13b10_reg { i16 14338, i8 0 }, %struct.ov13b10_reg { i16 14339, i8 8 }, %struct.ov13b10_reg { i16 14340, i8 16 }, %struct.ov13b10_reg { i16 14341, i8 -113 }, %struct.ov13b10_reg { i16 14342, i8 12 }, %struct.ov13b10_reg { i16 14343, i8 71 }, %struct.ov13b10_reg { i16 14344, i8 16 }, %struct.ov13b10_reg { i16 14345, i8 112 }, %struct.ov13b10_reg { i16 14346, i8 12 }, %struct.ov13b10_reg { i16 14347, i8 48 }, %struct.ov13b10_reg { i16 14348, i8 4 }, %struct.ov13b10_reg { i16 14349, i8 -104 }, %struct.ov13b10_reg { i16 14350, i8 12 }, %struct.ov13b10_reg { i16 14351, i8 124 }, %struct.ov13b10_reg { i16 14353, i8 15 }, %struct.ov13b10_reg { i16 14355, i8 9 }, %struct.ov13b10_reg { i16 14356, i8 1 }, %struct.ov13b10_reg { i16 14357, i8 1 }, %struct.ov13b10_reg { i16 14358, i8 1 }, %struct.ov13b10_reg { i16 14359, i8 1 }, %struct.ov13b10_reg { i16 14367, i8 8 }, %struct.ov13b10_reg { i16 14368, i8 -120 }, %struct.ov13b10_reg { i16 14369, i8 0 }, %struct.ov13b10_reg { i16 14370, i8 20 }, %struct.ov13b10_reg { i16 14382, i8 -26 }, %struct.ov13b10_reg { i16 15488, i8 0 }, %struct.ov13b10_reg { i16 15495, i8 1 }, %struct.ov13b10_reg { i16 15500, i8 25 }, %struct.ov13b10_reg { i16 15501, i8 28 }, %struct.ov13b10_reg { i16 15520, i8 0 }, %struct.ov13b10_reg { i16 15521, i8 0 }, %struct.ov13b10_reg { i16 15522, i8 0 }, %struct.ov13b10_reg { i16 15523, i8 0 }, %struct.ov13b10_reg { i16 15524, i8 80 }, %struct.ov13b10_reg { i16 15525, i8 17 }, %struct.ov13b10_reg { i16 15526, i8 1 }, %struct.ov13b10_reg { i16 15527, i8 0 }, %struct.ov13b10_reg { i16 15528, i8 0 }, %struct.ov13b10_reg { i16 16392, i8 2 }, %struct.ov13b10_reg { i16 16393, i8 15 }, %struct.ov13b10_reg { i16 16394, i8 1 }, %struct.ov13b10_reg { i16 16395, i8 25 }, %struct.ov13b10_reg { i16 16401, i8 33 }, %struct.ov13b10_reg { i16 16407, i8 8 }, %struct.ov13b10_reg { i16 16409, i8 4 }, %struct.ov13b10_reg { i16 16410, i8 88 }, %struct.ov13b10_reg { i16 16434, i8 30 }, %struct.ov13b10_reg { i16 16464, i8 2 }, %struct.ov13b10_reg { i16 16465, i8 9 }, %struct.ov13b10_reg { i16 16478, i8 0 }, %struct.ov13b10_reg { i16 16486, i8 2 }, %struct.ov13b10_reg { i16 17665, i8 0 }, %struct.ov13b10_reg { i16 17666, i8 16 }, %struct.ov13b10_reg { i16 17669, i8 0 }, %struct.ov13b10_reg { i16 18432, i8 100 }, %struct.ov13b10_reg { i16 18459, i8 62 }, %struct.ov13b10_reg { i16 18463, i8 48 }, %struct.ov13b10_reg { i16 18469, i8 52 }, %struct.ov13b10_reg { i16 18487, i8 14 }, %struct.ov13b10_reg { i16 18507, i8 1 }, %struct.ov13b10_reg { i16 18563, i8 2 }, %struct.ov13b10_reg { i16 20480, i8 -1 }, %struct.ov13b10_reg { i16 20481, i8 15 }, %struct.ov13b10_reg { i16 20549, i8 32 }, %struct.ov13b10_reg { i16 20550, i8 32 }, %struct.ov13b10_reg { i16 20551, i8 -92 }, %struct.ov13b10_reg { i16 20552, i8 32 }, %struct.ov13b10_reg { i16 20553, i8 -92 }, %struct.ov13b10_reg { i16 256, i8 1 }], [128 x i8] zeroinitializer }, align 32
@ov13b10_write_regs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ov13b10_write_regs = private unnamed_addr constant [19 x i8] c"ov13b10_write_regs\00", align 1
@ov13b10_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.ov13b10_write_regs, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write reg 0x%4.4x. error = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ov13b10_write_regs._entry_ptr = internal global ptr @ov13b10_write_regs._entry, section ".printk_index", align 4
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov13b10_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 1161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip id mismatch: %x!=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov13b10_identify_module\00", [40 x i8] zeroinitializer }, align 32
@ov13b10_identify_module._entry_ptr = internal global ptr @ov13b10_identify_module._entry, section ".printk_index", align 4
@mode_4208x3120_regs = internal constant { [41 x %struct.ov13b10_reg], [60 x i8] } { [41 x %struct.ov13b10_reg] [%struct.ov13b10_reg { i16 773, i8 -81 }, %struct.ov13b10_reg { i16 13569, i8 12 }, %struct.ov13b10_reg { i16 13922, i8 -110 }, %struct.ov13b10_reg { i16 14100, i8 36 }, %struct.ov13b10_reg { i16 14137, i8 18 }, %struct.ov13b10_reg { i16 14274, i8 4 }, %struct.ov13b10_reg { i16 14297, i8 12 }, %struct.ov13b10_reg { i16 14306, i8 10 }, %struct.ov13b10_reg { i16 14336, i8 0 }, %struct.ov13b10_reg { i16 14337, i8 0 }, %struct.ov13b10_reg { i16 14338, i8 0 }, %struct.ov13b10_reg { i16 14339, i8 8 }, %struct.ov13b10_reg { i16 14340, i8 16 }, %struct.ov13b10_reg { i16 14341, i8 -113 }, %struct.ov13b10_reg { i16 14342, i8 12 }, %struct.ov13b10_reg { i16 14343, i8 71 }, %struct.ov13b10_reg { i16 14344, i8 16 }, %struct.ov13b10_reg { i16 14345, i8 112 }, %struct.ov13b10_reg { i16 14346, i8 12 }, %struct.ov13b10_reg { i16 14347, i8 48 }, %struct.ov13b10_reg { i16 14348, i8 4 }, %struct.ov13b10_reg { i16 14349, i8 -104 }, %struct.ov13b10_reg { i16 14350, i8 12 }, %struct.ov13b10_reg { i16 14351, i8 124 }, %struct.ov13b10_reg { i16 14352, i8 0 }, %struct.ov13b10_reg { i16 14353, i8 15 }, %struct.ov13b10_reg { i16 14354, i8 0 }, %struct.ov13b10_reg { i16 14355, i8 9 }, %struct.ov13b10_reg { i16 14356, i8 1 }, %struct.ov13b10_reg { i16 14358, i8 1 }, %struct.ov13b10_reg { i16 14368, i8 -120 }, %struct.ov13b10_reg { i16 15500, i8 25 }, %struct.ov13b10_reg { i16 16392, i8 2 }, %struct.ov13b10_reg { i16 16393, i8 15 }, %struct.ov13b10_reg { i16 16464, i8 2 }, %struct.ov13b10_reg { i16 16465, i8 9 }, %struct.ov13b10_reg { i16 17665, i8 0 }, %struct.ov13b10_reg { i16 17669, i8 0 }, %struct.ov13b10_reg { i16 18487, i8 14 }, %struct.ov13b10_reg { i16 20480, i8 -1 }, %struct.ov13b10_reg { i16 20481, i8 15 }], [60 x i8] zeroinitializer }, align 32
@mode_4160x3120_regs = internal constant { [41 x %struct.ov13b10_reg], [60 x i8] } { [41 x %struct.ov13b10_reg] [%struct.ov13b10_reg { i16 773, i8 -81 }, %struct.ov13b10_reg { i16 13569, i8 12 }, %struct.ov13b10_reg { i16 13922, i8 -110 }, %struct.ov13b10_reg { i16 14100, i8 36 }, %struct.ov13b10_reg { i16 14137, i8 18 }, %struct.ov13b10_reg { i16 14274, i8 4 }, %struct.ov13b10_reg { i16 14297, i8 12 }, %struct.ov13b10_reg { i16 14306, i8 10 }, %struct.ov13b10_reg { i16 14336, i8 0 }, %struct.ov13b10_reg { i16 14337, i8 0 }, %struct.ov13b10_reg { i16 14338, i8 0 }, %struct.ov13b10_reg { i16 14339, i8 8 }, %struct.ov13b10_reg { i16 14340, i8 16 }, %struct.ov13b10_reg { i16 14341, i8 -113 }, %struct.ov13b10_reg { i16 14342, i8 12 }, %struct.ov13b10_reg { i16 14343, i8 71 }, %struct.ov13b10_reg { i16 14344, i8 16 }, %struct.ov13b10_reg { i16 14345, i8 64 }, %struct.ov13b10_reg { i16 14346, i8 12 }, %struct.ov13b10_reg { i16 14347, i8 48 }, %struct.ov13b10_reg { i16 14348, i8 4 }, %struct.ov13b10_reg { i16 14349, i8 -104 }, %struct.ov13b10_reg { i16 14350, i8 12 }, %struct.ov13b10_reg { i16 14351, i8 124 }, %struct.ov13b10_reg { i16 14352, i8 0 }, %struct.ov13b10_reg { i16 14353, i8 39 }, %struct.ov13b10_reg { i16 14354, i8 0 }, %struct.ov13b10_reg { i16 14355, i8 9 }, %struct.ov13b10_reg { i16 14356, i8 1 }, %struct.ov13b10_reg { i16 14358, i8 1 }, %struct.ov13b10_reg { i16 14368, i8 -120 }, %struct.ov13b10_reg { i16 15500, i8 25 }, %struct.ov13b10_reg { i16 16392, i8 2 }, %struct.ov13b10_reg { i16 16393, i8 15 }, %struct.ov13b10_reg { i16 16464, i8 2 }, %struct.ov13b10_reg { i16 16465, i8 9 }, %struct.ov13b10_reg { i16 17665, i8 0 }, %struct.ov13b10_reg { i16 17669, i8 0 }, %struct.ov13b10_reg { i16 18487, i8 14 }, %struct.ov13b10_reg { i16 20480, i8 -1 }, %struct.ov13b10_reg { i16 20481, i8 15 }], [60 x i8] zeroinitializer }, align 32
@mode_4160x2340_regs = internal constant { [41 x %struct.ov13b10_reg], [60 x i8] } { [41 x %struct.ov13b10_reg] [%struct.ov13b10_reg { i16 773, i8 -81 }, %struct.ov13b10_reg { i16 13569, i8 12 }, %struct.ov13b10_reg { i16 13922, i8 -110 }, %struct.ov13b10_reg { i16 14100, i8 36 }, %struct.ov13b10_reg { i16 14137, i8 18 }, %struct.ov13b10_reg { i16 14274, i8 4 }, %struct.ov13b10_reg { i16 14297, i8 12 }, %struct.ov13b10_reg { i16 14306, i8 10 }, %struct.ov13b10_reg { i16 14336, i8 0 }, %struct.ov13b10_reg { i16 14337, i8 0 }, %struct.ov13b10_reg { i16 14338, i8 0 }, %struct.ov13b10_reg { i16 14339, i8 8 }, %struct.ov13b10_reg { i16 14340, i8 16 }, %struct.ov13b10_reg { i16 14341, i8 -113 }, %struct.ov13b10_reg { i16 14342, i8 12 }, %struct.ov13b10_reg { i16 14343, i8 71 }, %struct.ov13b10_reg { i16 14344, i8 16 }, %struct.ov13b10_reg { i16 14345, i8 64 }, %struct.ov13b10_reg { i16 14346, i8 9 }, %struct.ov13b10_reg { i16 14347, i8 36 }, %struct.ov13b10_reg { i16 14348, i8 4 }, %struct.ov13b10_reg { i16 14349, i8 -104 }, %struct.ov13b10_reg { i16 14350, i8 12 }, %struct.ov13b10_reg { i16 14351, i8 124 }, %struct.ov13b10_reg { i16 14352, i8 0 }, %struct.ov13b10_reg { i16 14353, i8 39 }, %struct.ov13b10_reg { i16 14354, i8 1 }, %struct.ov13b10_reg { i16 14355, i8 -113 }, %struct.ov13b10_reg { i16 14356, i8 1 }, %struct.ov13b10_reg { i16 14358, i8 1 }, %struct.ov13b10_reg { i16 14368, i8 -120 }, %struct.ov13b10_reg { i16 15500, i8 25 }, %struct.ov13b10_reg { i16 16392, i8 2 }, %struct.ov13b10_reg { i16 16393, i8 15 }, %struct.ov13b10_reg { i16 16464, i8 2 }, %struct.ov13b10_reg { i16 16465, i8 9 }, %struct.ov13b10_reg { i16 17665, i8 0 }, %struct.ov13b10_reg { i16 17669, i8 0 }, %struct.ov13b10_reg { i16 18487, i8 14 }, %struct.ov13b10_reg { i16 20480, i8 -1 }, %struct.ov13b10_reg { i16 20481, i8 15 }], [60 x i8] zeroinitializer }, align 32
@mode_2104x1560_regs = internal constant { [41 x %struct.ov13b10_reg], [60 x i8] } { [41 x %struct.ov13b10_reg] [%struct.ov13b10_reg { i16 773, i8 -81 }, %struct.ov13b10_reg { i16 13569, i8 6 }, %struct.ov13b10_reg { i16 13922, i8 -120 }, %struct.ov13b10_reg { i16 14100, i8 40 }, %struct.ov13b10_reg { i16 14137, i8 16 }, %struct.ov13b10_reg { i16 14274, i8 20 }, %struct.ov13b10_reg { i16 14297, i8 6 }, %struct.ov13b10_reg { i16 14306, i8 12 }, %struct.ov13b10_reg { i16 14336, i8 0 }, %struct.ov13b10_reg { i16 14337, i8 0 }, %struct.ov13b10_reg { i16 14338, i8 0 }, %struct.ov13b10_reg { i16 14339, i8 8 }, %struct.ov13b10_reg { i16 14340, i8 16 }, %struct.ov13b10_reg { i16 14341, i8 -113 }, %struct.ov13b10_reg { i16 14342, i8 12 }, %struct.ov13b10_reg { i16 14343, i8 71 }, %struct.ov13b10_reg { i16 14344, i8 8 }, %struct.ov13b10_reg { i16 14345, i8 56 }, %struct.ov13b10_reg { i16 14346, i8 6 }, %struct.ov13b10_reg { i16 14347, i8 24 }, %struct.ov13b10_reg { i16 14348, i8 4 }, %struct.ov13b10_reg { i16 14349, i8 -104 }, %struct.ov13b10_reg { i16 14350, i8 6 }, %struct.ov13b10_reg { i16 14351, i8 62 }, %struct.ov13b10_reg { i16 14352, i8 0 }, %struct.ov13b10_reg { i16 14353, i8 7 }, %struct.ov13b10_reg { i16 14354, i8 0 }, %struct.ov13b10_reg { i16 14355, i8 5 }, %struct.ov13b10_reg { i16 14356, i8 3 }, %struct.ov13b10_reg { i16 14358, i8 3 }, %struct.ov13b10_reg { i16 14368, i8 -117 }, %struct.ov13b10_reg { i16 15500, i8 24 }, %struct.ov13b10_reg { i16 16392, i8 0 }, %struct.ov13b10_reg { i16 16393, i8 5 }, %struct.ov13b10_reg { i16 16464, i8 0 }, %struct.ov13b10_reg { i16 16465, i8 5 }, %struct.ov13b10_reg { i16 17665, i8 8 }, %struct.ov13b10_reg { i16 17669, i8 0 }, %struct.ov13b10_reg { i16 18487, i8 14 }, %struct.ov13b10_reg { i16 20480, i8 -3 }, %struct.ov13b10_reg { i16 20481, i8 13 }], [60 x i8] zeroinitializer }, align 32
@mode_2080x1170_regs = internal constant { [41 x %struct.ov13b10_reg], [60 x i8] } { [41 x %struct.ov13b10_reg] [%struct.ov13b10_reg { i16 773, i8 -81 }, %struct.ov13b10_reg { i16 13569, i8 6 }, %struct.ov13b10_reg { i16 13922, i8 -120 }, %struct.ov13b10_reg { i16 14100, i8 40 }, %struct.ov13b10_reg { i16 14137, i8 16 }, %struct.ov13b10_reg { i16 14274, i8 20 }, %struct.ov13b10_reg { i16 14297, i8 6 }, %struct.ov13b10_reg { i16 14306, i8 12 }, %struct.ov13b10_reg { i16 14336, i8 0 }, %struct.ov13b10_reg { i16 14337, i8 0 }, %struct.ov13b10_reg { i16 14338, i8 0 }, %struct.ov13b10_reg { i16 14339, i8 8 }, %struct.ov13b10_reg { i16 14340, i8 16 }, %struct.ov13b10_reg { i16 14341, i8 -113 }, %struct.ov13b10_reg { i16 14342, i8 12 }, %struct.ov13b10_reg { i16 14343, i8 71 }, %struct.ov13b10_reg { i16 14344, i8 8 }, %struct.ov13b10_reg { i16 14345, i8 32 }, %struct.ov13b10_reg { i16 14346, i8 4 }, %struct.ov13b10_reg { i16 14347, i8 -110 }, %struct.ov13b10_reg { i16 14348, i8 4 }, %struct.ov13b10_reg { i16 14349, i8 -104 }, %struct.ov13b10_reg { i16 14350, i8 6 }, %struct.ov13b10_reg { i16 14351, i8 62 }, %struct.ov13b10_reg { i16 14352, i8 0 }, %struct.ov13b10_reg { i16 14353, i8 19 }, %struct.ov13b10_reg { i16 14354, i8 0 }, %struct.ov13b10_reg { i16 14355, i8 -55 }, %struct.ov13b10_reg { i16 14356, i8 3 }, %struct.ov13b10_reg { i16 14358, i8 3 }, %struct.ov13b10_reg { i16 14368, i8 -117 }, %struct.ov13b10_reg { i16 15500, i8 24 }, %struct.ov13b10_reg { i16 16392, i8 0 }, %struct.ov13b10_reg { i16 16393, i8 5 }, %struct.ov13b10_reg { i16 16464, i8 0 }, %struct.ov13b10_reg { i16 16465, i8 5 }, %struct.ov13b10_reg { i16 17665, i8 8 }, %struct.ov13b10_reg { i16 17669, i8 0 }, %struct.ov13b10_reg { i16 18487, i8 14 }, %struct.ov13b10_reg { i16 20480, i8 -3 }, %struct.ov13b10_reg { i16 20481, i8 13 }], [60 x i8] zeroinitializer }, align 32
@ov13b10_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ov13b10:1209:(ctrl_hdlr)->_lock\00", [32 x i8] zeroinitializer }, align 32
@ov13b10_init_controls.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ov13b->mutex\00", [18 x i8] zeroinitializer }, align 32
@ov13b10_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov13b10_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov13b10_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [44 x i8] zeroinitializer }, align 32
@ov13b10_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s control init failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov13b10_init_controls\00", [42 x i8] zeroinitializer }, align 32
@ov13b10_init_controls._entry_ptr = internal global ptr @ov13b10_init_controls._entry, section ".printk_index", align 4
@ov13b10_set_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 884, ptr @.str.48, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ctrl(id:0x%x,val:0x%x) is not handled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov13b10_set_ctrl\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov13b10_set_ctrl._entry_ptr = internal global ptr @ov13b10_set_ctrl._entry, section ".printk_index", align 4
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 1\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 2\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 3\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical Color Bar Type 4\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 9963793, i64 9963796, i64 9963797, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"ov13b10_i2c_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1477, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1479, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"ov13b10_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1464, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1387, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"ov13b10_subdev_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1179, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1401, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 514, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"ov13b10_internal_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1188, i32 46 }
@___asan_gen_.96 = private unnamed_addr constant [26 x i8] c"ov13b10_subdev_entity_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1184, i32 45 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1422, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1445, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1323, i32 50 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1326, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1331, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1346, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1353, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 497, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1366, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"ov13b10_video_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1168, i32 43 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"ov13b10_pad_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1172, i32 41 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1036, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"link_freq_configs\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 503, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1045, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1053, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [24 x i8] c"mipi_data_rate_1120mbps\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 118, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 673, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 998, i32 6 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1160, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"mode_4208x3120_regs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 249, i32 33 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c"mode_4160x3120_regs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 293, i32 33 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c"mode_4160x2340_regs\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 337, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c"mode_2104x1560_regs\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 381, i32 33 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c"mode_2080x1170_regs\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 425, i32 33 }
@___asan_gen_.219 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1209, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1213, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"ov13b10_ctrl_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 893, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant [26 x i8] c"ov13b10_test_pattern_menu\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 469, i32 27 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1278, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 882, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 470, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 471, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 472, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 473, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.271 = private constant [31 x i8] c"../drivers/media/i2c/ov13b10.c\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 474, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ov13b10_i2c_driver_exit, ptr @__initcall__kmod_ov13b10__294_1487_ov13b10_i2c_driver_init6, ptr @ov13b10_check_hwcfg._entry, ptr @ov13b10_check_hwcfg._entry.17, ptr @ov13b10_check_hwcfg._entry.20, ptr @ov13b10_check_hwcfg._entry.23, ptr @ov13b10_check_hwcfg._entry.26, ptr @ov13b10_check_hwcfg._entry_ptr, ptr @ov13b10_check_hwcfg._entry_ptr.19, ptr @ov13b10_check_hwcfg._entry_ptr.22, ptr @ov13b10_check_hwcfg._entry_ptr.25, ptr @ov13b10_check_hwcfg._entry_ptr.28, ptr @ov13b10_i2c_driver_exit, ptr @ov13b10_identify_module._entry, ptr @ov13b10_identify_module._entry_ptr, ptr @ov13b10_init_controls._entry, ptr @ov13b10_init_controls._entry_ptr, ptr @ov13b10_probe._entry, ptr @ov13b10_probe._entry.12, ptr @ov13b10_probe._entry.6, ptr @ov13b10_probe._entry.9, ptr @ov13b10_probe._entry_ptr, ptr @ov13b10_probe._entry_ptr.11, ptr @ov13b10_probe._entry_ptr.13, ptr @ov13b10_probe._entry_ptr.8, ptr @ov13b10_set_ctrl._entry, ptr @ov13b10_set_ctrl._entry_ptr, ptr @ov13b10_start_streaming._entry, ptr @ov13b10_start_streaming._entry.31, ptr @ov13b10_start_streaming._entry.34, ptr @ov13b10_start_streaming._entry_ptr, ptr @ov13b10_start_streaming._entry_ptr.33, ptr @ov13b10_start_streaming._entry_ptr.36, ptr @ov13b10_write_regs._entry, ptr @ov13b10_write_regs._entry_ptr, ptr @ov13b10_i2c_driver, ptr @.str, ptr @ov13b10_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ov13b10_subdev_ops, ptr @.str.7, ptr @supported_modes, ptr @ov13b10_internal_ops, ptr @ov13b10_subdev_entity_ops, ptr @.str.10, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @link_freq_menu_items, ptr @.str.27, ptr @ov13b10_video_ops, ptr @ov13b10_pad_ops, ptr @.str.29, ptr @.str.30, ptr @link_freq_configs, ptr @.str.32, ptr @.str.35, ptr @mipi_data_rate_1120mbps, ptr @ov13b10_write_regs._rs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @mode_4208x3120_regs, ptr @mode_4160x3120_regs, ptr @mode_4160x2340_regs, ptr @mode_2104x1560_regs, ptr @mode_2080x1170_regs, ptr @ov13b10_init_controls._key, ptr @.str.42, ptr @ov13b10_init_controls.__key, ptr @.str.43, ptr @ov13b10_ctrl_ops, ptr @ov13b10_test_pattern_menu, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_check_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_check_hwcfg._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_check_hwcfg._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_check_hwcfg._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_check_hwcfg._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_configs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_start_streaming._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_start_streaming._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_1120mbps to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_write_regs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_4208x3120_regs to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_4160x3120_regs to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_4160x2340_regs to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2104x1560_regs to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2080x1170_regs to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_init_controls.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov13b10_set_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13b10_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov13b10_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov13b10_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ov13b10_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13b10_remove(ptr noundef %client) #2 align 64 {
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
  %mutex.i = getelementptr inbounds %struct.ov13b10, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %mutex.i) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13b10_probe(ptr noundef %client) #2 align 64 {
entry:
  %props.i = alloca %struct.v4l2_fwnode_device_properties, align 4
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i = alloca i32, align 4
  %reg_addr_be.i.i = alloca i16, align 2
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %ext_clk.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %call.i = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_clk.i) #7
  %3 = ptrtoint ptr %ext_clk.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ext_clk.i, align 4, !annotation !153
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ov13b10_check_hwcfg.exit.thread_crit_edge, label %if.end.i

entry.ov13b10_check_hwcfg.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov13b10_check_hwcfg.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %call1.i, ptr noundef nonnull @.str.14, ptr noundef nonnull %ext_clk.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %ov13b10_check_hwcfg.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %ext_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ext_clk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 19200000
  br i1 %cmp.not.i, label %if.end10.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %5) #10
  br label %ov13b10_check_hwcfg.exit.thread

if.end10.i:                                       ; preds = %if.end5.i
  %call11.i = call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call.i, ptr noundef null) #7
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end10.i.ov13b10_check_hwcfg.exit.thread_crit_edge, label %if.end14.i

if.end10.i.ov13b10_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov13b10_check_hwcfg.exit.thread

if.end14.i:                                       ; preds = %if.end10.i
  %call15.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call11.i, ptr noundef nonnull %bus_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.ov13b10_check_hwcfg.exit.thread_crit_edge

if.end14.i.ov13b10_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov13b10_check_hwcfg.exit.thread

if.end18.i:                                       ; preds = %if.end14.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2, i32 2, i32 3
  %6 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp19.not.i = icmp eq i8 %7, 4
  br i1 %cmp19.not.i, label %if.end29.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #10
  br label %ov13b10_check_hwcfg.exit.thread106

if.end29.i:                                       ; preds = %if.end18.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %8 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool30.not.i = icmp eq i32 %9, 0
  br i1 %tobool30.not.i, label %do.end34.i, label %for.body42.lr.ph.i

for.body42.lr.ph.i:                               ; preds = %if.end29.i
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %10 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body42.i

do.end34.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  br label %ov13b10_check_hwcfg.exit.thread106

for.body42.i:                                     ; preds = %for.inc.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %j.086.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc.i, %for.inc.i.for.body42.i_crit_edge ]
  %arrayidx43.i = getelementptr i64, ptr %11, i32 %j.086.i
  %12 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx43.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 560000000, i64 %13)
  %cmp44.i = icmp eq i64 %13, 560000000
  br i1 %cmp44.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body42.i
  %inc.i = add nuw i32 %j.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.do.end54.i_crit_edge, label %for.inc.i.for.body42.i_crit_edge

for.inc.i.for.body42.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i

for.inc.i.do.end54.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

for.end.i:                                        ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.086.i, i32 %9)
  %cmp49.i = icmp eq i32 %j.086.i, %9
  br i1 %cmp49.i, label %for.end.i.do.end54.i_crit_edge, label %if.end

for.end.i.do.end54.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

do.end54.i:                                       ; preds = %for.end.i.do.end54.i_crit_edge, %for.inc.i.do.end54.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i64 noundef 560000000) #10
  br label %ov13b10_check_hwcfg.exit.thread106

ov13b10_check_hwcfg.exit.thread:                  ; preds = %if.end14.i.ov13b10_check_hwcfg.exit.thread_crit_edge, %if.end10.i.ov13b10_check_hwcfg.exit.thread_crit_edge, %do.end9.i, %do.end.i, %entry.ov13b10_check_hwcfg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call15.i, %if.end14.i.ov13b10_check_hwcfg.exit.thread_crit_edge ], [ -6, %if.end10.i.ov13b10_check_hwcfg.exit.thread_crit_edge ], [ -6, %entry.ov13b10_check_hwcfg.exit.thread_crit_edge ], [ -22, %do.end9.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_clk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

ov13b10_check_hwcfg.exit.thread106:               ; preds = %do.end54.i, %do.end34.i, %do.end24.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_clk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

do.end:                                           ; preds = %ov13b10_check_hwcfg.exit.thread106, %ov13b10_check_hwcfg.exit.thread
  %retval.0.i104 = phi i32 [ %retval.0.i.ph, %ov13b10_check_hwcfg.exit.thread ], [ -22, %ov13b10_check_hwcfg.exit.thread106 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i104) #10
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_clk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %call.i87 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 532, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i87, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i87, ptr noundef %client, ptr noundef nonnull @ov13b10_subdev_ops) #7
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i87, i32 0, i32 11
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %16 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #7
  %18 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #7
  %19 = ptrtoint ptr %reg_addr_be.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 12298, ptr %reg_addr_be.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
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
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %16, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %reg_addr_be.i.i, ptr %buf.i.i, align 4
  %26 = load i16, ptr %addr.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 3, ptr %len12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i8, ptr %data_be.i.i, i32 1
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx13.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %31 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i.i, align 8
  %call16.i.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i)
  %cmp17.not.i.i = icmp eq i32 %call16.i.i, 2
  br i1 %cmp17.not.i.i, label %if.end.i89, label %ov13b10_read_reg.exit.i

ov13b10_read_reg.exit.i:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %do.end12

if.end.i89:                                       ; preds = %if.end6
  %33 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5639490, i32 %34)
  %cmp.not.i88 = icmp eq i32 %34, 5639490
  br i1 %cmp.not.i88, label %if.end14, label %do.end.i90

do.end.i90:                                       ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef 5639490, i32 noundef %34) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end.i90, %ov13b10_read_reg.exit.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef -5) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end.i89
  %cur_mode = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 8
  %35 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %36 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props.i) #7
  %38 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %props.i, align 4, !annotation !153
  %39 = getelementptr inbounds %struct.v4l2_fwnode_device_properties, ptr %props.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %39, align 4, !annotation !153
  %ctrl_handler.i = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 2
  %call1.i93 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 10, ptr noundef nonnull @ov13b10_init_controls._key, ptr noundef nonnull @.str.42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool.not.i94 = icmp eq i32 %call1.i93, 0
  br i1 %tobool.not.i94, label %do.body.i, label %if.end14.ov13b10_init_controls.exit.thread_crit_edge

if.end14.ov13b10_init_controls.exit.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov13b10_init_controls.exit.thread

do.body.i:                                        ; preds = %if.end14
  %mutex.i = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 9
  call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @ov13b10_init_controls.__key) #7
  %lock.i = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %mutex.i, ptr %lock.i, align 4
  %call3.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #7
  %link_freq.i = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 3
  %42 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call3.i, ptr %link_freq.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %do.body.i.if.end8.i_crit_edge, label %if.then6.i

do.body.i.if.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call3.i, i32 0, i32 20
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %44, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %do.body.i.if.end8.i_crit_edge
  %45 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 2240000000, i64 3689348814741910323) #11, !srcloc !154
  %46 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 2240000000, i64 %45) #11, !srcloc !155
  %call10.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 10422530, i64 noundef 0, i64 noundef %46, i64 noundef 1, i64 noundef %46) #7
  %pixel_rate.i = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 4
  %47 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call10.i, ptr %pixel_rate.i, align 4
  %48 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cur_mode, align 4
  %vts_def.i = getelementptr inbounds %struct.ov13b10_mode, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vts_def.i, align 4
  %height.i = getelementptr inbounds %struct.ov13b10_mode, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height.i, align 4
  %sub.i = sub i32 %51, %53
  %conv11.i = zext i32 %sub.i to i64
  %vts_min.i = getelementptr inbounds %struct.ov13b10_mode, ptr %49, i32 0, i32 3
  %54 = ptrtoint ptr %vts_min.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vts_min.i, align 4
  %sub13.i = sub i32 %55, %53
  %conv14.i = zext i32 %sub13.i to i64
  %sub16.i = sub i32 32767, %53
  %conv17.i = zext i32 %sub16.i to i64
  %call18.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 10356993, i64 noundef %conv14.i, i64 noundef %conv17.i, i64 noundef 1, i64 noundef %conv11.i) #7
  %vblank.i = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 5
  %56 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call18.i, ptr %vblank.i, align 4
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %49, align 4
  %sub19.i = sub i32 4704, %58
  %conv20.i = zext i32 %sub19.i to i64
  %call21.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 10356994, i64 noundef %conv20.i, i64 noundef %conv20.i, i64 noundef 1, i64 noundef %conv20.i) #7
  %hblank22.i = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 6
  %59 = ptrtoint ptr %hblank22.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call21.i, ptr %hblank22.i, align 4
  %tobool24.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool24.not.i, label %if.end8.i.if.end29.i95_crit_edge, label %if.then25.i

if.end8.i.if.end29.i95_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i95

if.then25.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags27.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call21.i, i32 0, i32 20
  %60 = ptrtoint ptr %flags27.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags27.i, align 4
  %or28.i = or i32 %61, 4
  store i32 %or28.i, ptr %flags27.i, align 4
  br label %if.end29.i95

if.end29.i95:                                     ; preds = %if.then25.i, %if.end8.i.if.end29.i95_crit_edge
  %62 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vts_def.i, align 4
  %sub31.i = add i32 %63, -8
  %conv32.i = zext i32 %sub31.i to i64
  %call33.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv32.i, i64 noundef 1, i64 noundef %conv32.i) #7
  %exposure.i = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 7
  %64 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call33.i, ptr %exposure.i, align 4
  %call34.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 10356995, i64 noundef 128, i64 noundef 1984, i64 noundef 1, i64 noundef 128) #7
  %call35.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 10422533, i64 noundef 1024, i64 noundef 4095, i64 noundef 1, i64 noundef 2560) #7
  %call36.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov13b10_test_pattern_menu) #7
  %call37.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call38.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %error.i = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 2, i32 9
  %65 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool39.not.i = icmp eq i32 %66, 0
  %dev46.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  br i1 %tobool39.not.i, label %if.end45.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end29.i95
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %66) #10
  br label %error57.i

if.end45.i:                                       ; preds = %if.end29.i95
  %call47.i = call i32 @v4l2_fwnode_device_parse(ptr noundef %dev46.i, ptr noundef nonnull %props.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.end45.i.error57.i_crit_edge

if.end45.i.error57.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error57.i

if.end50.i:                                       ; preds = %if.end45.i
  %call51.i = call i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov13b10_ctrl_ops, ptr noundef nonnull %props.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end18, label %if.end50.i.error57.i_crit_edge

if.end50.i.error57.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error57.i

error57.i:                                        ; preds = %if.end50.i.error57.i_crit_edge, %if.end45.i.error57.i_crit_edge, %if.then40.i
  %ret.0.i96 = phi i32 [ %66, %if.then40.i ], [ %call47.i, %if.end45.i.error57.i_crit_edge ], [ %call51.i, %if.end50.i.error57.i_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #7
  call void @mutex_destroy(ptr noundef %mutex.i) #7
  br label %ov13b10_init_controls.exit.thread

ov13b10_init_controls.exit.thread:                ; preds = %error57.i, %if.end14.ov13b10_init_controls.exit.thread_crit_edge
  %retval.0.i97.ph = phi i32 [ %call1.i93, %if.end14.ov13b10_init_controls.exit.thread_crit_edge ], [ %ret.0.i96, %error57.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end50.i
  %ctrl_handler56.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i87, i32 0, i32 8
  %67 = ptrtoint ptr %ctrl_handler56.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %ctrl_handler.i, ptr %ctrl_handler56.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #7
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i87, i32 0, i32 7
  %68 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @ov13b10_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i87, i32 0, i32 4
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %or = or i32 %70, 4
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i87, i32 0, i32 11
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @ov13b10_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i87, i32 0, i32 3
  %72 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 1
  %flags24 = getelementptr inbounds %struct.ov13b10, ptr %call.i87, i32 0, i32 1, i32 4
  %73 = ptrtoint ptr %flags24 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %flags24, align 4
  %call28 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i87, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %call28) #10
  br label %error_handler_free

if.end35:                                         ; preds = %if.end18
  %call37 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %if.end35.error_handler_free_crit_edge, label %if.end39

if.end35.error_handler_free_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_handler_free

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call.i98 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i99 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #7
  br label %cleanup

error_handler_free:                               ; preds = %if.end35.error_handler_free_crit_edge, %do.end33
  %ret.0 = phi i32 [ %call28, %do.end33 ], [ %call37, %if.end35.error_handler_free_crit_edge ]
  %74 = ptrtoint ptr %ctrl_handler56.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctrl_handler56.i, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %75) #7
  call void @mutex_destroy(ptr noundef %mutex.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %error_handler_free, %if.end39, %ov13b10_init_controls.exit.thread, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i104, %do.end ], [ -5, %do.end12 ], [ %ret.0, %error_handler_free ], [ 0, %if.end39 ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i97.ph, %ov13b10_init_controls.exit.thread ]
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
define internal i32 @ov13b10_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mutex = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !156
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
  %tobool3 = icmp ne i32 %enable, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then4
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !158
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_unlock_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_unlock_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !159
  br label %err_unlock

if.end9:                                          ; preds = %if.then4
  %call10 = tail call fastcc i32 @ov13b10_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %err_rpm_put

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
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
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i41 = call i32 @__pm_runtime_idle(ptr noundef %dev15, i32 noundef 5) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end9.if.end17_crit_edge
  %frombool = zext i1 %tobool3 to i8
  %13 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

err_rpm_put:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call.i42 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %err_unlock

err_unlock:                                       ; preds = %err_rpm_put, %do.end11.i.i.i.i.i, %if.then.i.err_unlock_crit_edge
  %ret.1 = phi i32 [ %call10, %err_rpm_put ], [ %call.i, %if.then.i.err_unlock_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
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
define internal fastcc i32 @ov13b10_start_streaming(ptr nocapture noundef readonly %ov13b) unnamed_addr #2 align 64 {
entry:
  %buf.i72 = alloca [6 x i8], align 1
  %buf.i.i.i48 = alloca [6 x i8], align 1
  %buf.i.i.i = alloca [6 x i8], align 1
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov13b, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
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
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp12.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp12.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_mode = getelementptr inbounds %struct.ov13b10, ptr %ov13b, i32 0, i32 8
  %7 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_mode, align 4
  %link_freq_index2 = getelementptr inbounds %struct.ov13b10_mode, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %link_freq_index2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_freq_index2, align 4
  %reg_list3 = getelementptr [1 x %struct.ov13b10_link_freq_config], ptr @link_freq_configs, i32 0, i32 %10, i32 1
  %regs.i = getelementptr [1 x %struct.ov13b10_link_freq_config], ptr @link_freq_configs, i32 0, i32 %10, i32 1, i32 1
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.cond.i.i.if.end11_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ov13b10_reg, ptr %12, i32 %i.025.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i.i, align 2
  %val.i.i = getelementptr %struct.ov13b10_reg, ptr %12, i32 %i.025.i.i, i32 1
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i.i, align 2
  %23 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #7
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
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %buf.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i)
  %cmp12.not.i.i.i = icmp eq i32 %call.i.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #7
  br i1 %cmp12.not.i.i.i, label %for.cond.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  %call3.i.i = call i32 @___ratelimit(ptr noundef nonnull @ov13b10_write_regs._rs, ptr noundef nonnull @__func__.ov13b10_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.do.end9_crit_edge, label %do.end.i.i

do.body.i.i.do.end9_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i.i, align 2
  %conv9.i.i = zext i16 %30 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, i32 noundef %conv9.i.i, i32 noundef -5) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end.i.i, %do.body.i.i.do.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end11:                                         ; preds = %for.cond.i.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %31 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_mode, align 4
  %reg_list13 = getelementptr inbounds %struct.ov13b10_mode, ptr %32, i32 0, i32 5
  %regs.i49 = getelementptr inbounds %struct.ov13b10_mode, ptr %32, i32 0, i32 5, i32 1
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i63

for.cond.i.i55.if.end21_crit_edge:                ; preds = %for.cond.i.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.i.i63:                                   ; preds = %for.cond.i.i55.for.body.i.i63_crit_edge, %for.body.lr.ph.i.i52
  %i.025.i.i56 = phi i32 [ 0, %for.body.lr.ph.i.i52 ], [ %inc.i.i53, %for.cond.i.i55.for.body.i.i63_crit_edge ]
  %arrayidx.i.i57 = getelementptr %struct.ov13b10_reg, ptr %34, i32 %i.025.i.i56
  %41 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.i57, align 2
  %val.i.i58 = getelementptr %struct.ov13b10_reg, ptr %34, i32 %i.025.i.i56, i32 1
  %43 = ptrtoint ptr %val.i.i58 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val.i.i58, align 2
  %45 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i48) #7
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
  %call.i.i.i.i61 = call i32 @i2c_transfer_buffer_flags(ptr noundef %46, ptr noundef nonnull %buf.i.i.i48, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i61)
  %cmp12.not.i.i.i62 = icmp eq i32 %call.i.i.i.i61, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i48) #7
  br i1 %cmp12.not.i.i.i62, label %for.cond.i.i55, label %do.body.i.i66

do.body.i.i66:                                    ; preds = %for.body.i.i63
  %call3.i.i64 = call i32 @___ratelimit(ptr noundef nonnull @ov13b10_write_regs._rs, ptr noundef nonnull @__func__.ov13b10_write_regs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i64)
  %tobool4.not.i.i65 = icmp eq i32 %call3.i.i64, 0
  br i1 %tobool4.not.i.i65, label %do.body.i.i66.do.end19_crit_edge, label %do.end.i.i69

do.body.i.i66.do.end19_crit_edge:                 ; preds = %do.body.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end.i.i69:                                     ; preds = %do.body.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i67 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i.i57, align 2
  %conv9.i.i68 = zext i16 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i67, ptr noundef nonnull @.str.38, i32 noundef %conv9.i.i68, i32 noundef -5) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end.i.i69, %do.body.i.i66.do.end19_crit_edge
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end21:                                         ; preds = %for.cond.i.i55.if.end21_crit_edge, %if.end11.if.end21_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %ov13b, i32 0, i32 8
  %53 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl_handler, align 4
  %call23 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i72) #7
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
  %call.i.i76 = call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %buf.i72, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i76)
  %cmp12.not.i77 = icmp eq i32 %call.i.i76, 3
  %..i78 = select i1 %cmp12.not.i77, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i72) #7
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov13b10_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
define internal i32 @ov13b10_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
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
  %arrayidx = getelementptr [5 x %struct.ov13b10_mode], ptr @supported_modes, i32 0, i32 %1
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
  %height = getelementptr [5 x %struct.ov13b10_mode], ptr @supported_modes, i32 0, i32 %1, i32 1
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
define internal i32 @ov13b10_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !160

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format.i, ptr %arrayidx.i.i, i32 48)
  br label %ov13b10_do_get_pad_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode.i = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 8
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
  %height.i.i = getelementptr inbounds %struct.ov13b10_mode, ptr %10, i32 0, i32 1
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
  br label %ov13b10_do_get_pad_format.exit

ov13b10_do_get_pad_format.exit:                   ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13b10_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12298, i32 %1)
  %cmp.not = icmp eq i32 %1, 12298
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 5, i32 noundef 28, i32 noundef 0, i32 noundef 4, i32 noundef %4, i32 noundef %6) #7
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov13b10_mode, ptr %call, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.then7.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !160

if.then7.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 8
  %24 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %cur_mode, align 4
  %link_freq10 = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 3
  %25 = ptrtoint ptr %link_freq10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link_freq10, align 4
  %link_freq_index = getelementptr inbounds %struct.ov13b10_mode, ptr %call, i32 0, i32 4
  %27 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_freq_index, align 4
  %call11 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %26, i32 noundef %28) #7
  %29 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 2240000000, i64 3689348814741910323) #11, !srcloc !154
  %30 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 2240000000, i64 %29) #11, !srcloc !155
  %pixel_rate14 = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 4
  %31 = ptrtoint ptr %pixel_rate14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pixel_rate14, align 4
  %call15 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %32, i64 noundef %30) #7
  %33 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_mode, align 4
  %vts_def = getelementptr inbounds %struct.ov13b10_mode, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vts_def, align 4
  %height18 = getelementptr inbounds %struct.ov13b10_mode, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height18, align 4
  %sub = sub i32 %36, %38
  %vts_min = getelementptr inbounds %struct.ov13b10_mode, ptr %34, i32 0, i32 3
  %39 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vts_min, align 4
  %sub22 = sub i32 %40, %38
  %vblank = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 5
  %41 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vblank, align 4
  %conv = sext i32 %sub22 to i64
  %sub25 = sub i32 32767, %38
  %conv26 = zext i32 %sub25 to i64
  %conv27 = sext i32 %sub to i64
  %call28 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %42, i64 noundef %conv, i64 noundef %conv26, i64 noundef 1, i64 noundef %conv27) #7
  %43 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vblank, align 4
  %call30 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %44, i32 noundef %sub) #7
  %45 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur_mode, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %sub35 = sub i32 4704, %48
  %conv36 = zext i32 %sub35 to i64
  %hblank = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 6
  %49 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hblank, align 4
  %call37 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %50, i64 noundef %conv36, i64 noundef %conv36, i64 noundef 1, i64 noundef %conv36) #7
  br label %if.end38

if.end38:                                         ; preds = %if.else, %v4l2_subdev_get_try_format.exit
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13b10_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i22.i111 = alloca [6 x i8], align 1
  %msgs.i3.i112 = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i4.i113 = alloca i32, align 4
  %reg_addr_be.i5.i114 = alloca i16, align 2
  %buf.i1.i115 = alloca [6 x i8], align 1
  %msgs.i.i116 = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i117 = alloca i32, align 4
  %reg_addr_be.i.i118 = alloca i16, align 2
  %buf.i22.i = alloca [6 x i8], align 1
  %msgs.i3.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i4.i = alloca i32, align 4
  %reg_addr_be.i5.i = alloca i16, align 2
  %buf.i1.i = alloca [6 x i8], align 1
  %msgs.i.i88 = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i89 = alloca i32, align 4
  %reg_addr_be.i.i90 = alloca i16, align 2
  %buf.i11.i = alloca [6 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data_be.i.i = alloca i32, align 4
  %reg_addr_be.i.i = alloca i16, align 2
  %buf.i73 = alloca [6 x i8], align 1
  %buf.i66 = alloca [6 x i8], align 1
  %buf.i27.i = alloca [6 x i8], align 1
  %buf.i20.i = alloca [6 x i8], align 1
  %buf.i.i = alloca [6 x i8], align 1
  %buf.i = alloca [6 x i8], align 1
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
  %cond = icmp eq i32 %5, 10356993
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr i8, ptr %1, i32 204
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov13b10_mode, ptr %7, i32 0, i32 1
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
  %call3 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %13, i64 noundef %15, i64 noundef %conv, i64 noundef %18, i64 noundef %conv) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
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
    i32 9963796, label %sw.bb24
    i32 9963797, label %sw.bb27
  ]

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val7, align 4
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
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
  %.tr = trunc i32 %23 to i16
  %val.i.2.extract.trunc = shl i16 %.tr, 1
  store i16 %val.i.2.extract.trunc, ptr %27, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp12.not.i = icmp eq i32 %call.i.i, 4
  %..i = select i1 %cmp12.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br label %sw.epilog33

sw.bb9:                                           ; preds = %if.end
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val10, align 4
  %33 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %35 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %36 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 -1, ptr %36, align 1
  %38 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 53, ptr %buf.i.i, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 12, ptr %35, align 1
  %d_gain.tr.i = trunc i32 %32 to i8
  %val.i.3.extract.trunc.i = shl i8 %d_gain.tr.i, 6
  store i8 %val.i.3.extract.trunc.i, ptr %36, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp12.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp12.not.i.i, label %if.end.i, label %sw.bb9.sw.epilog33_crit_edge

sw.bb9.sw.epilog33_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33

if.end.i:                                         ; preds = %sw.bb9
  %shr.i = lshr i32 %32, 2
  %40 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i20.i) #7
  %42 = getelementptr inbounds [6 x i8], ptr %buf.i20.i, i32 0, i32 1
  %43 = getelementptr inbounds i8, ptr %buf.i20.i, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 -1, ptr %43, align 1
  %45 = ptrtoint ptr %buf.i20.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 53, ptr %buf.i20.i, align 1
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 11, ptr %42, align 1
  %val.i21.3.extract.trunc.i = trunc i32 %shr.i to i8
  store i8 %val.i21.3.extract.trunc.i, ptr %43, align 1
  %call.i.i24.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %buf.i20.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i24.i)
  %cmp12.not.i25.i = icmp eq i32 %call.i.i24.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i20.i) #7
  br i1 %cmp12.not.i25.i, label %if.end5.i, label %if.end.i.sw.epilog33_crit_edge

if.end.i.sw.epilog33_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr6.i = lshr i32 %32, 10
  %47 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i27.i) #7
  %49 = getelementptr inbounds [6 x i8], ptr %buf.i27.i, i32 0, i32 1
  %50 = getelementptr inbounds i8, ptr %buf.i27.i, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 -1, ptr %50, align 1
  %52 = ptrtoint ptr %buf.i27.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 53, ptr %buf.i27.i, align 1
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 10, ptr %49, align 1
  %54 = trunc i32 %shr6.i to i8
  %val.i28.3.extract.trunc.i = and i8 %54, 3
  store i8 %val.i28.3.extract.trunc.i, ptr %50, align 1
  %call.i.i31.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buf.i27.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i31.i)
  %cmp12.not.i32.i = icmp eq i32 %call.i.i31.i, 3
  %..i33.i = select i1 %cmp12.not.i32.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i27.i) #7
  br label %sw.epilog33

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %55 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val13, align 4
  %57 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i66) #7
  %59 = getelementptr inbounds [6 x i8], ptr %buf.i66, i32 0, i32 1
  %60 = getelementptr inbounds i8, ptr %buf.i66, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 -1, ptr %60, align 1
  %62 = ptrtoint ptr %buf.i66 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 53, ptr %buf.i66, align 1
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %59, align 1
  %val.i67.1.extract.trunc = trunc i32 %56 to i24
  store i24 %val.i67.1.extract.trunc, ptr %60, align 1
  %call.i.i70 = call i32 @i2c_transfer_buffer_flags(ptr noundef %58, ptr noundef nonnull %buf.i66, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i70)
  %cmp12.not.i71 = icmp eq i32 %call.i.i70, 5
  %..i72 = select i1 %cmp12.not.i71, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i66) #7
  br label %sw.epilog33

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode16 = getelementptr i8, ptr %1, i32 204
  %64 = ptrtoint ptr %cur_mode16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_mode16, align 4
  %height17 = getelementptr inbounds %struct.ov13b10_mode, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height17, align 4
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %68 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val18, align 4
  %add19 = add i32 %69, %67
  %70 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i73) #7
  %72 = getelementptr inbounds [6 x i8], ptr %buf.i73, i32 0, i32 1
  %73 = getelementptr inbounds i8, ptr %buf.i73, i32 2
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 -1, ptr %73, align 1
  %75 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 56, ptr %buf.i73, align 1
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 14, ptr %72, align 1
  %val.i74.2.extract.trunc = trunc i32 %add19 to i16
  store i16 %val.i74.2.extract.trunc, ptr %73, align 1
  %call.i.i77 = call i32 @i2c_transfer_buffer_flags(ptr noundef %71, ptr noundef nonnull %buf.i73, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i77)
  %cmp12.not.i78 = icmp eq i32 %call.i.i77, 4
  %..i79 = select i1 %cmp12.not.i78, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i73) #7
  br label %sw.epilog33

sw.bb21:                                          ; preds = %if.end
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %77 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val22, align 4
  %79 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %81 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %82 = call ptr @memset(ptr %81, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #7
  %83 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #7
  %84 = ptrtoint ptr %reg_addr_be.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 20608, ptr %reg_addr_be.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %addr.i.i, align 2
  %87 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i.i, align 2
  %89 = ptrtoint ptr %81 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 2, ptr %81, align 4
  %buf.i.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %buf.i.i81 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %reg_addr_be.i.i, ptr %buf.i.i81, align 4
  %91 = load i16, ptr %addr.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %arrayidx7.i.i, align 4
  %flags10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %flags10.i.i, align 2
  %len12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %94 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1, ptr %len12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i8, ptr %data_be.i.i, i32 3
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %arrayidx13.i.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 3
  %96 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adapter.i.i, align 8
  %call16.i.i = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i)
  %cmp17.not.i.i = icmp eq i32 %call16.i.i, 2
  br i1 %cmp17.not.i.i, label %if.end.i82, label %ov13b10_read_reg.exit.i

ov13b10_read_reg.exit.i:                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br label %sw.epilog33

if.end.i82:                                       ; preds = %sw.bb21
  %98 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool1.not.i = icmp eq i32 %78, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %99, 115
  %sub.i = shl i32 %78, 2
  %shl.i = add i32 %sub.i, -4
  %or.i = or i32 %shl.i, %and.i
  %or3.i = or i32 %or.i, 128
  br label %if.end5.i86

if.else.i:                                        ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #9
  %and4.i = and i32 %99, -129
  br label %if.end5.i86

if.end5.i86:                                      ; preds = %if.else.i, %if.then2.i
  %storemerge.i = phi i32 [ %and4.i, %if.else.i ], [ %or3.i, %if.then2.i ]
  %100 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i11.i) #7
  %102 = getelementptr inbounds [6 x i8], ptr %buf.i11.i, i32 0, i32 1
  %103 = getelementptr inbounds i8, ptr %buf.i11.i, i32 2
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 -1, ptr %103, align 1
  %105 = ptrtoint ptr %buf.i11.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 80, ptr %buf.i11.i, align 1
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -128, ptr %102, align 1
  %val.i.3.extract.trunc.i83 = trunc i32 %storemerge.i to i8
  store i8 %val.i.3.extract.trunc.i83, ptr %103, align 1
  %call.i.i.i84 = call i32 @i2c_transfer_buffer_flags(ptr noundef %101, ptr noundef nonnull %buf.i11.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i84)
  %cmp12.not.i.i85 = icmp eq i32 %call.i.i.i84, 3
  %..i.i = select i1 %cmp12.not.i.i85, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i11.i) #7
  br label %sw.epilog33

sw.bb24:                                          ; preds = %if.end
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %107 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val25, align 4
  %109 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i88) #7
  %111 = getelementptr inbounds i8, ptr %msgs.i.i88, i32 4
  %112 = call ptr @memset(ptr %111, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i89) #7
  %113 = ptrtoint ptr %data_be.i.i89 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %data_be.i.i89, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i90) #7
  %114 = ptrtoint ptr %reg_addr_be.i.i90 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 14368, ptr %reg_addr_be.i.i90, align 2
  %addr.i.i92 = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 1
  %115 = ptrtoint ptr %addr.i.i92 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %addr.i.i92, align 2
  %117 = ptrtoint ptr %msgs.i.i88 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %msgs.i.i88, align 4
  %flags.i.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i88, i32 0, i32 1
  %118 = ptrtoint ptr %flags.i.i93 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flags.i.i93, align 2
  %119 = ptrtoint ptr %111 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 2, ptr %111, align 4
  %buf.i.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i88, i32 0, i32 3
  %120 = ptrtoint ptr %buf.i.i94 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %reg_addr_be.i.i90, ptr %buf.i.i94, align 4
  %121 = load i16, ptr %addr.i.i92, align 2
  %arrayidx7.i.i95 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i88, i32 0, i32 1
  %122 = ptrtoint ptr %arrayidx7.i.i95 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %arrayidx7.i.i95, align 4
  %flags10.i.i96 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i88, i32 0, i32 1, i32 1
  %123 = ptrtoint ptr %flags10.i.i96 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 1, ptr %flags10.i.i96, align 2
  %len12.i.i97 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i88, i32 0, i32 1, i32 2
  %124 = ptrtoint ptr %len12.i.i97 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 1, ptr %len12.i.i97, align 4
  %arrayidx13.i.i98 = getelementptr inbounds i8, ptr %data_be.i.i89, i32 3
  %buf15.i.i99 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i88, i32 0, i32 1, i32 3
  %125 = ptrtoint ptr %buf15.i.i99 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx13.i.i98, ptr %buf15.i.i99, align 4
  %adapter.i.i100 = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 3
  %126 = ptrtoint ptr %adapter.i.i100 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %adapter.i.i100, align 8
  %call16.i.i101 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msgs.i.i88, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i101)
  %cmp17.not.i.i102 = icmp eq i32 %call16.i.i101, 2
  br i1 %cmp17.not.i.i102, label %if.end.i109, label %ov13b10_read_reg.exit.i103

ov13b10_read_reg.exit.i103:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i90) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i89) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i88) #7
  br label %sw.epilog33

if.end.i109:                                      ; preds = %sw.bb24
  %128 = ptrtoint ptr %data_be.i.i89 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %data_be.i.i89, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i90) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i89) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool1.not.i104 = icmp eq i32 %108, 0
  %and.i105 = and i32 %129, 247
  %spec.select.i = select i1 %tobool1.not.i104, i32 %129, i32 %and.i105
  %130 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i1.i) #7
  %132 = getelementptr inbounds [6 x i8], ptr %buf.i1.i, i32 0, i32 1
  %133 = getelementptr inbounds i8, ptr %buf.i1.i, i32 2
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 -1, ptr %133, align 1
  %135 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 56, ptr %buf.i1.i, align 1
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 32, ptr %132, align 1
  %val.i.3.extract.trunc.i106 = trunc i32 %spec.select.i to i8
  store i8 %val.i.3.extract.trunc.i106, ptr %133, align 1
  %call.i.i.i107 = call i32 @i2c_transfer_buffer_flags(ptr noundef %131, ptr noundef nonnull %buf.i1.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i107)
  %cmp12.not.i.i108 = icmp eq i32 %call.i.i.i107, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i1.i) #7
  br i1 %cmp12.not.i.i108, label %if.end5.i110, label %if.end.i109.sw.epilog33_crit_edge

if.end.i109.sw.epilog33_crit_edge:                ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33

if.end5.i110:                                     ; preds = %if.end.i109
  %137 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i3.i) #7
  %139 = getelementptr inbounds i8, ptr %msgs.i3.i, i32 4
  %140 = call ptr @memset(ptr %139, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i4.i) #7
  %141 = ptrtoint ptr %data_be.i4.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %data_be.i4.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i5.i) #7
  %142 = ptrtoint ptr %reg_addr_be.i5.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 14353, ptr %reg_addr_be.i5.i, align 2
  %addr.i7.i = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 1
  %143 = ptrtoint ptr %addr.i7.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %addr.i7.i, align 2
  %145 = ptrtoint ptr %msgs.i3.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %msgs.i3.i, align 4
  %flags.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3.i, i32 0, i32 1
  %146 = ptrtoint ptr %flags.i8.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %flags.i8.i, align 2
  %147 = ptrtoint ptr %139 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 2, ptr %139, align 4
  %buf.i10.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3.i, i32 0, i32 3
  %148 = ptrtoint ptr %buf.i10.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %reg_addr_be.i5.i, ptr %buf.i10.i, align 4
  %149 = load i16, ptr %addr.i7.i, align 2
  %arrayidx7.i11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i3.i, i32 0, i32 1
  %150 = ptrtoint ptr %arrayidx7.i11.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %arrayidx7.i11.i, align 4
  %flags10.i12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i3.i, i32 0, i32 1, i32 1
  %151 = ptrtoint ptr %flags10.i12.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 1, ptr %flags10.i12.i, align 2
  %len12.i13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i3.i, i32 0, i32 1, i32 2
  %152 = ptrtoint ptr %len12.i13.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 1, ptr %len12.i13.i, align 4
  %arrayidx13.i14.i = getelementptr inbounds i8, ptr %data_be.i4.i, i32 3
  %buf15.i15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i3.i, i32 0, i32 1, i32 3
  %153 = ptrtoint ptr %buf15.i15.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %arrayidx13.i14.i, ptr %buf15.i15.i, align 4
  %adapter.i16.i = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 3
  %154 = ptrtoint ptr %adapter.i16.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %adapter.i16.i, align 8
  %call16.i17.i = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msgs.i3.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i17.i)
  %cmp17.not.i18.i = icmp eq i32 %call16.i17.i, 2
  br i1 %cmp17.not.i18.i, label %if.end9.i, label %ov13b10_read_reg.exit21.i

ov13b10_read_reg.exit21.i:                        ; preds = %if.end5.i110
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i5.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i4.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i3.i) #7
  br label %sw.epilog33

if.end9.i:                                        ; preds = %if.end5.i110
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %data_be.i4.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %data_be.i4.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i5.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i4.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i3.i) #7
  %not.tobool1.not.i = xor i1 %tobool1.not.i104, true
  %inc.i = zext i1 %not.tobool1.not.i to i32
  %spec.select41.i = add i32 %157, %inc.i
  %158 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i22.i) #7
  %160 = getelementptr inbounds [6 x i8], ptr %buf.i22.i, i32 0, i32 1
  %161 = getelementptr inbounds i8, ptr %buf.i22.i, i32 2
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 -1, ptr %161, align 1
  %163 = ptrtoint ptr %buf.i22.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 56, ptr %buf.i22.i, align 1
  %164 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 17, ptr %160, align 1
  %val.i23.3.extract.trunc.i = trunc i32 %spec.select41.i to i8
  store i8 %val.i23.3.extract.trunc.i, ptr %161, align 1
  %call.i.i26.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %159, ptr noundef nonnull %buf.i22.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i22.i) #7
  br label %sw.epilog33

sw.bb27:                                          ; preds = %if.end
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %165 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %val28, align 4
  %167 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i116) #7
  %169 = getelementptr inbounds i8, ptr %msgs.i.i116, i32 4
  %170 = call ptr @memset(ptr %169, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i117) #7
  %171 = ptrtoint ptr %data_be.i.i117 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %data_be.i.i117, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i.i118) #7
  %172 = ptrtoint ptr %reg_addr_be.i.i118 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 14368, ptr %reg_addr_be.i.i118, align 2
  %addr.i.i120 = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 1
  %173 = ptrtoint ptr %addr.i.i120 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %addr.i.i120, align 2
  %175 = ptrtoint ptr %msgs.i.i116 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %msgs.i.i116, align 4
  %flags.i.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i116, i32 0, i32 1
  %176 = ptrtoint ptr %flags.i.i121 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %flags.i.i121, align 2
  %177 = ptrtoint ptr %169 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 2, ptr %169, align 4
  %buf.i.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i116, i32 0, i32 3
  %178 = ptrtoint ptr %buf.i.i122 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %reg_addr_be.i.i118, ptr %buf.i.i122, align 4
  %179 = load i16, ptr %addr.i.i120, align 2
  %arrayidx7.i.i123 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i116, i32 0, i32 1
  %180 = ptrtoint ptr %arrayidx7.i.i123 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %arrayidx7.i.i123, align 4
  %flags10.i.i124 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i116, i32 0, i32 1, i32 1
  %181 = ptrtoint ptr %flags10.i.i124 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 1, ptr %flags10.i.i124, align 2
  %len12.i.i125 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i116, i32 0, i32 1, i32 2
  %182 = ptrtoint ptr %len12.i.i125 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 1, ptr %len12.i.i125, align 4
  %arrayidx13.i.i126 = getelementptr inbounds i8, ptr %data_be.i.i117, i32 3
  %buf15.i.i127 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i116, i32 0, i32 1, i32 3
  %183 = ptrtoint ptr %buf15.i.i127 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %arrayidx13.i.i126, ptr %buf15.i.i127, align 4
  %adapter.i.i128 = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 3
  %184 = ptrtoint ptr %adapter.i.i128 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %adapter.i.i128, align 8
  %call16.i.i129 = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %msgs.i.i116, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i129)
  %cmp17.not.i.i130 = icmp eq i32 %call16.i.i129, 2
  br i1 %cmp17.not.i.i130, label %if.end.i137, label %ov13b10_read_reg.exit.i131

ov13b10_read_reg.exit.i131:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i118) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i117) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i116) #7
  br label %sw.epilog33

if.end.i137:                                      ; preds = %sw.bb27
  %186 = ptrtoint ptr %data_be.i.i117 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %data_be.i.i117, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i.i118) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i117) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool1.not.i132 = icmp eq i32 %166, 0
  %or2.i = or i32 %187, 48
  %spec.select.i133 = select i1 %tobool1.not.i132, i32 %187, i32 %or2.i
  %188 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i1.i115) #7
  %190 = getelementptr inbounds [6 x i8], ptr %buf.i1.i115, i32 0, i32 1
  %191 = getelementptr inbounds i8, ptr %buf.i1.i115, i32 2
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_storeN_noabort(i32 %192, i32 4)
  store i32 -1, ptr %191, align 1
  %193 = ptrtoint ptr %buf.i1.i115 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 56, ptr %buf.i1.i115, align 1
  %194 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 32, ptr %190, align 1
  %val.i.3.extract.trunc.i134 = trunc i32 %spec.select.i133 to i8
  store i8 %val.i.3.extract.trunc.i134, ptr %191, align 1
  %call.i.i.i135 = call i32 @i2c_transfer_buffer_flags(ptr noundef %189, ptr noundef nonnull %buf.i1.i115, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i135)
  %cmp12.not.i.i136 = icmp eq i32 %call.i.i.i135, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i1.i115) #7
  br i1 %cmp12.not.i.i136, label %if.end6.i, label %if.end.i137.sw.epilog33_crit_edge

if.end.i137.sw.epilog33_crit_edge:                ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33

if.end6.i:                                        ; preds = %if.end.i137
  %195 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i3.i112) #7
  %197 = getelementptr inbounds i8, ptr %msgs.i3.i112, i32 4
  %198 = call ptr @memset(ptr %197, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i4.i113) #7
  %199 = ptrtoint ptr %data_be.i4.i113 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %data_be.i4.i113, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr_be.i5.i114) #7
  %200 = ptrtoint ptr %reg_addr_be.i5.i114 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 14355, ptr %reg_addr_be.i5.i114, align 2
  %addr.i7.i138 = getelementptr inbounds %struct.i2c_client, ptr %196, i32 0, i32 1
  %201 = ptrtoint ptr %addr.i7.i138 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %addr.i7.i138, align 2
  %203 = ptrtoint ptr %msgs.i3.i112 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %msgs.i3.i112, align 4
  %flags.i8.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3.i112, i32 0, i32 1
  %204 = ptrtoint ptr %flags.i8.i139 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 0, ptr %flags.i8.i139, align 2
  %205 = ptrtoint ptr %197 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 2, ptr %197, align 4
  %buf.i10.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3.i112, i32 0, i32 3
  %206 = ptrtoint ptr %buf.i10.i140 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %reg_addr_be.i5.i114, ptr %buf.i10.i140, align 4
  %207 = load i16, ptr %addr.i7.i138, align 2
  %arrayidx7.i11.i141 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i3.i112, i32 0, i32 1
  %208 = ptrtoint ptr %arrayidx7.i11.i141 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %207, ptr %arrayidx7.i11.i141, align 4
  %flags10.i12.i142 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i3.i112, i32 0, i32 1, i32 1
  %209 = ptrtoint ptr %flags10.i12.i142 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 1, ptr %flags10.i12.i142, align 2
  %len12.i13.i143 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i3.i112, i32 0, i32 1, i32 2
  %210 = ptrtoint ptr %len12.i13.i143 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 1, ptr %len12.i13.i143, align 4
  %arrayidx13.i14.i144 = getelementptr inbounds i8, ptr %data_be.i4.i113, i32 3
  %buf15.i15.i145 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i3.i112, i32 0, i32 1, i32 3
  %211 = ptrtoint ptr %buf15.i15.i145 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %arrayidx13.i14.i144, ptr %buf15.i15.i145, align 4
  %adapter.i16.i146 = getelementptr inbounds %struct.i2c_client, ptr %196, i32 0, i32 3
  %212 = ptrtoint ptr %adapter.i16.i146 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %adapter.i16.i146, align 8
  %call16.i17.i147 = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %msgs.i3.i112, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i17.i147)
  %cmp17.not.i18.i148 = icmp eq i32 %call16.i17.i147, 2
  br i1 %cmp17.not.i18.i148, label %if.end10.i, label %ov13b10_read_reg.exit21.i149

ov13b10_read_reg.exit21.i149:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i5.i114) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i4.i113) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i3.i112) #7
  br label %sw.epilog33

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %214 = ptrtoint ptr %data_be.i4.i113 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %data_be.i4.i113, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr_be.i5.i114) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i4.i113) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i3.i112) #7
  %not.tobool1.not.i150 = xor i1 %tobool1.not.i132, true
  %dec.i = sext i1 %not.tobool1.not.i150 to i32
  %spec.select41.i151 = add i32 %215, %dec.i
  %216 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i22.i111) #7
  %218 = getelementptr inbounds [6 x i8], ptr %buf.i22.i111, i32 0, i32 1
  %219 = getelementptr inbounds i8, ptr %buf.i22.i111, i32 2
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_storeN_noabort(i32 %220, i32 4)
  store i32 -1, ptr %219, align 1
  %221 = ptrtoint ptr %buf.i22.i111 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 56, ptr %buf.i22.i111, align 1
  %222 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 19, ptr %218, align 1
  %val.i23.3.extract.trunc.i152 = trunc i32 %spec.select41.i151 to i8
  store i8 %val.i23.3.extract.trunc.i152, ptr %219, align 1
  %call.i.i26.i153 = call i32 @i2c_transfer_buffer_flags(ptr noundef %217, ptr noundef nonnull %buf.i22.i111, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i22.i111) #7
  br label %sw.epilog33

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %223 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %val32, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %20, i32 noundef %224) #10
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %do.end, %if.end10.i, %ov13b10_read_reg.exit21.i149, %if.end.i137.sw.epilog33_crit_edge, %ov13b10_read_reg.exit.i131, %if.end9.i, %ov13b10_read_reg.exit21.i, %if.end.i109.sw.epilog33_crit_edge, %ov13b10_read_reg.exit.i103, %if.end5.i86, %ov13b10_read_reg.exit.i, %sw.bb15, %sw.bb12, %if.end5.i, %if.end.i.sw.epilog33_crit_edge, %sw.bb9.sw.epilog33_crit_edge, %sw.bb6
  %ret.0 = phi i32 [ 0, %do.end ], [ %..i79, %sw.bb15 ], [ %..i72, %sw.bb12 ], [ %..i, %sw.bb6 ], [ %..i33.i, %if.end5.i ], [ -5, %sw.bb9.sw.epilog33_crit_edge ], [ -5, %if.end.i.sw.epilog33_crit_edge ], [ %..i.i, %if.end5.i86 ], [ -5, %ov13b10_read_reg.exit.i ], [ 0, %ov13b10_read_reg.exit.i103 ], [ 0, %if.end.i109.sw.epilog33_crit_edge ], [ 0, %ov13b10_read_reg.exit21.i ], [ 0, %if.end9.i ], [ 0, %ov13b10_read_reg.exit.i131 ], [ 0, %if.end.i137.sw.epilog33_crit_edge ], [ 0, %ov13b10_read_reg.exit21.i149 ], [ 0, %if.end10.i ]
  %call.i154 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog33, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog33 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13b10_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !161

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.ov13b10, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4208, ptr %5, align 4
  %height2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3120, ptr %height2, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12298, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13b10_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.ov13b10, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
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
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov13b10_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %streaming = getelementptr inbounds %struct.ov13b10, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @ov13b10_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %error

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
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
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  %11 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %error ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !82, !83, !84, !85, !86, !88, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !113, !115, !116, !117, !118, !120, !122, !123, !124, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_ov13b10__294_1487_ov13b10_i2c_driver_init6, !1, !"__initcall__kmod_ov13b10__294_1487_ov13b10_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov13b10.c", i32 1487, i32 1}
!2 = !{ptr @__exitcall_ov13b10_i2c_driver_exit, !1, !"__exitcall_ov13b10_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov13b10.c", i32 1489, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov13b10.c", i32 1490, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov13b10.c", i32 1491, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov13b10.c", i32 1479, i32 11}
!12 = !{ptr @ov13b10_i2c_driver, !13, !"ov13b10_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov13b10.c", i32 1477, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov13b10.c", i32 1387, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov13b10_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov13b10_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov13b10.c", i32 1401, i32 3}
!24 = !{ptr @ov13b10_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov13b10_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov13b10.c", i32 1422, i32 3}
!28 = !{ptr @ov13b10_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov13b10_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ov13b10_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov13b10.c", i32 1445, i32 2}
!32 = !{ptr @ov13b10_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ov13b10.c", i32 1323, i32 50}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ov13b10.c", i32 1326, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ov13b10_check_hwcfg._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ov13b10_check_hwcfg._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ov13b10.c", i32 1331, i32 3}
!42 = !{ptr @ov13b10_check_hwcfg._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ov13b10_check_hwcfg._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ov13b10.c", i32 1346, i32 3}
!46 = !{ptr @ov13b10_check_hwcfg._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ov13b10_check_hwcfg._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov13b10.c", i32 1353, i32 3}
!50 = !{ptr @ov13b10_check_hwcfg._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ov13b10_check_hwcfg._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov13b10.c", i32 1366, i32 4}
!54 = !{ptr @ov13b10_check_hwcfg._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ov13b10_check_hwcfg._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @link_freq_menu_items, !57, !"link_freq_menu_items", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov13b10.c", i32 497, i32 18}
!58 = !{ptr @ov13b10_subdev_ops, !59, !"ov13b10_subdev_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov13b10.c", i32 1179, i32 37}
!60 = !{ptr @ov13b10_video_ops, !61, !"ov13b10_video_ops", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov13b10.c", i32 1168, i32 43}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov13b10.c", i32 1036, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ov13b10_start_streaming._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ov13b10_start_streaming._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/ov13b10.c", i32 1045, i32 3}
!69 = !{ptr @ov13b10_start_streaming._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ov13b10_start_streaming._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/ov13b10.c", i32 1053, i32 3}
!73 = !{ptr @ov13b10_start_streaming._entry.34, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ov13b10_start_streaming._entry_ptr.36, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @link_freq_configs, !76, !"link_freq_configs", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/ov13b10.c", i32 503, i32 4}
!77 = !{ptr @mipi_data_rate_1120mbps, !78, !"mipi_data_rate_1120mbps", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ov13b10.c", i32 118, i32 33}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ov13b10.c", i32 673, i32 4}
!81 = !{ptr @ov13b10_write_regs._rs, !80, !"_rs", i1 false, i1 false}
!82 = !{ptr @__func__.ov13b10_write_regs, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ov13b10_write_regs._entry, !80, !"_entry", i1 false, i1 false}
!85 = !{ptr @ov13b10_write_regs._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @ov13b10_pad_ops, !87, !"ov13b10_pad_ops", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov13b10.c", i32 1172, i32 41}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov13b10.c", i32 1160, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ov13b10_identify_module._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @ov13b10_identify_module._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @supported_modes, !96, !"supported_modes", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/ov13b10.c", i32 514, i32 34}
!97 = !{ptr @mode_4208x3120_regs, !98, !"mode_4208x3120_regs", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov13b10.c", i32 249, i32 33}
!99 = !{ptr @mode_4160x3120_regs, !100, !"mode_4160x3120_regs", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ov13b10.c", i32 293, i32 33}
!101 = !{ptr @mode_4160x2340_regs, !102, !"mode_4160x2340_regs", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/ov13b10.c", i32 337, i32 33}
!103 = !{ptr @mode_2104x1560_regs, !104, !"mode_2104x1560_regs", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/ov13b10.c", i32 381, i32 33}
!105 = !{ptr @mode_2080x1170_regs, !106, !"mode_2080x1170_regs", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov13b10.c", i32 425, i32 33}
!107 = !{ptr @ov13b10_init_controls._key, !108, !"_key", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/ov13b10.c", i32 1209, i32 8}
!109 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ov13b10_init_controls.__key, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ov13b10.c", i32 1213, i32 2}
!112 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov13b10.c", i32 1278, i32 3}
!115 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ov13b10_init_controls._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ov13b10_init_controls._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @ov13b10_ctrl_ops, !119, !"ov13b10_ctrl_ops", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/ov13b10.c", i32 893, i32 35}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/ov13b10.c", i32 882, i32 3}
!122 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ov13b10_set_ctrl._entry, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @ov13b10_set_ctrl._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ov13b10.c", i32 470, i32 2}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ov13b10.c", i32 471, i32 2}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/ov13b10.c", i32 472, i32 2}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov13b10.c", i32 473, i32 2}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov13b10.c", i32 474, i32 2}
!136 = !{ptr @ov13b10_test_pattern_menu, !137, !"ov13b10_test_pattern_menu", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/ov13b10.c", i32 469, i32 27}
!138 = !{ptr @ov13b10_internal_ops, !139, !"ov13b10_internal_ops", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/ov13b10.c", i32 1188, i32 46}
!140 = !{ptr @ov13b10_subdev_entity_ops, !141, !"ov13b10_subdev_entity_ops", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/ov13b10.c", i32 1184, i32 45}
!142 = !{ptr @ov13b10_pm_ops, !143, !"ov13b10_pm_ops", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov13b10.c", i32 1464, i32 32}
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
!154 = !{i64 1519204, i64 1519231}
!155 = !{i64 1519544, i64 1519571, i64 1519605, i64 1519626}
!156 = !{i8 0, i8 2}
!157 = !{i64 2148334805}
!158 = !{i64 819628, i64 819653, i64 819675, i64 819691, i64 819703, i64 819723, i64 819747, i64 819763, i64 819775}
!159 = !{i64 2148334993}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{!"branch_weights", i32 1, i32 2000}
