; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov8856.c_pt.bc'
source_filename = "../drivers/media/i2c/ov8856.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ov8856_lane_cfg = type { [2 x i64], [2 x %struct.ov8856_link_freq_config], [4 x %struct.ov8856_mode] }
%struct.ov8856_link_freq_config = type { %struct.ov8856_reg_list }
%struct.ov8856_reg_list = type { i32, ptr }
%struct.ov8856_mode = type { i32, i32, i32, i32, i32, i32, %struct.ov8856_reg_list, i8, i32 }
%struct.ov8856_mipi_data_rates = type { [7 x %struct.ov8856_reg], [7 x %struct.ov8856_reg] }
%struct.ov8856_reg = type { i16, i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ov8856 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, i8, i8, ptr, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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

@__initcall__kmod_ov8856__295_2583_ov8856_i2c_driver_init6 = internal global ptr @ov8856_i2c_driver_init, section ".initcall6.init", align 4
@ov8856_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov8856_remove, ptr @ov8856_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov8856_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov8856_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov8856_i2c_driver_exit = internal global ptr @ov8856_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [42 x i8] c"ov8856.author=Ben Kao <ben.kao@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [51 x i8] c"ov8856.description=OmniVision OV8856 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [37 x i8] c"ov8856.file=drivers/media/i2c/ov8856\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [22 x i8] c"ov8856.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov8856\00", [25 x i8] zeroinitializer }, align 32
@ov8856_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov8856\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov8856_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ov8856_suspend, ptr @ov8856_resume, ptr @ov8856_suspend, ptr @ov8856_resume, ptr @ov8856_suspend, ptr @ov8856_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov8856_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get HW configuration: %d\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov8856_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov8856.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov8856_probe._entry_ptr = internal global ptr @ov8856_probe._entry, section ".printk_index", align 4
@ov8856_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov8856_video_ops, ptr null, ptr null, ptr null, ptr @ov8856_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov8856_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to power on\0A\00", [44 x i8] zeroinitializer }, align 32
@ov8856_probe._entry_ptr.8 = internal global ptr @ov8856_probe._entry.6, section ".printk_index", align 4
@ov8856_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find sensor: %d\00", [38 x i8] zeroinitializer }, align 32
@ov8856_probe._entry_ptr.11 = internal global ptr @ov8856_probe._entry.9, section ".printk_index", align 4
@ov8856_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ov8856->mutex\00", [17 x i8] zeroinitializer }, align 32
@ov8856_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 2509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@ov8856_probe._entry_ptr.15 = internal global ptr @ov8856_probe._entry.13, section ".printk_index", align 4
@ov8856_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov8856_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov8856_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ov8856_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 2520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init entity pads: %d\00", [33 x i8] zeroinitializer }, align 32
@ov8856_probe._entry_ptr.18 = internal global ptr @ov8856_probe._entry.16, section ".printk_index", align 4
@ov8856_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 2527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register V4L2 subdev: %d\00", [61 x i8] zeroinitializer }, align 32
@ov8856_probe._entry_ptr.21 = internal global ptr @ov8856_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xvclk\00", [26 x i8] zeroinitializer }, align 32
@ov8856_get_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 2374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not get xvclk clock (%pe)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov8856_get_hwcfg\00", [47 x i8] zeroinitializer }, align 32
@ov8856_get_hwcfg._entry_ptr = internal global ptr @ov8856_get_hwcfg._entry, section ".printk_index", align 4
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov8856_get_hwcfg._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.3, i32 2398, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"external clock rate %u is unsupported\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ov8856_get_hwcfg._entry_ptr.30 = internal global ptr @ov8856_get_hwcfg._entry.27, section ".printk_index", align 4
@ov8856_get_hwcfg._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.3, i32 2413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"number of CSI2 data lanes %d is not supported\00", [50 x i8] zeroinitializer }, align 32
@ov8856_get_hwcfg._entry_ptr.33 = internal global ptr @ov8856_get_hwcfg._entry.31, section ".printk_index", align 4
@ov8856_get_hwcfg.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.34, i8 2, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Using %u data lanes\0A\00", [43 x i8] zeroinitializer }, align 32
@lane_cfg_2 = internal constant { %struct.ov8856_lane_cfg, [32 x i8] } { %struct.ov8856_lane_cfg { [2 x i64] [i64 720000000, i64 360000000], [2 x %struct.ov8856_link_freq_config] [%struct.ov8856_link_freq_config { %struct.ov8856_reg_list { i32 7, ptr @mipi_data_rate_lane_2 } }, %struct.ov8856_link_freq_config { %struct.ov8856_reg_list { i32 7, ptr getelementptr (i8, ptr @mipi_data_rate_lane_2, i64 28) } }], [4 x %struct.ov8856_mode] [%struct.ov8856_mode { i32 3280, i32 2464, i32 1928, i32 2488, i32 2488, i32 0, %struct.ov8856_reg_list { i32 188, ptr @lane_2_mode_3280x2464 }, i8 2, i32 1 }, %struct.ov8856_mode { i32 1640, i32 1232, i32 3168, i32 1514, i32 1514, i32 1, %struct.ov8856_reg_list { i32 188, ptr @lane_2_mode_1640x1232 }, i8 2, i32 1 }, %struct.ov8856_mode zeroinitializer, %struct.ov8856_mode zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@lane_cfg_4 = internal constant { %struct.ov8856_lane_cfg, [32 x i8] } { %struct.ov8856_lane_cfg { [2 x i64] [i64 360000000, i64 180000000], [2 x %struct.ov8856_link_freq_config] [%struct.ov8856_link_freq_config { %struct.ov8856_reg_list { i32 7, ptr @mipi_data_rate_lane_4 } }, %struct.ov8856_link_freq_config { %struct.ov8856_reg_list { i32 7, ptr getelementptr (i8, ptr @mipi_data_rate_lane_4, i64 28) } }], [4 x %struct.ov8856_mode] [%struct.ov8856_mode { i32 3280, i32 2464, i32 1928, i32 2488, i32 2488, i32 0, %struct.ov8856_reg_list { i32 187, ptr @lane_4_mode_3280x2464 }, i8 4, i32 1 }, %struct.ov8856_mode { i32 1640, i32 1232, i32 3820, i32 1256, i32 1256, i32 1, %struct.ov8856_reg_list { i32 187, ptr @lane_4_mode_1640x1232 }, i8 4, i32 1 }, %struct.ov8856_mode { i32 3264, i32 2448, i32 1932, i32 2482, i32 2482, i32 0, %struct.ov8856_reg_list { i32 200, ptr @lane_4_mode_3264x2448 }, i8 4, i32 0 }, %struct.ov8856_mode { i32 1632, i32 1224, i32 1932, i32 2482, i32 2482, i32 1, %struct.ov8856_reg_list { i32 200, ptr @lane_4_mode_1632x1224 }, i8 4, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@ov8856_get_hwcfg._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.3, i32 2428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequencies defined\00", [36 x i8] zeroinitializer }, align 32
@ov8856_get_hwcfg._entry_ptr.37 = internal global ptr @ov8856_get_hwcfg._entry.35, section ".printk_index", align 4
@ov8856_get_hwcfg._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.3, i32 2442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no link frequency %lld supported\00", [63 x i8] zeroinitializer }, align 32
@ov8856_get_hwcfg._entry_ptr.40 = internal global ptr @ov8856_get_hwcfg._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dovdd\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@mipi_data_rate_lane_2 = internal constant { %struct.ov8856_mipi_data_rates, [40 x i8] } { %struct.ov8856_mipi_data_rates { [7 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 259, i8 1 }, %struct.ov8856_reg { i16 256, i8 0 }, %struct.ov8856_reg { i16 770, i8 67 }, %struct.ov8856_reg { i16 771, i8 0 }, %struct.ov8856_reg { i16 779, i8 2 }, %struct.ov8856_reg { i16 781, i8 75 }, %struct.ov8856_reg { i16 798, i8 12 }], [7 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 259, i8 1 }, %struct.ov8856_reg { i16 256, i8 0 }, %struct.ov8856_reg { i16 770, i8 75 }, %struct.ov8856_reg { i16 771, i8 1 }, %struct.ov8856_reg { i16 779, i8 2 }, %struct.ov8856_reg { i16 781, i8 75 }, %struct.ov8856_reg { i16 798, i8 12 }] }, [40 x i8] zeroinitializer }, align 32
@lane_2_mode_3280x2464 = internal constant { [188 x %struct.ov8856_reg], [176 x i8] } { [188 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 12288, i8 32 }, %struct.ov8856_reg { i16 12291, i8 8 }, %struct.ov8856_reg { i16 12302, i8 32 }, %struct.ov8856_reg { i16 12304, i8 0 }, %struct.ov8856_reg { i16 12309, i8 -124 }, %struct.ov8856_reg { i16 12312, i8 50 }, %struct.ov8856_reg { i16 12321, i8 35 }, %struct.ov8856_reg { i16 12339, i8 36 }, %struct.ov8856_reg { i16 13568, i8 0 }, %struct.ov8856_reg { i16 13569, i8 -102 }, %struct.ov8856_reg { i16 13570, i8 32 }, %struct.ov8856_reg { i16 13571, i8 8 }, %struct.ov8856_reg { i16 13573, i8 -125 }, %struct.ov8856_reg { i16 13576, i8 1 }, %struct.ov8856_reg { i16 13577, i8 -128 }, %struct.ov8856_reg { i16 13580, i8 0 }, %struct.ov8856_reg { i16 13581, i8 -128 }, %struct.ov8856_reg { i16 13582, i8 4 }, %struct.ov8856_reg { i16 13583, i8 0 }, %struct.ov8856_reg { i16 13584, i8 0 }, %struct.ov8856_reg { i16 13585, i8 2 }, %struct.ov8856_reg { i16 13586, i8 0 }, %struct.ov8856_reg { i16 13824, i8 114 }, %struct.ov8856_reg { i16 13825, i8 64 }, %struct.ov8856_reg { i16 13826, i8 48 }, %struct.ov8856_reg { i16 13840, i8 -59 }, %struct.ov8856_reg { i16 13841, i8 88 }, %struct.ov8856_reg { i16 13842, i8 92 }, %struct.ov8856_reg { i16 13843, i8 -54 }, %struct.ov8856_reg { i16 13844, i8 80 }, %struct.ov8856_reg { i16 13864, i8 -1 }, %struct.ov8856_reg { i16 13865, i8 -1 }, %struct.ov8856_reg { i16 13866, i8 -1 }, %struct.ov8856_reg { i16 13875, i8 16 }, %struct.ov8856_reg { i16 13876, i8 16 }, %struct.ov8856_reg { i16 13877, i8 16 }, %struct.ov8856_reg { i16 13878, i8 16 }, %struct.ov8856_reg { i16 13923, i8 8 }, %struct.ov8856_reg { i16 13929, i8 52 }, %struct.ov8856_reg { i16 13934, i8 16 }, %struct.ov8856_reg { i16 14086, i8 -122 }, %struct.ov8856_reg { i16 14091, i8 126 }, %struct.ov8856_reg { i16 14100, i8 35 }, %struct.ov8856_reg { i16 14128, i8 18 }, %struct.ov8856_reg { i16 14131, i8 16 }, %struct.ov8856_reg { i16 14180, i8 0 }, %struct.ov8856_reg { i16 14181, i8 0 }, %struct.ov8856_reg { i16 14185, i8 98 }, %struct.ov8856_reg { i16 14186, i8 42 }, %struct.ov8856_reg { i16 14187, i8 48 }, %struct.ov8856_reg { i16 14208, i8 0 }, %struct.ov8856_reg { i16 14209, i8 36 }, %struct.ov8856_reg { i16 14210, i8 0 }, %struct.ov8856_reg { i16 14211, i8 35 }, %struct.ov8856_reg { i16 14232, i8 47 }, %struct.ov8856_reg { i16 14241, i8 96 }, %struct.ov8856_reg { i16 14248, i8 106 }, %struct.ov8856_reg { i16 14251, i8 63 }, %struct.ov8856_reg { i16 14274, i8 4 }, %struct.ov8856_reg { i16 14275, i8 -15 }, %struct.ov8856_reg { i16 14281, i8 -128 }, %struct.ov8856_reg { i16 14283, i8 22 }, %struct.ov8856_reg { i16 14284, i8 22 }, %struct.ov8856_reg { i16 14285, i8 22 }, %struct.ov8856_reg { i16 14286, i8 22 }, %struct.ov8856_reg { i16 14336, i8 0 }, %struct.ov8856_reg { i16 14337, i8 0 }, %struct.ov8856_reg { i16 14338, i8 0 }, %struct.ov8856_reg { i16 14339, i8 6 }, %struct.ov8856_reg { i16 14340, i8 12 }, %struct.ov8856_reg { i16 14341, i8 -33 }, %struct.ov8856_reg { i16 14342, i8 9 }, %struct.ov8856_reg { i16 14343, i8 -89 }, %struct.ov8856_reg { i16 14344, i8 12 }, %struct.ov8856_reg { i16 14345, i8 -48 }, %struct.ov8856_reg { i16 14346, i8 9 }, %struct.ov8856_reg { i16 14347, i8 -96 }, %struct.ov8856_reg { i16 14348, i8 7 }, %struct.ov8856_reg { i16 14349, i8 -120 }, %struct.ov8856_reg { i16 14350, i8 9 }, %struct.ov8856_reg { i16 14351, i8 -72 }, %struct.ov8856_reg { i16 14352, i8 0 }, %struct.ov8856_reg { i16 14353, i8 0 }, %struct.ov8856_reg { i16 14354, i8 0 }, %struct.ov8856_reg { i16 14355, i8 1 }, %struct.ov8856_reg { i16 14356, i8 1 }, %struct.ov8856_reg { i16 14357, i8 1 }, %struct.ov8856_reg { i16 14358, i8 0 }, %struct.ov8856_reg { i16 14359, i8 0 }, %struct.ov8856_reg { i16 14360, i8 0 }, %struct.ov8856_reg { i16 14361, i8 0 }, %struct.ov8856_reg { i16 14368, i8 -128 }, %struct.ov8856_reg { i16 14369, i8 70 }, %struct.ov8856_reg { i16 14378, i8 1 }, %struct.ov8856_reg { i16 14379, i8 1 }, %struct.ov8856_reg { i16 14384, i8 6 }, %struct.ov8856_reg { i16 14390, i8 2 }, %struct.ov8856_reg { i16 14391, i8 16 }, %struct.ov8856_reg { i16 14434, i8 4 }, %struct.ov8856_reg { i16 14435, i8 8 }, %struct.ov8856_reg { i16 15552, i8 51 }, %struct.ov8856_reg { i16 15749, i8 20 }, %struct.ov8856_reg { i16 15756, i8 115 }, %struct.ov8856_reg { i16 15757, i8 -34 }, %struct.ov8856_reg { i16 16385, i8 -32 }, %struct.ov8856_reg { i16 16387, i8 64 }, %struct.ov8856_reg { i16 16392, i8 0 }, %struct.ov8856_reg { i16 16393, i8 11 }, %struct.ov8856_reg { i16 16394, i8 0 }, %struct.ov8856_reg { i16 16395, i8 -124 }, %struct.ov8856_reg { i16 16399, i8 -128 }, %struct.ov8856_reg { i16 16400, i8 -16 }, %struct.ov8856_reg { i16 16401, i8 -1 }, %struct.ov8856_reg { i16 16402, i8 2 }, %struct.ov8856_reg { i16 16403, i8 1 }, %struct.ov8856_reg { i16 16404, i8 1 }, %struct.ov8856_reg { i16 16405, i8 1 }, %struct.ov8856_reg { i16 16450, i8 0 }, %struct.ov8856_reg { i16 16451, i8 -128 }, %struct.ov8856_reg { i16 16452, i8 0 }, %struct.ov8856_reg { i16 16453, i8 -128 }, %struct.ov8856_reg { i16 16454, i8 0 }, %struct.ov8856_reg { i16 16455, i8 -128 }, %struct.ov8856_reg { i16 16456, i8 0 }, %struct.ov8856_reg { i16 16457, i8 -128 }, %struct.ov8856_reg { i16 16449, i8 3 }, %struct.ov8856_reg { i16 16460, i8 32 }, %struct.ov8856_reg { i16 16461, i8 0 }, %struct.ov8856_reg { i16 16462, i8 32 }, %struct.ov8856_reg { i16 16899, i8 -128 }, %struct.ov8856_reg { i16 17159, i8 48 }, %struct.ov8856_reg { i16 17175, i8 0 }, %struct.ov8856_reg { i16 17667, i8 8 }, %struct.ov8856_reg { i16 17921, i8 -128 }, %struct.ov8856_reg { i16 18432, i8 68 }, %struct.ov8856_reg { i16 18454, i8 83 }, %struct.ov8856_reg { i16 18459, i8 88 }, %struct.ov8856_reg { i16 18463, i8 39 }, %struct.ov8856_reg { i16 18487, i8 12 }, %struct.ov8856_reg { i16 18492, i8 15 }, %struct.ov8856_reg { i16 18507, i8 5 }, %struct.ov8856_reg { i16 20480, i8 87 }, %struct.ov8856_reg { i16 20481, i8 10 }, %struct.ov8856_reg { i16 20484, i8 4 }, %struct.ov8856_reg { i16 20526, i8 3 }, %struct.ov8856_reg { i16 20528, i8 65 }, %struct.ov8856_reg { i16 22421, i8 2 }, %struct.ov8856_reg { i16 22422, i8 32 }, %struct.ov8856_reg { i16 22423, i8 32 }, %struct.ov8856_reg { i16 22424, i8 -43 }, %struct.ov8856_reg { i16 22425, i8 -43 }, %struct.ov8856_reg { i16 22426, i8 0 }, %struct.ov8856_reg { i16 22427, i8 80 }, %struct.ov8856_reg { i16 22428, i8 0 }, %struct.ov8856_reg { i16 22429, i8 44 }, %struct.ov8856_reg { i16 22430, i8 12 }, %struct.ov8856_reg { i16 22431, i8 64 }, %struct.ov8856_reg { i16 22432, i8 9 }, %struct.ov8856_reg { i16 22433, i8 64 }, %struct.ov8856_reg { i16 22400, i8 20 }, %struct.ov8856_reg { i16 22401, i8 15 }, %struct.ov8856_reg { i16 22402, i8 68 }, %struct.ov8856_reg { i16 22403, i8 2 }, %struct.ov8856_reg { i16 22404, i8 1 }, %struct.ov8856_reg { i16 22405, i8 1 }, %struct.ov8856_reg { i16 22406, i8 0 }, %struct.ov8856_reg { i16 22407, i8 4 }, %struct.ov8856_reg { i16 22408, i8 2 }, %struct.ov8856_reg { i16 22409, i8 15 }, %struct.ov8856_reg { i16 22410, i8 -3 }, %struct.ov8856_reg { i16 22411, i8 -11 }, %struct.ov8856_reg { i16 22412, i8 -11 }, %struct.ov8856_reg { i16 22413, i8 3 }, %struct.ov8856_reg { i16 22414, i8 8 }, %struct.ov8856_reg { i16 22415, i8 12 }, %struct.ov8856_reg { i16 22416, i8 8 }, %struct.ov8856_reg { i16 22417, i8 4 }, %struct.ov8856_reg { i16 22418, i8 0 }, %struct.ov8856_reg { i16 22419, i8 82 }, %struct.ov8856_reg { i16 22420, i8 -93 }, %struct.ov8856_reg { i16 23032, i8 61 }, %struct.ov8856_reg { i16 23048, i8 2 }, %struct.ov8856_reg { i16 23296, i8 2 }, %struct.ov8856_reg { i16 23297, i8 16 }, %struct.ov8856_reg { i16 23298, i8 3 }, %struct.ov8856_reg { i16 23299, i8 -49 }, %struct.ov8856_reg { i16 23301, i8 108 }, %struct.ov8856_reg { i16 24064, i8 0 }], [176 x i8] zeroinitializer }, align 32
@lane_2_mode_1640x1232 = internal constant { [188 x %struct.ov8856_reg], [176 x i8] } { [188 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 12288, i8 32 }, %struct.ov8856_reg { i16 12291, i8 8 }, %struct.ov8856_reg { i16 12302, i8 32 }, %struct.ov8856_reg { i16 12304, i8 0 }, %struct.ov8856_reg { i16 12309, i8 -124 }, %struct.ov8856_reg { i16 12312, i8 50 }, %struct.ov8856_reg { i16 12321, i8 35 }, %struct.ov8856_reg { i16 12339, i8 36 }, %struct.ov8856_reg { i16 13568, i8 0 }, %struct.ov8856_reg { i16 13569, i8 76 }, %struct.ov8856_reg { i16 13570, i8 -32 }, %struct.ov8856_reg { i16 13571, i8 8 }, %struct.ov8856_reg { i16 13573, i8 -125 }, %struct.ov8856_reg { i16 13576, i8 1 }, %struct.ov8856_reg { i16 13577, i8 -128 }, %struct.ov8856_reg { i16 13580, i8 0 }, %struct.ov8856_reg { i16 13581, i8 -128 }, %struct.ov8856_reg { i16 13582, i8 4 }, %struct.ov8856_reg { i16 13583, i8 0 }, %struct.ov8856_reg { i16 13584, i8 0 }, %struct.ov8856_reg { i16 13585, i8 2 }, %struct.ov8856_reg { i16 13586, i8 0 }, %struct.ov8856_reg { i16 13824, i8 114 }, %struct.ov8856_reg { i16 13825, i8 64 }, %struct.ov8856_reg { i16 13826, i8 48 }, %struct.ov8856_reg { i16 13840, i8 -59 }, %struct.ov8856_reg { i16 13841, i8 88 }, %struct.ov8856_reg { i16 13842, i8 92 }, %struct.ov8856_reg { i16 13843, i8 -54 }, %struct.ov8856_reg { i16 13844, i8 80 }, %struct.ov8856_reg { i16 13864, i8 -1 }, %struct.ov8856_reg { i16 13865, i8 -1 }, %struct.ov8856_reg { i16 13866, i8 -1 }, %struct.ov8856_reg { i16 13875, i8 16 }, %struct.ov8856_reg { i16 13876, i8 16 }, %struct.ov8856_reg { i16 13877, i8 16 }, %struct.ov8856_reg { i16 13878, i8 16 }, %struct.ov8856_reg { i16 13923, i8 8 }, %struct.ov8856_reg { i16 13929, i8 52 }, %struct.ov8856_reg { i16 13934, i8 8 }, %struct.ov8856_reg { i16 14086, i8 -122 }, %struct.ov8856_reg { i16 14091, i8 126 }, %struct.ov8856_reg { i16 14100, i8 39 }, %struct.ov8856_reg { i16 14128, i8 18 }, %struct.ov8856_reg { i16 14131, i8 16 }, %struct.ov8856_reg { i16 14180, i8 0 }, %struct.ov8856_reg { i16 14181, i8 0 }, %struct.ov8856_reg { i16 14185, i8 98 }, %struct.ov8856_reg { i16 14186, i8 42 }, %struct.ov8856_reg { i16 14187, i8 48 }, %struct.ov8856_reg { i16 14208, i8 0 }, %struct.ov8856_reg { i16 14209, i8 36 }, %struct.ov8856_reg { i16 14210, i8 0 }, %struct.ov8856_reg { i16 14211, i8 35 }, %struct.ov8856_reg { i16 14232, i8 47 }, %struct.ov8856_reg { i16 14241, i8 96 }, %struct.ov8856_reg { i16 14248, i8 106 }, %struct.ov8856_reg { i16 14251, i8 63 }, %struct.ov8856_reg { i16 14274, i8 20 }, %struct.ov8856_reg { i16 14275, i8 -15 }, %struct.ov8856_reg { i16 14281, i8 -128 }, %struct.ov8856_reg { i16 14283, i8 22 }, %struct.ov8856_reg { i16 14284, i8 22 }, %struct.ov8856_reg { i16 14285, i8 22 }, %struct.ov8856_reg { i16 14286, i8 22 }, %struct.ov8856_reg { i16 14336, i8 0 }, %struct.ov8856_reg { i16 14337, i8 0 }, %struct.ov8856_reg { i16 14338, i8 0 }, %struct.ov8856_reg { i16 14339, i8 0 }, %struct.ov8856_reg { i16 14340, i8 12 }, %struct.ov8856_reg { i16 14341, i8 -33 }, %struct.ov8856_reg { i16 14342, i8 9 }, %struct.ov8856_reg { i16 14343, i8 -81 }, %struct.ov8856_reg { i16 14344, i8 6 }, %struct.ov8856_reg { i16 14345, i8 104 }, %struct.ov8856_reg { i16 14346, i8 4 }, %struct.ov8856_reg { i16 14347, i8 -48 }, %struct.ov8856_reg { i16 14348, i8 12 }, %struct.ov8856_reg { i16 14349, i8 96 }, %struct.ov8856_reg { i16 14350, i8 5 }, %struct.ov8856_reg { i16 14351, i8 -22 }, %struct.ov8856_reg { i16 14352, i8 0 }, %struct.ov8856_reg { i16 14353, i8 4 }, %struct.ov8856_reg { i16 14354, i8 0 }, %struct.ov8856_reg { i16 14355, i8 5 }, %struct.ov8856_reg { i16 14356, i8 3 }, %struct.ov8856_reg { i16 14357, i8 1 }, %struct.ov8856_reg { i16 14358, i8 0 }, %struct.ov8856_reg { i16 14359, i8 0 }, %struct.ov8856_reg { i16 14360, i8 0 }, %struct.ov8856_reg { i16 14361, i8 0 }, %struct.ov8856_reg { i16 14368, i8 -112 }, %struct.ov8856_reg { i16 14369, i8 103 }, %struct.ov8856_reg { i16 14378, i8 3 }, %struct.ov8856_reg { i16 14379, i8 1 }, %struct.ov8856_reg { i16 14384, i8 6 }, %struct.ov8856_reg { i16 14390, i8 2 }, %struct.ov8856_reg { i16 14391, i8 16 }, %struct.ov8856_reg { i16 14434, i8 4 }, %struct.ov8856_reg { i16 14435, i8 8 }, %struct.ov8856_reg { i16 15552, i8 51 }, %struct.ov8856_reg { i16 15749, i8 20 }, %struct.ov8856_reg { i16 15756, i8 115 }, %struct.ov8856_reg { i16 15757, i8 -34 }, %struct.ov8856_reg { i16 16385, i8 -32 }, %struct.ov8856_reg { i16 16387, i8 64 }, %struct.ov8856_reg { i16 16392, i8 0 }, %struct.ov8856_reg { i16 16393, i8 5 }, %struct.ov8856_reg { i16 16394, i8 0 }, %struct.ov8856_reg { i16 16395, i8 -124 }, %struct.ov8856_reg { i16 16399, i8 -128 }, %struct.ov8856_reg { i16 16400, i8 -16 }, %struct.ov8856_reg { i16 16401, i8 -1 }, %struct.ov8856_reg { i16 16402, i8 2 }, %struct.ov8856_reg { i16 16403, i8 1 }, %struct.ov8856_reg { i16 16404, i8 1 }, %struct.ov8856_reg { i16 16405, i8 1 }, %struct.ov8856_reg { i16 16450, i8 0 }, %struct.ov8856_reg { i16 16451, i8 -128 }, %struct.ov8856_reg { i16 16452, i8 0 }, %struct.ov8856_reg { i16 16453, i8 -128 }, %struct.ov8856_reg { i16 16454, i8 0 }, %struct.ov8856_reg { i16 16455, i8 -128 }, %struct.ov8856_reg { i16 16456, i8 0 }, %struct.ov8856_reg { i16 16457, i8 -128 }, %struct.ov8856_reg { i16 16449, i8 3 }, %struct.ov8856_reg { i16 16460, i8 32 }, %struct.ov8856_reg { i16 16461, i8 0 }, %struct.ov8856_reg { i16 16462, i8 32 }, %struct.ov8856_reg { i16 16899, i8 -128 }, %struct.ov8856_reg { i16 17159, i8 48 }, %struct.ov8856_reg { i16 17175, i8 0 }, %struct.ov8856_reg { i16 17667, i8 8 }, %struct.ov8856_reg { i16 17921, i8 -128 }, %struct.ov8856_reg { i16 18432, i8 68 }, %struct.ov8856_reg { i16 18454, i8 83 }, %struct.ov8856_reg { i16 18459, i8 88 }, %struct.ov8856_reg { i16 18463, i8 39 }, %struct.ov8856_reg { i16 18487, i8 22 }, %struct.ov8856_reg { i16 18492, i8 15 }, %struct.ov8856_reg { i16 18507, i8 5 }, %struct.ov8856_reg { i16 20480, i8 87 }, %struct.ov8856_reg { i16 20481, i8 10 }, %struct.ov8856_reg { i16 20484, i8 4 }, %struct.ov8856_reg { i16 20526, i8 3 }, %struct.ov8856_reg { i16 20528, i8 65 }, %struct.ov8856_reg { i16 22421, i8 0 }, %struct.ov8856_reg { i16 22422, i8 16 }, %struct.ov8856_reg { i16 22423, i8 16 }, %struct.ov8856_reg { i16 22424, i8 115 }, %struct.ov8856_reg { i16 22425, i8 115 }, %struct.ov8856_reg { i16 22426, i8 0 }, %struct.ov8856_reg { i16 22427, i8 40 }, %struct.ov8856_reg { i16 22428, i8 0 }, %struct.ov8856_reg { i16 22429, i8 22 }, %struct.ov8856_reg { i16 22430, i8 6 }, %struct.ov8856_reg { i16 22431, i8 32 }, %struct.ov8856_reg { i16 22432, i8 4 }, %struct.ov8856_reg { i16 22433, i8 -96 }, %struct.ov8856_reg { i16 22400, i8 20 }, %struct.ov8856_reg { i16 22401, i8 15 }, %struct.ov8856_reg { i16 22402, i8 68 }, %struct.ov8856_reg { i16 22403, i8 2 }, %struct.ov8856_reg { i16 22404, i8 1 }, %struct.ov8856_reg { i16 22405, i8 1 }, %struct.ov8856_reg { i16 22406, i8 0 }, %struct.ov8856_reg { i16 22407, i8 4 }, %struct.ov8856_reg { i16 22408, i8 2 }, %struct.ov8856_reg { i16 22409, i8 15 }, %struct.ov8856_reg { i16 22410, i8 -3 }, %struct.ov8856_reg { i16 22411, i8 -11 }, %struct.ov8856_reg { i16 22412, i8 -11 }, %struct.ov8856_reg { i16 22413, i8 3 }, %struct.ov8856_reg { i16 22414, i8 8 }, %struct.ov8856_reg { i16 22415, i8 12 }, %struct.ov8856_reg { i16 22416, i8 8 }, %struct.ov8856_reg { i16 22417, i8 4 }, %struct.ov8856_reg { i16 22418, i8 0 }, %struct.ov8856_reg { i16 22419, i8 82 }, %struct.ov8856_reg { i16 22420, i8 -93 }, %struct.ov8856_reg { i16 23032, i8 61 }, %struct.ov8856_reg { i16 23048, i8 2 }, %struct.ov8856_reg { i16 23296, i8 2 }, %struct.ov8856_reg { i16 23297, i8 16 }, %struct.ov8856_reg { i16 23298, i8 3 }, %struct.ov8856_reg { i16 23299, i8 -49 }, %struct.ov8856_reg { i16 23301, i8 108 }, %struct.ov8856_reg { i16 24064, i8 0 }], [176 x i8] zeroinitializer }, align 32
@mipi_data_rate_lane_4 = internal constant { %struct.ov8856_mipi_data_rates, [40 x i8] } { %struct.ov8856_mipi_data_rates { [7 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 259, i8 1 }, %struct.ov8856_reg { i16 256, i8 0 }, %struct.ov8856_reg { i16 770, i8 75 }, %struct.ov8856_reg { i16 771, i8 1 }, %struct.ov8856_reg { i16 779, i8 2 }, %struct.ov8856_reg { i16 781, i8 75 }, %struct.ov8856_reg { i16 798, i8 12 }], [7 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 259, i8 1 }, %struct.ov8856_reg { i16 256, i8 0 }, %struct.ov8856_reg { i16 770, i8 75 }, %struct.ov8856_reg { i16 771, i8 3 }, %struct.ov8856_reg { i16 779, i8 2 }, %struct.ov8856_reg { i16 781, i8 75 }, %struct.ov8856_reg { i16 798, i8 12 }] }, [40 x i8] zeroinitializer }, align 32
@lane_4_mode_3280x2464 = internal constant { [187 x %struct.ov8856_reg], [180 x i8] } { [187 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 12288, i8 32 }, %struct.ov8856_reg { i16 12291, i8 8 }, %struct.ov8856_reg { i16 12302, i8 32 }, %struct.ov8856_reg { i16 12304, i8 0 }, %struct.ov8856_reg { i16 12309, i8 -124 }, %struct.ov8856_reg { i16 12312, i8 114 }, %struct.ov8856_reg { i16 12321, i8 35 }, %struct.ov8856_reg { i16 12339, i8 36 }, %struct.ov8856_reg { i16 13568, i8 0 }, %struct.ov8856_reg { i16 13569, i8 -102 }, %struct.ov8856_reg { i16 13570, i8 32 }, %struct.ov8856_reg { i16 13571, i8 8 }, %struct.ov8856_reg { i16 13573, i8 -125 }, %struct.ov8856_reg { i16 13576, i8 1 }, %struct.ov8856_reg { i16 13577, i8 -128 }, %struct.ov8856_reg { i16 13580, i8 0 }, %struct.ov8856_reg { i16 13581, i8 -128 }, %struct.ov8856_reg { i16 13582, i8 4 }, %struct.ov8856_reg { i16 13583, i8 0 }, %struct.ov8856_reg { i16 13584, i8 0 }, %struct.ov8856_reg { i16 13585, i8 2 }, %struct.ov8856_reg { i16 13586, i8 0 }, %struct.ov8856_reg { i16 13824, i8 114 }, %struct.ov8856_reg { i16 13825, i8 64 }, %struct.ov8856_reg { i16 13826, i8 48 }, %struct.ov8856_reg { i16 13840, i8 -59 }, %struct.ov8856_reg { i16 13841, i8 88 }, %struct.ov8856_reg { i16 13842, i8 92 }, %struct.ov8856_reg { i16 13843, i8 -54 }, %struct.ov8856_reg { i16 13844, i8 32 }, %struct.ov8856_reg { i16 13864, i8 -1 }, %struct.ov8856_reg { i16 13865, i8 -1 }, %struct.ov8856_reg { i16 13866, i8 -1 }, %struct.ov8856_reg { i16 13875, i8 16 }, %struct.ov8856_reg { i16 13876, i8 16 }, %struct.ov8856_reg { i16 13877, i8 16 }, %struct.ov8856_reg { i16 13878, i8 16 }, %struct.ov8856_reg { i16 13923, i8 8 }, %struct.ov8856_reg { i16 13929, i8 52 }, %struct.ov8856_reg { i16 13934, i8 16 }, %struct.ov8856_reg { i16 14086, i8 -122 }, %struct.ov8856_reg { i16 14091, i8 126 }, %struct.ov8856_reg { i16 14100, i8 35 }, %struct.ov8856_reg { i16 14128, i8 18 }, %struct.ov8856_reg { i16 14131, i8 16 }, %struct.ov8856_reg { i16 14180, i8 0 }, %struct.ov8856_reg { i16 14181, i8 0 }, %struct.ov8856_reg { i16 14185, i8 98 }, %struct.ov8856_reg { i16 14186, i8 42 }, %struct.ov8856_reg { i16 14187, i8 48 }, %struct.ov8856_reg { i16 14208, i8 0 }, %struct.ov8856_reg { i16 14209, i8 36 }, %struct.ov8856_reg { i16 14210, i8 0 }, %struct.ov8856_reg { i16 14211, i8 35 }, %struct.ov8856_reg { i16 14232, i8 47 }, %struct.ov8856_reg { i16 14241, i8 96 }, %struct.ov8856_reg { i16 14248, i8 106 }, %struct.ov8856_reg { i16 14251, i8 63 }, %struct.ov8856_reg { i16 14274, i8 4 }, %struct.ov8856_reg { i16 14275, i8 -15 }, %struct.ov8856_reg { i16 14281, i8 -128 }, %struct.ov8856_reg { i16 14283, i8 22 }, %struct.ov8856_reg { i16 14284, i8 22 }, %struct.ov8856_reg { i16 14285, i8 22 }, %struct.ov8856_reg { i16 14286, i8 22 }, %struct.ov8856_reg { i16 14336, i8 0 }, %struct.ov8856_reg { i16 14337, i8 0 }, %struct.ov8856_reg { i16 14338, i8 0 }, %struct.ov8856_reg { i16 14339, i8 6 }, %struct.ov8856_reg { i16 14340, i8 12 }, %struct.ov8856_reg { i16 14341, i8 -33 }, %struct.ov8856_reg { i16 14342, i8 9 }, %struct.ov8856_reg { i16 14343, i8 -89 }, %struct.ov8856_reg { i16 14344, i8 12 }, %struct.ov8856_reg { i16 14345, i8 -48 }, %struct.ov8856_reg { i16 14346, i8 9 }, %struct.ov8856_reg { i16 14347, i8 -96 }, %struct.ov8856_reg { i16 14348, i8 7 }, %struct.ov8856_reg { i16 14349, i8 -120 }, %struct.ov8856_reg { i16 14350, i8 9 }, %struct.ov8856_reg { i16 14351, i8 -72 }, %struct.ov8856_reg { i16 14352, i8 0 }, %struct.ov8856_reg { i16 14353, i8 0 }, %struct.ov8856_reg { i16 14354, i8 0 }, %struct.ov8856_reg { i16 14355, i8 1 }, %struct.ov8856_reg { i16 14356, i8 1 }, %struct.ov8856_reg { i16 14357, i8 1 }, %struct.ov8856_reg { i16 14358, i8 0 }, %struct.ov8856_reg { i16 14359, i8 0 }, %struct.ov8856_reg { i16 14360, i8 0 }, %struct.ov8856_reg { i16 14361, i8 16 }, %struct.ov8856_reg { i16 14368, i8 -128 }, %struct.ov8856_reg { i16 14369, i8 70 }, %struct.ov8856_reg { i16 14378, i8 1 }, %struct.ov8856_reg { i16 14379, i8 1 }, %struct.ov8856_reg { i16 14384, i8 6 }, %struct.ov8856_reg { i16 14390, i8 2 }, %struct.ov8856_reg { i16 14434, i8 4 }, %struct.ov8856_reg { i16 14435, i8 8 }, %struct.ov8856_reg { i16 15552, i8 51 }, %struct.ov8856_reg { i16 15749, i8 23 }, %struct.ov8856_reg { i16 15756, i8 115 }, %struct.ov8856_reg { i16 15757, i8 -34 }, %struct.ov8856_reg { i16 16385, i8 -32 }, %struct.ov8856_reg { i16 16387, i8 64 }, %struct.ov8856_reg { i16 16392, i8 0 }, %struct.ov8856_reg { i16 16393, i8 11 }, %struct.ov8856_reg { i16 16394, i8 0 }, %struct.ov8856_reg { i16 16395, i8 -124 }, %struct.ov8856_reg { i16 16399, i8 -128 }, %struct.ov8856_reg { i16 16400, i8 -16 }, %struct.ov8856_reg { i16 16401, i8 -1 }, %struct.ov8856_reg { i16 16402, i8 2 }, %struct.ov8856_reg { i16 16403, i8 1 }, %struct.ov8856_reg { i16 16404, i8 1 }, %struct.ov8856_reg { i16 16405, i8 1 }, %struct.ov8856_reg { i16 16450, i8 0 }, %struct.ov8856_reg { i16 16451, i8 -128 }, %struct.ov8856_reg { i16 16452, i8 0 }, %struct.ov8856_reg { i16 16453, i8 -128 }, %struct.ov8856_reg { i16 16454, i8 0 }, %struct.ov8856_reg { i16 16455, i8 -128 }, %struct.ov8856_reg { i16 16456, i8 0 }, %struct.ov8856_reg { i16 16457, i8 -128 }, %struct.ov8856_reg { i16 16449, i8 3 }, %struct.ov8856_reg { i16 16460, i8 32 }, %struct.ov8856_reg { i16 16461, i8 0 }, %struct.ov8856_reg { i16 16462, i8 32 }, %struct.ov8856_reg { i16 16899, i8 -128 }, %struct.ov8856_reg { i16 17159, i8 48 }, %struct.ov8856_reg { i16 17175, i8 0 }, %struct.ov8856_reg { i16 17667, i8 8 }, %struct.ov8856_reg { i16 17921, i8 -128 }, %struct.ov8856_reg { i16 18432, i8 68 }, %struct.ov8856_reg { i16 18454, i8 83 }, %struct.ov8856_reg { i16 18459, i8 88 }, %struct.ov8856_reg { i16 18463, i8 39 }, %struct.ov8856_reg { i16 18487, i8 22 }, %struct.ov8856_reg { i16 18492, i8 15 }, %struct.ov8856_reg { i16 18507, i8 5 }, %struct.ov8856_reg { i16 20480, i8 87 }, %struct.ov8856_reg { i16 20481, i8 10 }, %struct.ov8856_reg { i16 20484, i8 4 }, %struct.ov8856_reg { i16 20526, i8 3 }, %struct.ov8856_reg { i16 20528, i8 65 }, %struct.ov8856_reg { i16 22400, i8 20 }, %struct.ov8856_reg { i16 22401, i8 15 }, %struct.ov8856_reg { i16 22402, i8 68 }, %struct.ov8856_reg { i16 22403, i8 2 }, %struct.ov8856_reg { i16 22404, i8 1 }, %struct.ov8856_reg { i16 22405, i8 1 }, %struct.ov8856_reg { i16 22406, i8 0 }, %struct.ov8856_reg { i16 22407, i8 4 }, %struct.ov8856_reg { i16 22408, i8 2 }, %struct.ov8856_reg { i16 22409, i8 15 }, %struct.ov8856_reg { i16 22410, i8 -3 }, %struct.ov8856_reg { i16 22411, i8 -11 }, %struct.ov8856_reg { i16 22412, i8 -11 }, %struct.ov8856_reg { i16 22413, i8 3 }, %struct.ov8856_reg { i16 22414, i8 8 }, %struct.ov8856_reg { i16 22415, i8 12 }, %struct.ov8856_reg { i16 22416, i8 8 }, %struct.ov8856_reg { i16 22417, i8 4 }, %struct.ov8856_reg { i16 22418, i8 0 }, %struct.ov8856_reg { i16 22419, i8 82 }, %struct.ov8856_reg { i16 22420, i8 -93 }, %struct.ov8856_reg { i16 22421, i8 2 }, %struct.ov8856_reg { i16 22422, i8 32 }, %struct.ov8856_reg { i16 22423, i8 32 }, %struct.ov8856_reg { i16 22424, i8 -43 }, %struct.ov8856_reg { i16 22425, i8 -43 }, %struct.ov8856_reg { i16 22426, i8 0 }, %struct.ov8856_reg { i16 22427, i8 80 }, %struct.ov8856_reg { i16 22428, i8 0 }, %struct.ov8856_reg { i16 22429, i8 44 }, %struct.ov8856_reg { i16 22430, i8 12 }, %struct.ov8856_reg { i16 22431, i8 64 }, %struct.ov8856_reg { i16 22432, i8 9 }, %struct.ov8856_reg { i16 22433, i8 64 }, %struct.ov8856_reg { i16 23032, i8 61 }, %struct.ov8856_reg { i16 23048, i8 2 }, %struct.ov8856_reg { i16 23296, i8 2 }, %struct.ov8856_reg { i16 23297, i8 16 }, %struct.ov8856_reg { i16 23298, i8 3 }, %struct.ov8856_reg { i16 23299, i8 -49 }, %struct.ov8856_reg { i16 23301, i8 108 }, %struct.ov8856_reg { i16 24064, i8 0 }], [180 x i8] zeroinitializer }, align 32
@lane_4_mode_1640x1232 = internal constant { [187 x %struct.ov8856_reg], [180 x i8] } { [187 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 12288, i8 32 }, %struct.ov8856_reg { i16 12291, i8 8 }, %struct.ov8856_reg { i16 12302, i8 32 }, %struct.ov8856_reg { i16 12304, i8 0 }, %struct.ov8856_reg { i16 12309, i8 -124 }, %struct.ov8856_reg { i16 12312, i8 114 }, %struct.ov8856_reg { i16 12321, i8 35 }, %struct.ov8856_reg { i16 12339, i8 36 }, %struct.ov8856_reg { i16 13568, i8 0 }, %struct.ov8856_reg { i16 13569, i8 76 }, %struct.ov8856_reg { i16 13570, i8 -32 }, %struct.ov8856_reg { i16 13571, i8 8 }, %struct.ov8856_reg { i16 13573, i8 -125 }, %struct.ov8856_reg { i16 13576, i8 1 }, %struct.ov8856_reg { i16 13577, i8 -128 }, %struct.ov8856_reg { i16 13580, i8 0 }, %struct.ov8856_reg { i16 13581, i8 -128 }, %struct.ov8856_reg { i16 13582, i8 4 }, %struct.ov8856_reg { i16 13583, i8 0 }, %struct.ov8856_reg { i16 13584, i8 0 }, %struct.ov8856_reg { i16 13585, i8 2 }, %struct.ov8856_reg { i16 13586, i8 0 }, %struct.ov8856_reg { i16 13824, i8 114 }, %struct.ov8856_reg { i16 13825, i8 64 }, %struct.ov8856_reg { i16 13826, i8 48 }, %struct.ov8856_reg { i16 13840, i8 -59 }, %struct.ov8856_reg { i16 13841, i8 88 }, %struct.ov8856_reg { i16 13842, i8 92 }, %struct.ov8856_reg { i16 13843, i8 -54 }, %struct.ov8856_reg { i16 13844, i8 32 }, %struct.ov8856_reg { i16 13864, i8 -1 }, %struct.ov8856_reg { i16 13865, i8 -1 }, %struct.ov8856_reg { i16 13866, i8 -1 }, %struct.ov8856_reg { i16 13875, i8 16 }, %struct.ov8856_reg { i16 13876, i8 16 }, %struct.ov8856_reg { i16 13877, i8 16 }, %struct.ov8856_reg { i16 13878, i8 16 }, %struct.ov8856_reg { i16 13923, i8 8 }, %struct.ov8856_reg { i16 13929, i8 52 }, %struct.ov8856_reg { i16 13934, i8 8 }, %struct.ov8856_reg { i16 14086, i8 -122 }, %struct.ov8856_reg { i16 14091, i8 126 }, %struct.ov8856_reg { i16 14100, i8 39 }, %struct.ov8856_reg { i16 14128, i8 18 }, %struct.ov8856_reg { i16 14131, i8 16 }, %struct.ov8856_reg { i16 14180, i8 0 }, %struct.ov8856_reg { i16 14181, i8 0 }, %struct.ov8856_reg { i16 14185, i8 98 }, %struct.ov8856_reg { i16 14186, i8 42 }, %struct.ov8856_reg { i16 14187, i8 48 }, %struct.ov8856_reg { i16 14208, i8 0 }, %struct.ov8856_reg { i16 14209, i8 36 }, %struct.ov8856_reg { i16 14210, i8 0 }, %struct.ov8856_reg { i16 14211, i8 35 }, %struct.ov8856_reg { i16 14232, i8 47 }, %struct.ov8856_reg { i16 14241, i8 96 }, %struct.ov8856_reg { i16 14248, i8 106 }, %struct.ov8856_reg { i16 14251, i8 63 }, %struct.ov8856_reg { i16 14274, i8 20 }, %struct.ov8856_reg { i16 14275, i8 -15 }, %struct.ov8856_reg { i16 14281, i8 -128 }, %struct.ov8856_reg { i16 14283, i8 22 }, %struct.ov8856_reg { i16 14284, i8 22 }, %struct.ov8856_reg { i16 14285, i8 22 }, %struct.ov8856_reg { i16 14286, i8 22 }, %struct.ov8856_reg { i16 14336, i8 0 }, %struct.ov8856_reg { i16 14337, i8 0 }, %struct.ov8856_reg { i16 14338, i8 0 }, %struct.ov8856_reg { i16 14339, i8 0 }, %struct.ov8856_reg { i16 14340, i8 12 }, %struct.ov8856_reg { i16 14341, i8 -33 }, %struct.ov8856_reg { i16 14342, i8 9 }, %struct.ov8856_reg { i16 14343, i8 -81 }, %struct.ov8856_reg { i16 14344, i8 6 }, %struct.ov8856_reg { i16 14345, i8 104 }, %struct.ov8856_reg { i16 14346, i8 4 }, %struct.ov8856_reg { i16 14347, i8 -48 }, %struct.ov8856_reg { i16 14348, i8 14 }, %struct.ov8856_reg { i16 14349, i8 -20 }, %struct.ov8856_reg { i16 14350, i8 4 }, %struct.ov8856_reg { i16 14351, i8 -24 }, %struct.ov8856_reg { i16 14352, i8 0 }, %struct.ov8856_reg { i16 14353, i8 4 }, %struct.ov8856_reg { i16 14354, i8 0 }, %struct.ov8856_reg { i16 14355, i8 5 }, %struct.ov8856_reg { i16 14356, i8 3 }, %struct.ov8856_reg { i16 14357, i8 1 }, %struct.ov8856_reg { i16 14358, i8 0 }, %struct.ov8856_reg { i16 14359, i8 0 }, %struct.ov8856_reg { i16 14360, i8 0 }, %struct.ov8856_reg { i16 14361, i8 16 }, %struct.ov8856_reg { i16 14368, i8 -112 }, %struct.ov8856_reg { i16 14369, i8 103 }, %struct.ov8856_reg { i16 14378, i8 3 }, %struct.ov8856_reg { i16 14379, i8 1 }, %struct.ov8856_reg { i16 14384, i8 6 }, %struct.ov8856_reg { i16 14390, i8 2 }, %struct.ov8856_reg { i16 14434, i8 4 }, %struct.ov8856_reg { i16 14435, i8 8 }, %struct.ov8856_reg { i16 15552, i8 51 }, %struct.ov8856_reg { i16 15749, i8 23 }, %struct.ov8856_reg { i16 15756, i8 115 }, %struct.ov8856_reg { i16 15757, i8 -34 }, %struct.ov8856_reg { i16 16385, i8 -32 }, %struct.ov8856_reg { i16 16387, i8 64 }, %struct.ov8856_reg { i16 16392, i8 0 }, %struct.ov8856_reg { i16 16393, i8 5 }, %struct.ov8856_reg { i16 16394, i8 0 }, %struct.ov8856_reg { i16 16395, i8 -124 }, %struct.ov8856_reg { i16 16399, i8 -128 }, %struct.ov8856_reg { i16 16400, i8 -16 }, %struct.ov8856_reg { i16 16401, i8 -1 }, %struct.ov8856_reg { i16 16402, i8 2 }, %struct.ov8856_reg { i16 16403, i8 1 }, %struct.ov8856_reg { i16 16404, i8 1 }, %struct.ov8856_reg { i16 16405, i8 1 }, %struct.ov8856_reg { i16 16450, i8 0 }, %struct.ov8856_reg { i16 16451, i8 -128 }, %struct.ov8856_reg { i16 16452, i8 0 }, %struct.ov8856_reg { i16 16453, i8 -128 }, %struct.ov8856_reg { i16 16454, i8 0 }, %struct.ov8856_reg { i16 16455, i8 -128 }, %struct.ov8856_reg { i16 16456, i8 0 }, %struct.ov8856_reg { i16 16457, i8 -128 }, %struct.ov8856_reg { i16 16449, i8 3 }, %struct.ov8856_reg { i16 16460, i8 32 }, %struct.ov8856_reg { i16 16461, i8 0 }, %struct.ov8856_reg { i16 16462, i8 32 }, %struct.ov8856_reg { i16 16899, i8 -128 }, %struct.ov8856_reg { i16 17159, i8 48 }, %struct.ov8856_reg { i16 17175, i8 0 }, %struct.ov8856_reg { i16 17667, i8 8 }, %struct.ov8856_reg { i16 17921, i8 -128 }, %struct.ov8856_reg { i16 18432, i8 68 }, %struct.ov8856_reg { i16 18454, i8 83 }, %struct.ov8856_reg { i16 18459, i8 88 }, %struct.ov8856_reg { i16 18463, i8 39 }, %struct.ov8856_reg { i16 18487, i8 22 }, %struct.ov8856_reg { i16 18492, i8 15 }, %struct.ov8856_reg { i16 18507, i8 5 }, %struct.ov8856_reg { i16 20480, i8 87 }, %struct.ov8856_reg { i16 20481, i8 10 }, %struct.ov8856_reg { i16 20484, i8 4 }, %struct.ov8856_reg { i16 20526, i8 3 }, %struct.ov8856_reg { i16 20528, i8 65 }, %struct.ov8856_reg { i16 22400, i8 20 }, %struct.ov8856_reg { i16 22401, i8 15 }, %struct.ov8856_reg { i16 22402, i8 68 }, %struct.ov8856_reg { i16 22403, i8 2 }, %struct.ov8856_reg { i16 22404, i8 1 }, %struct.ov8856_reg { i16 22405, i8 1 }, %struct.ov8856_reg { i16 22406, i8 0 }, %struct.ov8856_reg { i16 22407, i8 4 }, %struct.ov8856_reg { i16 22408, i8 2 }, %struct.ov8856_reg { i16 22409, i8 15 }, %struct.ov8856_reg { i16 22410, i8 -3 }, %struct.ov8856_reg { i16 22411, i8 -11 }, %struct.ov8856_reg { i16 22412, i8 -11 }, %struct.ov8856_reg { i16 22413, i8 3 }, %struct.ov8856_reg { i16 22414, i8 8 }, %struct.ov8856_reg { i16 22415, i8 12 }, %struct.ov8856_reg { i16 22416, i8 8 }, %struct.ov8856_reg { i16 22417, i8 4 }, %struct.ov8856_reg { i16 22418, i8 0 }, %struct.ov8856_reg { i16 22419, i8 82 }, %struct.ov8856_reg { i16 22420, i8 -93 }, %struct.ov8856_reg { i16 22421, i8 0 }, %struct.ov8856_reg { i16 22422, i8 16 }, %struct.ov8856_reg { i16 22423, i8 16 }, %struct.ov8856_reg { i16 22424, i8 115 }, %struct.ov8856_reg { i16 22425, i8 115 }, %struct.ov8856_reg { i16 22426, i8 0 }, %struct.ov8856_reg { i16 22427, i8 40 }, %struct.ov8856_reg { i16 22428, i8 0 }, %struct.ov8856_reg { i16 22429, i8 22 }, %struct.ov8856_reg { i16 22430, i8 6 }, %struct.ov8856_reg { i16 22431, i8 32 }, %struct.ov8856_reg { i16 22432, i8 4 }, %struct.ov8856_reg { i16 22433, i8 -96 }, %struct.ov8856_reg { i16 23032, i8 61 }, %struct.ov8856_reg { i16 23048, i8 2 }, %struct.ov8856_reg { i16 23296, i8 2 }, %struct.ov8856_reg { i16 23297, i8 16 }, %struct.ov8856_reg { i16 23298, i8 3 }, %struct.ov8856_reg { i16 23299, i8 -49 }, %struct.ov8856_reg { i16 23301, i8 108 }, %struct.ov8856_reg { i16 24064, i8 0 }], [180 x i8] zeroinitializer }, align 32
@lane_4_mode_3264x2448 = internal constant { [200 x %struct.ov8856_reg], [192 x i8] } { [200 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 259, i8 1 }, %struct.ov8856_reg { i16 770, i8 60 }, %struct.ov8856_reg { i16 771, i8 1 }, %struct.ov8856_reg { i16 798, i8 12 }, %struct.ov8856_reg { i16 12288, i8 32 }, %struct.ov8856_reg { i16 12291, i8 8 }, %struct.ov8856_reg { i16 12302, i8 32 }, %struct.ov8856_reg { i16 12304, i8 0 }, %struct.ov8856_reg { i16 12309, i8 -124 }, %struct.ov8856_reg { i16 12312, i8 114 }, %struct.ov8856_reg { i16 12321, i8 35 }, %struct.ov8856_reg { i16 12339, i8 36 }, %struct.ov8856_reg { i16 13568, i8 0 }, %struct.ov8856_reg { i16 13569, i8 -102 }, %struct.ov8856_reg { i16 13570, i8 32 }, %struct.ov8856_reg { i16 13571, i8 8 }, %struct.ov8856_reg { i16 13573, i8 -125 }, %struct.ov8856_reg { i16 13576, i8 1 }, %struct.ov8856_reg { i16 13577, i8 -128 }, %struct.ov8856_reg { i16 13580, i8 0 }, %struct.ov8856_reg { i16 13581, i8 -128 }, %struct.ov8856_reg { i16 13582, i8 4 }, %struct.ov8856_reg { i16 13583, i8 0 }, %struct.ov8856_reg { i16 13584, i8 0 }, %struct.ov8856_reg { i16 13585, i8 2 }, %struct.ov8856_reg { i16 13586, i8 0 }, %struct.ov8856_reg { i16 13824, i8 114 }, %struct.ov8856_reg { i16 13825, i8 64 }, %struct.ov8856_reg { i16 13826, i8 48 }, %struct.ov8856_reg { i16 13840, i8 -59 }, %struct.ov8856_reg { i16 13841, i8 88 }, %struct.ov8856_reg { i16 13842, i8 92 }, %struct.ov8856_reg { i16 13843, i8 -54 }, %struct.ov8856_reg { i16 13844, i8 96 }, %struct.ov8856_reg { i16 13864, i8 -1 }, %struct.ov8856_reg { i16 13865, i8 -1 }, %struct.ov8856_reg { i16 13866, i8 -1 }, %struct.ov8856_reg { i16 13875, i8 16 }, %struct.ov8856_reg { i16 13876, i8 16 }, %struct.ov8856_reg { i16 13877, i8 16 }, %struct.ov8856_reg { i16 13878, i8 16 }, %struct.ov8856_reg { i16 13923, i8 8 }, %struct.ov8856_reg { i16 13929, i8 52 }, %struct.ov8856_reg { i16 13933, i8 0 }, %struct.ov8856_reg { i16 13934, i8 16 }, %struct.ov8856_reg { i16 14086, i8 -122 }, %struct.ov8856_reg { i16 14091, i8 126 }, %struct.ov8856_reg { i16 14100, i8 35 }, %struct.ov8856_reg { i16 14128, i8 18 }, %struct.ov8856_reg { i16 14131, i8 16 }, %struct.ov8856_reg { i16 14180, i8 0 }, %struct.ov8856_reg { i16 14181, i8 0 }, %struct.ov8856_reg { i16 14185, i8 98 }, %struct.ov8856_reg { i16 14186, i8 42 }, %struct.ov8856_reg { i16 14187, i8 48 }, %struct.ov8856_reg { i16 14208, i8 0 }, %struct.ov8856_reg { i16 14209, i8 36 }, %struct.ov8856_reg { i16 14210, i8 0 }, %struct.ov8856_reg { i16 14211, i8 35 }, %struct.ov8856_reg { i16 14232, i8 47 }, %struct.ov8856_reg { i16 14241, i8 96 }, %struct.ov8856_reg { i16 14248, i8 106 }, %struct.ov8856_reg { i16 14251, i8 63 }, %struct.ov8856_reg { i16 14274, i8 4 }, %struct.ov8856_reg { i16 14275, i8 -15 }, %struct.ov8856_reg { i16 14281, i8 -128 }, %struct.ov8856_reg { i16 14283, i8 22 }, %struct.ov8856_reg { i16 14284, i8 22 }, %struct.ov8856_reg { i16 14285, i8 22 }, %struct.ov8856_reg { i16 14286, i8 22 }, %struct.ov8856_reg { i16 14336, i8 0 }, %struct.ov8856_reg { i16 14337, i8 0 }, %struct.ov8856_reg { i16 14338, i8 0 }, %struct.ov8856_reg { i16 14339, i8 12 }, %struct.ov8856_reg { i16 14340, i8 12 }, %struct.ov8856_reg { i16 14341, i8 -33 }, %struct.ov8856_reg { i16 14342, i8 9 }, %struct.ov8856_reg { i16 14343, i8 -93 }, %struct.ov8856_reg { i16 14344, i8 12 }, %struct.ov8856_reg { i16 14345, i8 -64 }, %struct.ov8856_reg { i16 14346, i8 9 }, %struct.ov8856_reg { i16 14347, i8 -112 }, %struct.ov8856_reg { i16 14348, i8 7 }, %struct.ov8856_reg { i16 14349, i8 -116 }, %struct.ov8856_reg { i16 14350, i8 9 }, %struct.ov8856_reg { i16 14351, i8 -78 }, %struct.ov8856_reg { i16 14352, i8 0 }, %struct.ov8856_reg { i16 14353, i8 4 }, %struct.ov8856_reg { i16 14354, i8 0 }, %struct.ov8856_reg { i16 14355, i8 2 }, %struct.ov8856_reg { i16 14356, i8 1 }, %struct.ov8856_reg { i16 14357, i8 1 }, %struct.ov8856_reg { i16 14358, i8 0 }, %struct.ov8856_reg { i16 14359, i8 0 }, %struct.ov8856_reg { i16 14360, i8 0 }, %struct.ov8856_reg { i16 14361, i8 16 }, %struct.ov8856_reg { i16 14368, i8 -128 }, %struct.ov8856_reg { i16 14369, i8 70 }, %struct.ov8856_reg { i16 14378, i8 1 }, %struct.ov8856_reg { i16 14379, i8 1 }, %struct.ov8856_reg { i16 14384, i8 6 }, %struct.ov8856_reg { i16 14390, i8 2 }, %struct.ov8856_reg { i16 14434, i8 4 }, %struct.ov8856_reg { i16 14435, i8 8 }, %struct.ov8856_reg { i16 15552, i8 51 }, %struct.ov8856_reg { i16 15749, i8 23 }, %struct.ov8856_reg { i16 15756, i8 115 }, %struct.ov8856_reg { i16 15757, i8 -34 }, %struct.ov8856_reg { i16 16385, i8 -32 }, %struct.ov8856_reg { i16 16387, i8 64 }, %struct.ov8856_reg { i16 16392, i8 0 }, %struct.ov8856_reg { i16 16393, i8 11 }, %struct.ov8856_reg { i16 16394, i8 0 }, %struct.ov8856_reg { i16 16395, i8 -124 }, %struct.ov8856_reg { i16 16399, i8 -128 }, %struct.ov8856_reg { i16 16400, i8 -16 }, %struct.ov8856_reg { i16 16401, i8 -1 }, %struct.ov8856_reg { i16 16402, i8 2 }, %struct.ov8856_reg { i16 16403, i8 1 }, %struct.ov8856_reg { i16 16404, i8 1 }, %struct.ov8856_reg { i16 16405, i8 1 }, %struct.ov8856_reg { i16 16450, i8 0 }, %struct.ov8856_reg { i16 16451, i8 -128 }, %struct.ov8856_reg { i16 16452, i8 0 }, %struct.ov8856_reg { i16 16453, i8 -128 }, %struct.ov8856_reg { i16 16454, i8 0 }, %struct.ov8856_reg { i16 16455, i8 -128 }, %struct.ov8856_reg { i16 16456, i8 0 }, %struct.ov8856_reg { i16 16457, i8 -128 }, %struct.ov8856_reg { i16 16449, i8 3 }, %struct.ov8856_reg { i16 16460, i8 32 }, %struct.ov8856_reg { i16 16461, i8 0 }, %struct.ov8856_reg { i16 16462, i8 32 }, %struct.ov8856_reg { i16 16899, i8 -128 }, %struct.ov8856_reg { i16 17159, i8 48 }, %struct.ov8856_reg { i16 17175, i8 0 }, %struct.ov8856_reg { i16 17666, i8 80 }, %struct.ov8856_reg { i16 17667, i8 8 }, %struct.ov8856_reg { i16 17921, i8 -128 }, %struct.ov8856_reg { i16 18432, i8 68 }, %struct.ov8856_reg { i16 18454, i8 83 }, %struct.ov8856_reg { i16 18459, i8 80 }, %struct.ov8856_reg { i16 18463, i8 39 }, %struct.ov8856_reg { i16 18467, i8 60 }, %struct.ov8856_reg { i16 18475, i8 0 }, %struct.ov8856_reg { i16 18481, i8 102 }, %struct.ov8856_reg { i16 18487, i8 22 }, %struct.ov8856_reg { i16 18492, i8 15 }, %struct.ov8856_reg { i16 18507, i8 5 }, %struct.ov8856_reg { i16 20480, i8 119 }, %struct.ov8856_reg { i16 20481, i8 10 }, %struct.ov8856_reg { i16 20483, i8 -56 }, %struct.ov8856_reg { i16 20484, i8 4 }, %struct.ov8856_reg { i16 20486, i8 0 }, %struct.ov8856_reg { i16 20487, i8 0 }, %struct.ov8856_reg { i16 20526, i8 3 }, %struct.ov8856_reg { i16 20528, i8 65 }, %struct.ov8856_reg { i16 22400, i8 20 }, %struct.ov8856_reg { i16 22401, i8 15 }, %struct.ov8856_reg { i16 22402, i8 68 }, %struct.ov8856_reg { i16 22403, i8 2 }, %struct.ov8856_reg { i16 22404, i8 1 }, %struct.ov8856_reg { i16 22405, i8 1 }, %struct.ov8856_reg { i16 22406, i8 0 }, %struct.ov8856_reg { i16 22407, i8 4 }, %struct.ov8856_reg { i16 22408, i8 2 }, %struct.ov8856_reg { i16 22409, i8 15 }, %struct.ov8856_reg { i16 22410, i8 -3 }, %struct.ov8856_reg { i16 22411, i8 -11 }, %struct.ov8856_reg { i16 22412, i8 -11 }, %struct.ov8856_reg { i16 22413, i8 3 }, %struct.ov8856_reg { i16 22414, i8 8 }, %struct.ov8856_reg { i16 22415, i8 12 }, %struct.ov8856_reg { i16 22416, i8 8 }, %struct.ov8856_reg { i16 22417, i8 4 }, %struct.ov8856_reg { i16 22418, i8 0 }, %struct.ov8856_reg { i16 22419, i8 82 }, %struct.ov8856_reg { i16 22420, i8 -93 }, %struct.ov8856_reg { i16 22421, i8 2 }, %struct.ov8856_reg { i16 22422, i8 32 }, %struct.ov8856_reg { i16 22423, i8 32 }, %struct.ov8856_reg { i16 22424, i8 -43 }, %struct.ov8856_reg { i16 22425, i8 -43 }, %struct.ov8856_reg { i16 22426, i8 0 }, %struct.ov8856_reg { i16 22427, i8 80 }, %struct.ov8856_reg { i16 22428, i8 0 }, %struct.ov8856_reg { i16 22429, i8 44 }, %struct.ov8856_reg { i16 22430, i8 12 }, %struct.ov8856_reg { i16 22431, i8 64 }, %struct.ov8856_reg { i16 22432, i8 9 }, %struct.ov8856_reg { i16 22433, i8 64 }, %struct.ov8856_reg { i16 23032, i8 61 }, %struct.ov8856_reg { i16 23048, i8 2 }, %struct.ov8856_reg { i16 23296, i8 2 }, %struct.ov8856_reg { i16 23297, i8 16 }, %struct.ov8856_reg { i16 23298, i8 3 }, %struct.ov8856_reg { i16 23299, i8 -49 }, %struct.ov8856_reg { i16 23301, i8 108 }, %struct.ov8856_reg { i16 24064, i8 0 }, %struct.ov8856_reg { i16 24080, i8 -4 }], [192 x i8] zeroinitializer }, align 32
@lane_4_mode_1632x1224 = internal constant { [200 x %struct.ov8856_reg], [192 x i8] } { [200 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 259, i8 1 }, %struct.ov8856_reg { i16 770, i8 60 }, %struct.ov8856_reg { i16 771, i8 1 }, %struct.ov8856_reg { i16 798, i8 12 }, %struct.ov8856_reg { i16 12288, i8 32 }, %struct.ov8856_reg { i16 12291, i8 8 }, %struct.ov8856_reg { i16 12302, i8 32 }, %struct.ov8856_reg { i16 12304, i8 0 }, %struct.ov8856_reg { i16 12309, i8 -124 }, %struct.ov8856_reg { i16 12312, i8 114 }, %struct.ov8856_reg { i16 12321, i8 35 }, %struct.ov8856_reg { i16 12339, i8 36 }, %struct.ov8856_reg { i16 13568, i8 0 }, %struct.ov8856_reg { i16 13569, i8 76 }, %struct.ov8856_reg { i16 13570, i8 -32 }, %struct.ov8856_reg { i16 13571, i8 8 }, %struct.ov8856_reg { i16 13573, i8 -125 }, %struct.ov8856_reg { i16 13576, i8 1 }, %struct.ov8856_reg { i16 13577, i8 -128 }, %struct.ov8856_reg { i16 13580, i8 0 }, %struct.ov8856_reg { i16 13581, i8 -128 }, %struct.ov8856_reg { i16 13582, i8 4 }, %struct.ov8856_reg { i16 13583, i8 0 }, %struct.ov8856_reg { i16 13584, i8 0 }, %struct.ov8856_reg { i16 13585, i8 2 }, %struct.ov8856_reg { i16 13586, i8 0 }, %struct.ov8856_reg { i16 13824, i8 114 }, %struct.ov8856_reg { i16 13825, i8 64 }, %struct.ov8856_reg { i16 13826, i8 48 }, %struct.ov8856_reg { i16 13840, i8 -59 }, %struct.ov8856_reg { i16 13841, i8 88 }, %struct.ov8856_reg { i16 13842, i8 92 }, %struct.ov8856_reg { i16 13843, i8 -54 }, %struct.ov8856_reg { i16 13844, i8 96 }, %struct.ov8856_reg { i16 13864, i8 -1 }, %struct.ov8856_reg { i16 13865, i8 -1 }, %struct.ov8856_reg { i16 13866, i8 -1 }, %struct.ov8856_reg { i16 13875, i8 16 }, %struct.ov8856_reg { i16 13876, i8 16 }, %struct.ov8856_reg { i16 13877, i8 16 }, %struct.ov8856_reg { i16 13878, i8 16 }, %struct.ov8856_reg { i16 13923, i8 8 }, %struct.ov8856_reg { i16 13929, i8 52 }, %struct.ov8856_reg { i16 13933, i8 0 }, %struct.ov8856_reg { i16 13934, i8 8 }, %struct.ov8856_reg { i16 14086, i8 -122 }, %struct.ov8856_reg { i16 14091, i8 126 }, %struct.ov8856_reg { i16 14100, i8 39 }, %struct.ov8856_reg { i16 14128, i8 18 }, %struct.ov8856_reg { i16 14131, i8 16 }, %struct.ov8856_reg { i16 14180, i8 0 }, %struct.ov8856_reg { i16 14181, i8 0 }, %struct.ov8856_reg { i16 14185, i8 98 }, %struct.ov8856_reg { i16 14186, i8 42 }, %struct.ov8856_reg { i16 14187, i8 48 }, %struct.ov8856_reg { i16 14208, i8 0 }, %struct.ov8856_reg { i16 14209, i8 36 }, %struct.ov8856_reg { i16 14210, i8 0 }, %struct.ov8856_reg { i16 14211, i8 35 }, %struct.ov8856_reg { i16 14232, i8 47 }, %struct.ov8856_reg { i16 14241, i8 96 }, %struct.ov8856_reg { i16 14248, i8 106 }, %struct.ov8856_reg { i16 14251, i8 63 }, %struct.ov8856_reg { i16 14274, i8 20 }, %struct.ov8856_reg { i16 14275, i8 -15 }, %struct.ov8856_reg { i16 14281, i8 -128 }, %struct.ov8856_reg { i16 14283, i8 22 }, %struct.ov8856_reg { i16 14284, i8 22 }, %struct.ov8856_reg { i16 14285, i8 22 }, %struct.ov8856_reg { i16 14286, i8 22 }, %struct.ov8856_reg { i16 14336, i8 0 }, %struct.ov8856_reg { i16 14337, i8 0 }, %struct.ov8856_reg { i16 14338, i8 0 }, %struct.ov8856_reg { i16 14339, i8 12 }, %struct.ov8856_reg { i16 14340, i8 12 }, %struct.ov8856_reg { i16 14341, i8 -33 }, %struct.ov8856_reg { i16 14342, i8 9 }, %struct.ov8856_reg { i16 14343, i8 -93 }, %struct.ov8856_reg { i16 14344, i8 6 }, %struct.ov8856_reg { i16 14345, i8 96 }, %struct.ov8856_reg { i16 14346, i8 4 }, %struct.ov8856_reg { i16 14347, i8 -56 }, %struct.ov8856_reg { i16 14348, i8 7 }, %struct.ov8856_reg { i16 14349, i8 -116 }, %struct.ov8856_reg { i16 14350, i8 9 }, %struct.ov8856_reg { i16 14351, i8 -78 }, %struct.ov8856_reg { i16 14352, i8 0 }, %struct.ov8856_reg { i16 14353, i8 2 }, %struct.ov8856_reg { i16 14354, i8 0 }, %struct.ov8856_reg { i16 14355, i8 2 }, %struct.ov8856_reg { i16 14356, i8 3 }, %struct.ov8856_reg { i16 14357, i8 1 }, %struct.ov8856_reg { i16 14358, i8 0 }, %struct.ov8856_reg { i16 14359, i8 0 }, %struct.ov8856_reg { i16 14360, i8 0 }, %struct.ov8856_reg { i16 14361, i8 16 }, %struct.ov8856_reg { i16 14368, i8 -128 }, %struct.ov8856_reg { i16 14369, i8 71 }, %struct.ov8856_reg { i16 14378, i8 3 }, %struct.ov8856_reg { i16 14379, i8 1 }, %struct.ov8856_reg { i16 14384, i8 6 }, %struct.ov8856_reg { i16 14390, i8 2 }, %struct.ov8856_reg { i16 14434, i8 4 }, %struct.ov8856_reg { i16 14435, i8 8 }, %struct.ov8856_reg { i16 15552, i8 51 }, %struct.ov8856_reg { i16 15749, i8 23 }, %struct.ov8856_reg { i16 15756, i8 115 }, %struct.ov8856_reg { i16 15757, i8 -34 }, %struct.ov8856_reg { i16 16385, i8 -32 }, %struct.ov8856_reg { i16 16387, i8 64 }, %struct.ov8856_reg { i16 16392, i8 0 }, %struct.ov8856_reg { i16 16393, i8 5 }, %struct.ov8856_reg { i16 16394, i8 0 }, %struct.ov8856_reg { i16 16395, i8 -124 }, %struct.ov8856_reg { i16 16399, i8 -128 }, %struct.ov8856_reg { i16 16400, i8 -16 }, %struct.ov8856_reg { i16 16401, i8 -1 }, %struct.ov8856_reg { i16 16402, i8 2 }, %struct.ov8856_reg { i16 16403, i8 1 }, %struct.ov8856_reg { i16 16404, i8 1 }, %struct.ov8856_reg { i16 16405, i8 1 }, %struct.ov8856_reg { i16 16450, i8 0 }, %struct.ov8856_reg { i16 16451, i8 -128 }, %struct.ov8856_reg { i16 16452, i8 0 }, %struct.ov8856_reg { i16 16453, i8 -128 }, %struct.ov8856_reg { i16 16454, i8 0 }, %struct.ov8856_reg { i16 16455, i8 -128 }, %struct.ov8856_reg { i16 16456, i8 0 }, %struct.ov8856_reg { i16 16457, i8 -128 }, %struct.ov8856_reg { i16 16449, i8 3 }, %struct.ov8856_reg { i16 16460, i8 32 }, %struct.ov8856_reg { i16 16461, i8 0 }, %struct.ov8856_reg { i16 16462, i8 32 }, %struct.ov8856_reg { i16 16899, i8 -128 }, %struct.ov8856_reg { i16 17159, i8 48 }, %struct.ov8856_reg { i16 17175, i8 0 }, %struct.ov8856_reg { i16 17666, i8 80 }, %struct.ov8856_reg { i16 17667, i8 8 }, %struct.ov8856_reg { i16 17921, i8 -128 }, %struct.ov8856_reg { i16 18432, i8 68 }, %struct.ov8856_reg { i16 18454, i8 83 }, %struct.ov8856_reg { i16 18459, i8 80 }, %struct.ov8856_reg { i16 18463, i8 39 }, %struct.ov8856_reg { i16 18467, i8 60 }, %struct.ov8856_reg { i16 18475, i8 0 }, %struct.ov8856_reg { i16 18481, i8 102 }, %struct.ov8856_reg { i16 18487, i8 22 }, %struct.ov8856_reg { i16 18492, i8 15 }, %struct.ov8856_reg { i16 18507, i8 5 }, %struct.ov8856_reg { i16 20480, i8 119 }, %struct.ov8856_reg { i16 20481, i8 10 }, %struct.ov8856_reg { i16 20483, i8 -56 }, %struct.ov8856_reg { i16 20484, i8 4 }, %struct.ov8856_reg { i16 20486, i8 0 }, %struct.ov8856_reg { i16 20487, i8 0 }, %struct.ov8856_reg { i16 20526, i8 3 }, %struct.ov8856_reg { i16 20528, i8 65 }, %struct.ov8856_reg { i16 22421, i8 0 }, %struct.ov8856_reg { i16 22422, i8 16 }, %struct.ov8856_reg { i16 22423, i8 16 }, %struct.ov8856_reg { i16 22424, i8 115 }, %struct.ov8856_reg { i16 22425, i8 115 }, %struct.ov8856_reg { i16 22426, i8 0 }, %struct.ov8856_reg { i16 22427, i8 40 }, %struct.ov8856_reg { i16 22428, i8 0 }, %struct.ov8856_reg { i16 22429, i8 22 }, %struct.ov8856_reg { i16 22430, i8 6 }, %struct.ov8856_reg { i16 22431, i8 32 }, %struct.ov8856_reg { i16 22432, i8 4 }, %struct.ov8856_reg { i16 22433, i8 -96 }, %struct.ov8856_reg { i16 22400, i8 20 }, %struct.ov8856_reg { i16 22401, i8 15 }, %struct.ov8856_reg { i16 22402, i8 68 }, %struct.ov8856_reg { i16 22403, i8 2 }, %struct.ov8856_reg { i16 22404, i8 1 }, %struct.ov8856_reg { i16 22405, i8 1 }, %struct.ov8856_reg { i16 22406, i8 0 }, %struct.ov8856_reg { i16 22407, i8 4 }, %struct.ov8856_reg { i16 22408, i8 2 }, %struct.ov8856_reg { i16 22409, i8 15 }, %struct.ov8856_reg { i16 22410, i8 -3 }, %struct.ov8856_reg { i16 22411, i8 -11 }, %struct.ov8856_reg { i16 22412, i8 -11 }, %struct.ov8856_reg { i16 22413, i8 3 }, %struct.ov8856_reg { i16 22414, i8 8 }, %struct.ov8856_reg { i16 22415, i8 12 }, %struct.ov8856_reg { i16 22416, i8 8 }, %struct.ov8856_reg { i16 22417, i8 4 }, %struct.ov8856_reg { i16 22418, i8 0 }, %struct.ov8856_reg { i16 22419, i8 82 }, %struct.ov8856_reg { i16 22420, i8 -93 }, %struct.ov8856_reg { i16 23032, i8 61 }, %struct.ov8856_reg { i16 23048, i8 2 }, %struct.ov8856_reg { i16 23296, i8 2 }, %struct.ov8856_reg { i16 23297, i8 16 }, %struct.ov8856_reg { i16 23298, i8 3 }, %struct.ov8856_reg { i16 23299, i8 -49 }, %struct.ov8856_reg { i16 23301, i8 108 }, %struct.ov8856_reg { i16 24064, i8 0 }, %struct.ov8856_reg { i16 24080, i8 -4 }], [192 x i8] zeroinitializer }, align 32
@ov8856_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov8856_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov8856_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov8856_enum_mbus_code, ptr @ov8856_enum_frame_size, ptr null, ptr @ov8856_get_format, ptr @ov8856_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov8856_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 2049, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set plls\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov8856_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@ov8856_start_streaming._entry_ptr = internal global ptr @ov8856_start_streaming._entry, section ".printk_index", align 4
@ov8856_start_streaming._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 2056, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set mode\00", [45 x i8] zeroinitializer }, align 32
@ov8856_start_streaming._entry_ptr.48 = internal global ptr @ov8856_start_streaming._entry.46, section ".printk_index", align 4
@bayer_offset_configs = internal constant { [2 x %struct.ov8856_reg_list], [16 x i8] } { [2 x %struct.ov8856_reg_list] [%struct.ov8856_reg_list { i32 1, ptr @mipi_data_mbus_sbggr10_1x10 }, %struct.ov8856_reg_list { i32 1, ptr @mipi_data_mbus_sgrbg10_1x10 }], [16 x i8] zeroinitializer }, align 32
@ov8856_start_streaming._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 2063, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set mbus format\00", [38 x i8] zeroinitializer }, align 32
@ov8856_start_streaming._entry_ptr.51 = internal global ptr @ov8856_start_streaming._entry.49, section ".printk_index", align 4
@ov8856_start_streaming._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.3, i32 2074, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to set stream\00", [43 x i8] zeroinitializer }, align 32
@ov8856_start_streaming._entry_ptr.54 = internal global ptr @ov8856_start_streaming._entry.52, section ".printk_index", align 4
@ov8856_write_reg_list._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.55, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ov8856_write_reg_list = private unnamed_addr constant [22 x i8] c"ov8856_write_reg_list\00", align 1
@ov8856_write_reg_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @__func__.ov8856_write_reg_list, ptr @.str.3, i32 1683, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to write reg 0x%4.4x. error = %d\00", [56 x i8] zeroinitializer }, align 32
@ov8856_write_reg_list._entry_ptr = internal global ptr @ov8856_write_reg_list._entry, section ".printk_index", align 4
@mipi_data_mbus_sbggr10_1x10 = internal constant { [1 x %struct.ov8856_reg], [28 x i8] } { [1 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 14355, i8 2 }], [28 x i8] zeroinitializer }, align 32
@mipi_data_mbus_sgrbg10_1x10 = internal constant { [1 x %struct.ov8856_reg], [28 x i8] } { [1 x %struct.ov8856_reg] [%struct.ov8856_reg { i16 14355, i8 1 }], [28 x i8] zeroinitializer }, align 32
@ov8856_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.57, ptr @.str.3, i32 2087, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov8856_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@ov8856_stop_streaming._entry_ptr = internal global ptr @ov8856_stop_streaming._entry, section ".printk_index", align 4
@ov8856_mbus_codes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 12295, i32 12298], [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__ov8856_power_on._entry = internal constant %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 2134, ptr @.str.4, ptr @.str.5 }, align 1
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable xvclk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__ov8856_power_on\00", [46 x i8] zeroinitializer }, align 32
@__ov8856_power_on._entry_ptr = internal global ptr @__ov8856_power_on._entry, section ".printk_index", align 4
@__ov8856_power_on._entry.61 = internal constant %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 2146, ptr @.str.4, ptr @.str.5 }, align 1
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@__ov8856_power_on._entry_ptr.63 = internal global ptr @__ov8856_power_on._entry.61, section ".printk_index", align 4
@ov8856_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip id mismatch: %x!=%x\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov8856_identify_module\00", [41 x i8] zeroinitializer }, align 32
@ov8856_identify_module._entry_ptr = internal global ptr @ov8856_identify_module._entry, section ".printk_index", align 4
@ov8856_identify_module._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 1719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to set otp mode\00", [41 x i8] zeroinitializer }, align 32
@ov8856_identify_module._entry_ptr.68 = internal global ptr @ov8856_identify_module._entry.66, section ".printk_index", align 4
@ov8856_identify_module._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.3, i32 1727, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable load control\00", [34 x i8] zeroinitializer }, align 32
@ov8856_identify_module._entry_ptr.71 = internal global ptr @ov8856_identify_module._entry.69, section ".printk_index", align 4
@ov8856_identify_module._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.3, i32 1734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read module revision\00", [33 x i8] zeroinitializer }, align 32
@ov8856_identify_module._entry_ptr.74 = internal global ptr @ov8856_identify_module._entry.72, section ".printk_index", align 4
@ov8856_identify_module._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.3, i32 1742, ptr @.str.77, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"OV8856 revision %x (%s) at address 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov8856_identify_module._entry_ptr.78 = internal global ptr @ov8856_identify_module._entry.75, section ".printk_index", align 4
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2A\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1B\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown revision\00", [47 x i8] zeroinitializer }, align 32
@ov8856_identify_module._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.65, ptr @.str.3, i32 1747, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to exit streaming mode\00", [34 x i8] zeroinitializer }, align 32
@ov8856_identify_module._entry_ptr.84 = internal global ptr @ov8856_identify_module._entry.82, section ".printk_index", align 4
@ov8856_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ov8856:1949:(ctrl_hdlr)->_lock\00", [33 x i8] zeroinitializer }, align 32
@ov8856_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov8856_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov8856_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Standard Color Bar\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Top-Bottom Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Right-Left Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bottom-Top Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 12295, i64 12298]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 12295, i64 12298]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 12295, i64 12298]
@__sancov_gen_cov_switch_values.94 = internal global [9 x i64] [i64 7, i64 32, i64 9963793, i64 9963796, i64 9963797, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 12295, i64 12298]
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"ov8856_i2c_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2571, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2573, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"ov8856_of_match\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2565, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"ov8856_pm_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2552, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2482, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"ov8856_subdev_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2338, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2493, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2499, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2504, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2509, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"ov8856_internal_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2347, i32 46 }
@___asan_gen_.156 = private unnamed_addr constant [25 x i8] c"ov8856_subdev_entity_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2343, i32 45 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2520, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2526, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2366, i32 41 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2371, i32 37 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2373, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2381, i32 53 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2397, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2412, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2418, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [11 x i8] c"lane_cfg_2\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1459, i32 37 }
@___asan_gen_.210 = private unnamed_addr constant [11 x i8] c"lane_cfg_4\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1510, i32 37 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2428, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2441, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 105, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 106, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 107, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [22 x i8] c"mipi_data_rate_lane_2\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 163, i32 44 }
@___asan_gen_.237 = private unnamed_addr constant [22 x i8] c"lane_2_mode_3280x2464\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 209, i32 32 }
@___asan_gen_.240 = private unnamed_addr constant [22 x i8] c"lane_2_mode_1640x1232\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 401, i32 32 }
@___asan_gen_.243 = private unnamed_addr constant [22 x i8] c"mipi_data_rate_lane_4\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 186, i32 44 }
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"lane_4_mode_3280x2464\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 593, i32 32 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"lane_4_mode_1640x1232\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 784, i32 32 }
@___asan_gen_.252 = private unnamed_addr constant [22 x i8] c"lane_4_mode_3264x2448\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 975, i32 32 }
@___asan_gen_.255 = private unnamed_addr constant [22 x i8] c"lane_4_mode_1632x1224\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1179, i32 32 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"ov8856_video_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2327, i32 43 }
@___asan_gen_.261 = private unnamed_addr constant [15 x i8] c"ov8856_pad_ops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2331, i32 41 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2049, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2056, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [21 x i8] c"bayer_offset_configs\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1404, i32 37 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2063, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2074, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1681, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant [28 x i8] c"mipi_data_mbus_sbggr10_1x10\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1383, i32 32 }
@___asan_gen_.309 = private unnamed_addr constant [28 x i8] c"mipi_data_mbus_sgrbg10_1x10\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1387, i32 32 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2087, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [18 x i8] c"ov8856_mbus_codes\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1391, i32 18 }
@___asan_gen_.322 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 998, i32 6 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2134, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2146, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1706, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1719, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1727, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1734, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1738, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1747, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1949, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant [16 x i8] c"ov8856_ctrl_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1938, i32 35 }
@___asan_gen_.393 = private unnamed_addr constant [25 x i8] c"ov8856_test_pattern_menu\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1396, i32 27 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1397, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1398, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1399, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1400, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.409 = private constant [30 x i8] c"../drivers/media/i2c/ov8856.c\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1401, i32 2 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_ov8856_i2c_driver_exit, ptr @__initcall__kmod_ov8856__295_2583_ov8856_i2c_driver_init6, ptr @__ov8856_power_on._entry, ptr @__ov8856_power_on._entry.61, ptr @__ov8856_power_on._entry_ptr, ptr @__ov8856_power_on._entry_ptr.63, ptr @ov8856_get_hwcfg._entry, ptr @ov8856_get_hwcfg._entry.27, ptr @ov8856_get_hwcfg._entry.31, ptr @ov8856_get_hwcfg._entry.35, ptr @ov8856_get_hwcfg._entry.38, ptr @ov8856_get_hwcfg._entry_ptr, ptr @ov8856_get_hwcfg._entry_ptr.30, ptr @ov8856_get_hwcfg._entry_ptr.33, ptr @ov8856_get_hwcfg._entry_ptr.37, ptr @ov8856_get_hwcfg._entry_ptr.40, ptr @ov8856_i2c_driver_exit, ptr @ov8856_identify_module._entry, ptr @ov8856_identify_module._entry.66, ptr @ov8856_identify_module._entry.69, ptr @ov8856_identify_module._entry.72, ptr @ov8856_identify_module._entry.75, ptr @ov8856_identify_module._entry.82, ptr @ov8856_identify_module._entry_ptr, ptr @ov8856_identify_module._entry_ptr.68, ptr @ov8856_identify_module._entry_ptr.71, ptr @ov8856_identify_module._entry_ptr.74, ptr @ov8856_identify_module._entry_ptr.78, ptr @ov8856_identify_module._entry_ptr.84, ptr @ov8856_probe._entry, ptr @ov8856_probe._entry.13, ptr @ov8856_probe._entry.16, ptr @ov8856_probe._entry.19, ptr @ov8856_probe._entry.6, ptr @ov8856_probe._entry.9, ptr @ov8856_probe._entry_ptr, ptr @ov8856_probe._entry_ptr.11, ptr @ov8856_probe._entry_ptr.15, ptr @ov8856_probe._entry_ptr.18, ptr @ov8856_probe._entry_ptr.21, ptr @ov8856_probe._entry_ptr.8, ptr @ov8856_start_streaming._entry, ptr @ov8856_start_streaming._entry.46, ptr @ov8856_start_streaming._entry.49, ptr @ov8856_start_streaming._entry.52, ptr @ov8856_start_streaming._entry_ptr, ptr @ov8856_start_streaming._entry_ptr.48, ptr @ov8856_start_streaming._entry_ptr.51, ptr @ov8856_start_streaming._entry_ptr.54, ptr @ov8856_stop_streaming._entry, ptr @ov8856_stop_streaming._entry_ptr, ptr @ov8856_write_reg_list._entry, ptr @ov8856_write_reg_list._entry_ptr, ptr @ov8856_i2c_driver, ptr @.str, ptr @ov8856_of_match, ptr @ov8856_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ov8856_subdev_ops, ptr @.str.7, ptr @.str.10, ptr @ov8856_probe.__key, ptr @.str.12, ptr @.str.14, ptr @ov8856_internal_ops, ptr @ov8856_subdev_entity_ops, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @lane_cfg_2, ptr @lane_cfg_4, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @mipi_data_rate_lane_2, ptr @lane_2_mode_3280x2464, ptr @lane_2_mode_1640x1232, ptr @mipi_data_rate_lane_4, ptr @lane_4_mode_3280x2464, ptr @lane_4_mode_1640x1232, ptr @lane_4_mode_3264x2448, ptr @lane_4_mode_1632x1224, ptr @ov8856_video_ops, ptr @ov8856_pad_ops, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @bayer_offset_configs, ptr @.str.50, ptr @.str.53, ptr @ov8856_write_reg_list._rs, ptr @.str.55, ptr @.str.56, ptr @mipi_data_mbus_sbggr10_1x10, ptr @mipi_data_mbus_sgrbg10_1x10, ptr @.str.57, ptr @ov8856_mbus_codes, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @ov8856_init_controls._key, ptr @.str.85, ptr @ov8856_ctrl_ops, ptr @ov8856_test_pattern_menu, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_get_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_get_hwcfg._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_get_hwcfg._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_cfg_2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_cfg_4 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_get_hwcfg._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_get_hwcfg._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_lane_2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_2_mode_3280x2464 to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_2_mode_1640x1232 to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_lane_4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_4_mode_3280x2464 to i32), i32 748, i32 928, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_4_mode_1640x1232 to i32), i32 748, i32 928, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_4_mode_3264x2448 to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_4_mode_1632x1224 to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_start_streaming._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bayer_offset_configs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_start_streaming._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_start_streaming._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_write_reg_list._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_write_reg_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_mbus_sbggr10_1x10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_mbus_sgrbg10_1x10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_mbus_codes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_identify_module._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_identify_module._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_identify_module._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_identify_module._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_identify_module._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8856_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov8856_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov8856_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov8856_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_remove(ptr noundef %client) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call1.i = tail call ptr @dev_fwnode(ptr noundef %dev.i) #8
  %reset_gpio.i = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #8
  %supplies.i = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 5
  %call3.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #8
  %xvclk.i = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %xvclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xvclk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 588, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ov8856_get_hwcfg(ptr noundef nonnull %call.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call2) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ov8856_subdev_ops) #8
  %call11 = tail call fastcc i32 @__ov8856_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %call19 = tail call fastcc i32 @ov8856_identify_module(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body28, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call19) #11
  br label %probe_power_off

