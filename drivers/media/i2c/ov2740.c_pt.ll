; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov2740.c_pt.bc'
source_filename = "../drivers/media/i2c/ov2740.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ov2740_mode = type { i32, i32, i32, i32, i32, i32, %struct.ov2740_reg_list }
%struct.ov2740_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov2740_link_freq_config = type { %struct.ov2740_reg_list }
%struct.ov2740_reg = type { i16, i8 }
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
%struct.ov2740 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.nvm_data = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_ov2740__294_1251_ov2740_i2c_driver_init6 = internal global ptr @ov2740_i2c_driver_init, section ".initcall6.init", align 4
@ov2740_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov2740_remove, ptr @ov2740_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @ov2740_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2740_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov2740_i2c_driver_exit = internal global ptr @ov2740_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [52 x i8] c"ov2740.author=Qiu, Tianshu <tian.shu.qiu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [45 x i8] c"ov2740.author=Shawn Tu <shawnx.tu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [48 x i8] c"ov2740.author=Bingbu Cao <bingbu.cao@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [51 x i8] c"ov2740.description=OmniVision OV2740 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [37 x i8] c"ov2740.file=drivers/media/i2c/ov2740\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [22 x i8] c"ov2740.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov2740\00", [25 x i8] zeroinitializer }, align 32
@ov2740_acpi_ids = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT3474\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2740_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ov2740_suspend, ptr @ov2740_resume, ptr @ov2740_suspend, ptr @ov2740_resume, ptr @ov2740_suspend, ptr @ov2740_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov2740_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to check HW configuration: %d\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov2740_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov2740.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov2740_probe._entry_ptr = internal global ptr @ov2740_probe._entry, section ".printk_index", align 4
@ov2740_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find sensor: %d\00", [38 x i8] zeroinitializer }, align 32
@ov2740_probe._entry_ptr.8 = internal global ptr @ov2740_probe._entry.6, section ".printk_index", align 4
@ov2740_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov2740_video_ops, ptr null, ptr null, ptr null, ptr @ov2740_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov2740_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ov2740_probe._entry_ptr.10 = internal global ptr @ov2740_probe._entry.9, section ".printk_index", align 4
@ov2740_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ov2740->mutex\00", [17 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [1 x %struct.ov2740_mode], [32 x i8] } { [1 x %struct.ov2740_mode] [%struct.ov2740_mode { i32 1932, i32 1092, i32 1080, i32 2186, i32 1120, i32 0, %struct.ov2740_reg_list { i32 150, ptr @mode_1932x1092_regs } }], [32 x i8] zeroinitializer }, align 32
@ov2740_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@ov2740_probe._entry_ptr.14 = internal global ptr @ov2740_probe._entry.12, section ".printk_index", align 4
@ov2740_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov2740_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov2740_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ov2740_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init entity pads: %d\00", [33 x i8] zeroinitializer }, align 32
@ov2740_probe._entry_ptr.17 = internal global ptr @ov2740_probe._entry.15, section ".printk_index", align 4
@ov2740_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register V4L2 subdev: %d\00", [61 x i8] zeroinitializer }, align 32
@ov2740_probe._entry_ptr.20 = internal global ptr @ov2740_probe._entry.18, section ".printk_index", align 4
@ov2740_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1209, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"register nvmem failed, ret %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ov2740_probe._entry_ptr.24 = internal global ptr @ov2740_probe._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@ov2740_check_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1009, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"external clock %d is not supported\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov2740_check_hwcfg\00", [45 x i8] zeroinitializer }, align 32
@ov2740_check_hwcfg._entry_ptr = internal global ptr @ov2740_check_hwcfg._entry, section ".printk_index", align 4
@ov2740_check_hwcfg._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 1024, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"number of CSI2 data lanes %d is not supported\00", [50 x i8] zeroinitializer }, align 32
@ov2740_check_hwcfg._entry_ptr.30 = internal global ptr @ov2740_check_hwcfg._entry.28, section ".printk_index", align 4
@ov2740_check_hwcfg._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 1030, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequencies defined\00", [36 x i8] zeroinitializer }, align 32
@ov2740_check_hwcfg._entry_ptr.33 = internal global ptr @ov2740_check_hwcfg._entry.31, section ".printk_index", align 4
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 360000000], [24 x i8] zeroinitializer }, align 32
@ov2740_check_hwcfg._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.3, i32 1044, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no link frequency %lld supported\00", [63 x i8] zeroinitializer }, align 32
@ov2740_check_hwcfg._entry_ptr.36 = internal global ptr @ov2740_check_hwcfg._entry.34, section ".printk_index", align 4
@ov2740_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip id mismatch: %x!=%x\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov2740_identify_module\00", [41 x i8] zeroinitializer }, align 32
@ov2740_identify_module._entry_ptr = internal global ptr @ov2740_identify_module._entry, section ".printk_index", align 4
@ov2740_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2740_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov2740_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov2740_enum_mbus_code, ptr @ov2740_enum_frame_size, ptr null, ptr @ov2740_get_format, ptr @ov2740_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@link_freq_configs = internal constant { [1 x %struct.ov2740_link_freq_config], [24 x i8] } { [1 x %struct.ov2740_link_freq_config] [%struct.ov2740_link_freq_config { %struct.ov2740_reg_list { i32 6, ptr @mipi_data_rate_720mbps } }], [24 x i8] zeroinitializer }, align 32
@ov2740_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 764, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set plls\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov2740_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@ov2740_start_streaming._entry_ptr = internal global ptr @ov2740_start_streaming._entry, section ".printk_index", align 4
@ov2740_start_streaming._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set mode\00", [45 x i8] zeroinitializer }, align 32
@ov2740_start_streaming._entry_ptr.43 = internal global ptr @ov2740_start_streaming._entry.41, section ".printk_index", align 4
@ov2740_start_streaming._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to start streaming\00", [38 x i8] zeroinitializer }, align 32
@ov2740_start_streaming._entry_ptr.46 = internal global ptr @ov2740_start_streaming._entry.44, section ".printk_index", align 4
@ov2740_load_otp_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read ISP CTRL00\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov2740_load_otp_data\00", [43 x i8] zeroinitializer }, align 32
@ov2740_load_otp_data._entry_ptr = internal global ptr @ov2740_load_otp_data._entry, section ".printk_index", align 4
@ov2740_load_otp_data._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 679, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read ISP CTRL01\0A\00", [37 x i8] zeroinitializer }, align 32
@ov2740_load_otp_data._entry_ptr.51 = internal global ptr @ov2740_load_otp_data._entry.49, section ".printk_index", align 4
@ov2740_load_otp_data._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 687, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set ISP CTRL00\0A\00", [38 x i8] zeroinitializer }, align 32
@ov2740_load_otp_data._entry_ptr.54 = internal global ptr @ov2740_load_otp_data._entry.52, section ".printk_index", align 4
@ov2740_load_otp_data._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.3, i32 695, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set ISP CTRL01\0A\00", [38 x i8] zeroinitializer }, align 32
@ov2740_load_otp_data._entry_ptr.57 = internal global ptr @ov2740_load_otp_data._entry.55, section ".printk_index", align 4
@ov2740_load_otp_data._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.3, i32 702, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set streaming mode\0A\00", [34 x i8] zeroinitializer }, align 32
@ov2740_load_otp_data._entry_ptr.60 = internal global ptr @ov2740_load_otp_data._entry.58, section ".printk_index", align 4
@ov2740_load_otp_data._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str.3, i32 715, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read OTP data, ret %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ov2740_load_otp_data._entry_ptr.63 = internal global ptr @ov2740_load_otp_data._entry.61, section ".printk_index", align 4
@ov2740_load_otp_data._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ov2740_load_otp_data._entry_ptr.65 = internal global ptr @ov2740_load_otp_data._entry.64, section ".printk_index", align 4
@ov2740_load_otp_data._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ov2740_load_otp_data._entry_ptr.67 = internal global ptr @ov2740_load_otp_data._entry.66, section ".printk_index", align 4
@ov2740_load_otp_data._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ov2740_load_otp_data._entry_ptr.69 = internal global ptr @ov2740_load_otp_data._entry.68, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mipi_data_rate_720mbps = internal constant { [6 x %struct.ov2740_reg], [40 x i8] } { [6 x %struct.ov2740_reg] [%struct.ov2740_reg { i16 259, i8 1 }, %struct.ov2740_reg { i16 770, i8 75 }, %struct.ov2740_reg { i16 781, i8 75 }, %struct.ov2740_reg { i16 782, i8 2 }, %struct.ov2740_reg { i16 778, i8 1 }, %struct.ov2740_reg { i16 786, i8 17 }], [40 x i8] zeroinitializer }, align 32
@ov2740_write_reg_list._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.70, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ov2740_write_reg_list = private unnamed_addr constant [22 x i8] c"ov2740_write_reg_list\00", align 1
@ov2740_write_reg_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @__func__.ov2740_write_reg_list, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"write reg 0x%4.4x return err = %d\00", [62 x i8] zeroinitializer }, align 32
@ov2740_write_reg_list._entry_ptr = internal global ptr @ov2740_write_reg_list._entry, section ".printk_index", align 4
@ov2740_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 793, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to stop streaming\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov2740_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@ov2740_stop_streaming._entry_ptr = internal global ptr @ov2740_stop_streaming._entry, section ".printk_index", align 4
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mode_1932x1092_regs = internal constant { [150 x %struct.ov2740_reg], [136 x i8] } { [150 x %struct.ov2740_reg] [%struct.ov2740_reg { i16 12288, i8 0 }, %struct.ov2740_reg { i16 12312, i8 50 }, %struct.ov2740_reg { i16 12337, i8 10 }, %struct.ov2740_reg { i16 12416, i8 8 }, %struct.ov2740_reg { i16 12419, i8 -76 }, %struct.ov2740_reg { i16 12547, i8 0 }, %struct.ov2740_reg { i16 12548, i8 1 }, %struct.ov2740_reg { i16 12550, i8 1 }, %struct.ov2740_reg { i16 13568, i8 0 }, %struct.ov2740_reg { i16 13569, i8 68 }, %struct.ov2740_reg { i16 13570, i8 64 }, %struct.ov2740_reg { i16 13571, i8 -120 }, %struct.ov2740_reg { i16 13575, i8 0 }, %struct.ov2740_reg { i16 13576, i8 0 }, %struct.ov2740_reg { i16 13577, i8 -128 }, %struct.ov2740_reg { i16 13580, i8 0 }, %struct.ov2740_reg { i16 13581, i8 -128 }, %struct.ov2740_reg { i16 13584, i8 0 }, %struct.ov2740_reg { i16 13585, i8 0 }, %struct.ov2740_reg { i16 13586, i8 32 }, %struct.ov2740_reg { i16 13874, i8 0 }, %struct.ov2740_reg { i16 13875, i8 16 }, %struct.ov2740_reg { i16 13876, i8 16 }, %struct.ov2740_reg { i16 13877, i8 16 }, %struct.ov2740_reg { i16 13893, i8 19 }, %struct.ov2740_reg { i16 13894, i8 -127 }, %struct.ov2740_reg { i16 13878, i8 16 }, %struct.ov2740_reg { i16 13905, i8 10 }, %struct.ov2740_reg { i16 13910, i8 2 }, %struct.ov2740_reg { i16 13913, i8 4 }, %struct.ov2740_reg { i16 13914, i8 -38 }, %struct.ov2740_reg { i16 13915, i8 -94 }, %struct.ov2740_reg { i16 13916, i8 4 }, %struct.ov2740_reg { i16 13917, i8 29 }, %struct.ov2740_reg { i16 13918, i8 26 }, %struct.ov2740_reg { i16 13922, i8 -41 }, %struct.ov2740_reg { i16 13927, i8 120 }, %struct.ov2740_reg { i16 13929, i8 10 }, %struct.ov2740_reg { i16 13930, i8 -110 }, %struct.ov2740_reg { i16 14080, i8 84 }, %struct.ov2740_reg { i16 14082, i8 16 }, %struct.ov2740_reg { i16 14086, i8 66 }, %struct.ov2740_reg { i16 14089, i8 48 }, %struct.ov2740_reg { i16 14091, i8 -62 }, %struct.ov2740_reg { i16 14100, i8 99 }, %struct.ov2740_reg { i16 14101, i8 1 }, %struct.ov2740_reg { i16 14102, i8 0 }, %struct.ov2740_reg { i16 14106, i8 62 }, %struct.ov2740_reg { i16 14130, i8 14 }, %struct.ov2740_reg { i16 14131, i8 16 }, %struct.ov2740_reg { i16 14175, i8 14 }, %struct.ov2740_reg { i16 14184, i8 48 }, %struct.ov2740_reg { i16 14185, i8 68 }, %struct.ov2740_reg { i16 14186, i8 34 }, %struct.ov2740_reg { i16 14203, i8 32 }, %struct.ov2740_reg { i16 14204, i8 0 }, %struct.ov2740_reg { i16 14205, i8 12 }, %struct.ov2740_reg { i16 14232, i8 0 }, %struct.ov2740_reg { i16 14241, i8 85 }, %struct.ov2740_reg { i16 14248, i8 109 }, %struct.ov2740_reg { i16 14274, i8 4 }, %struct.ov2740_reg { i16 14277, i8 0 }, %struct.ov2740_reg { i16 14280, i8 0 }, %struct.ov2740_reg { i16 14336, i8 0 }, %struct.ov2740_reg { i16 14337, i8 0 }, %struct.ov2740_reg { i16 14338, i8 0 }, %struct.ov2740_reg { i16 14339, i8 0 }, %struct.ov2740_reg { i16 14340, i8 7 }, %struct.ov2740_reg { i16 14341, i8 -113 }, %struct.ov2740_reg { i16 14342, i8 4 }, %struct.ov2740_reg { i16 14343, i8 71 }, %struct.ov2740_reg { i16 14344, i8 7 }, %struct.ov2740_reg { i16 14345, i8 -120 }, %struct.ov2740_reg { i16 14346, i8 4 }, %struct.ov2740_reg { i16 14347, i8 64 }, %struct.ov2740_reg { i16 14348, i8 4 }, %struct.ov2740_reg { i16 14349, i8 56 }, %struct.ov2740_reg { i16 14350, i8 4 }, %struct.ov2740_reg { i16 14351, i8 96 }, %struct.ov2740_reg { i16 14352, i8 0 }, %struct.ov2740_reg { i16 14353, i8 4 }, %struct.ov2740_reg { i16 14354, i8 0 }, %struct.ov2740_reg { i16 14355, i8 4 }, %struct.ov2740_reg { i16 14356, i8 1 }, %struct.ov2740_reg { i16 14357, i8 1 }, %struct.ov2740_reg { i16 14368, i8 -128 }, %struct.ov2740_reg { i16 14369, i8 70 }, %struct.ov2740_reg { i16 14370, i8 -124 }, %struct.ov2740_reg { i16 14377, i8 0 }, %struct.ov2740_reg { i16 14378, i8 1 }, %struct.ov2740_reg { i16 14379, i8 1 }, %struct.ov2740_reg { i16 14384, i8 4 }, %struct.ov2740_reg { i16 14390, i8 1 }, %struct.ov2740_reg { i16 14391, i8 8 }, %struct.ov2740_reg { i16 14393, i8 1 }, %struct.ov2740_reg { i16 14394, i8 0 }, %struct.ov2740_reg { i16 14395, i8 8 }, %struct.ov2740_reg { i16 14396, i8 0 }, %struct.ov2740_reg { i16 16139, i8 0 }, %struct.ov2740_reg { i16 16385, i8 32 }, %struct.ov2740_reg { i16 16393, i8 7 }, %struct.ov2740_reg { i16 16387, i8 16 }, %struct.ov2740_reg { i16 16400, i8 -32 }, %struct.ov2740_reg { i16 16406, i8 0 }, %struct.ov2740_reg { i16 16407, i8 16 }, %struct.ov2740_reg { i16 16452, i8 2 }, %struct.ov2740_reg { i16 17156, i8 8 }, %struct.ov2740_reg { i16 17159, i8 48 }, %struct.ov2740_reg { i16 17184, i8 -128 }, %struct.ov2740_reg { i16 17186, i8 0 }, %struct.ov2740_reg { i16 17187, i8 0 }, %struct.ov2740_reg { i16 17188, i8 0 }, %struct.ov2740_reg { i16 17189, i8 0 }, %struct.ov2740_reg { i16 17190, i8 0 }, %struct.ov2740_reg { i16 17191, i8 0 }, %struct.ov2740_reg { i16 17192, i8 0 }, %struct.ov2740_reg { i16 17193, i8 0 }, %struct.ov2740_reg { i16 17196, i8 3 }, %struct.ov2740_reg { i16 17197, i8 -127 }, %struct.ov2740_reg { i16 17665, i8 -124 }, %struct.ov2740_reg { i16 17666, i8 64 }, %struct.ov2740_reg { i16 17667, i8 24 }, %struct.ov2740_reg { i16 17668, i8 4 }, %struct.ov2740_reg { i16 17672, i8 2 }, %struct.ov2740_reg { i16 17921, i8 16 }, %struct.ov2740_reg { i16 18432, i8 0 }, %struct.ov2740_reg { i16 18454, i8 82 }, %struct.ov2740_reg { i16 18487, i8 22 }, %struct.ov2740_reg { i16 20480, i8 127 }, %struct.ov2740_reg { i16 20481, i8 0 }, %struct.ov2740_reg { i16 20485, i8 56 }, %struct.ov2740_reg { i16 20510, i8 13 }, %struct.ov2740_reg { i16 20544, i8 0 }, %struct.ov2740_reg { i16 22785, i8 0 }, %struct.ov2740_reg { i16 14336, i8 0 }, %struct.ov2740_reg { i16 14337, i8 0 }, %struct.ov2740_reg { i16 14338, i8 0 }, %struct.ov2740_reg { i16 14339, i8 0 }, %struct.ov2740_reg { i16 14340, i8 7 }, %struct.ov2740_reg { i16 14341, i8 -113 }, %struct.ov2740_reg { i16 14342, i8 4 }, %struct.ov2740_reg { i16 14343, i8 71 }, %struct.ov2740_reg { i16 14344, i8 7 }, %struct.ov2740_reg { i16 14345, i8 -116 }, %struct.ov2740_reg { i16 14346, i8 4 }, %struct.ov2740_reg { i16 14347, i8 68 }, %struct.ov2740_reg { i16 14352, i8 0 }, %struct.ov2740_reg { i16 14353, i8 0 }, %struct.ov2740_reg { i16 14354, i8 0 }, %struct.ov2740_reg { i16 14355, i8 1 }], [136 x i8] zeroinitializer }, align 32
@ov2740_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ov2740:582:(ctrl_hdlr)->_lock\00", [34 x i8] zeroinitializer }, align 32
@ov2740_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov2740_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov2740_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Color Bar\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Top-Bottom Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Right-Left Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bottom-Top Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@ov2740_register_nvmem._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ov2740:1118:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963793, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"ov2740_i2c_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1240, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1242, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"ov2740_acpi_ids\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1233, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"ov2740_pm_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1229, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1156, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1169, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"ov2740_subdev_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 977, i32 37 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1177, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1181, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 310, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1185, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"ov2740_internal_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 986, i32 46 }
@___asan_gen_.142 = private unnamed_addr constant [25 x i8] c"ov2740_subdev_entity_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 982, i32 45 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1196, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1202, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1209, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1004, i32 41 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1009, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1023, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1030, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 297, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1043, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 460, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"ov2740_video_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 966, i32 43 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"ov2740_pad_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 970, i32 41 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"link_freq_configs\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 301, i32 45 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 764, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 771, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 782, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 673, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 679, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 687, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 695, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 702, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 715, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 722, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 728, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 734, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [23 x i8] c"mipi_data_rate_720mbps\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 127, i32 32 }
@___asan_gen_.289 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 436, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 793, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 998, i32 6 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c"mode_1932x1092_regs\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 136, i32 32 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 582, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant [16 x i8] c"ov2740_ctrl_ops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 568, i32 35 }
@___asan_gen_.325 = private unnamed_addr constant [25 x i8] c"ov2740_test_pattern_menu\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 289, i32 27 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 290, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 291, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 292, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 293, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 294, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [30 x i8] c"../drivers/media/i2c/ov2740.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1118, i32 11 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_ov2740_i2c_driver_exit, ptr @__initcall__kmod_ov2740__294_1251_ov2740_i2c_driver_init6, ptr @ov2740_check_hwcfg._entry, ptr @ov2740_check_hwcfg._entry.28, ptr @ov2740_check_hwcfg._entry.31, ptr @ov2740_check_hwcfg._entry.34, ptr @ov2740_check_hwcfg._entry_ptr, ptr @ov2740_check_hwcfg._entry_ptr.30, ptr @ov2740_check_hwcfg._entry_ptr.33, ptr @ov2740_check_hwcfg._entry_ptr.36, ptr @ov2740_i2c_driver_exit, ptr @ov2740_identify_module._entry, ptr @ov2740_identify_module._entry_ptr, ptr @ov2740_load_otp_data._entry, ptr @ov2740_load_otp_data._entry.49, ptr @ov2740_load_otp_data._entry.52, ptr @ov2740_load_otp_data._entry.55, ptr @ov2740_load_otp_data._entry.58, ptr @ov2740_load_otp_data._entry.61, ptr @ov2740_load_otp_data._entry.64, ptr @ov2740_load_otp_data._entry.66, ptr @ov2740_load_otp_data._entry.68, ptr @ov2740_load_otp_data._entry_ptr, ptr @ov2740_load_otp_data._entry_ptr.51, ptr @ov2740_load_otp_data._entry_ptr.54, ptr @ov2740_load_otp_data._entry_ptr.57, ptr @ov2740_load_otp_data._entry_ptr.60, ptr @ov2740_load_otp_data._entry_ptr.63, ptr @ov2740_load_otp_data._entry_ptr.65, ptr @ov2740_load_otp_data._entry_ptr.67, ptr @ov2740_load_otp_data._entry_ptr.69, ptr @ov2740_probe._entry, ptr @ov2740_probe._entry.12, ptr @ov2740_probe._entry.15, ptr @ov2740_probe._entry.18, ptr @ov2740_probe._entry.21, ptr @ov2740_probe._entry.6, ptr @ov2740_probe._entry.9, ptr @ov2740_probe._entry_ptr, ptr @ov2740_probe._entry_ptr.10, ptr @ov2740_probe._entry_ptr.14, ptr @ov2740_probe._entry_ptr.17, ptr @ov2740_probe._entry_ptr.20, ptr @ov2740_probe._entry_ptr.24, ptr @ov2740_probe._entry_ptr.8, ptr @ov2740_start_streaming._entry, ptr @ov2740_start_streaming._entry.41, ptr @ov2740_start_streaming._entry.44, ptr @ov2740_start_streaming._entry_ptr, ptr @ov2740_start_streaming._entry_ptr.43, ptr @ov2740_start_streaming._entry_ptr.46, ptr @ov2740_stop_streaming._entry, ptr @ov2740_stop_streaming._entry_ptr, ptr @ov2740_write_reg_list._entry, ptr @ov2740_write_reg_list._entry_ptr, ptr @ov2740_i2c_driver, ptr @.str, ptr @ov2740_acpi_ids, ptr @ov2740_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ov2740_subdev_ops, ptr @ov2740_probe.__key, ptr @.str.11, ptr @supported_modes, ptr @.str.13, ptr @ov2740_internal_ops, ptr @ov2740_subdev_entity_ops, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @link_freq_menu_items, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @ov2740_video_ops, ptr @ov2740_pad_ops, ptr @link_freq_configs, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @mipi_data_rate_720mbps, ptr @ov2740_write_reg_list._rs, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @mode_1932x1092_regs, ptr @ov2740_init_controls._key, ptr @.str.75, ptr @ov2740_ctrl_ops, ptr @ov2740_test_pattern_menu, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @ov2740_register_nvmem._key, ptr @.str.81], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_acpi_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_check_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_check_hwcfg._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_check_hwcfg._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_check_hwcfg._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_configs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_start_streaming._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_start_streaming._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_load_otp_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_load_otp_data._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_load_otp_data._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_load_otp_data._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_load_otp_data._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_load_otp_data._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_load_otp_data._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_load_otp_data._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_load_otp_data._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_720mbps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_write_reg_list._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_write_reg_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1932x1092_regs to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2740_register_nvmem._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov2740_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov2740_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov2740_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %mutex = getelementptr inbounds %struct.ov2740, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_probe(ptr noundef %client) #2 align 64 {
entry:
  %regmap_config.i = alloca %struct.regmap_config, align 4
  %nvmem_config.i = alloca %struct.nvmem_config, align 4
  %msgs.i.i144 = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i145 = alloca [2 x i8], align 2
  %data_buf.i.i146 = alloca [4 x i8], align 4
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %mclk.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mclk.i) #8
  %3 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mclk.i, align 4, !annotation !191
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ov2740_check_hwcfg.exit.thread_crit_edge, label %if.end.i

