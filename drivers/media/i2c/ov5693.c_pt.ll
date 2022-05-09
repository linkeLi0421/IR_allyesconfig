; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov5693.c_pt.bc'
source_filename = "../drivers/media/i2c/ov5693.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.ov5693_reg = type { i32, i8 }
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
%struct.v4l2_fwnode_device_properties = type { i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.ov5693_device = type { ptr, ptr, %struct.mutex, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, %struct.ov5693_mode, i8, %struct.v4l2_subdev, %struct.media_pad, %struct.ov5693_v4l2_ctrls }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.ov5693_mode = type { %struct.v4l2_rect, %struct.v4l2_mbus_framefmt, i8, i8, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.ov5693_v4l2_ctrls = type { %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.anon.101 = type { i16, [4 x i8] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__initcall__kmod_ov5693__333_1534_ov5693_driver_init6 = internal global ptr @ov5693_driver_init, section ".initcall6.init", align 4
@ov5693_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov5693_remove, ptr @ov5693_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @ov5693_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5693_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov5693_driver_exit = internal global ptr @ov5693_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description334 = internal constant [66 x i8] c"ov5693.description=A low-level driver for OmniVision 5693 sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file335 = internal constant [37 x i8] c"ov5693.file=drivers/media/i2c/ov5693\00", section ".modinfo", align 1
@__UNIQUE_ID_license336 = internal constant [19 x i8] c"ov5693.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov5693\00", [25 x i8] zeroinitializer }, align 32
@ov5693_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT33BE\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov5693_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5693_sensor_suspend, ptr @ov5693_sensor_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov5693_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ov5693->lock\00", [18 x i8] zeroinitializer }, align 32
@ov5693_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov5693_video_ops, ptr null, ptr null, ptr null, ptr @ov5693_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xvclk\00", [26 x i8] zeroinitializer }, align 32
@ov5693_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1414, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error getting clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5693_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov5693.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov5693_probe._entry_ptr = internal global ptr @ov5693_probe._entry, section ".printk_index", align 4
@ov5693_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1421, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Found clk freq %u, expected %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ov5693_probe._entry_ptr.11 = internal global ptr @ov5693_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error fetching regulators\0A\00", [37 x i8] zeroinitializer }, align 32
@ov5693_default_crop = internal constant { %struct.v4l2_rect, [16 x i8] } { %struct.v4l2_rect { i32 16, i32 6, i32 2592, i32 1944 }, [16 x i8] zeroinitializer }, align 32
@ov5693_default_fmt = internal constant { %struct.v4l2_mbus_framefmt, [48 x i8] } { %struct.v4l2_mbus_framefmt { i32 2592, i32 1944, i32 12295, i32 0, i32 0, %union.anon.96 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@ov5693_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 1470, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register V4L2 subdev: %d\00", [61 x i8] zeroinitializer }, align 32
@ov5693_probe._entry_ptr.15 = internal global ptr @ov5693_probe._entry.13, section ".printk_index", align 4
@ov5693_check_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 1363, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"only a 2-lane CSI2 config is supported\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov5693_check_hwcfg\00", [45 x i8] zeroinitializer }, align 32
@ov5693_check_hwcfg._entry_ptr = internal global ptr @ov5693_check_hwcfg._entry, section ".printk_index", align 4
@ov5693_check_hwcfg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 1369, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no link frequencies defined\0A\00", [35 x i8] zeroinitializer }, align 32
@ov5693_check_hwcfg._entry_ptr.20 = internal global ptr @ov5693_check_hwcfg._entry.18, section ".printk_index", align 4
@ov5693_check_hwcfg._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.5, i32 1380, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"supported link freq %ull not found\0A\00", [60 x i8] zeroinitializer }, align 32
@ov5693_check_hwcfg._entry_ptr.23 = internal global ptr @ov5693_check_hwcfg._entry.21, section ".printk_index", align 4
@ov5693_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5693_s_stream, ptr null, ptr @ov5693_g_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov5693_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov5693_enum_mbus_code, ptr @ov5693_enum_frame_size, ptr null, ptr @ov5693_get_fmt, ptr @ov5693_set_fmt, ptr @ov5693_get_selection, ptr @ov5693_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov5693_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 448, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to write register 0x%04x: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov5693_write_reg\00", [47 x i8] zeroinitializer }, align 32
@ov5693_write_reg._entry_ptr = internal global ptr @ov5693_write_reg._entry, section ".printk_index", align 4
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov5693_configure_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 1318, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error fetching reset GPIO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov5693_configure_gpios\00", [41 x i8] zeroinitializer }, align 32
@ov5693_configure_gpios._entry_ptr = internal global ptr @ov5693_configure_gpios._entry, section ".printk_index", align 4
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@ov5693_configure_gpios._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.5, i32 1325, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error fetching powerdown GPIO\0A\00", [33 x i8] zeroinitializer }, align 32
@ov5693_configure_gpios._entry_ptr.33 = internal global ptr @ov5693_configure_gpios._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dovdd\00", [26 x i8] zeroinitializer }, align 32
@ov5693_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ov5693_g_volatile_ctrl, ptr null, ptr @ov5693_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov5693_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ov5693:1219:(&ctrls->handler)->_lock\00", [59 x i8] zeroinitializer }, align 32
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 419200000], [24 x i8] zeroinitializer }, align 32
@ov5693_test_pattern_menu = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@ov5693_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 1287, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error initialising v4l2 ctrls\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov5693_init_controls\00", [43 x i8] zeroinitializer }, align 32
@ov5693_init_controls._entry_ptr = internal global ptr @ov5693_init_controls._entry, section ".printk_index", align 4
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read register 0x%04x: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ov5693_test_pattern_bits = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\81\80\C0", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Random Data\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Colour Bars\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Colour Bars with Rolling Bar\00", [35 x i8] zeroinitializer }, align 32
@ov5693_sensor_powerup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 809, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to enable clk\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov5693_sensor_powerup\00", [42 x i8] zeroinitializer }, align 32
@ov5693_sensor_powerup._entry_ptr = internal global ptr @ov5693_sensor_powerup._entry, section ".printk_index", align 4
@ov5693_sensor_powerup._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.5, i32 815, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@ov5693_sensor_powerup._entry_ptr.48 = internal global ptr @ov5693_sensor_powerup._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sensor ID mismatch. Found 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@ov5693_sensor_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 855, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ov5693 sensor init failure\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov5693_sensor_resume\00", [43 x i8] zeroinitializer }, align 32
@ov5693_sensor_resume._entry_ptr = internal global ptr @ov5693_sensor_resume._entry, section ".printk_index", align 4
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"software reset error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"global settings error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mode configure error\0A\00", [42 x i8] zeroinitializer }, align 32
@ov5693_sensor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 785, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stop streaming error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov5693_sensor_init\00", [45 x i8] zeroinitializer }, align 32
@ov5693_sensor_init._entry_ptr = internal global ptr @ov5693_sensor_init._entry, section ".printk_index", align 4
@ov5693_global_regs = internal constant { [144 x %struct.ov5693_reg], [288 x i8] } { [144 x %struct.ov5693_reg] [%struct.ov5693_reg { i32 77846, i8 -16 }, %struct.ov5693_reg { i32 77847, i8 -16 }, %struct.ov5693_reg { i32 77848, i8 -16 }, %struct.ov5693_reg { i32 77858, i8 1 }, %struct.ov5693_reg { i32 77864, i8 68 }, %struct.ov5693_reg { i32 77976, i8 2 }, %struct.ov5693_reg { i32 77977, i8 25 }, %struct.ov5693_reg { i32 77978, i8 2 }, %struct.ov5693_reg { i32 77979, i8 1 }, %struct.ov5693_reg { i32 77980, i8 0 }, %struct.ov5693_reg { i32 77984, i8 -46 }, %struct.ov5693_reg { i32 77986, i8 1 }, %struct.ov5693_reg { i32 78002, i8 0 }, %struct.ov5693_reg { i32 78003, i8 -125 }, %struct.ov5693_reg { i32 78004, i8 3 }, %struct.ov5693_reg { i32 78005, i8 4 }, %struct.ov5693_reg { i32 78006, i8 1 }, %struct.ov5693_reg { i32 77952, i8 1 }, %struct.ov5693_reg { i32 78084, i8 33 }, %struct.ov5693_reg { i32 78086, i8 0 }, %struct.ov5693_reg { i32 78854, i8 1 }, %struct.ov5693_reg { i32 79107, i8 7 }, %struct.ov5693_reg { i32 79115, i8 64 }, %struct.ov5693_reg { i32 79361, i8 10 }, %struct.ov5693_reg { i32 79362, i8 56 }, %struct.ov5693_reg { i32 79378, i8 -128 }, %struct.ov5693_reg { i32 79392, i8 84 }, %struct.ov5693_reg { i32 79393, i8 -57 }, %struct.ov5693_reg { i32 79394, i8 15 }, %struct.ov5693_reg { i32 79397, i8 16 }, %struct.ov5693_reg { i32 79408, i8 85 }, %struct.ov5693_reg { i32 79409, i8 -12 }, %struct.ov5693_reg { i32 79410, i8 0 }, %struct.ov5693_reg { i32 79411, i8 52 }, %struct.ov5693_reg { i32 79412, i8 2 }, %struct.ov5693_reg { i32 79437, i8 13 }, %struct.ov5693_reg { i32 79439, i8 -35 }, %struct.ov5693_reg { i32 79456, i8 4 }, %struct.ov5693_reg { i32 79458, i8 16 }, %struct.ov5693_reg { i32 79459, i8 -15 }, %struct.ov5693_reg { i32 79461, i8 0 }, %struct.ov5693_reg { i32 79462, i8 32 }, %struct.ov5693_reg { i32 79463, i8 0 }, %struct.ov5693_reg { i32 79466, i8 -128 }, %struct.ov5693_reg { i32 79488, i8 -32 }, %struct.ov5693_reg { i32 79489, i8 0 }, %struct.ov5693_reg { i32 79616, i8 66 }, %struct.ov5693_reg { i32 79617, i8 20 }, %struct.ov5693_reg { i32 79618, i8 -96 }, %struct.ov5693_reg { i32 79619, i8 -40 }, %struct.ov5693_reg { i32 79620, i8 120 }, %struct.ov5693_reg { i32 79621, i8 2 }, %struct.ov5693_reg { i32 79626, i8 0 }, %struct.ov5693_reg { i32 79627, i8 32 }, %struct.ov5693_reg { i32 79628, i8 12 }, %struct.ov5693_reg { i32 79629, i8 17 }, %struct.ov5693_reg { i32 79630, i8 0 }, %struct.ov5693_reg { i32 79631, i8 64 }, %struct.ov5693_reg { i32 79632, i8 0 }, %struct.ov5693_reg { i32 79642, i8 28 }, %struct.ov5693_reg { i32 79643, i8 5 }, %struct.ov5693_reg { i32 79644, i8 1 }, %struct.ov5693_reg { i32 79646, i8 -95 }, %struct.ov5693_reg { i32 79647, i8 12 }, %struct.ov5693_reg { i32 79649, i8 0 }, %struct.ov5693_reg { i32 79652, i8 16 }, %struct.ov5693_reg { i32 79654, i8 0 }, %struct.ov5693_reg { i32 79658, i8 1 }, %struct.ov5693_reg { i32 79664, i8 16 }, %struct.ov5693_reg { i32 79672, i8 34 }, %struct.ov5693_reg { i32 79673, i8 -27 }, %struct.ov5693_reg { i32 79674, i8 80 }, %struct.ov5693_reg { i32 79675, i8 2 }, %struct.ov5693_reg { i32 79676, i8 65 }, %struct.ov5693_reg { i32 79679, i8 2 }, %struct.ov5693_reg { i32 79680, i8 66 }, %struct.ov5693_reg { i32 79681, i8 2 }, %struct.ov5693_reg { i32 79682, i8 24 }, %struct.ov5693_reg { i32 79683, i8 1 }, %struct.ov5693_reg { i32 79684, i8 2 }, %struct.ov5693_reg { i32 79687, i8 16 }, %struct.ov5693_reg { i32 79692, i8 4 }, %struct.ov5693_reg { i32 79697, i8 -16 }, %struct.ov5693_reg { i32 79698, i8 0 }, %struct.ov5693_reg { i32 79699, i8 0 }, %struct.ov5693_reg { i32 79700, i8 -64 }, %struct.ov5693_reg { i32 79701, i8 0 }, %struct.ov5693_reg { i32 79702, i8 26 }, %struct.ov5693_reg { i32 79704, i8 0 }, %struct.ov5693_reg { i32 79705, i8 15 }, %struct.ov5693_reg { i32 79723, i8 68 }, %struct.ov5693_reg { i32 79708, i8 4 }, %struct.ov5693_reg { i32 79732, i8 16 }, %struct.ov5693_reg { i32 79734, i8 0 }, %struct.ov5693_reg { i32 79743, i8 8 }, %struct.ov5693_reg { i32 79744, i8 34 }, %struct.ov5693_reg { i32 79745, i8 12 }, %struct.ov5693_reg { i32 79748, i8 44 }, %struct.ov5693_reg { i32 79749, i8 30 }, %struct.ov5693_reg { i32 79759, i8 -11 }, %struct.ov5693_reg { i32 79761, i8 -80 }, %struct.ov5693_reg { i32 79765, i8 0 }, %struct.ov5693_reg { i32 79766, i8 100 }, %struct.ov5693_reg { i32 79767, i8 17 }, %struct.ov5693_reg { i32 79768, i8 48 }, %struct.ov5693_reg { i32 79769, i8 65 }, %struct.ov5693_reg { i32 79770, i8 7 }, %struct.ov5693_reg { i32 79771, i8 -80 }, %struct.ov5693_reg { i32 79772, i8 12 }, %struct.ov5693_reg { i32 80388, i8 6 }, %struct.ov5693_reg { i32 80389, i8 20 }, %struct.ov5693_reg { i32 81415, i8 32 }, %struct.ov5693_reg { i32 81920, i8 8 }, %struct.ov5693_reg { i32 81921, i8 4 }, %struct.ov5693_reg { i32 81924, i8 8 }, %struct.ov5693_reg { i32 81926, i8 32 }, %struct.ov5693_reg { i32 81928, i8 36 }, %struct.ov5693_reg { i32 81929, i8 16 }, %struct.ov5693_reg { i32 82008, i8 0 }, %struct.ov5693_reg { i32 82177, i8 -78 }, %struct.ov5693_reg { i32 82695, i8 49 }, %struct.ov5693_reg { i32 83217, i8 5 }, %struct.ov5693_reg { i32 83218, i8 1 }, %struct.ov5693_reg { i32 83999, i8 48 }, %struct.ov5693_reg { i32 84006, i8 44 }, %struct.ov5693_reg { i32 85250, i8 -3 }, %struct.ov5693_reg { i32 85251, i8 -11 }, %struct.ov5693_reg { i32 85252, i8 12 }, %struct.ov5693_reg { i32 85253, i8 -52 }, %struct.ov5693_reg { i32 84023, i8 10 }, %struct.ov5693_reg { i32 86019, i8 32 }, %struct.ov5693_reg { i32 86035, i8 0 }, %struct.ov5693_reg { i32 88130, i8 1 }, %struct.ov5693_reg { i32 88131, i8 43 }, %struct.ov5693_reg { i32 88132, i8 1 }, %struct.ov5693_reg { i32 88133, i8 -110 }, %struct.ov5693_reg { i32 88134, i8 1 }, %struct.ov5693_reg { i32 88135, i8 -113 }, %struct.ov5693_reg { i32 88136, i8 1 }, %struct.ov5693_reg { i32 88137, i8 12 }, %struct.ov5693_reg { i32 89616, i8 12 }, %struct.ov5693_reg { i32 79904, i8 0 }, %struct.ov5693_reg { i32 79905, i8 30 }, %struct.ov5693_reg { i32 86081, i8 20 }], [288 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 9963794, i64 10094850]
@__sancov_gen_cov_switch_values.64 = internal global [9 x i64] [i64 7, i64 32, i64 9963793, i64 9963796, i64 9963797, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"ov5693_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1525, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1527, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"ov5693_acpi_match\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1519, i32 36 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"ov5693_pm_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1515, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1408, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [11 x i8] c"ov5693_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1202, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1412, i32 43 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1414, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1420, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1430, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"ov5693_default_crop\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 338, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"ov5693_default_fmt\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 345, i32 40 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1469, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1363, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1369, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1379, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"ov5693_video_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1188, i32 43 }
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"ov5693_pad_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1193, i32 41 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 447, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1016, i32 6 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1315, i32 55 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1318, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1322, i32 59 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1325, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 356, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 357, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"ov5693_ctrl_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 674, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1219, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 351, i32 18 }
@___asan_gen_.209 = private unnamed_addr constant [25 x i8] c"ov5693_test_pattern_menu\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 360, i32 27 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1287, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 406, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant [25 x i8] c"ov5693_test_pattern_bits\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 367, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 361, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 362, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 363, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 364, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 809, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 815, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 879, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 855, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 771, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 776, i32 10 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 781, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 785, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"ov5693_global_regs\00", align 1
@___asan_gen_.285 = private constant [30 x i8] c"../drivers/media/i2c/ov5693.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 186, i32 32 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_description334, ptr @__UNIQUE_ID_file335, ptr @__UNIQUE_ID_license336, ptr @__exitcall_ov5693_driver_exit, ptr @__initcall__kmod_ov5693__333_1534_ov5693_driver_init6, ptr @ov5693_check_hwcfg._entry, ptr @ov5693_check_hwcfg._entry.18, ptr @ov5693_check_hwcfg._entry.21, ptr @ov5693_check_hwcfg._entry_ptr, ptr @ov5693_check_hwcfg._entry_ptr.20, ptr @ov5693_check_hwcfg._entry_ptr.23, ptr @ov5693_configure_gpios._entry, ptr @ov5693_configure_gpios._entry.31, ptr @ov5693_configure_gpios._entry_ptr, ptr @ov5693_configure_gpios._entry_ptr.33, ptr @ov5693_driver_exit, ptr @ov5693_init_controls._entry, ptr @ov5693_init_controls._entry_ptr, ptr @ov5693_probe._entry, ptr @ov5693_probe._entry.13, ptr @ov5693_probe._entry.8, ptr @ov5693_probe._entry_ptr, ptr @ov5693_probe._entry_ptr.11, ptr @ov5693_probe._entry_ptr.15, ptr @ov5693_sensor_init._entry, ptr @ov5693_sensor_init._entry_ptr, ptr @ov5693_sensor_powerup._entry, ptr @ov5693_sensor_powerup._entry.46, ptr @ov5693_sensor_powerup._entry_ptr, ptr @ov5693_sensor_powerup._entry_ptr.48, ptr @ov5693_sensor_resume._entry, ptr @ov5693_sensor_resume._entry_ptr, ptr @ov5693_write_reg._entry, ptr @ov5693_write_reg._entry_ptr, ptr @ov5693_driver, ptr @.str, ptr @ov5693_acpi_match, ptr @ov5693_pm_ops, ptr @ov5693_probe.__key, ptr @.str.1, ptr @ov5693_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @ov5693_default_crop, ptr @ov5693_default_fmt, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @ov5693_video_ops, ptr @ov5693_pad_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @ov5693_ctrl_ops, ptr @ov5693_init_controls._key, ptr @.str.36, ptr @link_freq_menu_items, ptr @ov5693_test_pattern_menu, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ov5693_test_pattern_bits, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @ov5693_global_regs], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_default_crop to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_default_fmt to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_check_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_check_hwcfg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_check_hwcfg._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_configure_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_configure_gpios._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_test_pattern_menu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_test_pattern_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_sensor_powerup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_sensor_powerup._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_sensor_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_sensor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5693_global_regs to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov5693_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov5693_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @ov5693_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #11
  %ctrls = getelementptr i8, ptr %1, i32 228
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #11
  %lock = getelementptr i8, ptr %1, i32 -212
  tail call void @mutex_destroy(ptr noundef %lock) #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reset.i = getelementptr i8, ptr %1, i32 -120
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #11
  %powerdown.i = getelementptr i8, ptr %1, i32 -116
  %6 = ptrtoint ptr %powerdown.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %powerdown.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #11
  %supplies.i = getelementptr i8, ptr %1, i32 -112
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #11
  %clk.i = getelementptr i8, ptr %1, i32 -88
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i13 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_probe(ptr noundef %client) #2 align 64 {
entry:
  %props.i = alloca %struct.v4l2_fwnode_device_properties, align 4
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 672, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %dev3 = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev3, align 4
  %call.i146 = tail call ptr @dev_fwnode(ptr noundef %dev) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #11
  %2 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %3 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %3, align 4
  %call1.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call.i146, ptr noundef null) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.ov5693_check_hwcfg.exit.thread_crit_edge, label %if.end.i