do.body28:                                        ; preds = %if.end18
  %mutex = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @ov8856_probe.__key) #8
  %priv_lane = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 16
  %0 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_lane, align 4
  %supported_modes = getelementptr inbounds %struct.ov8856_lane_cfg, ptr %1, i32 0, i32 2
  %cur_mode = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 11
  %2 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %supported_modes, ptr %cur_mode, align 4
  %default_mbus_index = getelementptr inbounds %struct.ov8856_lane_cfg, ptr %1, i32 0, i32 2, i32 0, i32 8
  %3 = ptrtoint ptr %default_mbus_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %default_mbus_index, align 4
  %cur_mbus_index = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 12
  %5 = ptrtoint ptr %cur_mbus_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cur_mbus_index, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 2
  %call.i127 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 8, ptr noundef nonnull @ov8856_init_controls._key, ptr noundef nonnull @.str.85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body28.do.end37_crit_edge

do.body28.do.end37_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

if.end.i:                                         ; preds = %do.body28
  %lock.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mutex, ptr %lock.i, align 4
  %7 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv_lane, align 4
  %call1.i = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %8) #8
  %link_freq.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i, ptr %link_freq.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call1.i, i32 0, i32 20
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %11, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %12 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv_lane, align 4
  %14 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_mode, align 4
  %data_lanes.i = getelementptr inbounds %struct.ov8856_mode, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data_lanes.i, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %13, align 8
  %conv.i.i = zext i8 %17 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 1
  %mul1.i.i = mul i64 %mul.i.i, %19
  %div83263.i.i = lshr exact i64 %mul1.i.i, 1
  %20 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83263.i.i, i64 3689348814741910323) #12, !srcloc !220
  %21 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83263.i.i, i64 %20) #12, !srcloc !221
  %call17.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 10422530, i64 noundef 0, i64 noundef %21, i64 noundef 1, i64 noundef %21) #8
  %pixel_rate.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call17.i, ptr %pixel_rate.i, align 4
  %23 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_mode, align 4
  %vts_min.i = getelementptr inbounds %struct.ov8856_mode, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %vts_min.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vts_min.i, align 4
  %height.i = getelementptr inbounds %struct.ov8856_mode, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i, align 4
  %sub.i = sub i32 %26, %28
  %conv.i = zext i32 %sub.i to i64
  %sub22.i = sub i32 32767, %28
  %conv23.i = zext i32 %sub22.i to i64
  %vts_def.i = getelementptr inbounds %struct.ov8856_mode, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vts_def.i, align 4
  %sub27.i = sub i32 %30, %28
  %conv28.i = zext i32 %sub27.i to i64
  %call29.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 10356993, i64 noundef %conv.i, i64 noundef %conv23.i, i64 noundef 1, i64 noundef %conv28.i) #8
  %vblank.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call29.i, ptr %vblank.i, align 4
  %32 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv_lane, align 4
  %34 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur_mode, align 4
  %hts.i = getelementptr inbounds %struct.ov8856_mode, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %hts.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hts.i, align 4
  %link_freq_index.i = getelementptr inbounds %struct.ov8856_mode, ptr %35, i32 0, i32 5
  %38 = ptrtoint ptr %link_freq_index.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %link_freq_index.i, align 4
  %data_lanes36.i = getelementptr inbounds %struct.ov8856_mode, ptr %35, i32 0, i32 7
  %40 = ptrtoint ptr %data_lanes36.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data_lanes36.i, align 4
  %conv.i116.i = zext i32 %37 to i64
  %arrayidx.i.i.i = getelementptr i64, ptr %33, i32 %39
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.i.i.i, align 8
  %conv.i.i.i = zext i8 %41 to i64
  %mul.i.i.i = shl nuw nsw i64 %conv.i.i.i, 1
  %mul1.i.i.i = mul i64 %mul.i.i.i, %43
  %div83263.i.i.i = lshr exact i64 %mul1.i.i.i, 1
  %44 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83263.i.i.i, i64 3689348814741910323) #12, !srcloc !220
  %45 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83263.i.i.i, i64 %44) #12, !srcloc !221
  %mul.i117.i = mul i64 %45, %conv.i116.i
  %46 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -1253132416968158909, i64 %mul.i117.i) #12, !srcloc !222
  %47 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -1253132416968158909, i64 %mul.i117.i, i64 %46, i32 0) #12, !srcloc !223
  %asmresult10.i.i.i = extractvalue { i64, i32 } %47, 0
  %ppl.0.i.i = lshr i64 %asmresult10.i.i.i, 27
  %48 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %35, align 4
  %conv39.i = zext i32 %49 to i64
  %sub40.i = sub nsw i64 %ppl.0.i.i, %conv39.i
  %call41.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 10356994, i64 noundef %sub40.i, i64 noundef %sub40.i, i64 noundef 1, i64 noundef %sub40.i) #8
  %hblank.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 9
  %50 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call41.i, ptr %hblank.i, align 4
  %tobool43.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool43.not.i, label %if.end6.i.if.end48.i_crit_edge, label %if.then44.i