entry.ov2740_check_hwcfg.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov2740_check_hwcfg.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %mclk.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.ov2740_check_hwcfg.exit.thread_crit_edge

if.end.i.ov2740_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov2740_check_hwcfg.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 19200000
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %5) #11
  br label %ov2740_check_hwcfg.exit.thread

if.end6.i:                                        ; preds = %if.end4.i
  %call7.i = call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call.i, ptr noundef null) #8
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.ov2740_check_hwcfg.exit.thread_crit_edge, label %if.end10.i

if.end6.i.ov2740_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov2740_check_hwcfg.exit.thread

if.end10.i:                                       ; preds = %if.end6.i
  %call11.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call7.i, ptr noundef nonnull %bus_cfg.i) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.ov2740_check_hwcfg.exit.thread_crit_edge

if.end10.i.ov2740_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov2740_check_hwcfg.exit.thread

if.end14.i:                                       ; preds = %if.end10.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2, i32 2, i32 3
  %6 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp15.not.i = icmp eq i8 %7, 2
  br i1 %cmp15.not.i, label %if.end25.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv.i) #11
  br label %ov2740_check_hwcfg.exit.thread189

if.end25.i:                                       ; preds = %if.end14.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %8 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not.i = icmp eq i32 %9, 0
  br i1 %tobool26.not.i, label %do.end30.i, label %for.body38.lr.ph.i