if.end.ov5693_check_hwcfg.exit.thread_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_check_hwcfg.exit.thread

if.end.i:                                         ; preds = %if.end
  %call2.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %bus_cfg.i) #11
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.ov5693_check_hwcfg.exit.thread_crit_edge

if.end.i.ov5693_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_check_hwcfg.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2, i32 2, i32 3
  %5 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 2
  br i1 %cmp.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16) #14
  br label %ov5693_check_hwcfg.exit.thread166

if.end9.i:                                        ; preds = %if.end5.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %9 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not.i = icmp eq i32 %10, 0
  br i1 %tobool10.not.i, label %do.end14.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %11 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body.i

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.19) #14
  br label %ov5693_check_hwcfg.exit.thread166

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %12, i32 %i.048.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 419200000, i64 %16)
  %cmp20.i = icmp eq i64 %16, 419200000
  br i1 %cmp20.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.do.end30.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.do.end30.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.048.i, i32 %10)
  %cmp25.i = icmp eq i32 %i.048.i, %10
  br i1 %cmp25.i, label %for.end.i.do.end30.i_crit_edge, label %do.body

for.end.i.do.end30.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %for.end.i.do.end30.i_crit_edge, %for.inc.i.do.end30.i_crit_edge
  %17 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.22, i32 noundef 419200000) #14
  br label %ov5693_check_hwcfg.exit.thread166

ov5693_check_hwcfg.exit.thread:                   ; preds = %if.end.i.ov5693_check_hwcfg.exit.thread_crit_edge, %if.end.ov5693_check_hwcfg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call2.i, %if.end.i.ov5693_check_hwcfg.exit.thread_crit_edge ], [ -517, %if.end.ov5693_check_hwcfg.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #11
  br label %cleanup

ov5693_check_hwcfg.exit.thread166:                ; preds = %do.end30.i, %do.end14.i, %do.end.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #11
  br label %cleanup

do.body:                                          ; preds = %for.end.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #11
  %lock = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ov5693_probe.__key) #11
  %sd = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 9
  call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @ov5693_ops) #11
  %call9 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %clk = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end19

do.end15:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #14
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end19:                                         ; preds = %do.body
  %call21 = call i32 @clk_get_rate(ptr noundef %call9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %call21)
  %cmp.not = icmp eq i32 %call21, 19200000
  br i1 %cmp.not, label %if.end19.if.end27_crit_edge, label %do.end25

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call21, i32 noundef 19200000) #14
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.end19.if.end27_crit_edge
  %23 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev3, align 4
  %call.i148 = call ptr @devm_gpiod_get_optional(ptr noundef %24, ptr noundef nonnull @.str.27, i32 noundef 7) #11
  %reset.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i148, ptr %reset.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i148, inttoptr (i32 -4096 to ptr)
  %26 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev3, align 4
  br i1 %cmp.i.i, label %do.end.i149, label %if.end.i150

do.end.i149:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28) #14
  br label %ov5693_configure_gpios.exit

if.end.i150:                                      ; preds = %if.end27
  %call7.i = call ptr @devm_gpiod_get_optional(ptr noundef %27, ptr noundef nonnull @.str.30, i32 noundef 7) #11
  %powerdown.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %powerdown.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i, ptr %powerdown.i, align 4
  %cmp.i26.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i, label %do.end12.i, label %if.end.i150.if.end31_crit_edge

if.end.i150.if.end31_crit_edge:                   ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.end12.i:                                       ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.32) #14
  br label %ov5693_configure_gpios.exit

ov5693_configure_gpios.exit:                      ; preds = %do.end12.i, %do.end.i149
  %powerdown.sink.i = phi ptr [ %powerdown.i, %do.end12.i ], [ %reset.i, %do.end.i149 ]
  %31 = ptrtoint ptr %powerdown.sink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %powerdown.sink.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %tobool29.not = icmp eq ptr %32, null
  br i1 %tobool29.not, label %ov5693_configure_gpios.exit.if.end31_crit_edge, label %ov5693_configure_gpios.exit.cleanup_crit_edge

ov5693_configure_gpios.exit.cleanup_crit_edge:    ; preds = %ov5693_configure_gpios.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ov5693_configure_gpios.exit.if.end31_crit_edge:   ; preds = %ov5693_configure_gpios.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end31:                                         ; preds = %ov5693_configure_gpios.exit.if.end31_crit_edge, %if.end.i150.if.end31_crit_edge
  %arrayidx1.i = getelementptr %struct.ov5693_device, ptr %call.i, i32 0, i32 5, i32 0
  %34 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.34, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.ov5693_device, ptr %call.i, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.35, ptr %arrayidx1.1.i, align 4
  %36 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev3, align 4
  %call.i153 = call i32 @devm_regulator_bulk_get(ptr noundef %37, i32 noundef 2, ptr noundef %arrayidx1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool33.not = icmp eq i32 %call.i153, 0
  br i1 %tobool33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call.i153, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %flags = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 9, i32 4
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %or = or i32 %39, 4
  store i32 %or, ptr %flags, align 4
  %flags39 = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 10, i32 4
  %40 = ptrtoint ptr %flags39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %flags39, align 4
  %function = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  %41 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 131073, ptr %function, align 4
  %mode = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 7
  %42 = call ptr @memcpy(ptr %mode, ptr @ov5693_default_crop, i32 16)
  %format = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 7, i32 1
  %43 = call ptr @memcpy(ptr %format, ptr @ov5693_default_fmt, i32 48)
  %height = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %vts = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 7, i32 6
  %44 = ptrtoint ptr %vts to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2078, ptr %vts, align 4
  %ctrls1.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props.i) #11
  %45 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %props.i, align 4, !annotation !155
  %46 = getelementptr inbounds %struct.v4l2_fwnode_device_properties, ptr %props.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %46, align 4, !annotation !155
  %call.i154 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls1.i, i32 noundef 12, ptr noundef nonnull @ov5693_init_controls._key, ptr noundef nonnull @.str.36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool.not.i155 = icmp eq i32 %call.i154, 0
  br i1 %tobool.not.i155, label %if.end.i156, label %ov5693_init_controls.exit.thread173

ov5693_init_controls.exit.thread173:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #11
  br label %cleanup

if.end.i156:                                      ; preds = %if.end37
  %call3.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrls1.i, ptr noundef null, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #11
  %link_freq.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call3.i, ptr %link_freq.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end.i156.if.end8.i_crit_edge, label %if.then6.i

if.end.i156.if.end8.i_crit_edge:                  ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call3.i, i32 0, i32 20
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %50, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i156.if.end8.i_crit_edge
  %call10.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef null, i32 noundef 10422530, i64 noundef 0, i64 noundef 167680000, i64 noundef 1, i64 noundef 167680000) #11
  %pixel_rate.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 2
  %51 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call10.i, ptr %pixel_rate.i, align 4
  %52 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vts, align 4
  %sub.i157 = add i32 %53, -8
  %conv.i = sext i32 %sub.i157 to i64
  %call13.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov5693_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef %conv.i, i64 noundef 1, i64 noundef %conv.i) #11
  %exposure.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 3
  %54 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call13.i, ptr %exposure.i, align 4
  %call15.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov5693_ctrl_ops, i32 noundef 10356995, i64 noundef 1, i64 noundef 127, i64 noundef 1, i64 noundef 8) #11
  %analogue_gain.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 4
  %55 = ptrtoint ptr %analogue_gain.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call15.i, ptr %analogue_gain.i, align 4
  %call17.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov5693_ctrl_ops, i32 noundef 10422533, i64 noundef 1, i64 noundef 4095, i64 noundef 1, i64 noundef 1024) #11
  %digital_gain.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 5
  %56 = ptrtoint ptr %digital_gain.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call17.i, ptr %digital_gain.i, align 4
  %call19.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov5693_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %hflip.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 6
  %57 = ptrtoint ptr %hflip.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call19.i, ptr %hflip.i, align 4
  %call21.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov5693_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %vflip.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 7
  %58 = ptrtoint ptr %vflip.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call21.i, ptr %vflip.i, align 4
  %59 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %format, align 4
  %sub23.i = sub i32 2688, %60
  %conv25.i = sext i32 %sub23.i to i64
  %call28.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov5693_ctrl_ops, i32 noundef 10356994, i64 noundef %conv25.i, i64 noundef %conv25.i, i64 noundef 1, i64 noundef %conv25.i) #11
  %hblank29.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 8
  %61 = ptrtoint ptr %hblank29.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call28.i, ptr %hblank29.i, align 4
  %tobool31.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool31.not.i, label %if.end8.i.if.end36.i_crit_edge, label %if.then32.i

if.end8.i.if.end36.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then32.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags34.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call28.i, i32 0, i32 20
  %62 = ptrtoint ptr %flags34.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags34.i, align 4
  %or35.i = or i32 %63, 4
  store i32 %or35.i, ptr %flags34.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %if.end8.i.if.end36.i_crit_edge
  %64 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height, align 4
  %sub39.i = sub i32 65535, %65
  %66 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vts, align 4
  %sub45.i = sub i32 %67, %65
  %conv47.i = sext i32 %sub39.i to i64
  %conv48.i = sext i32 %sub45.i to i64
  %call49.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1.i, ptr noundef nonnull @ov5693_ctrl_ops, i32 noundef 10356993, i64 noundef 4, i64 noundef %conv47.i, i64 noundef 1, i64 noundef %conv48.i) #11
  %vblank.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 9
  %68 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call49.i, ptr %vblank.i, align 4
  %call51.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls1.i, ptr noundef nonnull @ov5693_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov5693_test_pattern_menu) #11
  %test_pattern.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 10
  %69 = ptrtoint ptr %test_pattern.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call51.i, ptr %test_pattern.i, align 4
  %error.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 0, i32 9
  %70 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool53.not.i = icmp eq i32 %71, 0
  %72 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev3, align 4
  br i1 %tobool53.not.i, label %if.end57.i, label %ov5693_init_controls.exit

if.end57.i:                                       ; preds = %if.end36.i
  %call59.i = call i32 @v4l2_fwnode_device_parse(ptr noundef %73, ptr noundef nonnull %props.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %if.end57.i.ov5693_init_controls.exit.thread176_crit_edge

if.end57.i.ov5693_init_controls.exit.thread176_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_init_controls.exit.thread176

if.end62.i:                                       ; preds = %if.end57.i
  %call64.i = call i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef %ctrls1.i, ptr noundef nonnull @ov5693_ctrl_ops, ptr noundef nonnull %props.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %ov5693_init_controls.exit.thread, label %if.end62.i.ov5693_init_controls.exit.thread176_crit_edge

if.end62.i.ov5693_init_controls.exit.thread176_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_init_controls.exit.thread176

ov5693_init_controls.exit.thread:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  %lock69.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %74 = ptrtoint ptr %lock69.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %lock, ptr %lock69.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 9, i32 8
  %75 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %ctrls1.i, ptr %ctrl_handler.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #11
  br label %if.end49

ov5693_init_controls.exit.thread176:              ; preds = %if.end62.i.ov5693_init_controls.exit.thread176_crit_edge, %if.end57.i.ov5693_init_controls.exit.thread176_crit_edge
  %ret.0.i159.ph = phi i32 [ %call64.i, %if.end62.i.ov5693_init_controls.exit.thread176_crit_edge ], [ %call59.i, %if.end57.i.ov5693_init_controls.exit.thread176_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #11
  br label %cleanup

ov5693_init_controls.exit:                        ; preds = %if.end36.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.37) #14
  %76 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %error.i, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool47.not = icmp eq i32 %77, 0
  br i1 %tobool47.not, label %ov5693_init_controls.exit.if.end49_crit_edge, label %ov5693_init_controls.exit.cleanup_crit_edge

ov5693_init_controls.exit.cleanup_crit_edge:      ; preds = %ov5693_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ov5693_init_controls.exit.if.end49_crit_edge:     ; preds = %ov5693_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.end49:                                         ; preds = %ov5693_init_controls.exit.if.end49_crit_edge, %ov5693_init_controls.exit.thread
  %pad = getelementptr inbounds %struct.ov5693_device, ptr %call.i, i32 0, i32 10
  %call53 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end49.err_ctrl_handler_free_crit_edge

if.end49.err_ctrl_handler_free_crit_edge:         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_ctrl_handler_free

if.end56:                                         ; preds = %if.end49
  %call57 = call fastcc i32 @ov5693_sensor_powerup(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.err_ctrl_handler_free_crit_edge

if.end56.err_ctrl_handler_free_crit_edge:         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_ctrl_handler_free

if.end60:                                         ; preds = %if.end56
  %call61 = call fastcc i32 @ov5693_detect(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.err_powerdown_crit_edge

if.end60.err_powerdown_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_powerdown

if.end64:                                         ; preds = %if.end60
  %call.i161 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %78 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !156
  call void @pm_runtime_enable(ptr noundef %dev) #11
  %call70 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef %sd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end77, label %do.end75

do.end75:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call70) #14
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  br label %err_powerdown

if.end77:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #11
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i162 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #11
  br label %cleanup

err_powerdown:                                    ; preds = %do.end75, %if.end60.err_powerdown_crit_edge
  %ret.0 = phi i32 [ %call61, %if.end60.err_powerdown_crit_edge ], [ %call70, %do.end75 ]
  call fastcc void @ov5693_sensor_powerdown(ptr noundef nonnull %call.i)
  br label %err_ctrl_handler_free

err_ctrl_handler_free:                            ; preds = %err_powerdown, %if.end56.err_ctrl_handler_free_crit_edge, %if.end49.err_ctrl_handler_free_crit_edge
  %ret.2 = phi i32 [ %call53, %if.end49.err_ctrl_handler_free_crit_edge ], [ %call57, %if.end56.err_ctrl_handler_free_crit_edge ], [ %ret.0, %err_powerdown ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_ctrl_handler_free, %if.end77, %ov5693_init_controls.exit.cleanup_crit_edge, %ov5693_init_controls.exit.thread176, %ov5693_init_controls.exit.thread173, %if.then34, %ov5693_configure_gpios.exit.cleanup_crit_edge, %do.end15, %ov5693_check_hwcfg.exit.thread166, %ov5693_check_hwcfg.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %do.end15 ], [ %call36, %if.then34 ], [ %ret.2, %err_ctrl_handler_free ], [ 0, %if.end77 ], [ -12, %entry.cleanup_crit_edge ], [ %33, %ov5693_configure_gpios.exit.cleanup_crit_edge ], [ %77, %ov5693_init_controls.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %ov5693_check_hwcfg.exit.thread ], [ -22, %ov5693_check_hwcfg.exit.thread166 ], [ %call.i154, %ov5693_init_controls.exit.thread173 ], [ %ret.0.i159.ph, %ov5693_init_controls.exit.thread176 ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov5693_sensor_powerdown(ptr noundef %ov5693) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 3
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #11
  %powerdown = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 4
  %2 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerdown, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #11
  %supplies = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 5
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #11
  %clk = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5693_sensor_powerup(ptr noundef %ov5693) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 3
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #11
  %powerdown = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 4
  %2 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerdown, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #11
  %clk = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fail_power_crit_edge

entry.fail_power_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_power

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %fail_power

if.end:                                           ; preds = %if.end.i
  %supplies = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 5
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %if.end.fail_power_crit_edge

if.end.fail_power_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_power

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %powerdown, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #11
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #11
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7500, i32 noundef 2) #11
  br label %cleanup

fail_power:                                       ; preds = %if.end.fail_power_crit_edge, %if.then3.i, %entry.fail_power_crit_edge
  %.str.47.sink = phi ptr [ @.str.44, %entry.fail_power_crit_edge ], [ @.str.44, %if.then3.i ], [ @.str.47, %if.end.fail_power_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %entry.fail_power_crit_edge ], [ %call1.i, %if.then3.i ], [ %call1, %if.end.fail_power_crit_edge ]
  %dev7 = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 1
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull %.str.47.sink) #14
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 1) #11
  %14 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %powerdown, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #11
  %supplies.i = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 5
  %call.i21 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #11
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #11
  tail call void @clk_unprepare(ptr noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %fail_power, %if.end8
  %retval.0 = phi i32 [ %ret.0, %fail_power ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5693_detect(ptr nocapture noundef readonly %ov5693) unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  %val.i = alloca [4 x i8], align 4
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ov5693 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ov5693, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #11
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %addr3.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr3.i, align 2
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %3, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %reg.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %11 = load i16, ptr %addr3.i, align 2
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %14 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %val.i, ptr %buf8.i, align 4
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 12298, ptr %reg.i, align 2
  %16 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %len7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5693_read_reg.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i, align 4
  %conv19.i = zext i8 %20 to i32
  %shl.i.1 = shl nuw nsw i32 %conv19.i, 8
  %arrayidx18.i.1 = getelementptr inbounds [4 x i8], ptr %val.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx18.i.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18.i.1, align 1
  %conv19.i.1 = zext i8 %22 to i32
  %or.i.1 = or i32 %shl.i.1, %conv19.i.1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 22160, i32 %or.i.1)
  %cmp.not = icmp eq i32 %or.i.1, 22160
  br i1 %cmp.not, label %for.body.i.preheader.cleanup_crit_edge, label %for.body.i.preheader.if.then1_crit_edge

for.body.i.preheader.if.then1_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

for.body.i.preheader.cleanup_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ov5693_read_reg.exit:                             ; preds = %entry
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call15.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev.i, i32 noundef %call.i, ptr noundef nonnull @.str.39, i32 noundef 12298, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not = icmp eq i32 %call15.i, 0
  br i1 %tobool.not, label %ov5693_read_reg.exit.if.then1_crit_edge, label %ov5693_read_reg.exit.cleanup_crit_edge

ov5693_read_reg.exit.cleanup_crit_edge:           ; preds = %ov5693_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ov5693_read_reg.exit.if.then1_crit_edge:          ; preds = %ov5693_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

if.then1:                                         ; preds = %ov5693_read_reg.exit.if.then1_crit_edge, %for.body.i.preheader.if.then1_crit_edge
  %id.01114 = phi i32 [ %or.i.1, %for.body.i.preheader.if.then1_crit_edge ], [ -1, %ov5693_read_reg.exit.if.then1_crit_edge ]
  %dev = getelementptr inbounds %struct.ov5693_device, ptr %ov5693, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call2 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %24, i32 noundef -19, ptr noundef nonnull @.str.49, i32 noundef %id.01114) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %ov5693_read_reg.exit.cleanup_crit_edge, %for.body.i.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %call15.i, %ov5693_read_reg.exit.cleanup_crit_edge ], [ 0, %for.body.i.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #11, !srcloc !158
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i41 = alloca %struct.anon.101, align 2
  %msg.i.i42 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca %struct.anon.101, align 2
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sd, i32 -220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dev = getelementptr i8, ptr %sd, i32 -216
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.err_power_down_crit_edge, label %if.end

if.then.err_power_down_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_power_down

if.end:                                           ; preds = %if.then
  %lock = getelementptr i8, ptr %sd, i32 -212
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %ctrls = getelementptr i8, ptr %sd, i32 228
  %call2 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %ctrls) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %err_power_down

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #11
  %4 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 33554431, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #11
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 262143, ptr %6, align 4
  %addr3.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %addr3.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr3.i.i, align 2
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i.i, ptr %buf4.i.i, align 4
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %buf.i.i, align 2
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp15.i.i, label %if.end12, label %if.end15