if.end6.i.if.end48.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then44.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags46.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call41.i, i32 0, i32 20
  %51 = ptrtoint ptr %flags46.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags46.i, align 4
  %or47.i = or i32 %52, 4
  store i32 %or47.i, ptr %flags46.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then44.i, %if.end6.i.if.end48.i_crit_edge
  %call49.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 10356995, i64 noundef 128, i64 noundef 2047, i64 noundef 1, i64 noundef 128) #8
  %call50.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 10422533, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 1024) #8
  %53 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_mode, align 4
  %vts_def52.i = getelementptr inbounds %struct.ov8856_mode, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %vts_def52.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vts_def52.i, align 4
  %sub53.i = add i32 %56, -6
  %conv54.i = zext i32 %sub53.i to i64
  %call55.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 9963793, i64 noundef 6, i64 noundef %conv54.i, i64 noundef 1, i64 noundef %conv54.i) #8
  %exposure.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 10
  %57 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call55.i, ptr %exposure.i, align 4
  %call56.i = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov8856_test_pattern_menu) #8
  %call57.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call58.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov8856_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %error.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 2, i32 9
  %58 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool59.not.i = icmp eq i32 %59, 0
  br i1 %tobool59.not.i, label %if.end39, label %if.end48.i.do.end37_crit_edge