for.body38.lr.ph.i:                               ; preds = %if.end25.i
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %10 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body38.i

do.end30.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #11
  br label %ov2740_check_hwcfg.exit.thread189

for.body38.i:                                     ; preds = %for.inc.i.for.body38.i_crit_edge, %for.body38.lr.ph.i
  %j.081.i = phi i32 [ 0, %for.body38.lr.ph.i ], [ %inc.i, %for.inc.i.for.body38.i_crit_edge ]
  %arrayidx39.i = getelementptr i64, ptr %11, i32 %j.081.i
  %12 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx39.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 360000000, i64 %13)
  %cmp40.i = icmp eq i64 %13, 360000000
  br i1 %cmp40.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body38.i
  %inc.i = add nuw i32 %j.081.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.do.end50.i_crit_edge, label %for.inc.i.for.body38.i_crit_edge

for.inc.i.for.body38.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38.i

for.inc.i.do.end50.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50.i

for.end.i:                                        ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.081.i, i32 %9)
  %cmp45.i = icmp eq i32 %j.081.i, %9
  br i1 %cmp45.i, label %for.end.i.do.end50.i_crit_edge, label %if.end

for.end.i.do.end50.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50.i

do.end50.i:                                       ; preds = %for.end.i.do.end50.i_crit_edge, %for.inc.i.do.end50.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i64 noundef 360000000) #11
  br label %ov2740_check_hwcfg.exit.thread189

ov2740_check_hwcfg.exit.thread:                   ; preds = %if.end10.i.ov2740_check_hwcfg.exit.thread_crit_edge, %if.end6.i.ov2740_check_hwcfg.exit.thread_crit_edge, %do.end.i, %if.end.i.ov2740_check_hwcfg.exit.thread_crit_edge, %entry.ov2740_check_hwcfg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call11.i, %if.end10.i.ov2740_check_hwcfg.exit.thread_crit_edge ], [ -6, %if.end6.i.ov2740_check_hwcfg.exit.thread_crit_edge ], [ %call.i.i, %if.end.i.ov2740_check_hwcfg.exit.thread_crit_edge ], [ -6, %entry.ov2740_check_hwcfg.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %do.end

ov2740_check_hwcfg.exit.thread189:                ; preds = %do.end50.i, %do.end30.i, %do.end20.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %do.end

do.end:                                           ; preds = %ov2740_check_hwcfg.exit.thread189, %ov2740_check_hwcfg.exit.thread
  %retval.0.i187 = phi i32 [ %retval.0.i.ph, %ov2740_check_hwcfg.exit.thread ], [ -22, %ov2740_check_hwcfg.exit.thread189 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i187) #11
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  %call.i136 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 540, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i136, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i136, i32 0, i32 11
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %identified.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 12
  %16 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %identified.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i137 = icmp eq i8 %17, 0
  br i1 %tobool.not.i137, label %if.end.i138, label %if.end6.if.end19_crit_edge

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end.i138:                                      ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %18 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #8
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
  %call20.i.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i)
  %cmp21.not.i.i = icmp eq i32 %call20.i.i, 2
  br i1 %cmp21.not.i.i, label %if.end4.i140, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp24.i.i = icmp slt i32 %call20.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %spec.select = select i1 %cmp24.i.i, i32 %call20.i.i, i32 -5
  br label %do.end16

if.end4.i140:                                     ; preds = %if.end.i138
  %35 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10048, i32 %36)
  %cmp.not.i139 = icmp eq i32 %36, 10048
  br i1 %cmp.not.i139, label %if.end6.i142, label %do.end.i141

do.end.i141:                                      ; preds = %if.end4.i140
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef 10048, i32 noundef %36) #11
  br label %do.end16

if.end6.i142:                                     ; preds = %if.end4.i140
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %identified.i, align 4
  br label %if.end19

do.end16:                                         ; preds = %do.end.i141, %if.then23.i.i
  %retval.0.i143.ph = phi i32 [ -6, %do.end.i141 ], [ %spec.select, %if.then23.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i143.ph) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end6.i142, %if.end6.if.end19_crit_edge
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i136, ptr noundef %client, ptr noundef nonnull @ov2740_subdev_ops) #8
  %38 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i, align 4
  %40 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %identified.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i149 = icmp eq i8 %41, 0
  br i1 %tobool.not.i149, label %if.end.i161, label %if.end19.do.body28_crit_edge

if.end19.do.body28_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

if.end.i161:                                      ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i144) #8
  %42 = getelementptr inbounds i8, ptr %msgs.i.i144, i32 4
  %43 = call ptr @memset(ptr %42, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i145) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i146) #8
  %44 = ptrtoint ptr %data_buf.i.i146 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %data_buf.i.i146, align 4
  %45 = ptrtoint ptr %addr_buf.i.i145 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 12298, ptr %addr_buf.i.i145, align 2
  %addr.i.i150 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %46 = ptrtoint ptr %addr.i.i150 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr.i.i150, align 2
  %48 = ptrtoint ptr %msgs.i.i144 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %msgs.i.i144, align 4
  %flags.i.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i144, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i.i151 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i.i151, align 2
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2, ptr %42, align 4
  %buf.i.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i144, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i.i152 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %addr_buf.i.i145, ptr %buf.i.i152, align 4
  %52 = load i16, ptr %addr.i.i150, align 2
  %arrayidx9.i.i153 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i144, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx9.i.i153 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx9.i.i153, align 4
  %flags12.i.i154 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i144, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %flags12.i.i154 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %flags12.i.i154, align 2
  %len14.i.i155 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i144, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %len14.i.i155 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 3, ptr %len14.i.i155, align 4
  %arrayidx16.i.i156 = getelementptr inbounds [4 x i8], ptr %data_buf.i.i146, i32 0, i32 1
  %buf18.i.i157 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i144, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %buf18.i.i157 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx16.i.i156, ptr %buf18.i.i157, align 4
  %adapter.i.i158 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 3
  %57 = ptrtoint ptr %adapter.i.i158 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter.i.i158, align 8
  %call20.i.i159 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msgs.i.i144, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i159)
  %cmp21.not.i.i160 = icmp eq i32 %call20.i.i159, 2
  br i1 %cmp21.not.i.i160, label %if.end4.i166, label %if.then23.i.i164