if.else:                                          ; preds = %entry
  %lock9 = getelementptr i8, ptr %sd, i32 -212
  tail call void @mutex_lock_nested(ptr noundef %lock9, i32 noundef 0) #11
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i41) #11
  %18 = getelementptr inbounds i8, ptr %buf.i.i41, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 16777215, ptr %18, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i42) #11
  %20 = getelementptr inbounds i8, ptr %msg.i.i42, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262143, ptr %20, align 4
  %addr3.i.i43 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %addr3.i.i43 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr3.i.i43, align 2
  %24 = ptrtoint ptr %msg.i.i42 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %msg.i.i42, align 4
  %flags.i.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i42, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i.i44 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i.i44, align 2
  %buf4.i.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i42, i32 0, i32 3
  %26 = ptrtoint ptr %buf4.i.i45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i.i41, ptr %buf4.i.i45, align 4
  %27 = ptrtoint ptr %buf.i.i41 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 256, ptr %buf.i.i41, align 2
  %adapter.i.i46 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %28 = ptrtoint ptr %adapter.i.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i.i46, align 8
  %call.i.i47 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i.i42, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %cmp15.i.i48 = icmp slt i32 %call.i.i47, 0
  br i1 %cmp15.i.i48, label %if.end12.thread, label %if.then19

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.24, i32 noundef 256, i32 noundef %call.i.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %err_power_down

if.end12.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i49 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i49, ptr noundef nonnull @.str.24, i32 noundef 256, i32 noundef %call.i.i47) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i42) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i41) #11
  call void @mutex_unlock(ptr noundef %lock9) #11
  br label %err_power_down

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  %streaming = getelementptr i8, ptr %sd, i32 -4
  %30 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %streaming, align 4
  br label %cleanup

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i42) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i41) #11
  call void @mutex_unlock(ptr noundef %lock9) #11
  %streaming56 = getelementptr i8, ptr %sd, i32 -4
  %31 = ptrtoint ptr %streaming56 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %streaming56, align 4
  %dev20 = getelementptr i8, ptr %sd, i32 -216
  %32 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev20, align 4
  %call.i53 = call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 5) #11
  br label %cleanup

err_power_down:                                   ; preds = %if.end12.thread, %if.end12, %if.then4, %if.then.err_power_down_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then.err_power_down_crit_edge ], [ %call2, %if.then4 ], [ %call.i.i, %if.end12 ], [ %call.i.i47, %if.end12.thread ]
  %dev23 = getelementptr i8, ptr %sd, i32 -216
  %34 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev23, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !158
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_power_down.cleanup_crit_edge, label %do.end11.i.i.i.i

err_power_down.cleanup_crit_edge:                 ; preds = %err_power_down
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %err_power_down
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %err_power_down.cleanup_crit_edge, %if.then19, %if.end15
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.end15 ], [ %ret.1, %err_power_down.cleanup_crit_edge ], [ %ret.1, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5693_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %interval) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %height = getelementptr i8, ptr %sd, i32 -64
  %0 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height, align 4
  %vblank = getelementptr i8, ptr %sd, i32 444
  %2 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vblank, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %add = add i32 %5, %1
  %mul = mul i32 %add, 2688
  %div9 = lshr exact i32 %mul, 1
  %add2 = add nuw i32 %div9, 167680000
  %div3 = udiv i32 %add2, %mul
  %interval4 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %interval, i32 0, i32 1
  %6 = ptrtoint ptr %interval4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %interval4, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %interval, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div3, ptr %denominator, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5693_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12295, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_enum_frame_size(ptr noundef readonly %sd, ptr nocapture noundef readonly %state, ptr nocapture noundef %fse) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12295, i32 %3)
  %cmp1.not = icmp eq i32 %3, 12295
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %4 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %which, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %8, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !160

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1016, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %8, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %12, i32 %spec.select.i.i, i32 1
  br label %__ov5693_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mode.i = getelementptr i8, ptr %sd, i32 -84
  br label %__ov5693_get_pad_crop.exit

__ov5693_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i = phi ptr [ %mode.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__ov5693_get_pad_crop.exit.cleanup_crit_edge, label %if.end3

__ov5693_get_pad_crop.exit.cleanup_crit_edge:     ; preds = %__ov5693_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %__ov5693_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %15 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fse, align 4
  %add = add i32 %16, 1
  %div = udiv i32 %14, %add
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %17 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %min_width, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %div7 = udiv i32 %19, %add
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %20 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div7, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %21 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %22 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div7, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %__ov5693_get_pad_crop.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %__ov5693_get_pad_crop.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5693_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %state, ptr nocapture noundef writeonly %format) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %format2 = getelementptr i8, ptr %sd, i32 -68
  %0 = call ptr @memcpy(ptr %format1, ptr %format2, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %1, label %entry.__ov5693_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__ov5693_get_pad_crop.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ov5693_get_pad_crop.exit

sw.bb.i:                                          ; preds = %entry
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !160

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1016, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i, i32 1
  br label %__ov5693_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mode.i = getelementptr i8, ptr %sd, i32 -84
  br label %__ov5693_get_pad_crop.exit

__ov5693_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %entry.__ov5693_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %mode.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %entry.__ov5693_get_pad_crop.exit_crit_edge ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format1, align 4
  %add = add i32 %10, 1
  %and = and i32 %add, -2
  %11 = tail call i32 @llvm.umax.i32(i32 %and, i32 2)
  %width4 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width4, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %height12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height12, align 4
  %add13 = add i32 %16, 1
  %and14 = and i32 %add13, -2
  %17 = tail call i32 @llvm.umax.i32(i32 %and14, i32 2)
  %height21 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height21, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %17, i32 %19)
  %div212 = lshr i32 %14, 1
  %add30 = add i32 %div212, %13
  %div31 = udiv i32 %add30, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div31)
  %cmp33 = icmp ugt i32 %div31, 1
  %div48213 = lshr i32 %20, 1
  %add49 = add i32 %div48213, %19
  %div50 = udiv i32 %add49, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div50)
  %cmp52 = icmp ugt i32 %div50, 1
  %21 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %22, label %__ov5693_get_pad_crop.exit.__ov5693_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i217
    i32 1, label %sw.bb1.i220
  ]

__ov5693_get_pad_crop.exit.__ov5693_get_pad_format.exit_crit_edge: ; preds = %__ov5693_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ov5693_get_pad_format.exit

sw.bb.i217:                                       ; preds = %__ov5693_get_pad_crop.exit
  %24 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pad, align 4
  %num_pads.i.i214 = getelementptr i8, ptr %sd, i32 32
  %26 = ptrtoint ptr %num_pads.i.i214 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_pads.i.i214, align 4
  %conv.i.i215 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i.i215)
  %cmp.not.i.i216 = icmp ult i32 %25, %conv.i.i215
  br i1 %cmp.not.i.i216, label %sw.bb.i217.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i218, !prof !160

sw.bb.i217.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i218:                                    ; preds = %sw.bb.i217
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i218, %sw.bb.i217.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i219 = phi i32 [ 0, %do.end.i.i218 ], [ %25, %sw.bb.i217.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %29, i32 %spec.select.i.i219
  br label %__ov5693_get_pad_format.exit

sw.bb1.i220:                                      ; preds = %__ov5693_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %format.i = getelementptr i8, ptr %sd, i32 -68
  br label %__ov5693_get_pad_format.exit

__ov5693_get_pad_format.exit:                     ; preds = %sw.bb1.i220, %v4l2_subdev_get_try_format.exit.i, %__ov5693_get_pad_crop.exit.__ov5693_get_pad_format.exit_crit_edge
  %retval.0.i221 = phi ptr [ %format.i, %sw.bb1.i220 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %__ov5693_get_pad_crop.exit.__ov5693_get_pad_format.exit_crit_edge ]
  %30 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width4, align 4
  %32 = zext i1 %cmp33 to i32
  %div67222 = lshr i32 %31, %32
  %33 = ptrtoint ptr %retval.0.i221 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div67222, ptr %retval.0.i221, align 4
  %34 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height21, align 4
  %36 = zext i1 %cmp52 to i32
  %div70223 = lshr i32 %35, %36
  %height71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i221, i32 0, i32 1
  %37 = ptrtoint ptr %height71 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div70223, ptr %height71, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i221, i32 0, i32 2
  %38 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 12295, ptr %code, align 4
  %39 = call ptr @memcpy(ptr %format1, ptr %retval.0.i221, i32 48)
  %40 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp74 = icmp eq i32 %41, 0
  br i1 %cmp74, label %__ov5693_get_pad_format.exit.cleanup_crit_edge, label %if.end

__ov5693_get_pad_format.exit.cleanup_crit_edge:   ; preds = %__ov5693_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %__ov5693_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr i8, ptr %sd, i32 -212
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %binning_x = getelementptr i8, ptr %sd, i32 -20
  %frombool = zext i1 %cmp33 to i8
  %42 = ptrtoint ptr %binning_x to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool, ptr %binning_x, align 4
  %cond78 = select i1 %cmp33, i32 3, i32 1
  %inc_x_odd = getelementptr i8, ptr %sd, i32 -16
  %43 = ptrtoint ptr %inc_x_odd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond78, ptr %inc_x_odd, align 4
  %binning_y = getelementptr i8, ptr %sd, i32 -19
  %frombool84 = zext i1 %cmp52 to i8
  %44 = ptrtoint ptr %binning_y to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool84, ptr %binning_y, align 1
  %cond86 = select i1 %cmp52, i32 3, i32 1
  %inc_y_odd = getelementptr i8, ptr %sd, i32 -12
  %45 = ptrtoint ptr %inc_y_odd to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond86, ptr %inc_y_odd, align 4
  %46 = ptrtoint ptr %height71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height71, align 4
  %div.i = udiv i32 62380, %47
  %rem.lhs.trunc.i = trunc i32 %div.i to i16
  %rem4.i = urem i16 %rem.lhs.trunc.i, 30
  %rem.zext.i = zext i16 %rem4.i to i32
  %sub.i = sub nsw i32 %div.i, %rem.zext.i
  %div1.i = udiv i32 62380, %sub.i
  %and.i = and i32 %div1.i, 65534
  %vts = getelementptr i8, ptr %sd, i32 -8
  %48 = ptrtoint ptr %vts to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and.i, ptr %vts, align 4
  %vblank = getelementptr i8, ptr %sd, i32 444
  %49 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vblank, align 4
  %51 = load i32, ptr %height71, align 4
  %sub = sub i32 65535, %51
  %conv = zext i32 %sub to i64
  %sub95 = sub i32 %and.i, %51
  %conv96 = zext i32 %sub95 to i64
  %call97 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %50, i64 noundef 4, i64 noundef %conv, i64 noundef 1, i64 noundef %conv96) #11
  %52 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vblank, align 4
  %54 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vts, align 4
  %56 = ptrtoint ptr %height71 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height71, align 4
  %sub103 = sub i32 %55, %57
  %call104 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %53, i32 noundef %sub103) #11
  %58 = ptrtoint ptr %retval.0.i221 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %retval.0.i221, align 4
  %sub106 = sub i32 2688, %59
  %hblank108 = getelementptr i8, ptr %sd, i32 440
  %60 = ptrtoint ptr %hblank108 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hblank108, align 4
  %conv109 = zext i32 %sub106 to i64
  %call112 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %61, i64 noundef %conv109, i64 noundef %conv109, i64 noundef 1, i64 noundef %conv109) #11
  %62 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vts, align 4
  %sub115 = add i32 %63, -8
  %exposure = getelementptr i8, ptr %sd, i32 420
  %64 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %minimum, align 8
  %conv119 = sext i32 %sub115 to i64
  %68 = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 18
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %68, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 22
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val, align 4
  %73 = tail call i32 @llvm.smin.i32(i32 %72, i32 %sub115)
  %conv131 = sext i32 %73 to i64
  %call132 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %65, i64 noundef %67, i64 noundef %conv119, i64 noundef %70, i64 noundef %conv131) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__ov5693_get_pad_format.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %entry.sw.bb7_crit_edge
    i32 1, label %entry.sw.bb7_crit_edge29
  ]

entry.sw.bb7_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 -212
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %3 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %4, label %sw.bb.__ov5693_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.__ov5693_get_pad_crop.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ov5693_get_pad_crop.exit

sw.bb.i:                                          ; preds = %sw.bb
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %7, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !160

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1016, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %7, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i.i, i32 1
  br label %__ov5693_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %mode.i = getelementptr i8, ptr %sd, i32 -84
  br label %__ov5693_get_pad_crop.exit

__ov5693_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %sw.bb.__ov5693_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %mode.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %sw.bb.__ov5693_get_pad_crop.exit_crit_edge ]
  %12 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %r3 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %top, align 4
  %14 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %r3, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2624, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1956, ptr %height, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge29
  %r8 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %top9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %top9, align 4
  %18 = ptrtoint ptr %r8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %r8, align 4
  %width13 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %width13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2592, ptr %width13, align 4
  %height15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %height15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1944, ptr %height15, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb2, %__ov5693_get_pad_crop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb7 ], [ 0, %sw.bb2 ], [ 0, %__ov5693_get_pad_crop.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_set_selection(ptr nocapture noundef %sd, ptr nocapture noundef readonly %state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  %add = add i32 %3, 1
  %and = and i32 %add, -2
  %4 = tail call i32 @llvm.smax.i32(i32 %and, i32 0)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 2624)
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %add11 = add i32 %7, 1
  %and12 = and i32 %add11, -2
  %8 = tail call i32 @llvm.smax.i32(i32 %and12, i32 0)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 1956)
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %add27 = add i32 %11, 1
  %and28 = and i32 %add27, -2
  %12 = tail call i32 @llvm.umax.i32(i32 %and28, i32 2)
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %add43 = add i32 %14, 1
  %and44 = and i32 %add43, -2
  %15 = tail call i32 @llvm.umax.i32(i32 %and44, i32 2)
  %sub = sub nuw nsw i32 2624, %5
  %16 = tail call i32 @llvm.umin.i32(i32 %12, i32 %sub)
  %sub69 = sub nuw nsw i32 1956, %9
  %17 = tail call i32 @llvm.umin.i32(i32 %15, i32 %sub69)
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %18 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sel, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %19, label %if.end.__ov5693_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__ov5693_get_pad_crop.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ov5693_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end
  %21 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %23 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %22, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !160

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1016, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %22, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 %spec.select.i.i, i32 1
  br label %__ov5693_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mode.i = getelementptr i8, ptr %sd, i32 -84
  br label %__ov5693_get_pad_crop.exit

__ov5693_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__ov5693_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %mode.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__ov5693_get_pad_crop.exit_crit_edge ]
  %width78 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %27 = ptrtoint ptr %width78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %28)
  %cmp79.not = icmp eq i32 %16, %28
  br i1 %cmp79.not, label %lor.lhs.false, label %__ov5693_get_pad_crop.exit.if.then83_crit_edge

__ov5693_get_pad_crop.exit.if.then83_crit_edge:   ; preds = %__ov5693_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

lor.lhs.false:                                    ; preds = %__ov5693_get_pad_crop.exit
  %height81 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %29 = ptrtoint ptr %height81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %30)
  %cmp82.not = icmp eq i32 %17, %30
  br i1 %cmp82.not, label %lor.lhs.false.if.end91_crit_edge, label %lor.lhs.false.if.then83_crit_edge

lor.lhs.false.if.then83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

lor.lhs.false.if.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then83:                                        ; preds = %lor.lhs.false.if.then83_crit_edge, %__ov5693_get_pad_crop.exit.if.then83_crit_edge
  %31 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sel, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %32, label %if.then83.__ov5693_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i141
    i32 1, label %sw.bb1.i144
  ]