if.end48.i.do.end37_crit_edge:                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

do.end37:                                         ; preds = %if.end48.i.do.end37_crit_edge, %do.body28.do.end37_crit_edge
  %retval.0.i.ph = phi i32 [ %59, %if.end48.i.do.end37_crit_edge ], [ %call.i127, %do.body28.do.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i.ph) #11
  br label %probe_error_v4l2_ctrl_handler_free

if.end39:                                         ; preds = %if.end48.i
  %ctrl_handler63.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %60 = ptrtoint ptr %ctrl_handler63.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ctrl_handler.i, ptr %ctrl_handler63.i, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %61 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ov8856_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %or = or i32 %63, 4
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 11
  %64 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ov8856_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %65 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 1
  %flags45 = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %flags45 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %flags45, align 4
  %call49 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call49) #11
  br label %probe_error_v4l2_ctrl_handler_free

if.end56:                                         ; preds = %if.end39
  %call58 = tail call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp = icmp slt i32 %call58, 0
  br i1 %cmp, label %do.end62, label %if.then66

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call58) #11
  br label %probe_error_v4l2_ctrl_handler_free

if.then66:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %call.i128 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i129 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #8
  br label %cleanup

probe_error_v4l2_ctrl_handler_free:               ; preds = %do.end62, %do.end54, %do.end37
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end37 ], [ %call49, %do.end54 ], [ %call58, %do.end62 ]
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %67 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %68) #8
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  br label %probe_power_off