if.then23.i.i164:                                 ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i159)
  %cmp24.i.i162 = icmp slt i32 %call20.i.i159, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i146) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i145) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i144) #8
  %spec.select208 = select i1 %cmp24.i.i162, i32 %call20.i.i159, i32 -5
  br label %do.end25

if.end4.i166:                                     ; preds = %if.end.i161
  %59 = ptrtoint ptr %data_buf.i.i146 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_buf.i.i146, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i146) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i145) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10048, i32 %60)
  %cmp.not.i165 = icmp eq i32 %60, 10048
  br i1 %cmp.not.i165, label %if.end6.i169, label %do.end.i168

do.end.i168:                                      ; preds = %if.end4.i166
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i167 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i167, ptr noundef nonnull @.str.37, i32 noundef 10048, i32 noundef %60) #11
  br label %do.end25

if.end6.i169:                                     ; preds = %if.end4.i166
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %identified.i, align 4
  br label %do.body28

do.end25:                                         ; preds = %do.end.i168, %if.then23.i.i164
  %retval.0.i170.ph = phi i32 [ -6, %do.end.i168 ], [ %spec.select208, %if.then23.i.i164 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i170.ph) #11
  br label %cleanup

do.body28:                                        ; preds = %if.end6.i169, %if.end19.do.body28_crit_edge
  %mutex = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 9
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @ov2740_probe.__key) #8
  %cur_mode = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 8
  %62 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 2
  %call.i172 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 8, ptr noundef nonnull @ov2740_init_controls._key, ptr noundef nonnull @.str.75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool.not.i173 = icmp eq i32 %call.i172, 0
  br i1 %tobool.not.i173, label %if.end.i174, label %do.body28.do.end36_crit_edge

do.body28.do.end36_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

if.end.i174:                                      ; preds = %do.body28
  %lock.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %mutex, ptr %lock.i, align 4
  %64 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_mode, align 4
  %call2.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2740_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #8
  %link_freq.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 3
  %66 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call2.i, ptr %link_freq.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i174.if.end7.i_crit_edge, label %if.then5.i

if.end.i174.if.end7.i_crit_edge:                  ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2.i, i32 0, i32 20
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %68, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i174.if.end7.i_crit_edge
  %69 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 720000000, i64 3689348814741910323) #12, !srcloc !193
  %70 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 720000000, i64 %69) #12, !srcloc !194
  %call9.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2740_ctrl_ops, i32 noundef 10422530, i64 noundef 0, i64 noundef %70, i64 noundef 1, i64 noundef %70) #8
  %pixel_rate10.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 4
  %71 = ptrtoint ptr %pixel_rate10.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call9.i, ptr %pixel_rate10.i, align 4
  %vts_min.i = getelementptr inbounds %struct.ov2740_mode, ptr %65, i32 0, i32 4
  %72 = ptrtoint ptr %vts_min.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vts_min.i, align 4
  %height.i = getelementptr inbounds %struct.ov2740_mode, ptr %65, i32 0, i32 1
  %74 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %height.i, align 4
  %sub11.i = sub i32 %73, %75
  %sub13.i = sub i32 32767, %75
  %vts_def.i = getelementptr inbounds %struct.ov2740_mode, ptr %65, i32 0, i32 3
  %76 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vts_def.i, align 4
  %sub15.i = sub i32 %77, %75
  %conv16.i = zext i32 %sub11.i to i64
  %conv17.i = zext i32 %sub13.i to i64
  %conv18.i = zext i32 %sub15.i to i64
  %call19.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2740_ctrl_ops, i32 noundef 10356993, i64 noundef %conv16.i, i64 noundef %conv17.i, i64 noundef 1, i64 noundef %conv18.i) #8
  %vblank.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 5
  %78 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call19.i, ptr %vblank.i, align 4
  %hts.i = getelementptr inbounds %struct.ov2740_mode, ptr %65, i32 0, i32 2
  %79 = ptrtoint ptr %hts.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hts.i, align 4
  %conv.i.i = zext i32 %80 to i64
  %mul.i.i = mul i64 %70, %conv.i.i
  %81 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -1253132416968158909, i64 %mul.i.i) #12, !srcloc !195
  %82 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -1253132416968158909, i64 %mul.i.i, i64 %81, i32 0) #12, !srcloc !196
  %asmresult10.i.i.i = extractvalue { i64, i32 } %82, 0
  %ppl.0.i.i = lshr i64 %asmresult10.i.i.i, 26
  %83 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %65, align 4
  %conv21.i = zext i32 %84 to i64
  %sub22.i = sub nsw i64 %ppl.0.i.i, %conv21.i
  %call23.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2740_ctrl_ops, i32 noundef 10356994, i64 noundef %sub22.i, i64 noundef %sub22.i, i64 noundef 1, i64 noundef %sub22.i) #8
  %hblank.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 6
  %85 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call23.i, ptr %hblank.i, align 4
  %tobool25.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool25.not.i, label %if.end7.i.if.end30.i_crit_edge, label %if.then26.i

if.end7.i.if.end30.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags28.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call23.i, i32 0, i32 20
  %86 = ptrtoint ptr %flags28.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags28.i, align 4
  %or29.i = or i32 %87, 4
  store i32 %or29.i, ptr %flags28.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end7.i.if.end30.i_crit_edge
  %call31.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2740_ctrl_ops, i32 noundef 10356995, i64 noundef 128, i64 noundef 1983, i64 noundef 1, i64 noundef 128) #8
  %call32.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2740_ctrl_ops, i32 noundef 10422533, i64 noundef 1024, i64 noundef 4095, i64 noundef 1, i64 noundef 1024) #8
  %88 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vts_def.i, align 4
  %sub34.i = add i32 %89, -8
  %conv35.i = zext i32 %sub34.i to i64
  %call36.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2740_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv35.i, i64 noundef 1, i64 noundef %conv35.i) #8
  %exposure.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 7
  %90 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call36.i, ptr %exposure.i, align 4
  %call37.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov2740_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov2740_test_pattern_menu) #8
  %error.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 2, i32 9
  %91 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool38.not.i = icmp eq i32 %92, 0
  br i1 %tobool38.not.i, label %if.end38, label %if.end30.i.do.end36_crit_edge

if.end30.i.do.end36_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end36:                                         ; preds = %if.end30.i.do.end36_crit_edge, %do.body28.do.end36_crit_edge
  %retval.0.i175.ph = phi i32 [ %92, %if.end30.i.do.end36_crit_edge ], [ %call.i172, %do.body28.do.end36_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i175.ph) #11
  br label %probe_error_v4l2_ctrl_handler_free

if.end38:                                         ; preds = %if.end30.i
  %ctrl_handler42.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i136, i32 0, i32 8
  %93 = ptrtoint ptr %ctrl_handler42.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %ctrl_handler.i, ptr %ctrl_handler42.i, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i136, i32 0, i32 7
  %94 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @ov2740_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i136, i32 0, i32 4
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 4
  %or = or i32 %96, 4
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i136, i32 0, i32 11
  %97 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @ov2740_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i136, i32 0, i32 3
  %98 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 1
  %flags44 = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 1, i32 4
  %99 = ptrtoint ptr %flags44 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %flags44, align 4
  %call48 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i136, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call48) #11
  br label %probe_error_v4l2_ctrl_handler_free

if.end55:                                         ; preds = %if.end38
  %call57 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp = icmp slt i32 %call57, 0
  br i1 %cmp, label %do.end61, label %if.end63

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call57) #11
  br label %probe_error_v4l2_ctrl_handler_free

if.end63:                                         ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config.i) #8
  %100 = call ptr @memset(ptr %regmap_config.i, i32 0, i32 172)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_config.i) #8
  %101 = getelementptr inbounds i8, ptr %nvmem_config.i, i32 8
  %102 = call ptr @memset(ptr %101, i32 0, i32 76)
  %call.i.i176 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #8
  %tobool.not.i177 = icmp eq ptr %call.i.i176, null
  br i1 %tobool.not.i177, label %ov2740_register_nvmem.exit.thread204, label %if.end.i179

ov2740_register_nvmem.exit.thread204:             ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_config.i) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config.i) #8
  br label %do.end69

if.end.i179:                                      ; preds = %if.end63
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %regmap_config.i, i32 0, i32 4
  %103 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 8, ptr %val_bits.i, align 4
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %regmap_config.i, i32 0, i32 1
  %104 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 16, ptr %reg_bits.i, align 4
  %disable_locking.i = getelementptr inbounds %struct.regmap_config, ptr %regmap_config.i, i32 0, i32 11
  %105 = ptrtoint ptr %disable_locking.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %disable_locking.i, align 4
  %call2.i178 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull %regmap_config.i, ptr noundef nonnull @ov2740_register_nvmem._key, ptr noundef nonnull @.str.81) #8
  %cmp.i.i = icmp ugt ptr %call2.i178, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i179.ov2740_register_nvmem.exit_crit_edge, label %if.end6.i180

if.end.i179.ov2740_register_nvmem.exit_crit_edge: ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov2740_register_nvmem.exit

if.end6.i180:                                     ; preds = %if.end.i179
  %regmap7.i = getelementptr inbounds %struct.nvm_data, ptr %call.i.i176, i32 0, i32 2
  %106 = ptrtoint ptr %regmap7.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call2.i178, ptr %regmap7.i, align 4
  %107 = ptrtoint ptr %call.i.i176 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %client, ptr %call.i.i176, align 4
  %init_name.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %108 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.i180.dev_name.exit.i_crit_edge