if.then83.__ov5693_get_pad_format.exit_crit_edge: ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ov5693_get_pad_format.exit

sw.bb.i141:                                       ; preds = %if.then83
  %34 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pad, align 4
  %num_pads.i.i138 = getelementptr i8, ptr %sd, i32 32
  %36 = ptrtoint ptr %num_pads.i.i138 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_pads.i.i138, align 4
  %conv.i.i139 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i.i139)
  %cmp.not.i.i140 = icmp ult i32 %35, %conv.i.i139
  br i1 %cmp.not.i.i140, label %sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i142, !prof !160

sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i141
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i142:                                    ; preds = %sw.bb.i141
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i142, %sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i143 = phi i32 [ 0, %do.end.i.i142 ], [ %35, %sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %39, i32 %spec.select.i.i143
  br label %__ov5693_get_pad_format.exit

sw.bb1.i144:                                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %format.i = getelementptr i8, ptr %sd, i32 -68
  br label %__ov5693_get_pad_format.exit

__ov5693_get_pad_format.exit:                     ; preds = %sw.bb1.i144, %v4l2_subdev_get_try_format.exit.i, %if.then83.__ov5693_get_pad_format.exit_crit_edge
  %retval.0.i145 = phi ptr [ %format.i, %sw.bb1.i144 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.then83.__ov5693_get_pad_format.exit_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i145 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %16, ptr %retval.0.i145, align 4
  %height90 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i145, i32 0, i32 1
  %41 = ptrtoint ptr %height90 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %17, ptr %height90, align 4
  br label %if.end91

if.end91:                                         ; preds = %__ov5693_get_pad_format.exit, %lor.lhs.false.if.end91_crit_edge
  %42 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %5, ptr %retval.0.i, align 4
  %rect.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 4
  %43 = ptrtoint ptr %rect.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %9, ptr %rect.sroa.7.0..sroa_idx, align 4
  %44 = ptrtoint ptr %width78 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %16, ptr %width78, align 4
  %rect.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 12
  %45 = ptrtoint ptr %rect.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %17, ptr %rect.sroa.16.0..sroa_idx, align 4
  %46 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %5, ptr %r, align 4
  %47 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %9, ptr %top, align 4
  %48 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %16, ptr %width, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %17, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @ov5693_g_volatile_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  %reg.i.i8 = alloca i16, align 2
  %val.i.i9 = alloca [4 x i8], align 4
  %msg.i.i10 = alloca [2 x %struct.i2c_msg], align 4
  %reg.i.i = alloca i16, align 2
  %val.i.i = alloca [4 x i8], align 4
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -448
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10094850, label %sw.bb
    i32 9963794, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #11
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %addr3.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %addr3.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr3.i.i, align 2
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %8, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reg.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %16 = load i16, ptr %addr3.i.i, align 2
  %17 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %val.i.i, ptr %buf8.i.i, align 4
  %20 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 13568, ptr %reg.i.i, align 2
  %21 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 3, ptr %len7.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %ov5693_read_reg.exit.i, label %for.body.i.preheader.i

for.body.i.preheader.i:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i.i, align 4
  %conv19.i.i = zext i8 %25 to i32
  %arrayidx18.i.1.i = getelementptr inbounds [4 x i8], ptr %val.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx18.i.1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx18.i.1.i, align 1
  %conv19.i.1.i = zext i8 %27 to i32
  %28 = shl nuw nsw i32 %conv19.i.i, 16
  %29 = shl nuw nsw i32 %conv19.i.1.i, 8
  %shl.i.2.i = or i32 %29, %28
  %arrayidx18.i.2.i = getelementptr inbounds [4 x i8], ptr %val.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx18.i.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx18.i.2.i, align 2
  %conv19.i.2.i = zext i8 %31 to i32
  %or.i.2.i = or i32 %shl.i.2.i, %conv19.i.2.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #11
  %phi.bo.i = lshr i32 %or.i.2.i, 4
  br label %if.end.i

ov5693_read_reg.exit.i:                           ; preds = %sw.bb
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %call15.i.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev.i.i, i32 noundef %call.i.i, ptr noundef nonnull @.str.39, i32 noundef 13568, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool.not.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool.not.i, label %ov5693_read_reg.exit.i.if.end.i_crit_edge, label %ov5693_read_reg.exit.i.cleanup_crit_edge

ov5693_read_reg.exit.i.cleanup_crit_edge:         ; preds = %ov5693_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ov5693_read_reg.exit.i.if.end.i_crit_edge:        ; preds = %ov5693_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %ov5693_read_reg.exit.i.if.end.i_crit_edge, %for.body.i.preheader.i
  %exposure.07.i = phi i32 [ %phi.bo.i, %for.body.i.preheader.i ], [ 268435455, %ov5693_read_reg.exit.i.if.end.i_crit_edge ]
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %exposure.07.i, ptr %val, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i9) #11
  %35 = ptrtoint ptr %val.i.i9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i.i9, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i10) #11
  %36 = getelementptr inbounds i8, ptr %msg.i.i10, i32 4
  %37 = call ptr @memset(ptr %36, i32 255, i32 16)
  %addr3.i.i11 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %addr3.i.i11 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr3.i.i11, align 2
  %40 = ptrtoint ptr %msg.i.i10 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %msg.i.i10, align 4
  %flags.i.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i.i12 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i.i12, align 2
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %36, align 4
  %buf.i.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i.i13 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %reg.i.i8, ptr %buf.i.i13, align 4
  %arrayinit.element.i.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 1
  %44 = load i16, ptr %addr3.i.i11, align 2
  %45 = ptrtoint ptr %arrayinit.element.i.i14 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayinit.element.i.i14, align 4
  %flags6.i.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 1, i32 1
  %46 = ptrtoint ptr %flags6.i.i15 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %flags6.i.i15, align 2
  %len7.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 1, i32 2
  %buf8.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 1, i32 3
  %47 = ptrtoint ptr %buf8.i.i17 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %val.i.i9, ptr %buf8.i.i17, align 4
  %48 = ptrtoint ptr %reg.i.i8 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 13578, ptr %reg.i.i8, align 2
  %49 = ptrtoint ptr %len7.i.i16 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 2, ptr %len7.i.i16, align 4
  %adapter.i.i18 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 3
  %50 = ptrtoint ptr %adapter.i.i18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i.i18, align 8
  %call.i.i19 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i.i10, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %cmp.i.i20 = icmp slt i32 %call.i.i19, 0
  br i1 %cmp.i.i20, label %ov5693_read_reg.exit.i29, label %for.body.i.preheader.i25

for.body.i.preheader.i25:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %val.i.i9 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %val.i.i9, align 4
  %conv19.i.i21 = zext i8 %53 to i32
  %shl.i.1.i = shl nuw nsw i32 %conv19.i.i21, 8
  %arrayidx18.i.1.i22 = getelementptr inbounds [4 x i8], ptr %val.i.i9, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx18.i.1.i22 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx18.i.1.i22, align 1
  %conv19.i.1.i23 = zext i8 %55 to i32
  %or.i.1.i = or i32 %shl.i.1.i, %conv19.i.1.i23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i8) #11
  %phi.bo.i24 = lshr i32 %or.i.1.i, 4
  br label %if.end.i30

ov5693_read_reg.exit.i29:                         ; preds = %sw.bb1
  %dev.i.i26 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %call15.i.i27 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev.i.i26, i32 noundef %call.i.i19, ptr noundef nonnull @.str.39, i32 noundef 13578, i32 noundef %call.i.i19) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i27)
  %tobool.not.i28 = icmp eq i32 %call15.i.i27, 0
  br i1 %tobool.not.i28, label %ov5693_read_reg.exit.i29.if.end.i30_crit_edge, label %ov5693_read_reg.exit.i29.cleanup_crit_edge

ov5693_read_reg.exit.i29.cleanup_crit_edge:       ; preds = %ov5693_read_reg.exit.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ov5693_read_reg.exit.i29.if.end.i30_crit_edge:    ; preds = %ov5693_read_reg.exit.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i30

if.end.i30:                                       ; preds = %ov5693_read_reg.exit.i29.if.end.i30_crit_edge, %for.body.i.preheader.i25
  %value.08.i = phi i32 [ %phi.bo.i24, %for.body.i.preheader.i25 ], [ 268435455, %ov5693_read_reg.exit.i29.if.end.i30_crit_edge ]
  %56 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %value.08.i, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i30, %ov5693_read_reg.exit.i29.cleanup_crit_edge, %if.end.i, %ov5693_read_reg.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ %call15.i.i, %ov5693_read_reg.exit.i.cleanup_crit_edge ], [ %call15.i.i27, %ov5693_read_reg.exit.i29.cleanup_crit_edge ], [ 0, %if.end.i30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i.i119 = alloca %struct.anon.101, align 2
  %msg.i.i120 = alloca %struct.i2c_msg, align 4
  %buf.i.i104 = alloca %struct.anon.101, align 2
  %msg.i.i105 = alloca %struct.i2c_msg, align 4
  %buf.i30.i = alloca %struct.anon.101, align 2
  %msg.i31.i = alloca %struct.i2c_msg, align 4
  %buf.i6.i = alloca %struct.anon.101, align 2
  %msg.i7.i = alloca %struct.i2c_msg, align 4
  %buf.i.i86 = alloca %struct.anon.101, align 2
  %msg.i.i87 = alloca %struct.i2c_msg, align 4
  %buf.i.i70 = alloca %struct.anon.101, align 2
  %msg.i.i71 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca %struct.anon.101, align 2
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -448
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10356993, i32 %3)
  %cmp = icmp eq i32 %3, 10356993
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %height = getelementptr i8, ptr %1, i32 -292
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %add = add i32 %5, -8
  %sub = add i32 %add, %7
  %exposure = getelementptr inbounds %struct.ov5693_v4l2_ctrls, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %minimum, align 8
  %conv = sext i32 %sub to i64
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 18
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %15 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val7, align 4
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %sub)
  %conv11 = sext i32 %17 to i64
  %call = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %9, i64 noundef %11, i64 noundef %conv, i64 noundef %14, i64 noundef %conv11) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr i8, ptr %1, i32 -444
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %19, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %21, label %if.end14.sw.epilog_crit_edge [
    i32 9963793, label %sw.bb
    i32 10356995, label %sw.bb18
    i32 10422533, label %sw.bb21
    i32 9963796, label %sw.bb24
    i32 9963797, label %sw.bb29
    i32 10356993, label %sw.bb35
    i32 10422531, label %sw.bb38
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val16, align 4
  %shl.i = shl i32 %24, 4
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #11
  %27 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 -1, ptr %27, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #11
  %29 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 393215, ptr %29, align 4
  %addr3.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %addr3.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr3.i.i, align 2
  %33 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i.i, ptr %buf4.i.i, align 4
  %36 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 13568, ptr %buf.i.i, align 2
  %conv10.i.i = trunc i32 %shl.i to i8
  %arrayidx.i.i = getelementptr inbounds %struct.anon.101, ptr %buf.i.i, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv10.i.i, ptr %arrayidx.i.i, align 2
  %and.i = lshr i32 %shl.i, 8
  %conv10.i.1.i = trunc i32 %and.i to i8
  %arrayidx.i.1.i = getelementptr inbounds %struct.anon.101, ptr %buf.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv10.i.1.i, ptr %arrayidx.i.1.i, align 1
  %shr12.i.i = lshr i32 %shl.i, 16
  %39 = trunc i32 %shr12.i.i to i8
  %conv10.i.2.i = and i8 %39, 15
  %40 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv10.i.2.i, ptr %27, align 2
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %41 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp15.i.i, label %do.end.i.i, label %sw.bb.ov5693_exposure_configure.exit_crit_edge

sw.bb.ov5693_exposure_configure.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_exposure_configure.exit

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.24, i32 noundef 13568, i32 noundef %call.i.i) #14
  br label %ov5693_exposure_configure.exit

ov5693_exposure_configure.exit:                   ; preds = %do.end.i.i, %sw.bb.ov5693_exposure_configure.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %do.end.i.i ], [ 0, %sw.bb.ov5693_exposure_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #11
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end14
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %43 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val19, align 4
  %shl.i72 = shl i32 %44, 4
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i70) #11
  %47 = getelementptr inbounds i8, ptr %buf.i.i70, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 -1, ptr %47, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i71) #11
  %49 = getelementptr inbounds i8, ptr %msg.i.i71, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 327679, ptr %49, align 4
  %addr3.i.i73 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %addr3.i.i73 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %addr3.i.i73, align 2
  %53 = ptrtoint ptr %msg.i.i71 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %msg.i.i71, align 4
  %flags.i.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i.i74 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i.i74, align 2
  %buf4.i.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 0, i32 3
  %55 = ptrtoint ptr %buf4.i.i75 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf.i.i70, ptr %buf4.i.i75, align 4
  %56 = ptrtoint ptr %buf.i.i70 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 13578, ptr %buf.i.i70, align 2
  %conv10.i.i76 = trunc i32 %shl.i72 to i8
  %arrayidx.i.i77 = getelementptr inbounds %struct.anon.101, ptr %buf.i.i70, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv10.i.i76, ptr %arrayidx.i.i77, align 1
  %and.i78 = lshr i32 %shl.i72, 8
  %58 = trunc i32 %and.i78 to i8
  %conv10.i.1.i79 = and i8 %58, 7
  %59 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv10.i.1.i79, ptr %47, align 2
  %adapter.i.i80 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 3
  %60 = ptrtoint ptr %adapter.i.i80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter.i.i80, align 8
  %call.i.i81 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i.i71, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %cmp15.i.i82 = icmp slt i32 %call.i.i81, 0
  br i1 %cmp15.i.i82, label %do.end.i.i84, label %sw.bb18.ov5693_analog_gain_configure.exit_crit_edge

sw.bb18.ov5693_analog_gain_configure.exit_crit_edge: ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_analog_gain_configure.exit

do.end.i.i84:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i83 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i83, ptr noundef nonnull @.str.24, i32 noundef 13578, i32 noundef %call.i.i81) #14
  br label %ov5693_analog_gain_configure.exit

ov5693_analog_gain_configure.exit:                ; preds = %do.end.i.i84, %sw.bb18.ov5693_analog_gain_configure.exit_crit_edge
  %ret.0.i85 = phi i32 [ %call.i.i81, %do.end.i.i84 ], [ 0, %sw.bb18.ov5693_analog_gain_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i71) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i70) #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end14
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %62 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val22, align 4
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i86) #11
  %66 = getelementptr inbounds i8, ptr %buf.i.i86, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 -1, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i87) #11
  %68 = getelementptr inbounds i8, ptr %msg.i.i87, i32 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 327679, ptr %68, align 4
  %addr3.i.i88 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 1
  %70 = ptrtoint ptr %addr3.i.i88 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %addr3.i.i88, align 2
  %72 = ptrtoint ptr %msg.i.i87 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %msg.i.i87, align 4
  %flags.i.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i87, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i.i89 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i.i89, align 2
  %buf4.i.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i87, i32 0, i32 3
  %74 = ptrtoint ptr %buf4.i.i90 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %buf.i.i86, ptr %buf4.i.i90, align 4
  %75 = ptrtoint ptr %buf.i.i86 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 13312, ptr %buf.i.i86, align 2
  %conv10.i.i91 = trunc i32 %63 to i8
  %arrayidx.i.i92 = getelementptr inbounds %struct.anon.101, ptr %buf.i.i86, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv10.i.i91, ptr %arrayidx.i.i92, align 1
  %and.i93 = lshr i32 %63, 8
  %77 = trunc i32 %and.i93 to i8
  %conv10.i.1.i94 = and i8 %77, 15
  %78 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv10.i.1.i94, ptr %66, align 2
  %adapter.i.i95 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 3
  %79 = ptrtoint ptr %adapter.i.i95 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter.i.i95, align 8
  %call.i.i96 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i.i87, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96)
  %cmp15.i.i97 = icmp slt i32 %call.i.i96, 0
  br i1 %cmp15.i.i97, label %do.end.i.i99, label %sw.bb21.ov5693_write_reg.exit.i_crit_edge

sw.bb21.ov5693_write_reg.exit.i_crit_edge:        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit.i

do.end.i.i99:                                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i98 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i98, ptr noundef nonnull @.str.24, i32 noundef 13312, i32 noundef %call.i.i96) #14
  br label %ov5693_write_reg.exit.i

ov5693_write_reg.exit.i:                          ; preds = %do.end.i.i99, %sw.bb21.ov5693_write_reg.exit.i_crit_edge
  %ret.0.i100 = phi i32 [ %call.i.i96, %do.end.i.i99 ], [ 0, %sw.bb21.ov5693_write_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i87) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i86) #11
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i6.i) #11
  %83 = getelementptr inbounds i8, ptr %buf.i6.i, i32 2
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 -1, ptr %83, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7.i) #11
  %85 = getelementptr inbounds i8, ptr %msg.i7.i, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 327679, ptr %85, align 4
  %addr3.i8.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 1
  %87 = ptrtoint ptr %addr3.i8.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %addr3.i8.i, align 2
  %89 = ptrtoint ptr %msg.i7.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %msg.i7.i, align 4
  %flags.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i9.i, align 2
  %buf4.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 3
  %91 = ptrtoint ptr %buf4.i11.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %buf.i6.i, ptr %buf4.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i100)
  %cmp.i12.i = icmp slt i32 %ret.0.i100, 0
  br i1 %cmp.i12.i, label %ov5693_write_reg.exit.i.ov5693_write_reg.exit29.i_crit_edge, label %if.end.i13.i

ov5693_write_reg.exit.i.ov5693_write_reg.exit29.i_crit_edge: ; preds = %ov5693_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit29.i

if.end.i13.i:                                     ; preds = %ov5693_write_reg.exit.i
  %92 = ptrtoint ptr %buf.i6.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 13314, ptr %buf.i6.i, align 2
  %arrayidx.i18.i = getelementptr inbounds %struct.anon.101, ptr %buf.i6.i, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv10.i.i91, ptr %arrayidx.i18.i, align 1
  %94 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv10.i.1.i94, ptr %83, align 2
  %adapter.i23.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 3
  %95 = ptrtoint ptr %adapter.i23.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter.i23.i, align 8
  %call.i24.i = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i7.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %cmp15.i25.i = icmp slt i32 %call.i24.i, 0
  br i1 %cmp15.i25.i, label %do.end.i28.i, label %if.end.i13.i.ov5693_write_reg.exit29.i_crit_edge

if.end.i13.i.ov5693_write_reg.exit29.i_crit_edge: ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit29.i