probe_power_off:                                  ; preds = %probe_error_v4l2_ctrl_handler_free, %do.end24
  %ret.1 = phi i32 [ %call19, %do.end24 ], [ %ret.0, %probe_error_v4l2_ctrl_handler_free ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %69 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_priv.i.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4
  %call1.i130 = tail call ptr @dev_fwnode(ptr noundef %dev.i) #8
  %reset_gpio.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 4
  %71 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %72, i32 noundef 1) #8
  %supplies.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 5
  %call3.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #8
  %xvclk.i = getelementptr inbounds %struct.ov8856, ptr %call.i, i32 0, i32 3
  %73 = ptrtoint ptr %xvclk.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %xvclk.i, align 4
  tail call void @clk_disable(ptr noundef %74) #8
  tail call void @clk_unprepare(ptr noundef %74) #8
  br label %cleanup

cleanup:                                          ; preds = %probe_power_off, %if.then66, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call11, %do.end16 ], [ %ret.1, %probe_power_off ], [ 0, %if.then66 ], [ -12, %entry.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8856_get_hwcfg(ptr noundef %ov8856, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %bus_cfg = alloca %struct.v4l2_fwnode_endpoint, align 4
  %xvclk_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg) #8
  %0 = call ptr @memset(ptr %bus_cfg, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xvclk_rate) #8
  %3 = ptrtoint ptr %xvclk_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %xvclk_rate, align 4, !annotation !224
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.22, ptr noundef nonnull %xvclk_rate, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call7 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  %xvclk = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 3
  %4 = ptrtoint ptr %xvclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %xvclk, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull %call7) #11
  %5 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xvclk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %xvclk_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xvclk_rate, align 4
  %call16 = call i32 @clk_set_rate(ptr noundef %call7, i32 noundef %9) #8
  %10 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xvclk, align 4
  %call18 = call i32 @clk_get_rate(ptr noundef %11) #8
  %12 = ptrtoint ptr %xvclk_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call18, ptr %xvclk_rate, align 4
  %call19 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef 3) #8
  %reset_gpio = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 4
  %13 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %reset_gpio, align 4
  %cmp.i177 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then22, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end14
  %arrayidx26 = getelementptr %struct.ov8856, ptr %ov8856, i32 0, i32 5, i32 0
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.41, ptr %arrayidx26, align 4
  %arrayidx26.1 = getelementptr %struct.ov8856, ptr %ov8856, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.42, ptr %arrayidx26.1, align 4
  %arrayidx26.2 = getelementptr %struct.ov8856, ptr %ov8856, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.43, ptr %arrayidx26.2, align 4
  %call28 = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end32, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end32:                                         ; preds = %for.body.preheader
  %18 = ptrtoint ptr %xvclk_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xvclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %19)
  %cmp33.not = icmp eq i32 %19, 19200000
  br i1 %cmp33.not, label %if.end32.if.end38_crit_edge, label %do.end37

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %19) #11
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %if.end32.if.end38_crit_edge
  %call39 = call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call, ptr noundef null) #8
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %call43 = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call39, ptr noundef nonnull %bus_cfg) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2, i32 2, i32 3
  %20 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_data_lanes, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %do.end58 [
    i8 2, label %if.end46.do.body64_crit_edge
    i8 4, label %if.end46.do.body64_crit_edge206
  ]

if.end46.do.body64_crit_edge206:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end46.do.body64_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

do.end58:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %conv) #11
  br label %check_hwcfg_error

do.body64:                                        ; preds = %if.end46.do.body64_crit_edge, %if.end46.do.body64_crit_edge206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8856_get_hwcfg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8856_get_hwcfg, %if.then69)) #8
          to label %do.end73 [label %if.then69], !srcloc !225