if.end6.i180.dev_name.exit.i_crit_edge:           ; preds = %if.end6.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end6.i180
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end6.i180.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %111, %if.end.i.i ], [ %109, %if.end6.i180.dev_name.exit.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 1
  %112 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %retval.0.i.i, ptr %name.i, align 4
  %113 = ptrtoint ptr %nvmem_config.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %dev, ptr %nvmem_config.i, align 4
  %read_only.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 10
  %114 = ptrtoint ptr %read_only.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %read_only.i, align 4
  %root_only.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 11
  %115 = ptrtoint ptr %root_only.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %root_only.i, align 1
  %owner.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 3
  %116 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %owner.i, align 4
  %compat.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 22
  %117 = ptrtoint ptr %compat.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %compat.i, align 4
  %base_dev.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 23
  %118 = ptrtoint ptr %base_dev.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %dev, ptr %base_dev.i, align 4
  %reg_read.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 15
  %119 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @ov2740_nvmem_read, ptr %reg_read.i, align 4
  %reg_write.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 16
  %120 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %reg_write.i, align 4
  %priv.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 21
  %121 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i176, ptr %priv.i, align 4
  %stride.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 20
  %122 = ptrtoint ptr %stride.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %stride.i, align 4
  %word_size.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 19
  %123 = ptrtoint ptr %word_size.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %word_size.i, align 4
  %size.i = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config.i, i32 0, i32 18
  %124 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 256, ptr %size.i, align 4
  %call11.i181 = call ptr @devm_nvmem_register(ptr noundef %dev, ptr noundef nonnull %nvmem_config.i) #8
  %nvmem.i = getelementptr inbounds %struct.nvm_data, ptr %call.i.i176, i32 0, i32 1
  %125 = ptrtoint ptr %nvmem.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call11.i181, ptr %nvmem.i, align 4
  %cmp.i.i.not.i = icmp ugt ptr %call11.i181, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i, label %dev_name.exit.i.ov2740_register_nvmem.exit_crit_edge, label %ov2740_register_nvmem.exit.thread

dev_name.exit.i.ov2740_register_nvmem.exit_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov2740_register_nvmem.exit

ov2740_register_nvmem.exit.thread:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %nvm16.i = getelementptr inbounds %struct.ov2740, ptr %call.i136, i32 0, i32 11
  %126 = ptrtoint ptr %nvm16.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i.i176, ptr %nvm16.i, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_config.i) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config.i) #8
  br label %if.then73

ov2740_register_nvmem.exit:                       ; preds = %dev_name.exit.i.ov2740_register_nvmem.exit_crit_edge, %if.end.i179.ov2740_register_nvmem.exit_crit_edge
  %retval.0.i182.in = phi ptr [ %call11.i181, %dev_name.exit.i.ov2740_register_nvmem.exit_crit_edge ], [ %call2.i178, %if.end.i179.ov2740_register_nvmem.exit_crit_edge ]
  %retval.0.i182 = ptrtoint ptr %retval.0.i182.in to i32
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_config.i) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config.i) #8
  %tobool65.not = icmp eq ptr %retval.0.i182.in, null
  br i1 %tobool65.not, label %ov2740_register_nvmem.exit.if.then73_crit_edge, label %ov2740_register_nvmem.exit.do.end69_crit_edge

ov2740_register_nvmem.exit.do.end69_crit_edge:    ; preds = %ov2740_register_nvmem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

ov2740_register_nvmem.exit.if.then73_crit_edge:   ; preds = %ov2740_register_nvmem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

do.end69:                                         ; preds = %ov2740_register_nvmem.exit.do.end69_crit_edge, %ov2740_register_nvmem.exit.thread204
  %retval.0.i182207 = phi i32 [ -12, %ov2740_register_nvmem.exit.thread204 ], [ %retval.0.i182, %ov2740_register_nvmem.exit.do.end69_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i182207) #11
  br label %if.then73

if.then73:                                        ; preds = %do.end69, %ov2740_register_nvmem.exit.if.then73_crit_edge, %ov2740_register_nvmem.exit.thread
  %call.i183 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i184 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #8
  br label %cleanup

probe_error_v4l2_ctrl_handler_free:               ; preds = %do.end61, %do.end53, %do.end36
  %ret.0 = phi i32 [ %retval.0.i175.ph, %do.end36 ], [ %call48, %do.end53 ], [ %call57, %do.end61 ]
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i136, i32 0, i32 8
  %127 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %128) #8
  call void @mutex_destroy(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %probe_error_v4l2_ctrl_handler_free, %if.then73, %do.end25, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i187, %do.end ], [ %retval.0.i143.ph, %do.end16 ], [ %retval.0.i170.ph, %do.end25 ], [ %ret.0, %probe_error_v4l2_ctrl_handler_free ], [ 0, %if.then73 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i41 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %streaming = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !192
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %if.then4
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !198
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then8_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then8_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !199
  br label %if.then8

if.then8:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then8_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then4
  %call11 = tail call fastcc i32 @ov2740_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end19_crit_edge, label %if.then13

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %buf.i.i, align 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %8, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp9.not.i.i, label %if.then13.if.end19.sink.split_crit_edge, label %do.end.i

if.then13.if.end19.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.72) #11
  br label %if.end19.sink.split

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i41) #8
  %13 = getelementptr inbounds [6 x i8], ptr %buf.i.i41, i32 0, i32 2
  %14 = ptrtoint ptr %buf.i.i41 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 256, ptr %buf.i.i41, align 2
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %13, align 2
  %call.i.i.i43 = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i.i41, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i43)
  %cmp9.not.i.i44 = icmp eq i32 %call.i.i.i43, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i41) #8
  br i1 %cmp9.not.i.i44, label %if.else.ov2740_stop_streaming.exit47_crit_edge, label %do.end.i46

if.else.ov2740_stop_streaming.exit47_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov2740_stop_streaming.exit47

do.end.i46:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i45 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i45, ptr noundef nonnull @.str.72) #11
  br label %ov2740_stop_streaming.exit47

ov2740_stop_streaming.exit47:                     ; preds = %do.end.i46, %if.else.ov2740_stop_streaming.exit47_crit_edge
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %ov2740_stop_streaming.exit47, %do.end.i, %if.then13.if.end19.sink.split_crit_edge
  %dev.sink = phi ptr [ %dev17, %ov2740_stop_streaming.exit47 ], [ %dev, %if.then13.if.end19.sink.split_crit_edge ], [ %dev, %do.end.i ]
  %ret.0.ph = phi i32 [ 0, %ov2740_stop_streaming.exit47 ], [ %call11, %if.then13.if.end19.sink.split_crit_edge ], [ %call11, %do.end.i ]
  %call.i40 = call i32 @__pm_runtime_idle(ptr noundef %dev.sink, i32 noundef 5) #8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.end10.if.end19_crit_edge
  %tobool20 = phi i1 [ true, %if.end10.if.end19_crit_edge ], [ false, %if.end19.sink.split ]
  %ret.0 = phi i32 [ 0, %if.end10.if.end19_crit_edge ], [ %ret.0.ph, %if.end19.sink.split ]
  %frombool = zext i1 %tobool20 to i8
  %16 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then8 ], [ %ret.0, %if.end19 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2740_start_streaming(ptr nocapture noundef %ov2740) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov2740, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %nvm1 = getelementptr inbounds %struct.ov2740, ptr %ov2740, i32 0, i32 11
  %2 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvm1, align 4
  %identified.i = getelementptr inbounds %struct.ov2740, ptr %ov2740, i32 0, i32 12
  %4 = ptrtoint ptr %identified.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %identified.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  %8 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data_buf.i.i, align 4
  %9 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 12298, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr.i.i, align 2
  %12 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %6, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %16 = load i16, ptr %addr.i.i, align 2
  %arrayidx9.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx9.i.i, align 4
  %flags12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags12.i.i, align 2
  %len14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 3, ptr %len14.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 1
  %buf18.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %buf18.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx16.i.i, ptr %buf18.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.i.i, align 8
  %call20.i.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i)
  %cmp21.not.i.i = icmp eq i32 %call20.i.i, 2
  br i1 %cmp21.not.i.i, label %if.end4.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp24.i.i = icmp slt i32 %call20.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %spec.select = select i1 %cmp24.i.i, i32 %call20.i.i, i32 -5
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10048, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 10048
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef 10048, i32 noundef %24) #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %identified.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %identified.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %entry.if.end_crit_edge
  %call3 = call fastcc i32 @ov2740_load_otp_data(ptr noundef %3)
  %cur_mode = getelementptr inbounds %struct.ov2740, ptr %ov2740, i32 0, i32 8
  %26 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur_mode, align 4
  %link_freq_index4 = getelementptr inbounds %struct.ov2740_mode, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %link_freq_index4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link_freq_index4, align 4
  %arrayidx = getelementptr [1 x %struct.ov2740_link_freq_config], ptr @link_freq_configs, i32 0, i32 %29
  %call6 = call fastcc i32 @ov2740_write_reg_list(ptr noundef %ov2740, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %30 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur_mode, align 4
  %reg_list11 = getelementptr inbounds %struct.ov2740_mode, ptr %31, i32 0, i32 6
  %call12 = call fastcc i32 @ov2740_write_reg_list(ptr noundef %ov2740, ptr noundef %reg_list11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %ov2740, i32 0, i32 8
  %32 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl_handler, align 4
  %call21 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %34 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %36 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 256, ptr %buf.i, align 2
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 16777216, ptr %36, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br i1 %cmp9.not.i, label %if.end24.cleanup_crit_edge, label %do.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i = icmp slt i32 %call.i.i, 0
  %spec.select.i58 = select i1 %cmp12.i, i32 %call.i.i, i32 -5
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.45) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end17, %do.end, %do.end.i, %if.then23.i.i
  %retval.0 = phi i32 [ %call6, %do.end ], [ %call12, %do.end17 ], [ %call21, %if.end19.cleanup_crit_edge ], [ %spec.select.i58, %do.end30 ], [ 0, %if.end24.cleanup_crit_edge ], [ -6, %do.end.i ], [ %spec.select, %if.then23.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2740_load_otp_data(ptr noundef %nvm) unnamed_addr #2 align 64 {
entry:
  %buf.i178 = alloca [6 x i8], align 2
  %buf.i170 = alloca [6 x i8], align 2
  %buf.i163 = alloca [6 x i8], align 2
  %buf.i156 = alloca [6 x i8], align 2
  %buf.i148 = alloca [6 x i8], align 2
  %buf.i144 = alloca [6 x i8], align 2
  %msgs.i122 = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i123 = alloca [2 x i8], align 2
  %data_buf.i124 = alloca [4 x i8], align 4
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i = alloca [2 x i8], align 2
  %data_buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nvm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %nvm_buffer = getelementptr inbounds %struct.nvm_data, ptr %nvm, i32 0, i32 3
  %0 = ptrtoint ptr %nvm_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm_buffer, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvm, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 256) #13
  %7 = ptrtoint ptr %nvm_buffer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %nvm_buffer, align 4
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end3.cleanup_crit_edge, label %if.end11

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %10 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i) #8
  %12 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %data_buf.i, align 4
  %13 = ptrtoint ptr %addr_buf.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 20480, ptr %addr_buf.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i, align 2
  %16 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %addr_buf.i, ptr %buf.i, align 4
  %20 = load i16, ptr %addr.i, align 2
  %arrayidx9.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx9.i, align 4
  %flags12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags12.i, align 2
  %len14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %len14.i, align 4
  %arrayidx16.i = getelementptr inbounds [4 x i8], ptr %data_buf.i, i32 0, i32 3
  %buf18.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %buf18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx16.i, ptr %buf18.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call20.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i)
  %cmp21.not.i = icmp eq i32 %call20.i, 2
  br i1 %cmp21.not.i, label %if.end15, label %if.then23.i