do.end.i28.i:                                     ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i27.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i27.i, ptr noundef nonnull @.str.24, i32 noundef 13314, i32 noundef %call.i24.i) #14
  br label %ov5693_write_reg.exit29.i

ov5693_write_reg.exit29.i:                        ; preds = %do.end.i28.i, %if.end.i13.i.ov5693_write_reg.exit29.i_crit_edge, %ov5693_write_reg.exit.i.ov5693_write_reg.exit29.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i100, %ov5693_write_reg.exit.i.ov5693_write_reg.exit29.i_crit_edge ], [ %call.i24.i, %do.end.i28.i ], [ 0, %if.end.i13.i.ov5693_write_reg.exit29.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i6.i) #11
  %97 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i30.i) #11
  %99 = getelementptr inbounds i8, ptr %buf.i30.i, i32 2
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 -1, ptr %99, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31.i) #11
  %101 = getelementptr inbounds i8, ptr %msg.i31.i, i32 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 327679, ptr %101, align 4
  %addr3.i32.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %103 = ptrtoint ptr %addr3.i32.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %addr3.i32.i, align 2
  %105 = ptrtoint ptr %msg.i31.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %msg.i31.i, align 4
  %flags.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i33.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i33.i, align 2
  %buf4.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf4.i35.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i30.i, ptr %buf4.i35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp.i36.i = icmp slt i32 %ret.1.i, 0
  br i1 %cmp.i36.i, label %ov5693_write_reg.exit29.i.ov5693_digital_gain_configure.exit_crit_edge, label %if.end.i37.i

ov5693_write_reg.exit29.i.ov5693_digital_gain_configure.exit_crit_edge: ; preds = %ov5693_write_reg.exit29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_digital_gain_configure.exit

if.end.i37.i:                                     ; preds = %ov5693_write_reg.exit29.i
  %108 = ptrtoint ptr %buf.i30.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 13316, ptr %buf.i30.i, align 2
  %arrayidx.i42.i = getelementptr inbounds %struct.anon.101, ptr %buf.i30.i, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv10.i.i91, ptr %arrayidx.i42.i, align 1
  %110 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv10.i.1.i94, ptr %99, align 2
  %adapter.i47.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 3
  %111 = ptrtoint ptr %adapter.i47.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %adapter.i47.i, align 8
  %call.i48.i = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msg.i31.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp15.i49.i = icmp slt i32 %call.i48.i, 0
  br i1 %cmp15.i49.i, label %do.end.i52.i, label %if.end.i37.i.ov5693_digital_gain_configure.exit_crit_edge

if.end.i37.i.ov5693_digital_gain_configure.exit_crit_edge: ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_digital_gain_configure.exit

do.end.i52.i:                                     ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i51.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i51.i, ptr noundef nonnull @.str.24, i32 noundef 13316, i32 noundef %call.i48.i) #14
  br label %ov5693_digital_gain_configure.exit

ov5693_digital_gain_configure.exit:               ; preds = %do.end.i52.i, %if.end.i37.i.ov5693_digital_gain_configure.exit_crit_edge, %ov5693_write_reg.exit29.i.ov5693_digital_gain_configure.exit_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %ov5693_write_reg.exit29.i.ov5693_digital_gain_configure.exit_crit_edge ], [ %call.i48.i, %do.end.i52.i ], [ 0, %if.end.i37.i.ov5693_digital_gain_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i30.i) #11
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %113 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool26.not = icmp eq i32 %114, 0
  %spec.select.i = select i1 %tobool26.not, i32 0, i32 6
  %call.i101 = tail call fastcc i32 @ov5693_update_bits(ptr noundef %add.ptr, i32 noundef 79905, i32 noundef 6, i32 noundef %spec.select.i) #11
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %115 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %val30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool31.not = icmp eq i32 %116, 0
  %spec.select.i102 = select i1 %tobool31.not, i32 0, i32 66
  %call.i103 = tail call fastcc i32 @ov5693_update_bits(ptr noundef %add.ptr, i32 noundef 79904, i32 noundef 66, i32 noundef %spec.select.i102) #11
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end14
  %val36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %117 = ptrtoint ptr %val36 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val36, align 4
  %height.i = getelementptr i8, ptr %1, i32 -292
  %119 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %height.i, align 4
  %add.i = add i32 %120, %118
  %121 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i104) #11
  %123 = getelementptr inbounds i8, ptr %buf.i.i104, i32 2
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 -1, ptr %123, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i105) #11
  %125 = getelementptr inbounds i8, ptr %msg.i.i105, i32 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 327679, ptr %125, align 4
  %addr3.i.i106 = getelementptr inbounds %struct.i2c_client, ptr %122, i32 0, i32 1
  %127 = ptrtoint ptr %addr3.i.i106 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %addr3.i.i106, align 2
  %129 = ptrtoint ptr %msg.i.i105 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %msg.i.i105, align 4
  %flags.i.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i105, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i.i107 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i.i107, align 2
  %buf4.i.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i105, i32 0, i32 3
  %131 = ptrtoint ptr %buf4.i.i108 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %buf.i.i104, ptr %buf4.i.i108, align 4
  %132 = ptrtoint ptr %buf.i.i104 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 14350, ptr %buf.i.i104, align 2
  %conv10.i.i109 = trunc i32 %add.i to i8
  %arrayidx.i.i110 = getelementptr inbounds %struct.anon.101, ptr %buf.i.i104, i32 0, i32 1, i32 1
  %133 = ptrtoint ptr %arrayidx.i.i110 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv10.i.i109, ptr %arrayidx.i.i110, align 1
  %conv1.i = lshr i32 %add.i, 8
  %conv10.i.1.i111 = trunc i32 %conv1.i to i8
  %134 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv10.i.1.i111, ptr %123, align 2
  %adapter.i.i112 = getelementptr inbounds %struct.i2c_client, ptr %122, i32 0, i32 3
  %135 = ptrtoint ptr %adapter.i.i112 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %adapter.i.i112, align 8
  %call.i.i113 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %msg.i.i105, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp15.i.i114 = icmp slt i32 %call.i.i113, 0
  br i1 %cmp15.i.i114, label %do.end.i.i116, label %sw.bb35.ov5693_vts_configure.exit_crit_edge

sw.bb35.ov5693_vts_configure.exit_crit_edge:      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_vts_configure.exit

do.end.i.i116:                                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i115 = getelementptr inbounds %struct.i2c_client, ptr %122, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i115, ptr noundef nonnull @.str.24, i32 noundef 14350, i32 noundef %call.i.i113) #14
  br label %ov5693_vts_configure.exit

ov5693_vts_configure.exit:                        ; preds = %do.end.i.i116, %sw.bb35.ov5693_vts_configure.exit_crit_edge
  %ret.0.i117 = phi i32 [ %call.i.i113, %do.end.i.i116 ], [ 0, %sw.bb35.ov5693_vts_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i105) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i104) #11
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end14
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %137 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %val39, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @ov5693_test_pattern_bits, i32 0, i32 %138
  %139 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.i, align 1
  %141 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i119) #11
  %143 = getelementptr inbounds i8, ptr %buf.i.i119, i32 2
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 -1, ptr %143, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i120) #11
  %145 = getelementptr inbounds i8, ptr %msg.i.i120, i32 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 262143, ptr %145, align 4
  %addr3.i.i121 = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 1
  %147 = ptrtoint ptr %addr3.i.i121 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %addr3.i.i121, align 2
  %149 = ptrtoint ptr %msg.i.i120 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %msg.i.i120, align 4
  %flags.i.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i120, i32 0, i32 1
  %150 = ptrtoint ptr %flags.i.i122 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %flags.i.i122, align 2
  %buf4.i.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i120, i32 0, i32 3
  %151 = ptrtoint ptr %buf4.i.i123 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %buf.i.i119, ptr %buf4.i.i123, align 4
  %152 = ptrtoint ptr %buf.i.i119 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 24064, ptr %buf.i.i119, align 2
  %153 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %140, ptr %143, align 2
  %adapter.i.i124 = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 3
  %154 = ptrtoint ptr %adapter.i.i124 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %adapter.i.i124, align 8
  %call.i.i125 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msg.i.i120, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %cmp15.i.i126 = icmp slt i32 %call.i.i125, 0
  br i1 %cmp15.i.i126, label %do.end.i.i128, label %sw.bb38.ov5693_test_pattern_configure.exit_crit_edge

sw.bb38.ov5693_test_pattern_configure.exit_crit_edge: ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_test_pattern_configure.exit

do.end.i.i128:                                    ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i127 = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i127, ptr noundef nonnull @.str.24, i32 noundef 24064, i32 noundef %call.i.i125) #14
  br label %ov5693_test_pattern_configure.exit

ov5693_test_pattern_configure.exit:               ; preds = %do.end.i.i128, %sw.bb38.ov5693_test_pattern_configure.exit_crit_edge
  %ret.0.i129 = phi i32 [ %call.i.i125, %do.end.i.i128 ], [ 0, %sw.bb38.ov5693_test_pattern_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i120) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i119) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %ov5693_test_pattern_configure.exit, %ov5693_vts_configure.exit, %sw.bb29, %sw.bb24, %ov5693_digital_gain_configure.exit, %ov5693_analog_gain_configure.exit, %ov5693_exposure_configure.exit, %if.end14.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %ret.0.i129, %ov5693_test_pattern_configure.exit ], [ %ret.0.i117, %ov5693_vts_configure.exit ], [ %call.i103, %sw.bb29 ], [ %call.i101, %sw.bb24 ], [ %ret.2.i, %ov5693_digital_gain_configure.exit ], [ %ret.0.i85, %ov5693_analog_gain_configure.exit ], [ %ret.0.i, %ov5693_exposure_configure.exit ], [ -22, %if.end14.sw.epilog_crit_edge ]
  %156 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev, align 4
  %call.i131 = call i32 @__pm_runtime_idle(ptr noundef %157, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5693_update_bits(ptr nocapture noundef readonly %ov5693, i32 noundef %address, i32 noundef %mask, i32 noundef %bits) unnamed_addr #2 align 64 {
entry:
  %buf.i4 = alloca %struct.anon.101, align 2
  %msg.i5 = alloca %struct.i2c_msg, align 4
  %reg.i = alloca i16, align 2
  %val.i = alloca [4 x i8], align 4
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ov5693 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ov5693, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #11
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %addr3.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr3.i, align 2
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %3, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %reg.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %11 = load i16, ptr %addr3.i, align 2
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %14 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %val.i, ptr %buf8.i, align 4
  %shr.i = lshr i32 %address, 16
  %and.i = and i32 %shr.i, 3
  %conv.i = trunc i32 %address to i16
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %reg.i, align 2
  %conv11.i = trunc i32 %and.i to i16
  %16 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv11.i, ptr %len7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5693_read_reg.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1638.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp1638.not.i, label %if.end.i.ov5693_read_reg.exit.thread_crit_edge, label %for.body.i

if.end.i.ov5693_read_reg.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_read_reg.exit.thread

for.body.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i, align 4
  %conv19.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %exitcond.not.i = icmp eq i32 %and.i, 1
  br i1 %exitcond.not.i, label %for.body.i.ov5693_read_reg.exit.thread_crit_edge, label %for.body.i.1

for.body.i.ov5693_read_reg.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_read_reg.exit.thread

for.body.i.1:                                     ; preds = %for.body.i
  %shl.i.1 = shl nuw nsw i32 %conv19.i, 8
  %arrayidx18.i.1 = getelementptr inbounds [4 x i8], ptr %val.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx18.i.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18.i.1, align 1
  %conv19.i.1 = zext i8 %22 to i32
  %or.i.1 = or i32 %shl.i.1, %conv19.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %exitcond.not.i.1 = icmp eq i32 %and.i, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.ov5693_read_reg.exit.thread_crit_edge, label %for.body.i.2

for.body.i.1.ov5693_read_reg.exit.thread_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_read_reg.exit.thread

for.body.i.2:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i.2 = shl nuw nsw i32 %or.i.1, 8
  %arrayidx18.i.2 = getelementptr inbounds [4 x i8], ptr %val.i, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx18.i.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx18.i.2, align 2
  %conv19.i.2 = zext i8 %24 to i32
  %or.i.2 = or i32 %shl.i.2, %conv19.i.2
  br label %ov5693_read_reg.exit.thread

ov5693_read_reg.exit.thread:                      ; preds = %for.body.i.2, %for.body.i.1.ov5693_read_reg.exit.thread_crit_edge, %for.body.i.ov5693_read_reg.exit.thread_crit_edge, %if.end.i.ov5693_read_reg.exit.thread_crit_edge
  %value.0.ph = phi i32 [ 0, %if.end.i.ov5693_read_reg.exit.thread_crit_edge ], [ %conv19.i, %for.body.i.ov5693_read_reg.exit.thread_crit_edge ], [ %or.i.1, %for.body.i.1.ov5693_read_reg.exit.thread_crit_edge ], [ %or.i.2, %for.body.i.2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #11
  %.pre = and i32 %address, 65535
  br label %if.end.i13

ov5693_read_reg.exit:                             ; preds = %entry
  %and10.i = and i32 %address, 65535
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call15.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev.i, i32 noundef %call.i, ptr noundef nonnull @.str.39, i32 noundef %and10.i, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not = icmp eq i32 %call15.i, 0
  br i1 %tobool.not, label %ov5693_read_reg.exit.if.end.i13_crit_edge, label %ov5693_read_reg.exit.cleanup_crit_edge

ov5693_read_reg.exit.cleanup_crit_edge:           ; preds = %ov5693_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ov5693_read_reg.exit.if.end.i13_crit_edge:        ; preds = %ov5693_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i13

if.end.i13:                                       ; preds = %ov5693_read_reg.exit.if.end.i13_crit_edge, %ov5693_read_reg.exit.thread
  %and6.i.pre-phi = phi i32 [ %and10.i, %ov5693_read_reg.exit.if.end.i13_crit_edge ], [ %.pre, %ov5693_read_reg.exit.thread ]
  %value.026 = phi i32 [ 0, %ov5693_read_reg.exit.if.end.i13_crit_edge ], [ %value.0.ph, %ov5693_read_reg.exit.thread ]
  %25 = ptrtoint ptr %ov5693 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ov5693, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i4) #11
  %27 = getelementptr inbounds i8, ptr %buf.i4, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 -1, ptr %27, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i5) #11
  %29 = getelementptr inbounds i8, ptr %msg.i5, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4
  %addr3.i6 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %addr3.i6 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr3.i6, align 2
  %33 = ptrtoint ptr %msg.i5 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %msg.i5, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i7, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 3
  %35 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i4, ptr %buf4.i, align 4
  %36 = ptrtoint ptr %buf.i4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %buf.i4, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp737.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp737.not.i, label %if.end.i13.for.end.i_crit_edge, label %for.body.i17

if.end.i13.for.end.i_crit_edge:                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i17:                                     ; preds = %if.end.i13
  %neg = xor i32 %mask, -1
  %and = and i32 %value.026, %neg
  %or = or i32 %and, %bits
  %conv10.i = trunc i32 %or to i8
  %sub11.i = add nsw i32 %and.i, -1
  %arrayidx.i = getelementptr %struct.anon.101, ptr %buf.i4, i32 0, i32 1, i32 %sub11.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv10.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %exitcond.not.i16 = icmp eq i32 %and.i, 1
  br i1 %exitcond.not.i16, label %for.body.i17.for.end.i_crit_edge, label %for.body.i17.1

for.body.i17.for.end.i_crit_edge:                 ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i17.1:                                   ; preds = %for.body.i17
  %shr12.i = lshr i32 %or, 8
  %conv10.i.1 = trunc i32 %shr12.i to i8
  %sub11.i.1 = add nsw i32 %and.i, -2
  %arrayidx.i.1 = getelementptr %struct.anon.101, ptr %buf.i4, i32 0, i32 1, i32 %sub11.i.1
  %38 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv10.i.1, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %exitcond.not.i16.1 = icmp eq i32 %and.i, 2
  br i1 %exitcond.not.i16.1, label %for.body.i17.1.for.end.i_crit_edge, label %for.body.i17.2

for.body.i17.1.for.end.i_crit_edge:               ; preds = %for.body.i17.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i17.2:                                   ; preds = %for.body.i17.1
  call void @__sanitizer_cov_trace_pc() #13
  %shr12.i.1 = lshr i32 %or, 16
  %conv10.i.2 = trunc i32 %shr12.i.1 to i8
  %sub11.i.2 = add nsw i32 %and.i, -3
  %arrayidx.i.2 = getelementptr %struct.anon.101, ptr %buf.i4, i32 0, i32 1, i32 %sub11.i.2
  %39 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv10.i.2, ptr %arrayidx.i.2, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i17.2, %for.body.i17.1.for.end.i_crit_edge, %for.body.i17.for.end.i_crit_edge, %if.end.i13.for.end.i_crit_edge
  %conv13.i = add nuw nsw i16 %conv11.i, 2
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv13.i, ptr %29, align 4
  %adapter.i18 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %41 = ptrtoint ptr %adapter.i18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i18, align 8
  %call.i19 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i5, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp15.i = icmp slt i32 %call.i19, 0
  br i1 %cmp15.i, label %do.end.i, label %for.end.i.ov5693_write_reg.exit_crit_edge

for.end.i.ov5693_write_reg.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i20 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i20, ptr noundef nonnull @.str.24, i32 noundef %and6.i.pre-phi, i32 noundef %call.i19) #14
  br label %ov5693_write_reg.exit

ov5693_write_reg.exit:                            ; preds = %do.end.i, %for.end.i.ov5693_write_reg.exit_crit_edge
  %ret.0 = phi i32 [ %call.i19, %do.end.i ], [ 0, %for.end.i.ov5693_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i5) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i4) #11
  br label %cleanup