if.then69:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 11
  %23 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_mode, align 4
  %data_lanes = getelementptr inbounds %struct.ov8856_mode, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %data_lanes to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data_lanes, align 4
  %conv70 = zext i8 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8856_get_hwcfg.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %conv70) #8
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body64
  %27 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_data_lanes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp78 = icmp eq i8 %28, 2
  %spec.select = select i1 %cmp78, ptr @lane_cfg_2, ptr @lane_cfg_4
  %29 = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %spec.select, ptr %29, align 4
  %count.0.lcssa.i = select i1 %cmp78, i8 2, i8 4
  %modes_size = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 17
  %31 = ptrtoint ptr %modes_size to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %count.0.lcssa.i, ptr %modes_size, align 4
  %nr_of_link_frequencies = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 4
  %32 = ptrtoint ptr %nr_of_link_frequencies to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_of_link_frequencies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool85.not = icmp eq i32 %33, 0
  br i1 %tobool85.not, label %do.end89, label %for.cond91.preheader

for.cond91.preheader:                             ; preds = %do.end73
  %link_frequencies = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 3
  %34 = ptrtoint ptr %link_frequencies to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link_frequencies, align 4
  %36 = ptrtoint ptr %spec.select to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %spec.select, align 8
  br label %for.body99

do.end89:                                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #11
  br label %check_hwcfg_error

for.body99:                                       ; preds = %for.inc107.for.body99_crit_edge, %for.cond91.preheader
  %j.0182 = phi i32 [ 0, %for.cond91.preheader ], [ %inc108, %for.inc107.for.body99_crit_edge ]
  %arrayidx102 = getelementptr i64, ptr %35, i32 %j.0182
  %38 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx102, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp103 = icmp eq i64 %37, %39
  br i1 %cmp103, label %for.end109, label %for.inc107

for.inc107:                                       ; preds = %for.body99
  %inc108 = add nuw i32 %j.0182, 1
  %exitcond.not = icmp eq i32 %inc108, %33
  br i1 %exitcond.not, label %for.inc107.do.end116_crit_edge, label %for.inc107.for.body99_crit_edge

for.inc107.for.body99_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body99

for.inc107.do.end116_crit_edge:                   ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end116

for.end109:                                       ; preds = %for.body99
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0182, i32 %33)
  %cmp111 = icmp eq i32 %j.0182, %33
  br i1 %cmp111, label %for.end109.do.end116_crit_edge, label %for.inc121

for.end109.do.end116_crit_edge:                   ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end116

do.end116:                                        ; preds = %for.end109.1.do.end116_crit_edge, %for.inc107.1.do.end116_crit_edge, %for.end109.do.end116_crit_edge, %for.inc107.do.end116_crit_edge
  %i.1184.lcssa = phi i32 [ 0, %for.end109.do.end116_crit_edge ], [ 1, %for.end109.1.do.end116_crit_edge ], [ 1, %for.inc107.1.do.end116_crit_edge ], [ 0, %for.inc107.do.end116_crit_edge ]
  %arrayidx119 = getelementptr [2 x i64], ptr %spec.select, i32 0, i32 %i.1184.lcssa
  %40 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx119, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i64 noundef %41) #11
  br label %check_hwcfg_error

for.inc121:                                       ; preds = %for.end109
  %42 = select i1 %cmp78, i64 360000000, i64 180000000
  br label %for.body99.1

for.body99.1:                                     ; preds = %for.inc107.1.for.body99.1_crit_edge, %for.inc121
  %j.0182.1 = phi i32 [ 0, %for.inc121 ], [ %inc108.1, %for.inc107.1.for.body99.1_crit_edge ]
  %arrayidx102.1 = getelementptr i64, ptr %35, i32 %j.0182.1
  %43 = ptrtoint ptr %arrayidx102.1 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx102.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %cmp103.1 = icmp eq i64 %42, %44
  br i1 %cmp103.1, label %for.end109.1, label %for.inc107.1

for.inc107.1:                                     ; preds = %for.body99.1
  %inc108.1 = add nuw i32 %j.0182.1, 1
  %exitcond.1.not = icmp eq i32 %inc108.1, %33
  br i1 %exitcond.1.not, label %for.inc107.1.do.end116_crit_edge, label %for.inc107.1.for.body99.1_crit_edge

for.inc107.1.for.body99.1_crit_edge:              ; preds = %for.inc107.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body99.1

for.inc107.1.do.end116_crit_edge:                 ; preds = %for.inc107.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end116

for.end109.1:                                     ; preds = %for.body99.1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0182.1, i32 %33)
  %cmp111.1 = icmp eq i32 %j.0182.1, %33
  br i1 %cmp111.1, label %for.end109.1.do.end116_crit_edge, label %for.end109.1.check_hwcfg_error_crit_edge

for.end109.1.check_hwcfg_error_crit_edge:         ; preds = %for.end109.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_hwcfg_error

for.end109.1.do.end116_crit_edge:                 ; preds = %for.end109.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end116

check_hwcfg_error:                                ; preds = %for.end109.1.check_hwcfg_error_crit_edge, %do.end116, %do.end89, %do.end58
  %ret.0 = phi i32 [ -22, %do.end58 ], [ -22, %do.end116 ], [ -22, %do.end89 ], [ 0, %for.end109.1.check_hwcfg_error_crit_edge ]
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg) #8
  br label %cleanup

cleanup:                                          ; preds = %check_hwcfg_error, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then22, %for.body.preheader.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %check_hwcfg_error ], [ %7, %do.end ], [ %17, %if.then22 ], [ -6, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call28, %for.body.preheader.cleanup_crit_edge ], [ -6, %if.end38.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xvclk_rate) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ov8856_power_on(ptr noundef %ov8856) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov8856, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call1 = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  %xvclk = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 3
  %2 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xvclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.then3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end6_crit_edge

clk_prepare_enable.exit.if.end6_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59) #11
  br label %cleanup

if.end6:                                          ; preds = %clk_prepare_enable.exit.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  %reset_gpio = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 4
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end6.if.end9_crit_edge, label %if.then7

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end6.if.end9_crit_edge
  %supplies = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 5
  %call10 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #11
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #8
  %8 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xvclk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 1500, i32 noundef 1800, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %call10, %do.end15 ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8856_identify_module(ptr nocapture noundef %ov8856) unnamed_addr #2 align 64 {
entry:
  %buf.i92 = alloca [6 x i8], align 2
  %buf.i87 = alloca [6 x i8], align 2
  %buf.i82 = alloca [6 x i8], align 2
  %buf.i79 = alloca [6 x i8], align 2
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i = alloca [2 x i8], align 2
  %data_buf.i = alloca [4 x i8], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov8856, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %identified = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 18
  %2 = ptrtoint ptr %identified to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %identified, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i) #8
  %6 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_buf.i, align 4
  %7 = ptrtoint ptr %addr_buf.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 12298, ptr %addr_buf.i, align 2
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
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %addr_buf.i, ptr %buf.i, align 4
  %14 = load i16, ptr %addr.i, align 2
  %arrayidx9.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx9.i, align 4
  %flags12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags12.i, align 2
  %len14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3, ptr %len14.i, align 4
  %arrayidx16.i = getelementptr inbounds [4 x i8], ptr %data_buf.i, i32 0, i32 1
  %buf18.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf18.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx16.i, ptr %buf18.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call20.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i)
  %cmp21.not.i = icmp eq i32 %call20.i, 2
  br i1 %cmp21.not.i, label %if.end4, label %ov8856_read_reg.exit

ov8856_read_reg.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %21 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_buf.i, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34906, i32 %22)
  %cmp.not = icmp eq i32 %22, 34906
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef 34906, i32 noundef %22) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i79) #8
  %26 = getelementptr inbounds [6 x i8], ptr %buf.i79, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i79 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 256, ptr %buf.i79, align 2
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 16777216, ptr %26, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i79, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i79) #8
  br i1 %cmp9.not.i, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %29 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i82) #8
  %31 = getelementptr inbounds [6 x i8], ptr %buf.i82, i32 0, i32 2
  %32 = ptrtoint ptr %buf.i82 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 15748, ptr %buf.i82, align 2
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %31, align 2
  %call.i.i84 = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %buf.i82, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i84)
  %cmp9.not.i85 = icmp eq i32 %call.i.i84, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i82) #8
  br i1 %cmp9.not.i85, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.67) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %34 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i87) #8
  %36 = getelementptr inbounds [6 x i8], ptr %buf.i87, i32 0, i32 2
  %37 = ptrtoint ptr %buf.i87 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 15745, ptr %buf.i87, align 2
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 16777216, ptr %36, align 2
  %call.i.i89 = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %buf.i87, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i89)
  %cmp9.not.i90 = icmp eq i32 %call.i.i89, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i87) #8
  br i1 %cmp9.not.i90, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.70) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %call27 = call fastcc i32 @ov8856_read_reg(ptr noundef %ov8856, i16 noundef zeroext 28687, i16 noundef zeroext 1, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br i1 %tobool28.not, label %do.end37, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.73) #11
  br label %cleanup

do.end37:                                         ; preds = %if.end26
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp39 = icmp eq i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp40 = icmp eq i32 %40, 2
  %cond = select i1 %cmp40, ptr @.str.80, ptr @.str.81
  %cond41 = select i1 %cmp39, ptr @.str.79, ptr %cond
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %addr.i, align 2
  %conv = zext i16 %42 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.76, i32 noundef %40, ptr noundef nonnull %cond41, i32 noundef %conv) #11
  %43 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i92) #8
  %45 = getelementptr inbounds [6 x i8], ptr %buf.i92, i32 0, i32 2
  %46 = ptrtoint ptr %buf.i92 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 256, ptr %buf.i92, align 2
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 0, ptr %45, align 2
  %call.i.i94 = call i32 @i2c_transfer_buffer_flags(ptr noundef %44, ptr noundef nonnull %buf.i92, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i94)
  %cmp9.not.i95 = icmp eq i32 %call.i.i94, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i92) #8
  br i1 %cmp9.not.i95, label %if.end49, label %do.end47

do.end47:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.83) #11
  br label %cleanup

if.end49:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %identified to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %identified, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end47, %do.end32, %do.end24, %do.end16, %if.end6.cleanup_crit_edge, %do.end, %ov8856_read_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ -5, %do.end16 ], [ -5, %do.end24 ], [ %call27, %do.end32 ], [ -5, %do.end47 ], [ 0, %if.end49 ], [ 0, %entry.cleanup_crit_edge ], [ -5, %ov8856_read_reg.exit ], [ -5, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i40 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %streaming = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 14
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !226
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then3
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !228
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then7_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then7_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !229
  br label %if.then7

if.then7:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %call10 = tail call fastcc i32 @ov8856_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %if.end9
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
  br i1 %cmp9.not.i.i, label %if.then12.if.end18.sink.split_crit_edge, label %do.end.i

if.then12.if.end18.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.sink.split

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53) #11
  br label %if.end18.sink.split

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i40) #8
  %13 = getelementptr inbounds [6 x i8], ptr %buf.i.i40, i32 0, i32 2
  %14 = ptrtoint ptr %buf.i.i40 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 256, ptr %buf.i.i40, align 2
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %13, align 2
  %call.i.i.i42 = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i.i40, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i42)
  %cmp9.not.i.i43 = icmp eq i32 %call.i.i.i42, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i40) #8
  br i1 %cmp9.not.i.i43, label %if.else.ov8856_stop_streaming.exit46_crit_edge, label %do.end.i45

if.else.ov8856_stop_streaming.exit46_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8856_stop_streaming.exit46

do.end.i45:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i44 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44, ptr noundef nonnull @.str.53) #11
  br label %ov8856_stop_streaming.exit46

ov8856_stop_streaming.exit46:                     ; preds = %do.end.i45, %if.else.ov8856_stop_streaming.exit46_crit_edge
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %ov8856_stop_streaming.exit46, %do.end.i, %if.then12.if.end18.sink.split_crit_edge
  %dev.sink = phi ptr [ %dev16, %ov8856_stop_streaming.exit46 ], [ %dev, %if.then12.if.end18.sink.split_crit_edge ], [ %dev, %do.end.i ]
  %ret.0.ph = phi i32 [ 0, %ov8856_stop_streaming.exit46 ], [ %call10, %if.then12.if.end18.sink.split_crit_edge ], [ %call10, %do.end.i ]
  %call.i39 = call i32 @__pm_runtime_idle(ptr noundef %dev.sink, i32 noundef 5) #8
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.end9.if.end18_crit_edge
  %tobool19 = phi i1 [ true, %if.end9.if.end18_crit_edge ], [ false, %if.end18.sink.split ]
  %ret.0 = phi i32 [ 0, %if.end9.if.end18_crit_edge ], [ %ret.0.ph, %if.end18.sink.split ]
  %frombool = zext i1 %tobool19 to i8
  %16 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #8
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
define internal fastcc i32 @ov8856_start_streaming(ptr nocapture noundef %ov8856) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov8856, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call fastcc i32 @ov8856_identify_module(ptr noundef %ov8856)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_mode = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 11
  %2 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_mode, align 4
  %link_freq_index2 = getelementptr inbounds %struct.ov8856_mode, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %link_freq_index2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_freq_index2, align 4
  %priv_lane = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 16
  %6 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_lane, align 4
  %arrayidx = getelementptr %struct.ov8856_lane_cfg, ptr %7, i32 0, i32 1, i32 %5
  %call4 = tail call fastcc i32 @ov8856_write_reg_list(ptr noundef %ov8856, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_mode, align 4
  %reg_list9 = getelementptr inbounds %struct.ov8856_mode, ptr %9, i32 0, i32 6
  %call10 = tail call fastcc i32 @ov8856_write_reg_list(ptr noundef %ov8856, ptr noundef %reg_list9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.47) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %cur_mbus_index = getelementptr inbounds %struct.ov8856, ptr %ov8856, i32 0, i32 12
  %10 = ptrtoint ptr %cur_mbus_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_mbus_index, align 4
  %arrayidx18 = getelementptr [2 x %struct.ov8856_reg_list], ptr @bayer_offset_configs, i32 0, i32 %11
  %call19 = tail call fastcc i32 @ov8856_write_reg_list(ptr noundef %ov8856, ptr noundef %arrayidx18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %ov8856, i32 0, i32 8
  %12 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_handler, align 4
  %call28 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %14 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %16 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 256, ptr %buf.i, align 2
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 16777216, ptr %16, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br i1 %cmp9.not.i, label %if.end31.cleanup_crit_edge, label %do.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.53) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end24, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call10, %do.end15 ], [ %call19, %do.end24 ], [ -5, %do.end37 ], [ %call1, %entry.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8856_write_reg_list(ptr nocapture noundef readonly %ov8856, ptr nocapture noundef readonly %r_list) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov8856, i32 0, i32 11
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regs = getelementptr inbounds %struct.ov8856_reg_list, ptr %r_list, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.ov8856_reg, ptr %6, i32 %i.029
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %val = getelementptr %struct.ov8856_reg, ptr %6, i32 %i.029, i32 1
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
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @ov8856_write_reg_list._rs, ptr noundef nonnull @__func__.ov8856_write_reg_list) #8
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
  %arrayidx9 = getelementptr %struct.ov8856_reg, ptr %16, i32 %i.029
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx9, align 2
  %conv11 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %conv11, i32 noundef -5) #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.029, 1
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
define internal i32 @ov8856_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [2 x i32], ptr @ov8856_mbus_codes, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  %modes_size = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 17
  %2 = ptrtoint ptr %modes_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modes_size, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp ult i32 %1, %conv
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %5, label %for.cond.preheader.cleanup_crit_edge [
    i32 12295, label %for.cond.preheader.if.end12_crit_edge
    i32 12298, label %for.cond.preheader.if.end12_crit_edge39
  ]

for.cond.preheader.if.end12_crit_edge39:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %for.cond.preheader.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge39
  %priv_lane = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 16
  %7 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv_lane, align 4
  %arrayidx14 = getelementptr %struct.ov8856_lane_cfg, ptr %8, i32 0, i32 2, i32 %1
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx14, align 8
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %11 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %12 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %max_width, align 4
  %13 = load ptr, ptr %priv_lane, align 4
  %height = getelementptr %struct.ov8856_lane_cfg, ptr %13, i32 0, i32 2, i32 %1, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %16 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %17 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 13
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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !230

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
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
  %cur_mode = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 11
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
  %height.i = getelementptr inbounds %struct.ov8856_mode, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height2.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %18, label %if.then5.i [
    i32 12295, label %if.else.ov8856_update_pad_format.exit_crit_edge
    i32 12298, label %if.end6.fold.split.i
  ]

if.else.ov8856_update_pad_format.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8856_update_pad_format.exit

if.then5.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %default_mbus_index.i = getelementptr inbounds %struct.ov8856_mode, ptr %10, i32 0, i32 8
  %20 = ptrtoint ptr %default_mbus_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %default_mbus_index.i, align 4
  br label %ov8856_update_pad_format.exit

if.end6.fold.split.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8856_update_pad_format.exit

ov8856_update_pad_format.exit:                    ; preds = %if.end6.fold.split.i, %if.then5.i, %if.else.ov8856_update_pad_format.exit_crit_edge
  %index.1.i = phi i32 [ %21, %if.then5.i ], [ 0, %if.else.ov8856_update_pad_format.exit_crit_edge ], [ 1, %if.end6.fold.split.i ]
  %arrayidx7.i = getelementptr [2 x i32], ptr @ov8856_mbus_codes, i32 0, i32 %index.1.i
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.i, align 4
  %24 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %code.i, align 4
  %cur_mbus_index.i = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 12
  %25 = ptrtoint ptr %cur_mbus_index.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %index.1.i, ptr %cur_mbus_index.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %field.i, align 4
  br label %if.end

if.end:                                           ; preds = %ov8856_update_pad_format.exit, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_lane = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 16
  %0 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_lane, align 4
  %supported_modes = getelementptr inbounds %struct.ov8856_lane_cfg, ptr %1, i32 0, i32 2
  %modes_size = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 17
  %2 = ptrtoint ptr %modes_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modes_size, align 4
  %conv = zext i8 %3 to i32
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %call = tail call ptr @__v4l2_find_nearest_size(ptr noundef %supported_modes, i32 noundef %conv, i32 noundef 40, i32 noundef 0, i32 noundef 4, i32 noundef %5, i32 noundef %7) #8
  %mutex = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov8856_mode, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i, align 4
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %15, label %if.then5.i [
    i32 12295, label %entry.ov8856_update_pad_format.exit_crit_edge
    i32 12298, label %if.end6.fold.split.i
  ]

entry.ov8856_update_pad_format.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8856_update_pad_format.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %default_mbus_index.i = getelementptr inbounds %struct.ov8856_mode, ptr %call, i32 0, i32 8
  %17 = ptrtoint ptr %default_mbus_index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %default_mbus_index.i, align 4
  br label %ov8856_update_pad_format.exit

if.end6.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8856_update_pad_format.exit

ov8856_update_pad_format.exit:                    ; preds = %if.end6.fold.split.i, %if.then5.i, %entry.ov8856_update_pad_format.exit_crit_edge
  %index.1.i = phi i32 [ %18, %if.then5.i ], [ 0, %entry.ov8856_update_pad_format.exit_crit_edge ], [ 1, %if.end6.fold.split.i ]
  %arrayidx7.i = getelementptr [2 x i32], ptr @ov8856_mbus_codes, i32 0, i32 %index.1.i
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.i, align 4
  %21 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %code.i, align 4
  %cur_mbus_index.i = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 12
  %22 = ptrtoint ptr %cur_mbus_index.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %index.1.i, ptr %cur_mbus_index.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field.i, align 4
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %ov8856_update_pad_format.exit
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %26 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %28 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %27, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !230

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %27, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %31, i32 %spec.select.i
  %32 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %if.end