if.then23.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp24.i = icmp slt i32 %call20.i, 0
  %spec.select = select i1 %cmp24.i, i32 %call20.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #11
  br label %err

if.end15:                                         ; preds = %if.end11
  %27 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  %29 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i122) #8
  %31 = getelementptr inbounds i8, ptr %msgs.i122, i32 4
  %32 = call ptr @memset(ptr %31, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i123) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i124) #8
  %33 = ptrtoint ptr %data_buf.i124 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %data_buf.i124, align 4
  %34 = ptrtoint ptr %addr_buf.i123 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 20481, ptr %addr_buf.i123, align 2
  %addr.i126 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %addr.i126 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i126, align 2
  %37 = ptrtoint ptr %msgs.i122 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msgs.i122, align 4
  %flags.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i122, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i127 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i127, align 2
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %31, align 4
  %buf.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i122, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i129 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %addr_buf.i123, ptr %buf.i129, align 4
  %41 = load i16, ptr %addr.i126, align 2
  %arrayidx9.i130 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i122, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx9.i130 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx9.i130, align 4
  %flags12.i131 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i122, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %flags12.i131 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %flags12.i131, align 2
  %len14.i132 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i122, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %len14.i132 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %len14.i132, align 4
  %arrayidx16.i133 = getelementptr inbounds [4 x i8], ptr %data_buf.i124, i32 0, i32 3
  %buf18.i134 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i122, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %buf18.i134 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx16.i133, ptr %buf18.i134, align 4
  %adapter.i135 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %46 = ptrtoint ptr %adapter.i135 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter.i135, align 8
  %call20.i136 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msgs.i122, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i136)
  %cmp21.not.i137 = icmp eq i32 %call20.i136, 2
  br i1 %cmp21.not.i137, label %if.end23, label %if.then23.i140

if.then23.i140:                                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i136)
  %cmp24.i138 = icmp slt i32 %call20.i136, 0
  %spec.select197 = select i1 %cmp24.i138, i32 %call20.i136, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i124) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i123) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i122) #8
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.50) #11
  br label %err

if.end23:                                         ; preds = %if.end15
  %48 = ptrtoint ptr %data_buf.i124 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_buf.i124, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i124) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i123) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i122) #8
  %50 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i144) #8
  %52 = getelementptr inbounds [6 x i8], ptr %buf.i144, i32 0, i32 2
  %53 = ptrtoint ptr %buf.i144 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 20480, ptr %buf.i144, align 2
  %and = shl i32 %28, 24
  %shl.i = and i32 %and, -553648128
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %shl.i, ptr %52, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %51, ptr noundef nonnull %buf.i144, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i144) #8
  br i1 %cmp9.not.i, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i = icmp slt i32 %call.i.i, 0
  %spec.select.i146 = select i1 %cmp12.i, i32 %call.i.i, i32 -5
  %dev30 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.53) #11
  br label %err

if.end31:                                         ; preds = %if.end23
  %55 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i148) #8
  %57 = getelementptr inbounds [6 x i8], ptr %buf.i148, i32 0, i32 2
  %58 = ptrtoint ptr %buf.i148 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 20481, ptr %buf.i148, align 2
  %and32 = shl i32 %49, 24
  %shl.i150 = and i32 %and32, 2130706432
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %shl.i150, ptr %57, align 2
  %call.i.i151 = call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %buf.i148, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i151)
  %cmp9.not.i152 = icmp eq i32 %call.i.i151, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i148) #8
  br i1 %cmp9.not.i152, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151)
  %cmp12.i153 = icmp slt i32 %call.i.i151, 0
  %spec.select.i154 = select i1 %cmp12.i153, i32 %call.i.i151, i32 -5
  %dev39 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.56) #11
  br label %err

if.end40:                                         ; preds = %if.end31
  %60 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i156) #8
  %62 = getelementptr inbounds [6 x i8], ptr %buf.i156, i32 0, i32 2
  %63 = ptrtoint ptr %buf.i156 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 256, ptr %buf.i156, align 2
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 16777216, ptr %62, align 2
  %call.i.i158 = call i32 @i2c_transfer_buffer_flags(ptr noundef %61, ptr noundef nonnull %buf.i156, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i158)
  %cmp9.not.i159 = icmp eq i32 %call.i.i158, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i156) #8
  br i1 %cmp9.not.i159, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %cmp12.i160 = icmp slt i32 %call.i.i158, 0
  %spec.select.i161 = select i1 %cmp12.i160, i32 %call.i.i158, i32 -5
  %dev47 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.59) #11
  br label %err

if.end48:                                         ; preds = %if.end40
  call void @msleep(i32 noundef 20) #8
  %regmap = getelementptr inbounds %struct.nvm_data, ptr %nvm, i32 0, i32 2
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %67 = ptrtoint ptr %nvm_buffer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nvm_buffer, align 4
  %call50 = call i32 @regmap_bulk_read(ptr noundef %66, i32 noundef 28688, ptr noundef %68, i32 noundef 256) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.62, i32 noundef %call50) #11
  br label %err

if.end57:                                         ; preds = %if.end48
  %69 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i163) #8
  %71 = getelementptr inbounds [6 x i8], ptr %buf.i163, i32 0, i32 2
  %72 = ptrtoint ptr %buf.i163 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 256, ptr %buf.i163, align 2
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 0, ptr %71, align 2
  %call.i.i165 = call i32 @i2c_transfer_buffer_flags(ptr noundef %70, ptr noundef nonnull %buf.i163, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i165)
  %cmp9.not.i166 = icmp eq i32 %call.i.i165, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i163) #8
  br i1 %cmp9.not.i166, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i165)
  %cmp12.i167 = icmp slt i32 %call.i.i165, 0
  %spec.select.i168 = select i1 %cmp12.i167, i32 %call.i.i165, i32 -5
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.59) #11
  br label %err

if.end65:                                         ; preds = %if.end57
  %74 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i170) #8
  %76 = getelementptr inbounds [6 x i8], ptr %buf.i170, i32 0, i32 2
  %77 = ptrtoint ptr %buf.i170 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 20481, ptr %buf.i170, align 2
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %and32, ptr %76, align 2
  %call.i.i173 = call i32 @i2c_transfer_buffer_flags(ptr noundef %75, ptr noundef nonnull %buf.i170, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i173)
  %cmp9.not.i174 = icmp eq i32 %call.i.i173, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i170) #8
  br i1 %cmp9.not.i174, label %if.end73, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173)
  %cmp12.i175 = icmp slt i32 %call.i.i173, 0
  %spec.select.i176 = select i1 %cmp12.i175, i32 %call.i.i173, i32 -5
  %dev72 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.56) #11
  br label %err

if.end73:                                         ; preds = %if.end65
  %79 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i178) #8
  %81 = getelementptr inbounds [6 x i8], ptr %buf.i178, i32 0, i32 2
  %82 = ptrtoint ptr %buf.i178 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 20480, ptr %buf.i178, align 2
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %and, ptr %81, align 2
  %call.i.i181 = call i32 @i2c_transfer_buffer_flags(ptr noundef %80, ptr noundef nonnull %buf.i178, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i181)
  %cmp9.not.i182 = icmp eq i32 %call.i.i181, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i178) #8
  br i1 %cmp9.not.i182, label %if.end73.cleanup_crit_edge, label %do.end79

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i181)
  %cmp12.i183 = icmp slt i32 %call.i.i181, 0
  %spec.select.i184 = select i1 %cmp12.i183, i32 %call.i.i181, i32 -5
  %dev80 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.53) #11
  br label %err