cleanup:                                          ; preds = %ov5693_write_reg.exit, %ov5693_read_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ov5693_write_reg.exit ], [ %call15.i, %ov5693_read_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_sensor_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset.i = getelementptr i8, ptr %1, i32 -120
  %2 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #11
  %powerdown.i = getelementptr i8, ptr %1, i32 -116
  %4 = ptrtoint ptr %powerdown.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerdown.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #11
  %supplies.i = getelementptr i8, ptr %1, i32 -112
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #11
  %clk.i = getelementptr i8, ptr %1, i32 -88
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5693_sensor_resume(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i.i58.i = alloca %struct.anon.101, align 2
  %msg.i.i59.i = alloca %struct.i2c_msg, align 4
  %buf.i264.i.i = alloca %struct.anon.101, align 2
  %msg.i265.i.i = alloca %struct.i2c_msg, align 4
  %buf.i240.i.i = alloca %struct.anon.101, align 2
  %msg.i241.i.i = alloca %struct.i2c_msg, align 4
  %buf.i216.i.i = alloca %struct.anon.101, align 2
  %msg.i217.i.i = alloca %struct.i2c_msg, align 4
  %buf.i192.i.i = alloca %struct.anon.101, align 2
  %msg.i193.i.i = alloca %struct.i2c_msg, align 4
  %buf.i168.i.i = alloca %struct.anon.101, align 2
  %msg.i169.i.i = alloca %struct.i2c_msg, align 4
  %buf.i144.i.i = alloca %struct.anon.101, align 2
  %msg.i145.i.i = alloca %struct.i2c_msg, align 4
  %buf.i120.i.i = alloca %struct.anon.101, align 2
  %msg.i121.i.i = alloca %struct.i2c_msg, align 4
  %buf.i96.i.i = alloca %struct.anon.101, align 2
  %msg.i97.i.i = alloca %struct.i2c_msg, align 4
  %buf.i72.i.i = alloca %struct.anon.101, align 2
  %msg.i73.i.i = alloca %struct.i2c_msg, align 4
  %buf.i48.i.i = alloca %struct.anon.101, align 2
  %msg.i49.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i43.i = alloca %struct.anon.101, align 2
  %msg.i.i44.i = alloca %struct.i2c_msg, align 4
  %buf.i.i33.i = alloca %struct.anon.101, align 2
  %msg.i.i34.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca %struct.anon.101, align 2
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -220
  %lock = getelementptr i8, ptr %1, i32 -212
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call1 = tail call fastcc i32 @ov5693_sensor_powerup(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i.i) #11
  %4 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 33554431, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #11
  %6 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 262143, ptr %6, align 4
  %addr3.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %addr3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr3.i.i.i, align 2
  %10 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i.i.i, ptr %buf4.i.i.i, align 4
  %13 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 259, ptr %buf.i.i.i, align 2
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp15.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp15.i.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.24, i32 noundef 259, i32 noundef %call.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #11
  %dev.i = getelementptr i8, ptr %1, i32 -216
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %17, i32 noundef %call.i.i.i, ptr noundef nonnull @.str.52) #11
  br label %ov5693_sensor_init.exit

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i.i) #11
  %18 = getelementptr inbounds i8, ptr %buf.i.i33.i, i32 2
  %19 = getelementptr inbounds i8, ptr %msg.i.i34.i, i32 4
  %flags.i.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i34.i, i32 0, i32 1
  %buf4.i.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i34.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %ov5693_write_reg.exit.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.03.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %ov5693_write_reg.exit.i.i.for.body.i.i_crit_edge ]
  %ret.02.i.i = phi i32 [ 0, %if.end.i ], [ %ret.1.i.i, %ov5693_write_reg.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ov5693_reg, ptr @ov5693_global_regs, i32 %i.03.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %val.i.i = getelementptr %struct.ov5693_reg, ptr @ov5693_global_regs, i32 %i.03.i.i, i32 1
  %22 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val.i.i, align 4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i33.i) #11
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 -1, ptr %18, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i34.i) #11
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %19, align 4
  %addr3.i.i37.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %addr3.i.i37.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr3.i.i37.i, align 2
  %30 = ptrtoint ptr %msg.i.i34.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msg.i.i34.i, align 4
  %31 = ptrtoint ptr %flags.i.i35.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i.i35.i, align 2
  %32 = ptrtoint ptr %buf4.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i.i33.i, ptr %buf4.i.i36.i, align 4
  %shr.i.i.i = lshr i32 %21, 16
  %and.i.i.i = and i32 %shr.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.02.i.i)
  %cmp.i.i.i = icmp slt i32 %ret.02.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.ov5693_write_reg.exit.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.ov5693_write_reg.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %and6.i.i.i = and i32 %21, 65535
  %conv.i.i.i = trunc i32 %21 to i16
  %33 = ptrtoint ptr %buf.i.i33.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %buf.i.i33.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp737.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp737.not.i.i.i, label %if.end.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.preheader.i.i

if.end.i.i.i.for.end.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.body.i.preheader.i.i:                         ; preds = %if.end.i.i.i
  %sub11.i.peel.i.i = add nsw i32 %and.i.i.i, -1
  %arrayidx.i.peel.i.i = getelementptr %struct.anon.101, ptr %buf.i.i33.i, i32 0, i32 1, i32 %sub11.i.peel.i.i
  %34 = ptrtoint ptr %arrayidx.i.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %23, ptr %arrayidx.i.peel.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %exitcond.not.i.peel.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %exitcond.not.i.peel.i.i, label %for.body.i.preheader.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.preheader.i

for.body.i.preheader.i.i.for.end.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.body.i.i.preheader.i:                         ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = call ptr @memset(ptr %18, i32 0, i32 %sub11.i.peel.i.i)
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.preheader.i, %for.body.i.preheader.i.i.for.end.i.i.i_crit_edge, %if.end.i.i.i.for.end.i.i.i_crit_edge
  %36 = trunc i32 %and.i.i.i to i16
  %conv13.i.i.i = add nuw nsw i16 %36, 2
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv13.i.i.i, ptr %19, align 4
  %adapter.i.i38.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %38 = ptrtoint ptr %adapter.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i.i38.i, align 8
  %call.i.i39.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i.i34.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.i)
  %cmp15.i.i40.i = icmp slt i32 %call.i.i39.i, 0
  br i1 %cmp15.i.i40.i, label %do.end.i.i42.i, label %for.end.i.i.i.ov5693_write_reg.exit.i.i_crit_edge

for.end.i.i.i.ov5693_write_reg.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit.i.i

do.end.i.i42.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i41.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i41.i, ptr noundef nonnull @.str.24, i32 noundef %and6.i.i.i, i32 noundef %call.i.i39.i) #14
  br label %ov5693_write_reg.exit.i.i

ov5693_write_reg.exit.i.i:                        ; preds = %do.end.i.i42.i, %for.end.i.i.i.ov5693_write_reg.exit.i.i_crit_edge, %for.body.i.i.ov5693_write_reg.exit.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %ret.02.i.i, %for.body.i.i.ov5693_write_reg.exit.i.i_crit_edge ], [ %call.i.i39.i, %do.end.i.i42.i ], [ %ret.02.i.i, %for.end.i.i.i.ov5693_write_reg.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i34.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i33.i) #11
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 144
  br i1 %exitcond.not.i.i, label %ov5693_write_reg_array.exit.i, label %ov5693_write_reg.exit.i.i.for.body.i.i_crit_edge

ov5693_write_reg.exit.i.i.for.body.i.i_crit_edge: ; preds = %ov5693_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

ov5693_write_reg_array.exit.i:                    ; preds = %ov5693_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool3.not.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool3.not.i, label %if.end7.i, label %if.then4.i

if.then4.i:                                       ; preds = %ov5693_write_reg_array.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev5.i = getelementptr i8, ptr %1, i32 -216
  %40 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev5.i, align 4
  %call6.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %41, i32 noundef %ret.1.i.i, ptr noundef nonnull @.str.53) #11
  br label %ov5693_sensor_init.exit

if.end7.i:                                        ; preds = %ov5693_write_reg_array.exit.i
  %mode1.i.i = getelementptr i8, ptr %1, i32 -84
  %42 = ptrtoint ptr %mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode1.i.i, align 4
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i43.i) #11
  %46 = getelementptr inbounds i8, ptr %buf.i.i43.i, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 -1, ptr %46, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i44.i) #11
  %48 = getelementptr inbounds i8, ptr %msg.i.i44.i, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 327679, ptr %48, align 4
  %addr3.i.i45.i = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %addr3.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr3.i.i45.i, align 2
  %52 = ptrtoint ptr %msg.i.i44.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %msg.i.i44.i, align 4
  %flags.i.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i44.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i.i46.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i.i46.i, align 2
  %buf4.i.i47.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i44.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf4.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i.i43.i, ptr %buf4.i.i47.i, align 4
  %55 = ptrtoint ptr %buf.i.i43.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 14336, ptr %buf.i.i43.i, align 2
  %conv10.i.i.i = trunc i32 %43 to i8
  %arrayidx.i.i48.i = getelementptr inbounds %struct.anon.101, ptr %buf.i.i43.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv10.i.i.i, ptr %arrayidx.i.i48.i, align 1
  %shr12.i.i.i = lshr i32 %43, 8
  %conv10.i.1.i.i = trunc i32 %shr12.i.i.i to i8
  %57 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv10.i.1.i.i, ptr %46, align 2
  %adapter.i.i49.i = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 3
  %58 = ptrtoint ptr %adapter.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter.i.i49.i, align 8
  %call.i.i50.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i44.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50.i)
  %cmp15.i.i51.i = icmp slt i32 %call.i.i50.i, 0
  br i1 %cmp15.i.i51.i, label %do.end.i.i54.i, label %if.end7.i.ov5693_write_reg.exit.i56.i_crit_edge

if.end7.i.ov5693_write_reg.exit.i56.i_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit.i56.i

do.end.i.i54.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i53.i = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i53.i, ptr noundef nonnull @.str.24, i32 noundef 14336, i32 noundef %call.i.i50.i) #14
  br label %ov5693_write_reg.exit.i56.i

ov5693_write_reg.exit.i56.i:                      ; preds = %do.end.i.i54.i, %if.end7.i.ov5693_write_reg.exit.i56.i_crit_edge
  %ret.0.i55.i = phi i32 [ %call.i.i50.i, %do.end.i.i54.i ], [ 0, %if.end7.i.ov5693_write_reg.exit.i56.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i44.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i43.i) #11
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i48.i.i) #11
  %62 = getelementptr inbounds i8, ptr %buf.i48.i.i, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 -1, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i49.i.i) #11
  %64 = getelementptr inbounds i8, ptr %msg.i49.i.i, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %64, align 4
  %addr3.i50.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %addr3.i50.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr3.i50.i.i, align 2
  %68 = ptrtoint ptr %msg.i49.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %msg.i49.i.i, align 4
  %flags.i51.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i51.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i51.i.i, align 2
  %buf4.i53.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %buf4.i53.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i48.i.i, ptr %buf4.i53.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i55.i)
  %cmp.i54.i.i = icmp slt i32 %ret.0.i55.i, 0
  br i1 %cmp.i54.i.i, label %ov5693_write_reg.exit.i56.i.ov5693_write_reg.exit71.i.i_crit_edge, label %if.end.i55.i.i

ov5693_write_reg.exit.i56.i.ov5693_write_reg.exit71.i.i_crit_edge: ; preds = %ov5693_write_reg.exit.i56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit71.i.i

if.end.i55.i.i:                                   ; preds = %ov5693_write_reg.exit.i56.i
  %71 = ptrtoint ptr %buf.i48.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 14352, ptr %buf.i48.i.i, align 2
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %62, align 2
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 4, ptr %64, align 4
  %adapter.i65.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 3
  %74 = ptrtoint ptr %adapter.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter.i65.i.i, align 8
  %call.i66.i.i = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i49.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i.i)
  %cmp15.i67.i.i = icmp slt i32 %call.i66.i.i, 0
  br i1 %cmp15.i67.i.i, label %do.end.i70.i.i, label %if.end.i55.i.i.ov5693_write_reg.exit71.i.i_crit_edge

if.end.i55.i.i.ov5693_write_reg.exit71.i.i_crit_edge: ; preds = %if.end.i55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit71.i.i

do.end.i70.i.i:                                   ; preds = %if.end.i55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i69.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i69.i.i, ptr noundef nonnull @.str.24, i32 noundef 14352, i32 noundef %call.i66.i.i) #14
  br label %ov5693_write_reg.exit71.i.i

ov5693_write_reg.exit71.i.i:                      ; preds = %do.end.i70.i.i, %if.end.i55.i.i.ov5693_write_reg.exit71.i.i_crit_edge, %ov5693_write_reg.exit.i56.i.ov5693_write_reg.exit71.i.i_crit_edge
  %ret.1.i57.i = phi i32 [ %ret.0.i55.i, %ov5693_write_reg.exit.i56.i.ov5693_write_reg.exit71.i.i_crit_edge ], [ %call.i66.i.i, %do.end.i70.i.i ], [ 0, %if.end.i55.i.i.ov5693_write_reg.exit71.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i49.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i48.i.i) #11
  %format.i.i = getelementptr i8, ptr %1, i32 -68
  %76 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %format.i.i, align 4
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i72.i.i) #11
  %80 = getelementptr inbounds i8, ptr %buf.i72.i.i, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 -1, ptr %80, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i73.i.i) #11
  %82 = getelementptr inbounds i8, ptr %msg.i73.i.i, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 327679, ptr %82, align 4
  %addr3.i74.i.i = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 1
  %84 = ptrtoint ptr %addr3.i74.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %addr3.i74.i.i, align 2
  %86 = ptrtoint ptr %msg.i73.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %msg.i73.i.i, align 4
  %flags.i75.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i75.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i75.i.i, align 2
  %buf4.i77.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %buf4.i77.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf.i72.i.i, ptr %buf4.i77.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i57.i)
  %cmp.i78.i.i = icmp slt i32 %ret.1.i57.i, 0
  br i1 %cmp.i78.i.i, label %ov5693_write_reg.exit71.i.i.ov5693_write_reg.exit95.i.i_crit_edge, label %if.end.i79.i.i

ov5693_write_reg.exit71.i.i.ov5693_write_reg.exit95.i.i_crit_edge: ; preds = %ov5693_write_reg.exit71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit95.i.i

if.end.i79.i.i:                                   ; preds = %ov5693_write_reg.exit71.i.i
  %89 = ptrtoint ptr %buf.i72.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 14344, ptr %buf.i72.i.i, align 2
  %conv10.i82.i.i = trunc i32 %77 to i8
  %arrayidx.i84.i.i = getelementptr inbounds %struct.anon.101, ptr %buf.i72.i.i, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %arrayidx.i84.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv10.i82.i.i, ptr %arrayidx.i84.i.i, align 1
  %shr12.i85.i.i = lshr i32 %77, 8
  %conv10.i82.1.i.i = trunc i32 %shr12.i85.i.i to i8
  %91 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv10.i82.1.i.i, ptr %80, align 2
  %adapter.i89.i.i = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 3
  %92 = ptrtoint ptr %adapter.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter.i89.i.i, align 8
  %call.i90.i.i = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i73.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i.i)
  %cmp15.i91.i.i = icmp slt i32 %call.i90.i.i, 0
  br i1 %cmp15.i91.i.i, label %do.end.i94.i.i, label %if.end.i79.i.i.ov5693_write_reg.exit95.i.i_crit_edge

if.end.i79.i.i.ov5693_write_reg.exit95.i.i_crit_edge: ; preds = %if.end.i79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit95.i.i

do.end.i94.i.i:                                   ; preds = %if.end.i79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i93.i.i = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i93.i.i, ptr noundef nonnull @.str.24, i32 noundef 14344, i32 noundef %call.i90.i.i) #14
  br label %ov5693_write_reg.exit95.i.i

ov5693_write_reg.exit95.i.i:                      ; preds = %do.end.i94.i.i, %if.end.i79.i.i.ov5693_write_reg.exit95.i.i_crit_edge, %ov5693_write_reg.exit71.i.i.ov5693_write_reg.exit95.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %ret.1.i57.i, %ov5693_write_reg.exit71.i.i.ov5693_write_reg.exit95.i.i_crit_edge ], [ %call.i90.i.i, %do.end.i94.i.i ], [ 0, %if.end.i79.i.i.ov5693_write_reg.exit95.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i73.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i72.i.i) #11
  %94 = ptrtoint ptr %mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mode1.i.i, align 4
  %width5.i.i = getelementptr i8, ptr %1, i32 -76
  %96 = ptrtoint ptr %width5.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %width5.i.i, align 4
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i96.i.i) #11
  %100 = getelementptr inbounds i8, ptr %buf.i96.i.i, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 -1, ptr %100, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i97.i.i) #11
  %102 = getelementptr inbounds i8, ptr %msg.i97.i.i, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 327679, ptr %102, align 4
  %addr3.i98.i.i = getelementptr inbounds %struct.i2c_client, ptr %99, i32 0, i32 1
  %104 = ptrtoint ptr %addr3.i98.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %addr3.i98.i.i, align 2
  %106 = ptrtoint ptr %msg.i97.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %msg.i97.i.i, align 4
  %flags.i99.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %flags.i99.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %flags.i99.i.i, align 2
  %buf4.i101.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %buf4.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %buf.i96.i.i, ptr %buf4.i101.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i)
  %cmp.i102.i.i = icmp slt i32 %ret.2.i.i, 0
  br i1 %cmp.i102.i.i, label %ov5693_write_reg.exit95.i.i.ov5693_write_reg.exit119.i.i_crit_edge, label %if.end.i103.i.i

ov5693_write_reg.exit95.i.i.ov5693_write_reg.exit119.i.i_crit_edge: ; preds = %ov5693_write_reg.exit95.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit119.i.i

if.end.i103.i.i:                                  ; preds = %ov5693_write_reg.exit95.i.i
  %add.i.i = add i32 %97, %95
  %109 = ptrtoint ptr %buf.i96.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 14340, ptr %buf.i96.i.i, align 2
  %conv10.i106.i.i = trunc i32 %add.i.i to i8
  %arrayidx.i108.i.i = getelementptr inbounds %struct.anon.101, ptr %buf.i96.i.i, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %arrayidx.i108.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv10.i106.i.i, ptr %arrayidx.i108.i.i, align 1
  %shr12.i109.i.i = lshr i32 %add.i.i, 8
  %conv10.i106.1.i.i = trunc i32 %shr12.i109.i.i to i8
  %111 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv10.i106.1.i.i, ptr %100, align 2
  %adapter.i113.i.i = getelementptr inbounds %struct.i2c_client, ptr %99, i32 0, i32 3
  %112 = ptrtoint ptr %adapter.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %adapter.i113.i.i, align 8
  %call.i114.i.i = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i97.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i.i)
  %cmp15.i115.i.i = icmp slt i32 %call.i114.i.i, 0
  br i1 %cmp15.i115.i.i, label %do.end.i118.i.i, label %if.end.i103.i.i.ov5693_write_reg.exit119.i.i_crit_edge

if.end.i103.i.i.ov5693_write_reg.exit119.i.i_crit_edge: ; preds = %if.end.i103.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit119.i.i

do.end.i118.i.i:                                  ; preds = %if.end.i103.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i117.i.i = getelementptr inbounds %struct.i2c_client, ptr %99, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i117.i.i, ptr noundef nonnull @.str.24, i32 noundef 14340, i32 noundef %call.i114.i.i) #14
  br label %ov5693_write_reg.exit119.i.i