if.else:                                          ; preds = %ov8856_update_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 11
  %33 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call, ptr %cur_mode, align 4
  %link_freq = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 6
  %34 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link_freq, align 4
  %link_freq_index = getelementptr inbounds %struct.ov8856_mode, ptr %call, i32 0, i32 5
  %36 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %link_freq_index, align 4
  %call7 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %35, i32 noundef %37) #8
  %pixel_rate = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 7
  %38 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pixel_rate, align 4
  %40 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv_lane, align 4
  %42 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %link_freq_index, align 4
  %44 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_mode, align 4
  %data_lanes = getelementptr inbounds %struct.ov8856_mode, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %data_lanes to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data_lanes, align 4
  %arrayidx.i75 = getelementptr i64, ptr %41, i32 %43
  %48 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx.i75, align 8
  %conv.i76 = zext i8 %47 to i64
  %mul.i = shl nuw nsw i64 %conv.i76, 1
  %mul1.i = mul i64 %mul.i, %49
  %div83263.i = lshr exact i64 %mul1.i, 1
  %50 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83263.i, i64 3689348814741910323) #12, !srcloc !220
  %51 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83263.i, i64 %50) #12, !srcloc !221
  %call13 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %39, i64 noundef %51) #8
  %vts_def = getelementptr inbounds %struct.ov8856_mode, ptr %call, i32 0, i32 3
  %52 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vts_def, align 4
  %54 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height.i, align 4
  %sub = sub i32 %53, %55
  %vblank = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 8
  %56 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vblank, align 4
  %vts_min = getelementptr inbounds %struct.ov8856_mode, ptr %call, i32 0, i32 4
  %58 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vts_min, align 4
  %sub16 = sub i32 %59, %55
  %conv17 = zext i32 %sub16 to i64
  %sub19 = sub i32 32767, %55
  %conv20 = zext i32 %sub19 to i64
  %conv21 = sext i32 %sub to i64
  %call22 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %57, i64 noundef %conv17, i64 noundef %conv20, i64 noundef 1, i64 noundef %conv21) #8
  %60 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vblank, align 4
  %call24 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %61, i32 noundef %sub) #8
  %62 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv_lane, align 4
  %hts = getelementptr inbounds %struct.ov8856_mode, ptr %call, i32 0, i32 2
  %64 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hts, align 4
  %66 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %link_freq_index, align 4
  %68 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur_mode, align 4
  %data_lanes30 = getelementptr inbounds %struct.ov8856_mode, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %data_lanes30 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data_lanes30, align 4
  %conv.i77 = zext i32 %65 to i64
  %arrayidx.i.i = getelementptr i64, ptr %63, i32 %67
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx.i.i, align 8
  %conv.i.i = zext i8 %71 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 1
  %mul1.i.i = mul i64 %mul.i.i, %73
  %div83263.i.i = lshr exact i64 %mul1.i.i, 1
  %74 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83263.i.i, i64 3689348814741910323) #12, !srcloc !220
  %75 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83263.i.i, i64 %74) #12, !srcloc !221
  %mul.i78 = mul i64 %75, %conv.i77
  %76 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -1253132416968158909, i64 %mul.i78) #12, !srcloc !222
  %77 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -1253132416968158909, i64 %mul.i78, i64 %76, i32 0) #12, !srcloc !223
  %asmresult10.i.i = extractvalue { i64, i32 } %77, 0
  %ppl.0.i = lshr i64 %asmresult10.i.i, 27
  %78 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %call, align 4
  %80 = trunc i64 %ppl.0.i to i32
  %conv35 = sub i32 %80, %79
  %hblank = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 9
  %81 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hblank, align 4
  %conv36 = sext i32 %conv35 to i64
  %call39 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %82, i64 noundef %conv36, i64 noundef %conv36, i64 noundef 1, i64 noundef %conv36) #8
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
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8856_read_reg(ptr nocapture noundef readonly %ov8856, i16 noundef zeroext %reg, i16 noundef zeroext %len, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf = alloca [2 x i8], align 2
  %data_buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov8856, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #8
  %2 = getelementptr inbounds i8, ptr %msgs, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf) #8
  %4 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data_buf, align 4
  %conv = zext i16 %len to i32
  %5 = ptrtoint ptr %addr_buf to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %reg, ptr %addr_buf, align 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %8 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %10 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %len5, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %addr_buf, ptr %buf, align 4
  %12 = load i16, ptr %addr, align 2
  %arrayidx9 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx9, align 4
  %flags12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %flags12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags12, align 2
  %len14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %len14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %len, ptr %len14, align 4
  %sub = sub nsw i32 4, %conv
  %arrayidx16 = getelementptr [4 x i8], ptr %data_buf, i32 0, i32 %sub
  %buf18 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %buf18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx16, ptr %buf18, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call20 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msgs, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 2
  br i1 %cmp21.not, label %if.end24, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_buf, align 4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
define internal i32 @ov8856_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i140.i = alloca [6 x i8], align 2
  %msgs.i121.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i122.i = alloca [2 x i8], align 2
  %data_buf.i123.i = alloca [4 x i8], align 4
  %buf.i115.i = alloca [6 x i8], align 2
  %msgs.i96.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i97.i = alloca [2 x i8], align 2
  %data_buf.i98.i = alloca [4 x i8], align 4
  %buf.i90.i = alloca [6 x i8], align 2
  %msgs.i71.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i72.i = alloca [2 x i8], align 2
  %data_buf.i73.i = alloca [4 x i8], align 4
  %buf.i68.i = alloca [6 x i8], align 2
  %msgs.i.i86 = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i87 = alloca [2 x i8], align 2
  %data_buf.i.i88 = alloca [4 x i8], align 4
  %buf.i54.i = alloca [6 x i8], align 2
  %msgs.i35.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i36.i = alloca [2 x i8], align 2
  %data_buf.i37.i = alloca [4 x i8], align 4
  %buf.i32.i = alloca [6 x i8], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  %buf.i.i74 = alloca [6 x i8], align 2
  %buf.i68 = alloca [6 x i8], align 2
  %buf.i62 = alloca [6 x i8], align 2
  %buf.i19.i = alloca [6 x i8], align 2
  %buf.i13.i = alloca [6 x i8], align 2
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
  %cur_mode = getelementptr i8, ptr %1, i32 248
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov8856_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -6
  %sub = add i32 %add, %11
  %conv = zext i32 %sub to i64
  %exposure = getelementptr i8, ptr %1, i32 244
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
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %20, label %if.end6.sw.epilog_crit_edge [
    i32 10356995, label %sw.bb
    i32 10422533, label %sw.bb10
    i32 9963793, label %sw.bb13
    i32 10356993, label %sw.bb16
    i32 10422531, label %sw.bb22
    i32 9963796, label %sw.bb25
    i32 9963797, label %sw.bb28
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
  %retval.0.i = select i1 %cmp9.not.i, i32 0, i32 -5
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
  store i16 20505, ptr %buf.i.i, align 2
  %shl.i.i = shl i32 %30, 16
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %shl.i.i, ptr %33, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  br i1 %cmp9.not.i.i, label %if.end.i, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb10
  %36 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i13.i) #8
  %38 = getelementptr inbounds [6 x i8], ptr %buf.i13.i, i32 0, i32 2
  %39 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 20507, ptr %buf.i13.i, align 2
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %shl.i.i, ptr %38, align 2
  %call.i.i16.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %buf.i13.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i16.i)
  %cmp9.not.i17.i = icmp eq i32 %call.i.i16.i, 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i13.i) #8
  br i1 %cmp9.not.i17.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i19.i) #8
  %43 = getelementptr inbounds [6 x i8], ptr %buf.i19.i, i32 0, i32 2
  %44 = ptrtoint ptr %buf.i19.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 20509, ptr %buf.i19.i, align 2
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %shl.i.i, ptr %43, align 2
  %call.i.i22.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %buf.i19.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i22.i)
  %cmp9.not.i23.i = icmp eq i32 %call.i.i22.i, 4
  %retval.0.i24.i = select i1 %cmp9.not.i23.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i19.i) #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %46 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val14, align 4
  %shl = shl i32 %47, 12
  %48 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i62) #8
  %50 = getelementptr inbounds [6 x i8], ptr %buf.i62, i32 0, i32 2
  %51 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 13568, ptr %buf.i62, align 2
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %shl, ptr %50, align 2
  %call.i.i65 = call i32 @i2c_transfer_buffer_flags(ptr noundef %49, ptr noundef nonnull %buf.i62, i32 noundef 5, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i65)
  %cmp9.not.i66 = icmp eq i32 %call.i.i65, 5
  %retval.0.i67 = select i1 %cmp9.not.i66, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i62) #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %cur_mode17 = getelementptr i8, ptr %1, i32 248
  %53 = ptrtoint ptr %cur_mode17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_mode17, align 4
  %height18 = getelementptr inbounds %struct.ov8856_mode, ptr %54, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i68) #8
  %61 = getelementptr inbounds [6 x i8], ptr %buf.i68, i32 0, i32 2
  %62 = ptrtoint ptr %buf.i68 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 14350, ptr %buf.i68, align 2
  %shl.i70 = shl i32 %add20, 16
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %shl.i70, ptr %61, align 2
  %call.i.i71 = call i32 @i2c_transfer_buffer_flags(ptr noundef %60, ptr noundef nonnull %buf.i68, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i71)
  %cmp9.not.i72 = icmp eq i32 %call.i.i71, 4
  %retval.0.i73 = select i1 %cmp9.not.i72, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i68) #8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %64 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i = icmp eq i32 %65, 0
  %sub.i = shl i32 %65, 26
  %66 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i74) #8
  %68 = getelementptr inbounds [6 x i8], ptr %buf.i.i74, i32 0, i32 2
  %69 = ptrtoint ptr %buf.i.i74 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 24064, ptr %buf.i.i74, align 2
  %or.i = add i32 %sub.i, 2080374784
  %or.op.i = or i32 %or.i, -2147483648
  %shl.i.i76 = select i1 %tobool.not.i, i32 0, i32 %or.op.i
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %shl.i.i76, ptr %68, align 2
  %call.i.i.i77 = call i32 @i2c_transfer_buffer_flags(ptr noundef %67, ptr noundef nonnull %buf.i.i74, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i77)
  %cmp9.not.i.i78 = icmp eq i32 %call.i.i.i77, 3
  %retval.0.i.i = select i1 %cmp9.not.i.i78, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i74) #8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end6
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %71 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val26, align 4
  %73 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %75 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %76 = call ptr @memset(ptr %75, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  %77 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %data_buf.i.i, align 4
  %78 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 20484, ptr %addr_buf.i.i, align 2
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
  %buf.i.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %buf.i.i80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %addr_buf.i.i, ptr %buf.i.i80, align 4
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
  %call20.i.i = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i)
  %cmp21.not.i.i = icmp eq i32 %call20.i.i, 2
  br i1 %cmp21.not.i.i, label %if.end.i84, label %ov8856_read_reg.exit.i

ov8856_read_reg.exit.i:                           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  br label %sw.epilog

if.end.i84:                                       ; preds = %sw.bb25
  %92 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool1.not.i = icmp eq i32 %72, 0
  %and.i = and i32 %93, 251
  %masksel.i = select i1 %tobool1.not.i, i32 4, i32 0
  %cond.i = or i32 %and.i, %masksel.i
  %94 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i32.i) #8
  %96 = getelementptr inbounds [6 x i8], ptr %buf.i32.i, i32 0, i32 2
  %97 = ptrtoint ptr %buf.i32.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 20484, ptr %buf.i32.i, align 2
  %shl.i.i81 = shl nuw i32 %cond.i, 24
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %shl.i.i81, ptr %96, align 2
  %call.i.i.i82 = call i32 @i2c_transfer_buffer_flags(ptr noundef %95, ptr noundef nonnull %buf.i32.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i82)
  %cmp9.not.i.i83 = icmp eq i32 %call.i.i.i82, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i32.i) #8
  br i1 %cmp9.not.i.i83, label %if.end5.i, label %if.end.i84.sw.epilog_crit_edge

if.end.i84.sw.epilog_crit_edge:                   ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end5.i:                                        ; preds = %if.end.i84
  %99 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i35.i) #8
  %101 = getelementptr inbounds i8, ptr %msgs.i35.i, i32 4
  %102 = call ptr @memset(ptr %101, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i36.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i37.i) #8
  %103 = ptrtoint ptr %data_buf.i37.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %data_buf.i37.i, align 4
  %104 = ptrtoint ptr %addr_buf.i36.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 14369, ptr %addr_buf.i36.i, align 2
  %addr.i39.i = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 1
  %105 = ptrtoint ptr %addr.i39.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %addr.i39.i, align 2
  %107 = ptrtoint ptr %msgs.i35.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %msgs.i35.i, align 4
  %flags.i40.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i35.i, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i40.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i40.i, align 2
  %109 = ptrtoint ptr %101 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 2, ptr %101, align 4
  %buf.i42.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i35.i, i32 0, i32 3
  %110 = ptrtoint ptr %buf.i42.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %addr_buf.i36.i, ptr %buf.i42.i, align 4
  %111 = load i16, ptr %addr.i39.i, align 2
  %arrayidx9.i43.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i35.i, i32 0, i32 1
  %112 = ptrtoint ptr %arrayidx9.i43.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %arrayidx9.i43.i, align 4
  %flags12.i44.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i35.i, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %flags12.i44.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1, ptr %flags12.i44.i, align 2
  %len14.i45.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i35.i, i32 0, i32 1, i32 2
  %114 = ptrtoint ptr %len14.i45.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 1, ptr %len14.i45.i, align 4
  %arrayidx16.i46.i = getelementptr inbounds [4 x i8], ptr %data_buf.i37.i, i32 0, i32 3
  %buf18.i47.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i35.i, i32 0, i32 1, i32 3
  %115 = ptrtoint ptr %buf18.i47.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %arrayidx16.i46.i, ptr %buf18.i47.i, align 4
  %adapter.i48.i = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 3
  %116 = ptrtoint ptr %adapter.i48.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %adapter.i48.i, align 8
  %call20.i49.i = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %msgs.i35.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i49.i)
  %cmp21.not.i50.i = icmp eq i32 %call20.i49.i, 2
  br i1 %cmp21.not.i50.i, label %if.end9.i, label %ov8856_read_reg.exit53.i

ov8856_read_reg.exit53.i:                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i37.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i36.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i35.i) #8
  br label %sw.epilog

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %data_buf.i37.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %data_buf.i37.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i37.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i36.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i35.i) #8
  %and14.i = and i32 %119, 185
  %masksel72.i = select i1 %tobool1.not.i, i32 70, i32 0
  %cond20.i = or i32 %and14.i, %masksel72.i
  %120 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i54.i) #8
  %122 = getelementptr inbounds [6 x i8], ptr %buf.i54.i, i32 0, i32 2
  %123 = ptrtoint ptr %buf.i54.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 14369, ptr %buf.i54.i, align 2
  %shl.i56.i = shl nuw i32 %cond20.i, 24
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 %shl.i56.i, ptr %122, align 2
  %call.i.i57.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %121, ptr noundef nonnull %buf.i54.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i57.i)
  %cmp9.not.i58.i = icmp eq i32 %call.i.i57.i, 3
  %retval.0.i59.i = select i1 %cmp9.not.i58.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i54.i) #8
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end6
  %val29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %125 = ptrtoint ptr %val29 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %val29, align 4
  %127 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i86) #8
  %129 = getelementptr inbounds i8, ptr %msgs.i.i86, i32 4
  %130 = call ptr @memset(ptr %129, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i87) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i88) #8
  %131 = ptrtoint ptr %data_buf.i.i88 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %data_buf.i.i88, align 4
  %132 = ptrtoint ptr %addr_buf.i.i87 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 14187, ptr %addr_buf.i.i87, align 2
  %addr.i.i90 = getelementptr inbounds %struct.i2c_client, ptr %128, i32 0, i32 1
  %133 = ptrtoint ptr %addr.i.i90 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %addr.i.i90, align 2
  %135 = ptrtoint ptr %msgs.i.i86 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %msgs.i.i86, align 4
  %flags.i.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i.i91 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i.i91, align 2
  %137 = ptrtoint ptr %129 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 2, ptr %129, align 4
  %buf.i.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86, i32 0, i32 3
  %138 = ptrtoint ptr %buf.i.i92 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %addr_buf.i.i87, ptr %buf.i.i92, align 4
  %139 = load i16, ptr %addr.i.i90, align 2
  %arrayidx9.i.i93 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i86, i32 0, i32 1
  %140 = ptrtoint ptr %arrayidx9.i.i93 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %arrayidx9.i.i93, align 4
  %flags12.i.i94 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i86, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %flags12.i.i94 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %flags12.i.i94, align 2
  %len14.i.i95 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i86, i32 0, i32 1, i32 2
  %142 = ptrtoint ptr %len14.i.i95 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %len14.i.i95, align 4
  %arrayidx16.i.i96 = getelementptr inbounds [4 x i8], ptr %data_buf.i.i88, i32 0, i32 3
  %buf18.i.i97 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i86, i32 0, i32 1, i32 3
  %143 = ptrtoint ptr %buf18.i.i97 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %arrayidx16.i.i96, ptr %buf18.i.i97, align 4
  %adapter.i.i98 = getelementptr inbounds %struct.i2c_client, ptr %128, i32 0, i32 3
  %144 = ptrtoint ptr %adapter.i.i98 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %adapter.i.i98, align 8
  %call20.i.i99 = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %msgs.i.i86, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i99)
  %cmp21.not.i.i100 = icmp eq i32 %call20.i.i99, 2
  br i1 %cmp21.not.i.i100, label %if.end.i107, label %ov8856_read_reg.exit.i101

ov8856_read_reg.exit.i101:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i88) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i87) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i86) #8
  br label %sw.epilog

if.end.i107:                                      ; preds = %sw.bb28
  %conv30 = trunc i32 %126 to i8
  %146 = ptrtoint ptr %data_buf.i.i88 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %data_buf.i.i88, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i88) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i87) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i86) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv30)
  %tobool1.not.i102 = icmp eq i8 %conv30, 0
  %and3.i = and i32 %147, 249
  %masksel.i103 = select i1 %tobool1.not.i102, i32 0, i32 6
  %cond.i104 = or i32 %and3.i, %masksel.i103
  %148 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i68.i) #8
  %150 = getelementptr inbounds [6 x i8], ptr %buf.i68.i, i32 0, i32 2
  %151 = ptrtoint ptr %buf.i68.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 14187, ptr %buf.i68.i, align 2
  %shl.i.i105 = shl nuw i32 %cond.i104, 24
  %152 = ptrtoint ptr %150 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 %shl.i.i105, ptr %150, align 2
  %call.i.i.i106 = call i32 @i2c_transfer_buffer_flags(ptr noundef %149, ptr noundef nonnull %buf.i68.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i68.i) #8
  %153 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i71.i) #8
  %155 = getelementptr inbounds i8, ptr %msgs.i71.i, i32 4
  %156 = call ptr @memset(ptr %155, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i72.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i73.i) #8
  %157 = ptrtoint ptr %data_buf.i73.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %data_buf.i73.i, align 4
  %158 = ptrtoint ptr %addr_buf.i72.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 20481, ptr %addr_buf.i72.i, align 2
  %addr.i75.i = getelementptr inbounds %struct.i2c_client, ptr %154, i32 0, i32 1
  %159 = ptrtoint ptr %addr.i75.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %addr.i75.i, align 2
  %161 = ptrtoint ptr %msgs.i71.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %msgs.i71.i, align 4
  %flags.i76.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i71.i, i32 0, i32 1
  %162 = ptrtoint ptr %flags.i76.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %flags.i76.i, align 2
  %163 = ptrtoint ptr %155 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 2, ptr %155, align 4
  %buf.i78.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i71.i, i32 0, i32 3
  %164 = ptrtoint ptr %buf.i78.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %addr_buf.i72.i, ptr %buf.i78.i, align 4
  %165 = load i16, ptr %addr.i75.i, align 2
  %arrayidx9.i79.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i71.i, i32 0, i32 1
  %166 = ptrtoint ptr %arrayidx9.i79.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %arrayidx9.i79.i, align 4
  %flags12.i80.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i71.i, i32 0, i32 1, i32 1
  %167 = ptrtoint ptr %flags12.i80.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 1, ptr %flags12.i80.i, align 2
  %len14.i81.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i71.i, i32 0, i32 1, i32 2
  %168 = ptrtoint ptr %len14.i81.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 1, ptr %len14.i81.i, align 4
  %arrayidx16.i82.i = getelementptr inbounds [4 x i8], ptr %data_buf.i73.i, i32 0, i32 3
  %buf18.i83.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i71.i, i32 0, i32 1, i32 3
  %169 = ptrtoint ptr %buf18.i83.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %arrayidx16.i82.i, ptr %buf18.i83.i, align 4
  %adapter.i84.i = getelementptr inbounds %struct.i2c_client, ptr %154, i32 0, i32 3
  %170 = ptrtoint ptr %adapter.i84.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %adapter.i84.i, align 8
  %call20.i85.i = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %msgs.i71.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i85.i)
  %cmp21.not.i86.i = icmp eq i32 %call20.i85.i, 2
  br i1 %cmp21.not.i86.i, label %if.end8.i, label %ov8856_read_reg.exit89.i