err:                                              ; preds = %do.end79, %do.end71, %do.end63, %do.end55, %do.end46, %do.end38, %do.end29, %if.then23.i140, %if.then23.i
  %ret.0 = phi i32 [ %spec.select, %if.then23.i ], [ %spec.select197, %if.then23.i140 ], [ %spec.select.i146, %do.end29 ], [ %spec.select.i154, %do.end38 ], [ %spec.select.i161, %do.end46 ], [ %call50, %do.end55 ], [ %spec.select.i168, %do.end63 ], [ %spec.select.i176, %do.end71 ], [ %spec.select.i184, %do.end79 ]
  %84 = ptrtoint ptr %nvm_buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %nvm_buffer, align 4
  call void @kfree(ptr noundef %85) #8
  %86 = ptrtoint ptr %nvm_buffer to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %nvm_buffer, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end73.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2740_write_reg_list(ptr nocapture noundef readonly %ov2740, ptr nocapture noundef readonly %r_list) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov2740, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %r_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29.not = icmp eq i32 %3, 0
  br i1 %cmp29.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regs = getelementptr inbounds %struct.ov2740_reg_list, ptr %r_list, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.ov2740_reg, ptr %6, i32 %i.030
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %val = getelementptr %struct.ov2740_reg, ptr %6, i32 %i.030, i32 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 2
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %buf.i, align 2
  %shl.i = shl nuw i32 %conv, 24
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %shl.i, ptr %4, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br i1 %cmp9.not.i, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i.le = icmp slt i32 %call.i.i, 0
  %spec.select.i.le = select i1 %cmp12.i.le, i32 %call.i.i, i32 -5
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @ov2740_write_reg_list._rs, ptr noundef nonnull @__func__.ov2740_write_reg_list) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %arrayidx9 = getelementptr %struct.ov2740_reg, ptr %16, i32 %i.030
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx9, align 2
  %conv11 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %conv11, i32 noundef %spec.select.i.le) #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.030, 1
  %19 = ptrtoint ptr %r_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r_list, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i.le, %do.end ], [ %spec.select.i.le, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov2740_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
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
define internal i32 @ov2740_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

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
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %4 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1932, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %5 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1932, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %6 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1092, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %7 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1092, ptr %max_height, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !200

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 8
  %9 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_mode, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %format3, align 4
  %height.i = getelementptr inbounds %struct.ov2740_mode, ptr %10, i32 0, i32 1
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
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %call2 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 1, i32 noundef 32, i32 noundef 0, i32 noundef 4, i32 noundef %1, i32 noundef %3) #8
  %mutex = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov2740_mode, ptr %call2, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !200

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 8
  %21 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2, ptr %cur_mode, align 4
  %link_freq = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 3
  %22 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link_freq, align 4
  %link_freq_index = getelementptr inbounds %struct.ov2740_mode, ptr %call2, i32 0, i32 5
  %24 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_freq_index, align 4
  %call6 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %23, i32 noundef %25) #8
  %pixel_rate = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 4
  %26 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pixel_rate, align 4
  %28 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 720000000, i64 3689348814741910323) #12, !srcloc !193
  %29 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 720000000, i64 %28) #12, !srcloc !194
  %call9 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %27, i64 noundef %29) #8
  %vts_def = getelementptr inbounds %struct.ov2740_mode, ptr %call2, i32 0, i32 3
  %30 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vts_def, align 4
  %32 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height.i, align 4
  %sub = sub i32 %31, %33
  %vblank = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 5
  %34 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vblank, align 4
  %vts_min = getelementptr inbounds %struct.ov2740_mode, ptr %call2, i32 0, i32 4
  %36 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vts_min, align 4
  %sub12 = sub i32 %37, %33
  %conv = zext i32 %sub12 to i64
  %sub14 = sub i32 32767, %33
  %conv15 = zext i32 %sub14 to i64
  %conv16 = sext i32 %sub to i64
  %call17 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %35, i64 noundef %conv, i64 noundef %conv15, i64 noundef 1, i64 noundef %conv16) #8
  %38 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vblank, align 4
  %call19 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %39, i32 noundef %sub) #8
  %hts = getelementptr inbounds %struct.ov2740_mode, ptr %call2, i32 0, i32 2
  %40 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hts, align 4
  %conv.i58 = zext i32 %41 to i64
  %mul.i = mul i64 %29, %conv.i58
  %42 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -1253132416968158909, i64 %mul.i) #12, !srcloc !195
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -1253132416968158909, i64 %mul.i, i64 %42, i32 0) #12, !srcloc !196
  %asmresult10.i.i = extractvalue { i64, i32 } %43, 0
  %ppl.0.i = lshr i64 %asmresult10.i.i, 26
  %44 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call2, align 4
  %46 = trunc i64 %ppl.0.i to i32
  %conv25 = sub i32 %46, %45
  %hblank = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 6
  %47 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hblank, align 4
  %conv26 = sext i32 %conv25 to i64
  %call29 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %48, i64 noundef %conv26, i64 noundef %conv26, i64 noundef 1, i64 noundef %conv26) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
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
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i.i67 = alloca [6 x i8], align 2
  %buf.i59 = alloca [6 x i8], align 2
  %buf.i51 = alloca [6 x i8], align 2
  %buf.i65.i = alloca [6 x i8], align 2
  %buf.i58.i = alloca [6 x i8], align 2
  %buf.i50.i = alloca [6 x i8], align 2
  %buf.i42.i = alloca [6 x i8], align 2
  %buf.i35.i = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
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
  %cmp = icmp eq i32 %5, 10356993
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr i8, ptr %1, i32 204
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov2740_mode, ptr %7, i32 0, i32 1
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
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val8, align 4
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %26 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 13576, ptr %buf.i, align 2
  %shl.i = shl i32 %23, 16
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %shl.i, ptr %26, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i = icmp slt i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp12.i, i32 %call.i.i, i32 -5
  %retval.0.i = select i1 %cmp9.not.i, i32 0, i32 %spec.select.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val11, align 4
  %31 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %33 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 12808, ptr %buf.i.i, align 2
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %33, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp12.i.i = icmp slt i32 %call.i.i.i, 0
  %spec.select.i.i = select i1 %cmp12.i.i, i32 %call.i.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp9.not.i.i, label %if.end.i, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb10
  %36 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i35.i) #8
  %38 = getelementptr inbounds [6 x i8], ptr %buf.i35.i, i32 0, i32 2
  %39 = ptrtoint ptr %buf.i35.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 20490, ptr %buf.i35.i, align 2
  %shl.i.i = shl i32 %30, 16
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %shl.i.i, ptr %38, align 2
  %call.i.i37.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %buf.i35.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i37.i)
  %cmp9.not.i38.i = icmp eq i32 %call.i.i37.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37.i)
  %cmp12.i39.i = icmp slt i32 %call.i.i37.i, 0
  %spec.select.i40.i = select i1 %cmp12.i39.i, i32 %call.i.i37.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i35.i) #8
  br i1 %cmp9.not.i38.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  %41 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i42.i) #8
  %43 = getelementptr inbounds [6 x i8], ptr %buf.i42.i, i32 0, i32 2
  %44 = ptrtoint ptr %buf.i42.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 20492, ptr %buf.i42.i, align 2
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %shl.i.i, ptr %43, align 2
  %call.i.i45.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %buf.i42.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i45.i)
  %cmp9.not.i46.i = icmp eq i32 %call.i.i45.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45.i)
  %cmp12.i47.i = icmp slt i32 %call.i.i45.i, 0
  %spec.select.i48.i = select i1 %cmp12.i47.i, i32 %call.i.i45.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i42.i) #8
  br i1 %cmp9.not.i46.i, label %if.end8.i, label %if.end4.i.sw.epilog_crit_edge

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end4.i
  %46 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i50.i) #8
  %48 = getelementptr inbounds [6 x i8], ptr %buf.i50.i, i32 0, i32 2
  %49 = ptrtoint ptr %buf.i50.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 20494, ptr %buf.i50.i, align 2
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %shl.i.i, ptr %48, align 2
  %call.i.i53.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull %buf.i50.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i53.i)
  %cmp9.not.i54.i = icmp eq i32 %call.i.i53.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53.i)
  %cmp12.i55.i = icmp slt i32 %call.i.i53.i, 0
  %spec.select.i56.i = select i1 %cmp12.i55.i, i32 %call.i.i53.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i50.i) #8
  br i1 %cmp9.not.i54.i, label %if.end12.i, label %if.end8.i.sw.epilog_crit_edge

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end12.i:                                       ; preds = %if.end8.i
  %51 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i58.i) #8
  %53 = getelementptr inbounds [6 x i8], ptr %buf.i58.i, i32 0, i32 2
  %54 = ptrtoint ptr %buf.i58.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 12808, ptr %buf.i58.i, align 2
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 268435456, ptr %53, align 2
  %call.i.i60.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %52, ptr noundef nonnull %buf.i58.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i60.i)
  %cmp9.not.i61.i = icmp eq i32 %call.i.i60.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60.i)
  %cmp12.i62.i = icmp slt i32 %call.i.i60.i, 0
  %spec.select.i63.i = select i1 %cmp12.i62.i, i32 %call.i.i60.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i58.i) #8
  br i1 %cmp9.not.i61.i, label %if.end16.i, label %if.end12.i.sw.epilog_crit_edge

if.end12.i.sw.epilog_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i65.i) #8
  %58 = getelementptr inbounds [6 x i8], ptr %buf.i65.i, i32 0, i32 2
  %59 = ptrtoint ptr %buf.i65.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 12808, ptr %buf.i65.i, align 2
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 -1610612736, ptr %58, align 2
  %call.i.i67.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %57, ptr noundef nonnull %buf.i65.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i67.i)
  %cmp9.not.i68.i = icmp eq i32 %call.i.i67.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67.i)
  %cmp12.i69.i = icmp slt i32 %call.i.i67.i, 0
  %spec.select.i70.i = select i1 %cmp12.i69.i, i32 %call.i.i67.i, i32 -5
  %retval.0.i71.i = select i1 %cmp9.not.i68.i, i32 0, i32 %spec.select.i70.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i65.i) #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %61 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val14, align 4
  %shl = shl i32 %62, 12
  %63 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i51) #8
  %65 = getelementptr inbounds [6 x i8], ptr %buf.i51, i32 0, i32 2
  %66 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 13568, ptr %buf.i51, align 2
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %shl, ptr %65, align 2
  %call.i.i54 = call i32 @i2c_transfer_buffer_flags(ptr noundef %64, ptr noundef nonnull %buf.i51, i32 noundef 5, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i54)
  %cmp9.not.i55 = icmp eq i32 %call.i.i54, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp12.i56 = icmp slt i32 %call.i.i54, 0
  %spec.select.i57 = select i1 %cmp12.i56, i32 %call.i.i54, i32 -5
  %retval.0.i58 = select i1 %cmp9.not.i55, i32 0, i32 %spec.select.i57
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i51) #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode17 = getelementptr i8, ptr %1, i32 204
  %68 = ptrtoint ptr %cur_mode17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur_mode17, align 4
  %height18 = getelementptr inbounds %struct.ov2740_mode, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height18, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val19, align 4
  %add20 = add i32 %73, %71
  %74 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i59) #8
  %76 = getelementptr inbounds [6 x i8], ptr %buf.i59, i32 0, i32 2
  %77 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 14350, ptr %buf.i59, align 2
  %shl.i61 = shl i32 %add20, 16
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %shl.i61, ptr %76, align 2
  %call.i.i62 = call i32 @i2c_transfer_buffer_flags(ptr noundef %75, ptr noundef nonnull %buf.i59, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i62)
  %cmp9.not.i63 = icmp eq i32 %call.i.i62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %cmp12.i64 = icmp slt i32 %call.i.i62, 0
  %spec.select.i65 = select i1 %cmp12.i64, i32 %call.i.i62, i32 -5
  %retval.0.i66 = select i1 %cmp9.not.i63, i32 0, i32 %spec.select.i65
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i59) #8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %79 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i = icmp eq i32 %80, 0
  %sub.i = shl i32 %80, 26
  %81 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i67) #8
  %83 = getelementptr inbounds [6 x i8], ptr %buf.i.i67, i32 0, i32 2
  %84 = ptrtoint ptr %buf.i.i67 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 20544, ptr %buf.i.i67, align 2
  %or.i = add i32 %sub.i, 2080374784
  %or.op.i = or i32 %or.i, -2147483648
  %shl.i.i69 = select i1 %tobool.not.i, i32 0, i32 %or.op.i
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %shl.i.i69, ptr %83, align 2
  %call.i.i.i70 = call i32 @i2c_transfer_buffer_flags(ptr noundef %82, ptr noundef nonnull %buf.i.i67, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i70)
  %cmp9.not.i.i71 = icmp eq i32 %call.i.i.i70, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i70)
  %cmp12.i.i72 = icmp slt i32 %call.i.i.i70, 0
  %spec.select.i.i73 = select i1 %cmp12.i.i72, i32 %call.i.i.i70, i32 -5
  %retval.0.i.i = select i1 %cmp9.not.i.i71, i32 0, i32 %spec.select.i.i73
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i67) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb16, %sw.bb13, %if.end16.i, %if.end12.i.sw.epilog_crit_edge, %if.end8.i.sw.epilog_crit_edge, %if.end4.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb, %if.end6.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.i, %sw.bb22 ], [ %retval.0.i66, %sw.bb16 ], [ %retval.0.i58, %sw.bb13 ], [ %retval.0.i, %sw.bb ], [ -22, %if.end6.sw.epilog_crit_edge ], [ %retval.0.i71.i, %if.end16.i ], [ %spec.select.i.i, %sw.bb10.sw.epilog_crit_edge ], [ %spec.select.i40.i, %if.end.i.sw.epilog_crit_edge ], [ %spec.select.i48.i, %if.end4.i.sw.epilog_crit_edge ], [ %spec.select.i56.i, %if.end8.i.sw.epilog_crit_edge ], [ %spec.select.i63.i, %if.end12.i.sw.epilog_crit_edge ]
  %call.i74 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov2740, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !201

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1932, ptr %5, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1092, ptr %height2.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12298, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_nvmem_read(ptr noundef %priv, i32 noundef %off, ptr nocapture noundef writeonly %val, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %mutex = getelementptr inbounds %struct.ov2740, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %nvm_buffer = getelementptr inbounds %struct.nvm_data, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %nvm_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm_buffer, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %5, i32 %off
  %6 = call ptr @memcpy(ptr %val, ptr %add.ptr, i32 %count)
  br label %exit

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end7

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !198
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.exit_crit_edge:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !199
  br label %exit

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc i32 @ov2740_load_otp_data(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %nvm_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nvm_buffer, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 %off
  %10 = call ptr @memcpy(ptr %val, ptr %add.ptr12, i32 %count)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %call.i28 = tail call i32 @__pm_runtime_idle(ptr noundef %dev2, i32 noundef 5) #8
  br label %exit

exit:                                             ; preds = %if.end13, %do.end11.i.i.i.i.i, %if.then.i.exit_crit_edge, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call8, %if.end13 ], [ %call.i, %if.then.i.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.ov2740, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov2740, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %6, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp9.not.i.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.72) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2740_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.ov2740, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov2740, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ov2740_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.exit_crit_edge, label %if.then4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then4:                                         ; preds = %if.end
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %streaming, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %7 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %buf.i.i, align 2
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %7, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp9.not.i.i, label %if.then4.exit_crit_edge, label %do.end.i

if.then4.exit_crit_edge:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.72) #11
  br label %exit