ov5693_write_reg.exit119.i.i:                     ; preds = %do.end.i118.i.i, %if.end.i103.i.i.ov5693_write_reg.exit119.i.i_crit_edge, %ov5693_write_reg.exit95.i.i.ov5693_write_reg.exit119.i.i_crit_edge
  %ret.3.i.i = phi i32 [ %ret.2.i.i, %ov5693_write_reg.exit95.i.i.ov5693_write_reg.exit119.i.i_crit_edge ], [ %call.i114.i.i, %do.end.i118.i.i ], [ 0, %if.end.i103.i.i.ov5693_write_reg.exit119.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i97.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i96.i.i) #11
  %114 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i120.i.i) #11
  %116 = getelementptr inbounds i8, ptr %buf.i120.i.i, i32 2
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 176226303, ptr %116, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i121.i.i) #11
  %118 = getelementptr inbounds i8, ptr %msg.i121.i.i, i32 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 327679, ptr %118, align 4
  %addr3.i122.i.i = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 1
  %120 = ptrtoint ptr %addr3.i122.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %addr3.i122.i.i, align 2
  %122 = ptrtoint ptr %msg.i121.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %msg.i121.i.i, align 4
  %flags.i123.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %flags.i123.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %flags.i123.i.i, align 2
  %buf4.i125.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121.i.i, i32 0, i32 3
  %124 = ptrtoint ptr %buf4.i125.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %buf.i120.i.i, ptr %buf4.i125.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i.i)
  %cmp.i126.i.i = icmp slt i32 %ret.3.i.i, 0
  br i1 %cmp.i126.i.i, label %ov5693_write_reg.exit119.i.i.ov5693_write_reg.exit143.i.i_crit_edge, label %if.end.i127.i.i

ov5693_write_reg.exit119.i.i.ov5693_write_reg.exit143.i.i_crit_edge: ; preds = %ov5693_write_reg.exit119.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit143.i.i

if.end.i127.i.i:                                  ; preds = %ov5693_write_reg.exit119.i.i
  %125 = ptrtoint ptr %buf.i120.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 14348, ptr %buf.i120.i.i, align 2
  %adapter.i137.i.i = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 3
  %126 = ptrtoint ptr %adapter.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %adapter.i137.i.i, align 8
  %call.i138.i.i = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msg.i121.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i.i)
  %cmp15.i139.i.i = icmp slt i32 %call.i138.i.i, 0
  br i1 %cmp15.i139.i.i, label %do.end.i142.i.i, label %if.end.i127.i.i.ov5693_write_reg.exit143.i.i_crit_edge

if.end.i127.i.i.ov5693_write_reg.exit143.i.i_crit_edge: ; preds = %if.end.i127.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit143.i.i

do.end.i142.i.i:                                  ; preds = %if.end.i127.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i141.i.i = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i141.i.i, ptr noundef nonnull @.str.24, i32 noundef 14348, i32 noundef %call.i138.i.i) #14
  br label %ov5693_write_reg.exit143.i.i

ov5693_write_reg.exit143.i.i:                     ; preds = %do.end.i142.i.i, %if.end.i127.i.i.ov5693_write_reg.exit143.i.i_crit_edge, %ov5693_write_reg.exit119.i.i.ov5693_write_reg.exit143.i.i_crit_edge
  %ret.4.i.i = phi i32 [ %ret.3.i.i, %ov5693_write_reg.exit119.i.i.ov5693_write_reg.exit143.i.i_crit_edge ], [ %call.i138.i.i, %do.end.i142.i.i ], [ 0, %if.end.i127.i.i.ov5693_write_reg.exit143.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i121.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i120.i.i) #11
  %top.i.i = getelementptr i8, ptr %1, i32 -80
  %128 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %top.i.i, align 4
  %130 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i144.i.i) #11
  %132 = getelementptr inbounds i8, ptr %buf.i144.i.i, i32 2
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 -1, ptr %132, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i145.i.i) #11
  %134 = getelementptr inbounds i8, ptr %msg.i145.i.i, i32 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 327679, ptr %134, align 4
  %addr3.i146.i.i = getelementptr inbounds %struct.i2c_client, ptr %131, i32 0, i32 1
  %136 = ptrtoint ptr %addr3.i146.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %addr3.i146.i.i, align 2
  %138 = ptrtoint ptr %msg.i145.i.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %msg.i145.i.i, align 4
  %flags.i147.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %flags.i147.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %flags.i147.i.i, align 2
  %buf4.i149.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145.i.i, i32 0, i32 3
  %140 = ptrtoint ptr %buf4.i149.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %buf.i144.i.i, ptr %buf4.i149.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.i.i)
  %cmp.i150.i.i = icmp slt i32 %ret.4.i.i, 0
  br i1 %cmp.i150.i.i, label %ov5693_write_reg.exit143.i.i.ov5693_write_reg.exit167.i.i_crit_edge, label %if.end.i151.i.i

ov5693_write_reg.exit143.i.i.ov5693_write_reg.exit167.i.i_crit_edge: ; preds = %ov5693_write_reg.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit167.i.i

if.end.i151.i.i:                                  ; preds = %ov5693_write_reg.exit143.i.i
  %141 = ptrtoint ptr %buf.i144.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 14338, ptr %buf.i144.i.i, align 2
  %conv10.i154.i.i = trunc i32 %129 to i8
  %arrayidx.i156.i.i = getelementptr inbounds %struct.anon.101, ptr %buf.i144.i.i, i32 0, i32 1, i32 1
  %142 = ptrtoint ptr %arrayidx.i156.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv10.i154.i.i, ptr %arrayidx.i156.i.i, align 1
  %shr12.i157.i.i = lshr i32 %129, 8
  %conv10.i154.1.i.i = trunc i32 %shr12.i157.i.i to i8
  %143 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv10.i154.1.i.i, ptr %132, align 2
  %adapter.i161.i.i = getelementptr inbounds %struct.i2c_client, ptr %131, i32 0, i32 3
  %144 = ptrtoint ptr %adapter.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %adapter.i161.i.i, align 8
  %call.i162.i.i = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %msg.i145.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i.i)
  %cmp15.i163.i.i = icmp slt i32 %call.i162.i.i, 0
  br i1 %cmp15.i163.i.i, label %do.end.i166.i.i, label %if.end.i151.i.i.ov5693_write_reg.exit167.i.i_crit_edge

if.end.i151.i.i.ov5693_write_reg.exit167.i.i_crit_edge: ; preds = %if.end.i151.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit167.i.i

do.end.i166.i.i:                                  ; preds = %if.end.i151.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i165.i.i = getelementptr inbounds %struct.i2c_client, ptr %131, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i165.i.i, ptr noundef nonnull @.str.24, i32 noundef 14338, i32 noundef %call.i162.i.i) #14
  br label %ov5693_write_reg.exit167.i.i

ov5693_write_reg.exit167.i.i:                     ; preds = %do.end.i166.i.i, %if.end.i151.i.i.ov5693_write_reg.exit167.i.i_crit_edge, %ov5693_write_reg.exit143.i.i.ov5693_write_reg.exit167.i.i_crit_edge
  %ret.5.i.i = phi i32 [ %ret.4.i.i, %ov5693_write_reg.exit143.i.i.ov5693_write_reg.exit167.i.i_crit_edge ], [ %call.i162.i.i, %do.end.i166.i.i ], [ 0, %if.end.i151.i.i.ov5693_write_reg.exit167.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i145.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i144.i.i) #11
  %146 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i168.i.i) #11
  %148 = getelementptr inbounds i8, ptr %buf.i168.i.i, i32 2
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 65535, ptr %148, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i169.i.i) #11
  %150 = getelementptr inbounds i8, ptr %msg.i169.i.i, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 327679, ptr %150, align 4
  %addr3.i170.i.i = getelementptr inbounds %struct.i2c_client, ptr %147, i32 0, i32 1
  %152 = ptrtoint ptr %addr3.i170.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %addr3.i170.i.i, align 2
  %154 = ptrtoint ptr %msg.i169.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %msg.i169.i.i, align 4
  %flags.i171.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i169.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %flags.i171.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %flags.i171.i.i, align 2
  %buf4.i173.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i169.i.i, i32 0, i32 3
  %156 = ptrtoint ptr %buf4.i173.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %buf.i168.i.i, ptr %buf4.i173.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5.i.i)
  %cmp.i174.i.i = icmp slt i32 %ret.5.i.i, 0
  br i1 %cmp.i174.i.i, label %ov5693_write_reg.exit167.i.i.ov5693_write_reg.exit191.i.i_crit_edge, label %if.end.i175.i.i

ov5693_write_reg.exit167.i.i.ov5693_write_reg.exit191.i.i_crit_edge: ; preds = %ov5693_write_reg.exit167.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit191.i.i

if.end.i175.i.i:                                  ; preds = %ov5693_write_reg.exit167.i.i
  %157 = ptrtoint ptr %buf.i168.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 14354, ptr %buf.i168.i.i, align 2
  %adapter.i185.i.i = getelementptr inbounds %struct.i2c_client, ptr %147, i32 0, i32 3
  %158 = ptrtoint ptr %adapter.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %adapter.i185.i.i, align 8
  %call.i186.i.i = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %msg.i169.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186.i.i)
  %cmp15.i187.i.i = icmp slt i32 %call.i186.i.i, 0
  br i1 %cmp15.i187.i.i, label %do.end.i190.i.i, label %if.end.i175.i.i.ov5693_write_reg.exit191.i.i_crit_edge

if.end.i175.i.i.ov5693_write_reg.exit191.i.i_crit_edge: ; preds = %if.end.i175.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit191.i.i

do.end.i190.i.i:                                  ; preds = %if.end.i175.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i189.i.i = getelementptr inbounds %struct.i2c_client, ptr %147, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i189.i.i, ptr noundef nonnull @.str.24, i32 noundef 14354, i32 noundef %call.i186.i.i) #14
  br label %ov5693_write_reg.exit191.i.i

ov5693_write_reg.exit191.i.i:                     ; preds = %do.end.i190.i.i, %if.end.i175.i.i.ov5693_write_reg.exit191.i.i_crit_edge, %ov5693_write_reg.exit167.i.i.ov5693_write_reg.exit191.i.i_crit_edge
  %ret.6.i.i = phi i32 [ %ret.5.i.i, %ov5693_write_reg.exit167.i.i.ov5693_write_reg.exit191.i.i_crit_edge ], [ %call.i186.i.i, %do.end.i190.i.i ], [ 0, %if.end.i175.i.i.ov5693_write_reg.exit191.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i169.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i168.i.i) #11
  %height.i.i = getelementptr i8, ptr %1, i32 -64
  %160 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %height.i.i, align 4
  %162 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i192.i.i) #11
  %164 = getelementptr inbounds i8, ptr %buf.i192.i.i, i32 2
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 -1, ptr %164, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i193.i.i) #11
  %166 = getelementptr inbounds i8, ptr %msg.i193.i.i, i32 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 327679, ptr %166, align 4
  %addr3.i194.i.i = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 1
  %168 = ptrtoint ptr %addr3.i194.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %addr3.i194.i.i, align 2
  %170 = ptrtoint ptr %msg.i193.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %msg.i193.i.i, align 4
  %flags.i195.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i193.i.i, i32 0, i32 1
  %171 = ptrtoint ptr %flags.i195.i.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 0, ptr %flags.i195.i.i, align 2
  %buf4.i197.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i193.i.i, i32 0, i32 3
  %172 = ptrtoint ptr %buf4.i197.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %buf.i192.i.i, ptr %buf4.i197.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6.i.i)
  %cmp.i198.i.i = icmp slt i32 %ret.6.i.i, 0
  br i1 %cmp.i198.i.i, label %ov5693_write_reg.exit191.i.i.ov5693_write_reg.exit215.i.i_crit_edge, label %if.end.i199.i.i

ov5693_write_reg.exit191.i.i.ov5693_write_reg.exit215.i.i_crit_edge: ; preds = %ov5693_write_reg.exit191.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit215.i.i

if.end.i199.i.i:                                  ; preds = %ov5693_write_reg.exit191.i.i
  %173 = ptrtoint ptr %buf.i192.i.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 14346, ptr %buf.i192.i.i, align 2
  %conv10.i202.i.i = trunc i32 %161 to i8
  %arrayidx.i204.i.i = getelementptr inbounds %struct.anon.101, ptr %buf.i192.i.i, i32 0, i32 1, i32 1
  %174 = ptrtoint ptr %arrayidx.i204.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv10.i202.i.i, ptr %arrayidx.i204.i.i, align 1
  %shr12.i205.i.i = lshr i32 %161, 8
  %conv10.i202.1.i.i = trunc i32 %shr12.i205.i.i to i8
  %175 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv10.i202.1.i.i, ptr %164, align 2
  %adapter.i209.i.i = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 3
  %176 = ptrtoint ptr %adapter.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %adapter.i209.i.i, align 8
  %call.i210.i.i = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %msg.i193.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210.i.i)
  %cmp15.i211.i.i = icmp slt i32 %call.i210.i.i, 0
  br i1 %cmp15.i211.i.i, label %do.end.i214.i.i, label %if.end.i199.i.i.ov5693_write_reg.exit215.i.i_crit_edge

if.end.i199.i.i.ov5693_write_reg.exit215.i.i_crit_edge: ; preds = %if.end.i199.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit215.i.i

do.end.i214.i.i:                                  ; preds = %if.end.i199.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i213.i.i = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i213.i.i, ptr noundef nonnull @.str.24, i32 noundef 14346, i32 noundef %call.i210.i.i) #14
  br label %ov5693_write_reg.exit215.i.i

ov5693_write_reg.exit215.i.i:                     ; preds = %do.end.i214.i.i, %if.end.i199.i.i.ov5693_write_reg.exit215.i.i_crit_edge, %ov5693_write_reg.exit191.i.i.ov5693_write_reg.exit215.i.i_crit_edge
  %ret.7.i.i = phi i32 [ %ret.6.i.i, %ov5693_write_reg.exit191.i.i.ov5693_write_reg.exit215.i.i_crit_edge ], [ %call.i210.i.i, %do.end.i214.i.i ], [ 0, %if.end.i199.i.i.ov5693_write_reg.exit215.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i193.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i192.i.i) #11
  %178 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %top.i.i, align 4
  %height11.i.i = getelementptr i8, ptr %1, i32 -72
  %180 = ptrtoint ptr %height11.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %height11.i.i, align 4
  %182 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i216.i.i) #11
  %184 = getelementptr inbounds i8, ptr %buf.i216.i.i, i32 2
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 -1, ptr %184, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i217.i.i) #11
  %186 = getelementptr inbounds i8, ptr %msg.i217.i.i, i32 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 327679, ptr %186, align 4
  %addr3.i218.i.i = getelementptr inbounds %struct.i2c_client, ptr %183, i32 0, i32 1
  %188 = ptrtoint ptr %addr3.i218.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %addr3.i218.i.i, align 2
  %190 = ptrtoint ptr %msg.i217.i.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %msg.i217.i.i, align 4
  %flags.i219.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i217.i.i, i32 0, i32 1
  %191 = ptrtoint ptr %flags.i219.i.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %flags.i219.i.i, align 2
  %buf4.i221.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i217.i.i, i32 0, i32 3
  %192 = ptrtoint ptr %buf4.i221.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %buf.i216.i.i, ptr %buf4.i221.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7.i.i)
  %cmp.i222.i.i = icmp slt i32 %ret.7.i.i, 0
  br i1 %cmp.i222.i.i, label %ov5693_write_reg.exit215.i.i.ov5693_write_reg.exit239.i.i_crit_edge, label %if.end.i223.i.i

ov5693_write_reg.exit215.i.i.ov5693_write_reg.exit239.i.i_crit_edge: ; preds = %ov5693_write_reg.exit215.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit239.i.i

if.end.i223.i.i:                                  ; preds = %ov5693_write_reg.exit215.i.i
  %add12.i.i = add i32 %181, %179
  %193 = ptrtoint ptr %buf.i216.i.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 14342, ptr %buf.i216.i.i, align 2
  %conv10.i226.i.i = trunc i32 %add12.i.i to i8
  %arrayidx.i228.i.i = getelementptr inbounds %struct.anon.101, ptr %buf.i216.i.i, i32 0, i32 1, i32 1
  %194 = ptrtoint ptr %arrayidx.i228.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv10.i226.i.i, ptr %arrayidx.i228.i.i, align 1
  %shr12.i229.i.i = lshr i32 %add12.i.i, 8
  %conv10.i226.1.i.i = trunc i32 %shr12.i229.i.i to i8
  %195 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv10.i226.1.i.i, ptr %184, align 2
  %adapter.i233.i.i = getelementptr inbounds %struct.i2c_client, ptr %183, i32 0, i32 3
  %196 = ptrtoint ptr %adapter.i233.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %adapter.i233.i.i, align 8
  %call.i234.i.i = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %msg.i217.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.i.i)
  %cmp15.i235.i.i = icmp slt i32 %call.i234.i.i, 0
  br i1 %cmp15.i235.i.i, label %do.end.i238.i.i, label %if.end.i223.i.i.ov5693_write_reg.exit239.i.i_crit_edge

if.end.i223.i.i.ov5693_write_reg.exit239.i.i_crit_edge: ; preds = %if.end.i223.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit239.i.i

do.end.i238.i.i:                                  ; preds = %if.end.i223.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i237.i.i = getelementptr inbounds %struct.i2c_client, ptr %183, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i237.i.i, ptr noundef nonnull @.str.24, i32 noundef 14342, i32 noundef %call.i234.i.i) #14
  br label %ov5693_write_reg.exit239.i.i