ov8856_read_reg.exit89.i:                         ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i73.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i72.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i71.i) #8
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end.i107
  %172 = ptrtoint ptr %data_buf.i73.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %data_buf.i73.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i73.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i72.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i71.i) #8
  %and14.i108 = and i32 %173, 251
  %masksel172.i = select i1 %tobool1.not.i102, i32 0, i32 4
  %cond16.i = or i32 %and14.i108, %masksel172.i
  %174 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i90.i) #8
  %176 = getelementptr inbounds [6 x i8], ptr %buf.i90.i, i32 0, i32 2
  %177 = ptrtoint ptr %buf.i90.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 20481, ptr %buf.i90.i, align 2
  %shl.i92.i = shl nuw i32 %cond16.i, 24
  %178 = ptrtoint ptr %176 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %shl.i92.i, ptr %176, align 2
  %call.i.i93.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %175, ptr noundef nonnull %buf.i90.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i90.i) #8
  %179 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i96.i) #8
  %181 = getelementptr inbounds i8, ptr %msgs.i96.i, i32 4
  %182 = call ptr @memset(ptr %181, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i97.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i98.i) #8
  %183 = ptrtoint ptr %data_buf.i98.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %data_buf.i98.i, align 4
  %184 = ptrtoint ptr %addr_buf.i97.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 20526, ptr %addr_buf.i97.i, align 2
  %addr.i100.i = getelementptr inbounds %struct.i2c_client, ptr %180, i32 0, i32 1
  %185 = ptrtoint ptr %addr.i100.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %addr.i100.i, align 2
  %187 = ptrtoint ptr %msgs.i96.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %186, ptr %msgs.i96.i, align 4
  %flags.i101.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i96.i, i32 0, i32 1
  %188 = ptrtoint ptr %flags.i101.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %flags.i101.i, align 2
  %189 = ptrtoint ptr %181 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 2, ptr %181, align 4
  %buf.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i96.i, i32 0, i32 3
  %190 = ptrtoint ptr %buf.i103.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %addr_buf.i97.i, ptr %buf.i103.i, align 4
  %191 = load i16, ptr %addr.i100.i, align 2
  %arrayidx9.i104.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i96.i, i32 0, i32 1
  %192 = ptrtoint ptr %arrayidx9.i104.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %191, ptr %arrayidx9.i104.i, align 4
  %flags12.i105.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i96.i, i32 0, i32 1, i32 1
  %193 = ptrtoint ptr %flags12.i105.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 1, ptr %flags12.i105.i, align 2
  %len14.i106.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i96.i, i32 0, i32 1, i32 2
  %194 = ptrtoint ptr %len14.i106.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 1, ptr %len14.i106.i, align 4
  %arrayidx16.i107.i = getelementptr inbounds [4 x i8], ptr %data_buf.i98.i, i32 0, i32 3
  %buf18.i108.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i96.i, i32 0, i32 1, i32 3
  %195 = ptrtoint ptr %buf18.i108.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %arrayidx16.i107.i, ptr %buf18.i108.i, align 4
  %adapter.i109.i = getelementptr inbounds %struct.i2c_client, ptr %180, i32 0, i32 3
  %196 = ptrtoint ptr %adapter.i109.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %adapter.i109.i, align 8
  %call20.i110.i = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %msgs.i96.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i110.i)
  %cmp21.not.i111.i = icmp eq i32 %call20.i110.i, 2
  br i1 %cmp21.not.i111.i, label %if.end21.i, label %ov8856_read_reg.exit114.i

ov8856_read_reg.exit114.i:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i98.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i97.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i96.i) #8
  br label %sw.epilog

if.end21.i:                                       ; preds = %if.end8.i
  %198 = ptrtoint ptr %data_buf.i98.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %data_buf.i98.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i98.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i97.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i96.i) #8
  %and26.i = and i32 %199, 252
  %masksel173.i = select i1 %tobool1.not.i102, i32 3, i32 0
  %cond31.i = or i32 %and26.i, %masksel173.i
  %200 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i115.i) #8
  %202 = getelementptr inbounds [6 x i8], ptr %buf.i115.i, i32 0, i32 2
  %203 = ptrtoint ptr %buf.i115.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 20526, ptr %buf.i115.i, align 2
  %shl.i117.i = shl nuw i32 %cond31.i, 24
  %204 = ptrtoint ptr %202 to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 %shl.i117.i, ptr %202, align 2
  %call.i.i118.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %201, ptr noundef nonnull %buf.i115.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i115.i) #8
  %205 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i121.i) #8
  %207 = getelementptr inbounds i8, ptr %msgs.i121.i, i32 4
  %208 = call ptr @memset(ptr %207, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i122.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i123.i) #8
  %209 = ptrtoint ptr %data_buf.i123.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %data_buf.i123.i, align 4
  %210 = ptrtoint ptr %addr_buf.i122.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 14368, ptr %addr_buf.i122.i, align 2
  %addr.i125.i = getelementptr inbounds %struct.i2c_client, ptr %206, i32 0, i32 1
  %211 = ptrtoint ptr %addr.i125.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %addr.i125.i, align 2
  %213 = ptrtoint ptr %msgs.i121.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %212, ptr %msgs.i121.i, align 4
  %flags.i126.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i121.i, i32 0, i32 1
  %214 = ptrtoint ptr %flags.i126.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 0, ptr %flags.i126.i, align 2
  %215 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 2, ptr %207, align 4
  %buf.i128.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i121.i, i32 0, i32 3
  %216 = ptrtoint ptr %buf.i128.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %addr_buf.i122.i, ptr %buf.i128.i, align 4
  %217 = load i16, ptr %addr.i125.i, align 2
  %arrayidx9.i129.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i121.i, i32 0, i32 1
  %218 = ptrtoint ptr %arrayidx9.i129.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %217, ptr %arrayidx9.i129.i, align 4
  %flags12.i130.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i121.i, i32 0, i32 1, i32 1
  %219 = ptrtoint ptr %flags12.i130.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 1, ptr %flags12.i130.i, align 2
  %len14.i131.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i121.i, i32 0, i32 1, i32 2
  %220 = ptrtoint ptr %len14.i131.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 1, ptr %len14.i131.i, align 4
  %arrayidx16.i132.i = getelementptr inbounds [4 x i8], ptr %data_buf.i123.i, i32 0, i32 3
  %buf18.i133.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i121.i, i32 0, i32 1, i32 3
  %221 = ptrtoint ptr %buf18.i133.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %arrayidx16.i132.i, ptr %buf18.i133.i, align 4
  %adapter.i134.i = getelementptr inbounds %struct.i2c_client, ptr %206, i32 0, i32 3
  %222 = ptrtoint ptr %adapter.i134.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %adapter.i134.i, align 8
  %call20.i135.i = call i32 @i2c_transfer(ptr noundef %223, ptr noundef nonnull %msgs.i121.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i135.i)
  %cmp21.not.i136.i = icmp eq i32 %call20.i135.i, 2
  br i1 %cmp21.not.i136.i, label %if.end36.i, label %ov8856_read_reg.exit139.i

ov8856_read_reg.exit139.i:                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i123.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i122.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i121.i) #8
  br label %sw.epilog

if.end36.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %224 = ptrtoint ptr %data_buf.i123.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %data_buf.i123.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i123.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i122.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i121.i) #8
  %and46.i = and i32 %225, 185
  %masksel174.i = select i1 %tobool1.not.i102, i32 0, i32 70
  %cond48.i = or i32 %and46.i, %masksel174.i
  %226 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i140.i) #8
  %228 = getelementptr inbounds [6 x i8], ptr %buf.i140.i, i32 0, i32 2
  %229 = ptrtoint ptr %buf.i140.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 14368, ptr %buf.i140.i, align 2
  %shl.i142.i = shl nuw i32 %cond48.i, 24
  %230 = ptrtoint ptr %228 to i32
  call void @__asan_storeN_noabort(i32 %230, i32 4)
  store i32 %shl.i142.i, ptr %228, align 2
  %call.i.i143.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %227, ptr noundef nonnull %buf.i140.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i143.i)
  %cmp9.not.i144.i = icmp eq i32 %call.i.i143.i, 3
  %retval.0.i145.i = select i1 %cmp9.not.i144.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i140.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end36.i, %ov8856_read_reg.exit139.i, %ov8856_read_reg.exit114.i, %ov8856_read_reg.exit89.i, %ov8856_read_reg.exit.i101, %if.end9.i, %ov8856_read_reg.exit53.i, %if.end.i84.sw.epilog_crit_edge, %ov8856_read_reg.exit.i, %sw.bb22, %sw.bb16, %sw.bb13, %if.end4.i, %if.end.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb, %if.end6.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.i, %sw.bb22 ], [ %retval.0.i73, %sw.bb16 ], [ %retval.0.i67, %sw.bb13 ], [ %retval.0.i, %sw.bb ], [ -22, %if.end6.sw.epilog_crit_edge ], [ %retval.0.i24.i, %if.end4.i ], [ -5, %sw.bb10.sw.epilog_crit_edge ], [ -5, %if.end.i.sw.epilog_crit_edge ], [ %retval.0.i59.i, %if.end9.i ], [ -5, %ov8856_read_reg.exit.i ], [ -5, %if.end.i84.sw.epilog_crit_edge ], [ -5, %ov8856_read_reg.exit53.i ], [ %retval.0.i145.i, %if.end36.i ], [ -5, %ov8856_read_reg.exit.i101 ], [ -5, %ov8856_read_reg.exit89.i ], [ -5, %ov8856_read_reg.exit114.i ], [ -5, %ov8856_read_reg.exit139.i ]
  %call.i110 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %priv_lane = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 16
  %0 = ptrtoint ptr %priv_lane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_lane, align 4
  %supported_modes = getelementptr inbounds %struct.ov8856_lane_cfg, ptr %1, i32 0, i32 2
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i.not = icmp eq i16 %5, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !231

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %supported_modes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %supported_modes, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %7, align 4
  %height.i = getelementptr inbounds %struct.ov8856_lane_cfg, ptr %1, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height2.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %15, label %if.then5.i [
    i32 12295, label %v4l2_subdev_get_try_format.exit.ov8856_update_pad_format.exit_crit_edge
    i32 12298, label %if.end6.fold.split.i
  ]

v4l2_subdev_get_try_format.exit.ov8856_update_pad_format.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8856_update_pad_format.exit

if.then5.i:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %default_mbus_index.i = getelementptr inbounds %struct.ov8856_lane_cfg, ptr %1, i32 0, i32 2, i32 0, i32 8
  %17 = ptrtoint ptr %default_mbus_index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %default_mbus_index.i, align 4
  br label %ov8856_update_pad_format.exit

if.end6.fold.split.i:                             ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8856_update_pad_format.exit

ov8856_update_pad_format.exit:                    ; preds = %if.end6.fold.split.i, %if.then5.i, %v4l2_subdev_get_try_format.exit.ov8856_update_pad_format.exit_crit_edge
  %index.1.i = phi i32 [ %18, %if.then5.i ], [ 0, %v4l2_subdev_get_try_format.exit.ov8856_update_pad_format.exit_crit_edge ], [ 1, %if.end6.fold.split.i ]
  %arrayidx7.i = getelementptr [2 x i32], ptr @ov8856_mbus_codes, i32 0, i32 %index.1.i
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.i, align 4
  %21 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %code.i, align 4
  %cur_mbus_index.i = getelementptr inbounds %struct.ov8856, ptr %sd, i32 0, i32 12
  %22 = ptrtoint ptr %cur_mbus_index.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %index.1.i, ptr %cur_mbus_index.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 3
  %23 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !226
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %dev_priv.i.i6 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %dev_priv.i.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i6, align 4
  %dev.i7 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %call1.i = call ptr @dev_fwnode(ptr noundef %dev.i7) #8
  %reset_gpio.i = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %12, i32 noundef 1) #8
  %supplies.i = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 5
  %call3.i = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #8
  %xvclk.i = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %xvclk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xvclk.i, align 4
  call void @clk_disable(ptr noundef %14) #8
  call void @clk_unprepare(ptr noundef %14) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8856_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call1 = tail call fastcc i32 @__ov8856_power_on(ptr noundef %1)
  %streaming = getelementptr inbounds %struct.ov8856, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @ov8856_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %if.then4

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.then
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
  br i1 %cmp9.not.i.i, label %if.then4.ov8856_stop_streaming.exit_crit_edge, label %do.end.i

if.then4.ov8856_stop_streaming.exit_crit_edge:    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8856_stop_streaming.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53) #11
  br label %ov8856_stop_streaming.exit

ov8856_stop_streaming.exit:                       ; preds = %do.end.i, %if.then4.ov8856_stop_streaming.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ov8856_stop_streaming.exit
  %retval.0 = phi i32 [ %call2, %ov8856_stop_streaming.exit ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !131, !132, !134, !136, !138, !140, !141, !142, !144, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !180, !181, !182, !184, !185, !186, !188, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__initcall__kmod_ov8856__295_2583_ov8856_i2c_driver_init6, !1, !"__initcall__kmod_ov8856__295_2583_ov8856_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov8856.c", i32 2583, i32 1}
!2 = !{ptr @__exitcall_ov8856_i2c_driver_exit, !1, !"__exitcall_ov8856_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov8856.c", i32 2585, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov8856.c", i32 2586, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov8856.c", i32 2587, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov8856.c", i32 2573, i32 11}
!12 = !{ptr @ov8856_i2c_driver, !13, !"ov8856_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov8856.c", i32 2571, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov8856.c", i32 2482, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov8856_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov8856_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov8856.c", i32 2493, i32 4}
!24 = !{ptr @ov8856_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov8856_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov8856.c", i32 2499, i32 4}
!28 = !{ptr @ov8856_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov8856_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ov8856_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov8856.c", i32 2504, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/ov8856.c", i32 2509, i32 3}
!35 = !{ptr @ov8856_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ov8856_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ov8856.c", i32 2520, i32 3}
!39 = !{ptr @ov8856_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ov8856_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov8856.c", i32 2526, i32 3}
!43 = !{ptr @ov8856_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ov8856_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/ov8856.c", i32 2366, i32 41}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/ov8856.c", i32 2371, i32 37}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ov8856.c", i32 2373, i32 4}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ov8856_get_hwcfg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ov8856_get_hwcfg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov8856.c", i32 2381, i32 53}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov8856.c", i32 2397, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ov8856_get_hwcfg._entry.27, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ov8856_get_hwcfg._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/ov8856.c", i32 2412, i32 3}
!63 = !{ptr @ov8856_get_hwcfg._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ov8856_get_hwcfg._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/ov8856.c", i32 2418, i32 2}
!67 = !{ptr @ov8856_get_hwcfg.__UNIQUE_ID_ddebug294, !66, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov8856.c", i32 2428, i32 3}
!70 = !{ptr @ov8856_get_hwcfg._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ov8856_get_hwcfg._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov8856.c", i32 2441, i32 4}
!74 = !{ptr @ov8856_get_hwcfg._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ov8856_get_hwcfg._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ov8856.c", i32 105, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov8856.c", i32 106, i32 2}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov8856.c", i32 107, i32 2}
!82 = distinct !{null, !83, !"ov8856_supply_names", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov8856.c", i32 104, i32 27}
!84 = !{ptr @lane_cfg_2, !85, !"lane_cfg_2", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov8856.c", i32 1459, i32 37}
!86 = !{ptr @mipi_data_rate_lane_2, !87, !"mipi_data_rate_lane_2", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov8856.c", i32 163, i32 44}
!88 = !{ptr @lane_2_mode_3280x2464, !89, !"lane_2_mode_3280x2464", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov8856.c", i32 209, i32 32}
!90 = !{ptr @lane_2_mode_1640x1232, !91, !"lane_2_mode_1640x1232", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov8856.c", i32 401, i32 32}
!92 = !{ptr @lane_cfg_4, !93, !"lane_cfg_4", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov8856.c", i32 1510, i32 37}
!94 = !{ptr @mipi_data_rate_lane_4, !95, !"mipi_data_rate_lane_4", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/ov8856.c", i32 186, i32 44}
!96 = !{ptr @lane_4_mode_3280x2464, !97, !"lane_4_mode_3280x2464", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ov8856.c", i32 593, i32 32}
!98 = !{ptr @lane_4_mode_1640x1232, !99, !"lane_4_mode_1640x1232", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ov8856.c", i32 784, i32 32}
!100 = !{ptr @lane_4_mode_3264x2448, !101, !"lane_4_mode_3264x2448", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ov8856.c", i32 975, i32 32}
!102 = !{ptr @lane_4_mode_1632x1224, !103, !"lane_4_mode_1632x1224", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov8856.c", i32 1179, i32 32}
!104 = !{ptr @ov8856_subdev_ops, !105, !"ov8856_subdev_ops", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ov8856.c", i32 2338, i32 37}
!106 = !{ptr @ov8856_video_ops, !107, !"ov8856_video_ops", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ov8856.c", i32 2327, i32 43}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ov8856.c", i32 2049, i32 3}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ov8856_start_streaming._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @ov8856_start_streaming._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov8856.c", i32 2056, i32 3}
!115 = !{ptr @ov8856_start_streaming._entry.46, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ov8856_start_streaming._entry_ptr.48, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov8856.c", i32 2063, i32 3}
!119 = !{ptr @ov8856_start_streaming._entry.49, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @ov8856_start_streaming._entry_ptr.51, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ov8856.c", i32 2074, i32 3}
!123 = !{ptr @ov8856_start_streaming._entry.52, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ov8856_start_streaming._entry_ptr.54, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/ov8856.c", i32 1681, i32 4}
!127 = !{ptr @ov8856_write_reg_list._rs, !126, !"_rs", i1 false, i1 false}
!128 = !{ptr @__func__.ov8856_write_reg_list, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ov8856_write_reg_list._entry, !126, !"_entry", i1 false, i1 false}
!131 = !{ptr @ov8856_write_reg_list._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @bayer_offset_configs, !133, !"bayer_offset_configs", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov8856.c", i32 1404, i32 37}
!134 = !{ptr @mipi_data_mbus_sbggr10_1x10, !135, !"mipi_data_mbus_sbggr10_1x10", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov8856.c", i32 1383, i32 32}
!136 = !{ptr @mipi_data_mbus_sgrbg10_1x10, !137, !"mipi_data_mbus_sgrbg10_1x10", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/ov8856.c", i32 1387, i32 32}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/ov8856.c", i32 2087, i32 3}
!140 = !{ptr @ov8856_stop_streaming._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ov8856_stop_streaming._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @ov8856_pad_ops, !143, !"ov8856_pad_ops", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov8856.c", i32 2331, i32 41}
!144 = !{ptr @ov8856_mbus_codes, !145, !"ov8856_mbus_codes", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/ov8856.c", i32 1391, i32 18}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/ov8856.c", i32 2134, i32 3}
!150 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @__ov8856_power_on._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @__ov8856_power_on._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/ov8856.c", i32 2146, i32 3}
!155 = !{ptr @__ov8856_power_on._entry.61, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @__ov8856_power_on._entry_ptr.63, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ov8856.c", i32 1706, i32 3}
!159 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @ov8856_identify_module._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @ov8856_identify_module._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/ov8856.c", i32 1719, i32 3}
!164 = !{ptr @ov8856_identify_module._entry.66, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @ov8856_identify_module._entry_ptr.68, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/ov8856.c", i32 1727, i32 3}
!168 = !{ptr @ov8856_identify_module._entry.69, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ov8856_identify_module._entry_ptr.71, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/ov8856.c", i32 1734, i32 3}
!172 = !{ptr @ov8856_identify_module._entry.72, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @ov8856_identify_module._entry_ptr.74, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/ov8856.c", i32 1738, i32 2}
!176 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @ov8856_identify_module._entry.75, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @ov8856_identify_module._entry_ptr.78, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/ov8856.c", i32 1747, i32 3}
!184 = !{ptr @ov8856_identify_module._entry.82, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @ov8856_identify_module._entry_ptr.84, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @ov8856_init_controls._key, !187, !"_key", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/ov8856.c", i32 1949, i32 8}
!188 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @ov8856_ctrl_ops, !190, !"ov8856_ctrl_ops", i1 false, i1 false}
!190 = !{!"../drivers/media/i2c/ov8856.c", i32 1938, i32 35}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/i2c/ov8856.c", i32 1397, i32 2}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/i2c/ov8856.c", i32 1398, i32 2}
!195 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/i2c/ov8856.c", i32 1399, i32 2}
!197 = !{ptr @.str.89, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/i2c/ov8856.c", i32 1400, i32 2}
!199 = !{ptr @.str.90, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/i2c/ov8856.c", i32 1401, i32 2}
!201 = !{ptr @ov8856_test_pattern_menu, !202, !"ov8856_test_pattern_menu", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/ov8856.c", i32 1396, i32 27}
!203 = !{ptr @ov8856_internal_ops, !204, !"ov8856_internal_ops", i1 false, i1 false}
!204 = !{!"../drivers/media/i2c/ov8856.c", i32 2347, i32 46}
!205 = !{ptr @ov8856_subdev_entity_ops, !206, !"ov8856_subdev_entity_ops", i1 false, i1 false}
!206 = !{!"../drivers/media/i2c/ov8856.c", i32 2343, i32 45}
!207 = !{ptr @ov8856_of_match, !208, !"ov8856_of_match", i1 false, i1 false}
!208 = !{!"../drivers/media/i2c/ov8856.c", i32 2565, i32 34}
!209 = !{ptr @ov8856_pm_ops, !210, !"ov8856_pm_ops", i1 false, i1 false}
!210 = !{!"../drivers/media/i2c/ov8856.c", i32 2552, i32 32}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{i64 1554362, i64 1554389}
!221 = !{i64 1554702, i64 1554729, i64 1554763, i64 1554784}
!222 = !{i64 1554192, i64 1554219}
!223 = !{i64 1554887, i64 1554914, i64 1554947, i64 1554968, i64 1554995, i64 1555021}
!224 = !{!"auto-init"}
!225 = !{i64 2149014836, i64 2149014841, i64 2149014854, i64 2149014898, i64 2149014932, i64 2149014953}
!226 = !{i8 0, i8 2}
!227 = !{i64 2148401354}
!228 = !{i64 886177, i64 886202, i64 886224, i64 886240, i64 886252, i64 886272, i64 886296, i64 886312, i64 886324}
!229 = !{i64 2148401542}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{!"branch_weights", i32 1, i32 2000}