exit:                                             ; preds = %do.end.i, %if.then4.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.exit_crit_edge ], [ 0, %entry.exit_crit_edge ], [ %call2, %if.then4.exit_crit_edge ], [ %call2, %do.end.i ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !136, !137, !138, !139, !140, !141, !143, !144, !145, !146, !148, !150, !152, !154, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__initcall__kmod_ov2740__294_1251_ov2740_i2c_driver_init6, !1, !"__initcall__kmod_ov2740__294_1251_ov2740_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov2740.c", i32 1251, i32 1}
!2 = !{ptr @__exitcall_ov2740_i2c_driver_exit, !1, !"__exitcall_ov2740_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov2740.c", i32 1253, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov2740.c", i32 1254, i32 1}
!7 = !{ptr @__UNIQUE_ID_author297, !8, !"__UNIQUE_ID_author297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov2740.c", i32 1255, i32 1}
!9 = !{ptr @__UNIQUE_ID_description298, !10, !"__UNIQUE_ID_description298", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/ov2740.c", i32 1256, i32 1}
!11 = !{ptr @__UNIQUE_ID_file299, !12, !"__UNIQUE_ID_file299", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/ov2740.c", i32 1257, i32 1}
!13 = !{ptr @__UNIQUE_ID_license300, !12, !"__UNIQUE_ID_license300", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov2740.c", i32 1242, i32 11}
!16 = !{ptr @ov2740_i2c_driver, !17, !"ov2740_i2c_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov2740.c", i32 1240, i32 26}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ov2740.c", i32 1156, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ov2740_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov2740_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov2740.c", i32 1169, i32 4}
!28 = !{ptr @ov2740_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov2740_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ov2740_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov2740.c", i32 1177, i32 3}
!32 = !{ptr @ov2740_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ov2740_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ov2740.c", i32 1181, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov2740.c", i32 1185, i32 3}
!38 = !{ptr @ov2740_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ov2740_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ov2740.c", i32 1196, i32 3}
!42 = !{ptr @ov2740_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ov2740_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ov2740.c", i32 1202, i32 3}
!46 = !{ptr @ov2740_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ov2740_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov2740.c", i32 1209, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ov2740_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ov2740_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ov2740.c", i32 1004, i32 41}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ov2740.c", i32 1009, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ov2740_check_hwcfg._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ov2740_check_hwcfg._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov2740.c", i32 1023, i32 3}
!62 = !{ptr @ov2740_check_hwcfg._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ov2740_check_hwcfg._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov2740.c", i32 1030, i32 3}
!66 = !{ptr @ov2740_check_hwcfg._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ov2740_check_hwcfg._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov2740.c", i32 1043, i32 4}
!70 = !{ptr @ov2740_check_hwcfg._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ov2740_check_hwcfg._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @link_freq_menu_items, !73, !"link_freq_menu_items", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov2740.c", i32 297, i32 18}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov2740.c", i32 460, i32 3}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ov2740_identify_module._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ov2740_identify_module._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @ov2740_subdev_ops, !80, !"ov2740_subdev_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ov2740.c", i32 977, i32 37}
!81 = !{ptr @ov2740_video_ops, !82, !"ov2740_video_ops", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ov2740.c", i32 966, i32 43}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ov2740.c", i32 764, i32 3}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ov2740_start_streaming._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ov2740_start_streaming._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov2740.c", i32 771, i32 3}
!90 = !{ptr @ov2740_start_streaming._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ov2740_start_streaming._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov2740.c", i32 782, i32 3}
!94 = !{ptr @ov2740_start_streaming._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ov2740_start_streaming._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ov2740.c", i32 673, i32 3}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ov2740_load_otp_data._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ov2740_load_otp_data._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/ov2740.c", i32 679, i32 3}
!103 = !{ptr @ov2740_load_otp_data._entry.49, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ov2740_load_otp_data._entry_ptr.51, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov2740.c", i32 687, i32 3}
!107 = !{ptr @ov2740_load_otp_data._entry.52, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ov2740_load_otp_data._entry_ptr.54, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov2740.c", i32 695, i32 3}
!111 = !{ptr @ov2740_load_otp_data._entry.55, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ov2740_load_otp_data._entry_ptr.57, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov2740.c", i32 702, i32 3}
!115 = !{ptr @ov2740_load_otp_data._entry.58, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ov2740_load_otp_data._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov2740.c", i32 715, i32 3}
!119 = !{ptr @ov2740_load_otp_data._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @ov2740_load_otp_data._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @ov2740_load_otp_data._entry.64, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ov2740.c", i32 722, i32 3}
!123 = !{ptr @ov2740_load_otp_data._entry_ptr.65, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @ov2740_load_otp_data._entry.66, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov2740.c", i32 728, i32 3}
!126 = !{ptr @ov2740_load_otp_data._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @ov2740_load_otp_data._entry.68, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/ov2740.c", i32 734, i32 3}
!129 = !{ptr @ov2740_load_otp_data._entry_ptr.69, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @link_freq_configs, !131, !"link_freq_configs", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/ov2740.c", i32 301, i32 45}
!132 = !{ptr @mipi_data_rate_720mbps, !133, !"mipi_data_rate_720mbps", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov2740.c", i32 127, i32 32}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov2740.c", i32 436, i32 4}
!136 = !{ptr @ov2740_write_reg_list._rs, !135, !"_rs", i1 false, i1 false}
!137 = !{ptr @__func__.ov2740_write_reg_list, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ov2740_write_reg_list._entry, !135, !"_entry", i1 false, i1 false}
!140 = !{ptr @ov2740_write_reg_list._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/ov2740.c", i32 793, i32 3}
!143 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @ov2740_stop_streaming._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @ov2740_stop_streaming._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @ov2740_pad_ops, !147, !"ov2740_pad_ops", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/ov2740.c", i32 970, i32 41}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!150 = !{ptr @supported_modes, !151, !"supported_modes", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/ov2740.c", i32 310, i32 33}
!152 = !{ptr @mode_1932x1092_regs, !153, !"mode_1932x1092_regs", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/ov2740.c", i32 136, i32 32}
!154 = !{ptr @ov2740_init_controls._key, !155, !"_key", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/ov2740.c", i32 582, i32 8}
!156 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ov2740_ctrl_ops, !158, !"ov2740_ctrl_ops", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ov2740.c", i32 568, i32 35}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/ov2740.c", i32 290, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/ov2740.c", i32 291, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/ov2740.c", i32 292, i32 2}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/ov2740.c", i32 293, i32 2}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/ov2740.c", i32 294, i32 2}
!169 = !{ptr @ov2740_test_pattern_menu, !170, !"ov2740_test_pattern_menu", i1 false, i1 false}
!170 = !{!"../drivers/media/i2c/ov2740.c", i32 289, i32 27}
!171 = !{ptr @ov2740_internal_ops, !172, !"ov2740_internal_ops", i1 false, i1 false}
!172 = !{!"../drivers/media/i2c/ov2740.c", i32 986, i32 46}
!173 = !{ptr @ov2740_subdev_entity_ops, !174, !"ov2740_subdev_entity_ops", i1 false, i1 false}
!174 = !{!"../drivers/media/i2c/ov2740.c", i32 982, i32 45}
!175 = !{ptr @ov2740_register_nvmem._key, !176, !"_key", i1 false, i1 false}
!176 = !{!"../drivers/media/i2c/ov2740.c", i32 1118, i32 11}
!177 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @ov2740_acpi_ids, !179, !"ov2740_acpi_ids", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/ov2740.c", i32 1233, i32 36}
!180 = !{ptr @ov2740_pm_ops, !181, !"ov2740_pm_ops", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/ov2740.c", i32 1229, i32 32}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{!"auto-init"}
!192 = !{i8 0, i8 2}
!193 = !{i64 1527486, i64 1527513}
!194 = !{i64 1527826, i64 1527853, i64 1527887, i64 1527908}
!195 = !{i64 1527316, i64 1527343}
!196 = !{i64 1528011, i64 1528038, i64 1528071, i64 1528092, i64 1528119, i64 1528145}
!197 = !{i64 2148374478}
!198 = !{i64 859301, i64 859326, i64 859348, i64 859364, i64 859376, i64 859396, i64 859420, i64 859436, i64 859448}
!199 = !{i64 2148374666}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{!"branch_weights", i32 1, i32 2000}