ov5693_write_reg.exit239.i.i:                     ; preds = %do.end.i238.i.i, %if.end.i223.i.i.ov5693_write_reg.exit239.i.i_crit_edge, %ov5693_write_reg.exit215.i.i.ov5693_write_reg.exit239.i.i_crit_edge
  %ret.8.i.i = phi i32 [ %ret.7.i.i, %ov5693_write_reg.exit215.i.i.ov5693_write_reg.exit239.i.i_crit_edge ], [ %call.i234.i.i, %do.end.i238.i.i ], [ 0, %if.end.i223.i.i.ov5693_write_reg.exit239.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i217.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i216.i.i) #11
  %inc_x_odd.i.i = getelementptr i8, ptr %1, i32 -16
  %198 = ptrtoint ptr %inc_x_odd.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %inc_x_odd.i.i, align 4
  %200 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i240.i.i) #11
  %202 = getelementptr inbounds i8, ptr %buf.i240.i.i, i32 2
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 -1, ptr %202, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i241.i.i) #11
  %204 = getelementptr inbounds i8, ptr %msg.i241.i.i, i32 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 262143, ptr %204, align 4
  %addr3.i242.i.i = getelementptr inbounds %struct.i2c_client, ptr %201, i32 0, i32 1
  %206 = ptrtoint ptr %addr3.i242.i.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %addr3.i242.i.i, align 2
  %208 = ptrtoint ptr %msg.i241.i.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %207, ptr %msg.i241.i.i, align 4
  %flags.i243.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241.i.i, i32 0, i32 1
  %209 = ptrtoint ptr %flags.i243.i.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %flags.i243.i.i, align 2
  %buf4.i245.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241.i.i, i32 0, i32 3
  %210 = ptrtoint ptr %buf4.i245.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %buf.i240.i.i, ptr %buf4.i245.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.8.i.i)
  %cmp.i246.i.i = icmp slt i32 %ret.8.i.i, 0
  br i1 %cmp.i246.i.i, label %ov5693_write_reg.exit239.i.i.ov5693_write_reg.exit263.i.i_crit_edge, label %if.end.i247.i.i

ov5693_write_reg.exit239.i.i.ov5693_write_reg.exit263.i.i_crit_edge: ; preds = %ov5693_write_reg.exit239.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit263.i.i

if.end.i247.i.i:                                  ; preds = %ov5693_write_reg.exit239.i.i
  %211 = ptrtoint ptr %buf.i240.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 14356, ptr %buf.i240.i.i, align 2
  %.tr.i.i = trunc i32 %199 to i8
  %212 = shl i8 %.tr.i.i, 4
  %phi.cast.i.i = or i8 %212, 1
  %213 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %phi.cast.i.i, ptr %202, align 2
  %adapter.i257.i.i = getelementptr inbounds %struct.i2c_client, ptr %201, i32 0, i32 3
  %214 = ptrtoint ptr %adapter.i257.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %adapter.i257.i.i, align 8
  %call.i258.i.i = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %msg.i241.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258.i.i)
  %cmp15.i259.i.i = icmp slt i32 %call.i258.i.i, 0
  br i1 %cmp15.i259.i.i, label %do.end.i262.i.i, label %if.end.i247.i.i.ov5693_write_reg.exit263.i.i_crit_edge

if.end.i247.i.i.ov5693_write_reg.exit263.i.i_crit_edge: ; preds = %if.end.i247.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit263.i.i

do.end.i262.i.i:                                  ; preds = %if.end.i247.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i261.i.i = getelementptr inbounds %struct.i2c_client, ptr %201, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i261.i.i, ptr noundef nonnull @.str.24, i32 noundef 14356, i32 noundef %call.i258.i.i) #14
  br label %ov5693_write_reg.exit263.i.i

ov5693_write_reg.exit263.i.i:                     ; preds = %do.end.i262.i.i, %if.end.i247.i.i.ov5693_write_reg.exit263.i.i_crit_edge, %ov5693_write_reg.exit239.i.i.ov5693_write_reg.exit263.i.i_crit_edge
  %ret.9.i.i = phi i32 [ %ret.8.i.i, %ov5693_write_reg.exit239.i.i.ov5693_write_reg.exit263.i.i_crit_edge ], [ %call.i258.i.i, %do.end.i262.i.i ], [ 0, %if.end.i247.i.i.ov5693_write_reg.exit263.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i241.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i240.i.i) #11
  %inc_y_odd.i.i = getelementptr i8, ptr %1, i32 -12
  %216 = ptrtoint ptr %inc_y_odd.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %inc_y_odd.i.i, align 4
  %218 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i264.i.i) #11
  %220 = getelementptr inbounds i8, ptr %buf.i264.i.i, i32 2
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_storeN_noabort(i32 %221, i32 4)
  store i32 -1, ptr %220, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i265.i.i) #11
  %222 = getelementptr inbounds i8, ptr %msg.i265.i.i, i32 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 262143, ptr %222, align 4
  %addr3.i266.i.i = getelementptr inbounds %struct.i2c_client, ptr %219, i32 0, i32 1
  %224 = ptrtoint ptr %addr3.i266.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %addr3.i266.i.i, align 2
  %226 = ptrtoint ptr %msg.i265.i.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %225, ptr %msg.i265.i.i, align 4
  %flags.i267.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i265.i.i, i32 0, i32 1
  %227 = ptrtoint ptr %flags.i267.i.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %flags.i267.i.i, align 2
  %buf4.i269.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i265.i.i, i32 0, i32 3
  %228 = ptrtoint ptr %buf4.i269.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %buf.i264.i.i, ptr %buf4.i269.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.9.i.i)
  %cmp.i270.i.i = icmp slt i32 %ret.9.i.i, 0
  br i1 %cmp.i270.i.i, label %ov5693_write_reg.exit263.i.i.ov5693_write_reg.exit287.thread.i.i_crit_edge, label %if.end.i271.i.i

ov5693_write_reg.exit263.i.i.ov5693_write_reg.exit287.thread.i.i_crit_edge: ; preds = %ov5693_write_reg.exit263.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ov5693_write_reg.exit287.thread.i.i

if.end.i271.i.i:                                  ; preds = %ov5693_write_reg.exit263.i.i
  %229 = ptrtoint ptr %buf.i264.i.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 14357, ptr %buf.i264.i.i, align 2
  %.tr302.i.i = trunc i32 %217 to i8
  %230 = shl i8 %.tr302.i.i, 4
  %phi.cast301.i.i = or i8 %230, 1
  %231 = ptrtoint ptr %220 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %phi.cast301.i.i, ptr %220, align 2
  %adapter.i281.i.i = getelementptr inbounds %struct.i2c_client, ptr %219, i32 0, i32 3
  %232 = ptrtoint ptr %adapter.i281.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %adapter.i281.i.i, align 8
  %call.i282.i.i = call i32 @i2c_transfer(ptr noundef %233, ptr noundef nonnull %msg.i265.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282.i.i)
  %cmp15.i283.i.i = icmp slt i32 %call.i282.i.i, 0
  br i1 %cmp15.i283.i.i, label %do.end.i286.i.i, label %if.end.i.i

do.end.i286.i.i:                                  ; preds = %if.end.i271.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i285.i.i = getelementptr inbounds %struct.i2c_client, ptr %219, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i285.i.i, ptr noundef nonnull @.str.24, i32 noundef 14357, i32 noundef %call.i282.i.i) #14
  br label %ov5693_write_reg.exit287.thread.i.i

ov5693_write_reg.exit287.thread.i.i:              ; preds = %do.end.i286.i.i, %ov5693_write_reg.exit263.i.i.ov5693_write_reg.exit287.thread.i.i_crit_edge
  %ret.10.ph.i.i = phi i32 [ %call.i282.i.i, %do.end.i286.i.i ], [ %ret.9.i.i, %ov5693_write_reg.exit263.i.i.ov5693_write_reg.exit287.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i265.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i264.i.i) #11
  br label %if.then10.i

if.end.i.i:                                       ; preds = %if.end.i271.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i265.i.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i264.i.i) #11
  %binning_y.i.i = getelementptr i8, ptr %1, i32 -19
  %234 = ptrtoint ptr %binning_y.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %binning_y.i.i, align 1, !range !161
  %236 = zext i8 %235 to i32
  %call.i.i = call fastcc i32 @ov5693_update_bits(ptr noundef %add.ptr, i32 noundef 79904, i32 noundef 1, i32 noundef %236) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not.i.i, label %ov5693_mode_configure.exit.i, label %if.end.i.i.if.then10.i_crit_edge

if.end.i.i.if.then10.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i

ov5693_mode_configure.exit.i:                     ; preds = %if.end.i.i
  %binning_x.i.i = getelementptr i8, ptr %1, i32 -20
  %237 = ptrtoint ptr %binning_x.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %binning_x.i.i, align 4, !range !161
  %239 = zext i8 %238 to i32
  %call22.i.i = call fastcc i32 @ov5693_update_bits(ptr noundef %add.ptr, i32 noundef 79905, i32 noundef 1, i32 noundef %239) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool9.not.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool9.not.i, label %if.end13.i, label %ov5693_mode_configure.exit.i.if.then10.i_crit_edge

ov5693_mode_configure.exit.i.if.then10.i_crit_edge: ; preds = %ov5693_mode_configure.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i

if.then10.i:                                      ; preds = %ov5693_mode_configure.exit.i.if.then10.i_crit_edge, %if.end.i.i.if.then10.i_crit_edge, %ov5693_write_reg.exit287.thread.i.i
  %retval.0.i75.i = phi i32 [ %call22.i.i, %ov5693_mode_configure.exit.i.if.then10.i_crit_edge ], [ %ret.10.ph.i.i, %ov5693_write_reg.exit287.thread.i.i ], [ %call.i.i, %if.end.i.i.if.then10.i_crit_edge ]
  %dev11.i = getelementptr i8, ptr %1, i32 -216
  %240 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev11.i, align 4
  %call12.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %241, i32 noundef %retval.0.i75.i, ptr noundef nonnull @.str.54) #11
  br label %ov5693_sensor_init.exit

if.end13.i:                                       ; preds = %ov5693_mode_configure.exit.i
  %242 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i58.i) #11
  %244 = getelementptr inbounds i8, ptr %buf.i.i58.i, i32 2
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_storeN_noabort(i32 %245, i32 4)
  store i32 16777215, ptr %244, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i59.i) #11
  %246 = getelementptr inbounds i8, ptr %msg.i.i59.i, i32 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 262143, ptr %246, align 4
  %addr3.i.i60.i = getelementptr inbounds %struct.i2c_client, ptr %243, i32 0, i32 1
  %248 = ptrtoint ptr %addr3.i.i60.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %addr3.i.i60.i, align 2
  %250 = ptrtoint ptr %msg.i.i59.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %msg.i.i59.i, align 4
  %flags.i.i61.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59.i, i32 0, i32 1
  %251 = ptrtoint ptr %flags.i.i61.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 0, ptr %flags.i.i61.i, align 2
  %buf4.i.i62.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59.i, i32 0, i32 3
  %252 = ptrtoint ptr %buf4.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %buf.i.i58.i, ptr %buf4.i.i62.i, align 4
  %253 = ptrtoint ptr %buf.i.i58.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 256, ptr %buf.i.i58.i, align 2
  %adapter.i.i63.i = getelementptr inbounds %struct.i2c_client, ptr %243, i32 0, i32 3
  %254 = ptrtoint ptr %adapter.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %adapter.i.i63.i, align 8
  %call.i.i64.i = call i32 @i2c_transfer(ptr noundef %255, ptr noundef nonnull %msg.i.i59.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64.i)
  %cmp15.i.i65.i = icmp slt i32 %call.i.i64.i, 0
  br i1 %cmp15.i.i65.i, label %ov5693_sensor_init.exit.thread16, label %ov5693_sensor_init.exit.thread

ov5693_sensor_init.exit.thread:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i59.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i58.i) #11
  br label %out_unlock

ov5693_sensor_init.exit.thread16:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i67.i = getelementptr inbounds %struct.i2c_client, ptr %243, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i67.i, ptr noundef nonnull @.str.24, i32 noundef 256, i32 noundef %call.i.i64.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i59.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i58.i) #11
  %dev17.i = getelementptr i8, ptr %1, i32 -216
  %256 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev17.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.55) #14
  br label %do.end

ov5693_sensor_init.exit:                          ; preds = %if.then10.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call6.i, %if.then4.i ], [ %call12.i, %if.then10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %ov5693_sensor_init.exit.out_unlock_crit_edge, label %ov5693_sensor_init.exit.do.end_crit_edge

ov5693_sensor_init.exit.do.end_crit_edge:         ; preds = %ov5693_sensor_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

ov5693_sensor_init.exit.out_unlock_crit_edge:     ; preds = %ov5693_sensor_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

do.end:                                           ; preds = %ov5693_sensor_init.exit.do.end_crit_edge, %ov5693_sensor_init.exit.thread16
  %retval.0.i19 = phi i32 [ %call.i.i64.i, %ov5693_sensor_init.exit.thread16 ], [ %retval.0.i, %ov5693_sensor_init.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #14
  %reset.i = getelementptr i8, ptr %1, i32 -120
  %258 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %reset.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %259, i32 noundef 1) #11
  %powerdown.i = getelementptr i8, ptr %1, i32 -116
  %260 = ptrtoint ptr %powerdown.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %powerdown.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %261, i32 noundef 1) #11
  %supplies.i = getelementptr i8, ptr %1, i32 -112
  %call.i = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #11
  %clk.i = getelementptr i8, ptr %1, i32 -88
  %262 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %263) #11
  call void @clk_unprepare(ptr noundef %263) #11
  br label %out_unlock

out_unlock:                                       ; preds = %do.end, %ov5693_sensor_init.exit.out_unlock_crit_edge, %ov5693_sensor_init.exit.thread, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_unlock_crit_edge ], [ %retval.0.i19, %do.end ], [ 0, %ov5693_sensor_init.exit.out_unlock_crit_edge ], [ 0, %ov5693_sensor_init.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !122, !124, !126, !128, !129, !130, !131, !133, !135, !137, !139, !140, !141, !142, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__initcall__kmod_ov5693__333_1534_ov5693_driver_init6, !1, !"__initcall__kmod_ov5693__333_1534_ov5693_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov5693.c", i32 1534, i32 1}
!2 = !{ptr @__exitcall_ov5693_driver_exit, !1, !"__exitcall_ov5693_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description334, !4, !"__UNIQUE_ID_description334", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov5693.c", i32 1536, i32 1}
!5 = !{ptr @__UNIQUE_ID_file335, !6, !"__UNIQUE_ID_file335", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov5693.c", i32 1537, i32 1}
!7 = !{ptr @__UNIQUE_ID_license336, !6, !"__UNIQUE_ID_license336", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/ov5693.c", i32 1527, i32 11}
!10 = !{ptr @ov5693_driver, !11, !"ov5693_driver", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov5693.c", i32 1525, i32 26}
!12 = !{ptr @ov5693_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov5693.c", i32 1408, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/ov5693.c", i32 1412, i32 43}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/ov5693.c", i32 1414, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ov5693_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ov5693_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/ov5693.c", i32 1420, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ov5693_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov5693_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov5693.c", i32 1430, i32 10}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ov5693.c", i32 1469, i32 3}
!34 = !{ptr @ov5693_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ov5693_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov5693.c", i32 1363, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ov5693_check_hwcfg._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ov5693_check_hwcfg._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov5693.c", i32 1369, i32 3}
!43 = !{ptr @ov5693_check_hwcfg._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ov5693_check_hwcfg._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/ov5693.c", i32 1379, i32 3}
!47 = !{ptr @ov5693_check_hwcfg._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ov5693_check_hwcfg._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ov5693_ops, !50, !"ov5693_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ov5693.c", i32 1202, i32 37}
!51 = !{ptr @ov5693_video_ops, !52, !"ov5693_video_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/ov5693.c", i32 1188, i32 43}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ov5693.c", i32 447, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ov5693_write_reg._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ov5693_write_reg._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @ov5693_pad_ops, !59, !"ov5693_pad_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov5693.c", i32 1193, i32 41}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/media/v4l2-subdev.h", i32 1016, i32 6}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov5693.c", i32 1315, i32 55}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov5693.c", i32 1318, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ov5693_configure_gpios._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ov5693_configure_gpios._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/ov5693.c", i32 1322, i32 59}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/ov5693.c", i32 1325, i32 3}
!73 = !{ptr @ov5693_configure_gpios._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ov5693_configure_gpios._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/ov5693.c", i32 356, i32 2}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ov5693.c", i32 357, i32 2}
!79 = distinct !{null, !80, !"ov5693_supply_names", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ov5693.c", i32 355, i32 27}
!81 = !{ptr @ov5693_default_crop, !82, !"ov5693_default_crop", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ov5693.c", i32 338, i32 31}
!83 = !{ptr @ov5693_default_fmt, !84, !"ov5693_default_fmt", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ov5693.c", i32 345, i32 40}
!85 = !{ptr @ov5693_init_controls._key, !86, !"_key", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/ov5693.c", i32 1219, i32 8}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov5693.c", i32 1287, i32 3}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ov5693_init_controls._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ov5693_init_controls._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ov5693_ctrl_ops, !94, !"ov5693_ctrl_ops", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov5693.c", i32 674, i32 35}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/ov5693.c", i32 406, i32 10}
!97 = !{ptr @ov5693_test_pattern_bits, !98, !"ov5693_test_pattern_bits", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov5693.c", i32 367, i32 17}
!99 = !{ptr @link_freq_menu_items, !100, !"link_freq_menu_items", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ov5693.c", i32 351, i32 18}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/ov5693.c", i32 361, i32 2}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/ov5693.c", i32 362, i32 2}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov5693.c", i32 363, i32 2}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/ov5693.c", i32 364, i32 2}
!109 = !{ptr @ov5693_test_pattern_menu, !110, !"ov5693_test_pattern_menu", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov5693.c", i32 360, i32 27}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov5693.c", i32 809, i32 3}
!113 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ov5693_sensor_powerup._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @ov5693_sensor_powerup._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/ov5693.c", i32 815, i32 3}
!118 = !{ptr @ov5693_sensor_powerup._entry.46, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ov5693_sensor_powerup._entry_ptr.48, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/ov5693.c", i32 879, i32 10}
!122 = !{ptr @ov5693_acpi_match, !123, !"ov5693_acpi_match", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ov5693.c", i32 1519, i32 36}
!124 = !{ptr @ov5693_pm_ops, !125, !"ov5693_pm_ops", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov5693.c", i32 1515, i32 32}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ov5693.c", i32 855, i32 3}
!128 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ov5693_sensor_resume._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ov5693_sensor_resume._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/ov5693.c", i32 771, i32 10}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/ov5693.c", i32 776, i32 10}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/ov5693.c", i32 781, i32 10}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/ov5693.c", i32 785, i32 3}
!139 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ov5693_sensor_init._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @ov5693_sensor_init._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = distinct !{null, !143, !"ov5693_global_setting", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov5693.c", i32 333, i32 37}
!144 = !{ptr @ov5693_global_regs, !145, !"ov5693_global_regs", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/ov5693.c", i32 186, i32 32}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"auto-init"}
!156 = !{i64 2148385810, i64 2148385836, i64 2148385865, i64 2148385899, i64 2148385930, i64 2148385953}
!157 = !{i64 2148385229}
!158 = !{i64 870052, i64 870077, i64 870099, i64 870115, i64 870127, i64 870147, i64 870171, i64 870187, i64 870199}
!159 = !{i64 2148385417}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{i8 0, i8 2}
