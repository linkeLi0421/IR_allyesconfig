; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov5645.c_pt.bc'
source_filename = "../drivers/media/i2c/ov5645.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov5645_mode_info = type { i32, i32, ptr, i32, i32, i32 }
%struct.reg_value = type { i16, i8 }
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
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.ov5645 = type { ptr, ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_fwnode_endpoint, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, ptr, [3 x %struct.regulator_bulk_data], ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i8, i8, i8, %struct.mutex, i32, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__initcall__kmod_ov5645__293_1294_ov5645_i2c_driver_init6 = internal global ptr @ov5645_i2c_driver_init, section ".initcall6.init", align 4
@ov5645_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov5645_remove, ptr @ov5645_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov5645_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ov5645_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov5645_i2c_driver_exit = internal global ptr @ov5645_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [51 x i8] c"ov5645.description=Omnivision OV5645 Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [51 x i8] c"ov5645.author=Todor Tomov <todor.tomov@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"ov5645.file=drivers/media/i2c/ov5645\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"ov5645.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov5645\00", [25 x i8] zeroinitializer }, align 32
@ov5645_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov5645\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov5645_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov5645\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov5645_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1073, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"endpoint node not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5645_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov5645.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr = internal global ptr @ov5645_probe._entry, section ".printk_index", align 4
@ov5645_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1083, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"parsing endpoint node failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.8 = internal global ptr @ov5645_probe._entry.6, section ".printk_index", align 4
@ov5645_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1088, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid bus type, must be CSI2\0A\00", [32 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.11 = internal global ptr @ov5645_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xclk\00", [27 x i8] zeroinitializer }, align 32
@ov5645_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1095, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not get xclk\00", [45 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.15 = internal global ptr @ov5645_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@ov5645_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not get xclk frequency\0A\00", [34 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.19 = internal global ptr @ov5645_probe._entry.17, section ".printk_index", align 4
@ov5645_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"external clock frequency %u is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.22 = internal global ptr @ov5645_probe._entry.20, section ".printk_index", align 4
@ov5645_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not set xclk frequency\0A\00", [34 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.25 = internal global ptr @ov5645_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@ov5645_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot get enable gpio\0A\00", [40 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.29 = internal global ptr @ov5645_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov5645_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get reset gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.33 = internal global ptr @ov5645_probe._entry.31, section ".printk_index", align 4
@ov5645_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ov5645->power_lock\00", [44 x i8] zeroinitializer }, align 32
@ov5645_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ov5645:1140:(&ov5645->ctrls)->_lock\00", [60 x i8] zeroinitializer }, align 32
@ov5645_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov5645_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov5645_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [44 x i8] zeroinitializer }, align 32
@link_freq = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 224000000, i64 336000000], [16 x i8] zeroinitializer }, align 32
@ov5645_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 1174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: control initialization error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.38 = internal global ptr @ov5645_probe._entry.36, section ".printk_index", align 4
@ov5645_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov5645_core_ops, ptr null, ptr null, ptr @ov5645_video_ops, ptr null, ptr null, ptr null, ptr @ov5645_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov5645_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 1187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register media entity\0A\00", [63 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.41 = internal global ptr @ov5645_probe._entry.39, section ".printk_index", align 4
@ov5645_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 1193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not power up OV5645\0A\00", [37 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.44 = internal global ptr @ov5645_probe._entry.42, section ".printk_index", align 4
@ov5645_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 1199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not read ID high\0A\00", [40 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.47 = internal global ptr @ov5645_probe._entry.45, section ".printk_index", align 4
@ov5645_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 1205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not read ID low\0A\00", [41 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.50 = internal global ptr @ov5645_probe._entry.48, section ".printk_index", align 4
@ov5645_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.2, ptr @.str.3, i32 1210, ptr @.str.53, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"OV5645 detected at address 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.54 = internal global ptr @ov5645_probe._entry.51, section ".printk_index", align 4
@ov5645_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not read AEC/AGC mode\0A\00", [35 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.57 = internal global ptr @ov5645_probe._entry.55, section ".printk_index", align 4
@ov5645_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.2, ptr @.str.3, i32 1223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not read vflip value\0A\00", [36 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.60 = internal global ptr @ov5645_probe._entry.58, section ".printk_index", align 4
@ov5645_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.2, ptr @.str.3, i32 1231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not read hflip value\0A\00", [36 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.63 = internal global ptr @ov5645_probe._entry.61, section ".printk_index", align 4
@ov5645_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.2, ptr @.str.3, i32 1240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@ov5645_probe._entry_ptr.66 = internal global ptr @ov5645_probe._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdddo\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddd\00", [27 x i8] zeroinitializer }, align 32
@ov5645_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: write reg error %d: reg=%x, val=%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov5645_write_reg\00", [47 x i8] zeroinitializer }, align 32
@ov5645_write_reg._entry_ptr = internal global ptr @ov5645_write_reg._entry, section ".printk_index", align 4
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Vertical Color Bars\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Pseudo-Random Data\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Color Square\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Black Image\00", [20 x i8] zeroinitializer }, align 32
@ov5645_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5645_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ov5645_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5645_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov5645_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @ov5645_entity_init_cfg, ptr @ov5645_enum_mbus_code, ptr @ov5645_enum_frame_size, ptr null, ptr @ov5645_get_format, ptr @ov5645_set_format, ptr @ov5645_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov5645_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 1000, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not set mode %dx%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov5645_s_stream\00", [16 x i8] zeroinitializer }, align 32
@ov5645_s_stream._entry_ptr = internal global ptr @ov5645_s_stream._entry, section ".printk_index", align 4
@ov5645_s_stream._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 1005, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not sync v4l2 controls\0A\00", [34 x i8] zeroinitializer }, align 32
@ov5645_s_stream._entry_ptr.81 = internal global ptr @ov5645_s_stream._entry.79, section ".printk_index", align 4
@ov5645_mode_info_data = internal constant { [3 x %struct.ov5645_mode_info], [56 x i8] } { [3 x %struct.ov5645_mode_info] [%struct.ov5645_mode_info { i32 1280, i32 960, ptr @ov5645_setting_sxga, i32 45, i32 112000000, i32 0 }, %struct.ov5645_mode_info { i32 1920, i32 1080, ptr @ov5645_setting_1080p, i32 47, i32 168000000, i32 1 }, %struct.ov5645_mode_info { i32 2592, i32 1944, ptr @ov5645_setting_full, i32 47, i32 168000000, i32 1 }], [56 x i8] zeroinitializer }, align 32
@ov5645_setting_sxga = internal constant { [45 x %struct.reg_value], [44 x i8] } { [45 x %struct.reg_value] [%struct.reg_value { i16 13842, i8 -87 }, %struct.reg_value { i16 13844, i8 80 }, %struct.reg_value { i16 13848, i8 0 }, %struct.reg_value { i16 12340, i8 24 }, %struct.reg_value { i16 12341, i8 33 }, %struct.reg_value { i16 12342, i8 112 }, %struct.reg_value { i16 13824, i8 9 }, %struct.reg_value { i16 13825, i8 67 }, %struct.reg_value { i16 14088, i8 102 }, %struct.reg_value { i16 14092, i8 -61 }, %struct.reg_value { i16 14336, i8 0 }, %struct.reg_value { i16 14337, i8 0 }, %struct.reg_value { i16 14338, i8 0 }, %struct.reg_value { i16 14339, i8 6 }, %struct.reg_value { i16 14340, i8 10 }, %struct.reg_value { i16 14341, i8 63 }, %struct.reg_value { i16 14342, i8 7 }, %struct.reg_value { i16 14343, i8 -99 }, %struct.reg_value { i16 14344, i8 5 }, %struct.reg_value { i16 14345, i8 0 }, %struct.reg_value { i16 14346, i8 3 }, %struct.reg_value { i16 14347, i8 -64 }, %struct.reg_value { i16 14348, i8 7 }, %struct.reg_value { i16 14349, i8 104 }, %struct.reg_value { i16 14350, i8 3 }, %struct.reg_value { i16 14351, i8 -40 }, %struct.reg_value { i16 14355, i8 6 }, %struct.reg_value { i16 14356, i8 49 }, %struct.reg_value { i16 14357, i8 49 }, %struct.reg_value { i16 14368, i8 71 }, %struct.reg_value { i16 14850, i8 3 }, %struct.reg_value { i16 14851, i8 -40 }, %struct.reg_value { i16 14856, i8 1 }, %struct.reg_value { i16 14857, i8 -8 }, %struct.reg_value { i16 14858, i8 1 }, %struct.reg_value { i16 14859, i8 -92 }, %struct.reg_value { i16 14862, i8 2 }, %struct.reg_value { i16 14861, i8 2 }, %struct.reg_value { i16 14868, i8 3 }, %struct.reg_value { i16 14869, i8 -40 }, %struct.reg_value { i16 14872, i8 0 }, %struct.reg_value { i16 16388, i8 2 }, %struct.reg_value { i16 16389, i8 24 }, %struct.reg_value { i16 17152, i8 50 }, %struct.reg_value { i16 16898, i8 0 }], [44 x i8] zeroinitializer }, align 32
@ov5645_setting_1080p = internal constant { [47 x %struct.reg_value], [36 x i8] } { [47 x %struct.reg_value] [%struct.reg_value { i16 13842, i8 -85 }, %struct.reg_value { i16 13844, i8 80 }, %struct.reg_value { i16 13848, i8 4 }, %struct.reg_value { i16 12340, i8 24 }, %struct.reg_value { i16 12341, i8 17 }, %struct.reg_value { i16 12342, i8 84 }, %struct.reg_value { i16 13824, i8 8 }, %struct.reg_value { i16 13825, i8 51 }, %struct.reg_value { i16 14088, i8 99 }, %struct.reg_value { i16 14092, i8 -64 }, %struct.reg_value { i16 14336, i8 1 }, %struct.reg_value { i16 14337, i8 80 }, %struct.reg_value { i16 14338, i8 1 }, %struct.reg_value { i16 14339, i8 -78 }, %struct.reg_value { i16 14340, i8 8 }, %struct.reg_value { i16 14341, i8 -17 }, %struct.reg_value { i16 14342, i8 5 }, %struct.reg_value { i16 14343, i8 -15 }, %struct.reg_value { i16 14344, i8 7 }, %struct.reg_value { i16 14345, i8 -128 }, %struct.reg_value { i16 14346, i8 4 }, %struct.reg_value { i16 14347, i8 56 }, %struct.reg_value { i16 14348, i8 9 }, %struct.reg_value { i16 14349, i8 -60 }, %struct.reg_value { i16 14350, i8 4 }, %struct.reg_value { i16 14351, i8 96 }, %struct.reg_value { i16 14355, i8 4 }, %struct.reg_value { i16 14356, i8 17 }, %struct.reg_value { i16 14357, i8 17 }, %struct.reg_value { i16 14368, i8 71 }, %struct.reg_value { i16 17684, i8 -120 }, %struct.reg_value { i16 14850, i8 4 }, %struct.reg_value { i16 14851, i8 96 }, %struct.reg_value { i16 14856, i8 1 }, %struct.reg_value { i16 14857, i8 80 }, %struct.reg_value { i16 14858, i8 1 }, %struct.reg_value { i16 14859, i8 24 }, %struct.reg_value { i16 14862, i8 3 }, %struct.reg_value { i16 14861, i8 4 }, %struct.reg_value { i16 14868, i8 4 }, %struct.reg_value { i16 14869, i8 96 }, %struct.reg_value { i16 14872, i8 0 }, %struct.reg_value { i16 16388, i8 6 }, %struct.reg_value { i16 16389, i8 24 }, %struct.reg_value { i16 17152, i8 50 }, %struct.reg_value { i16 16898, i8 0 }, %struct.reg_value { i16 18487, i8 11 }], [36 x i8] zeroinitializer }, align 32
@ov5645_setting_full = internal constant { [47 x %struct.reg_value], [36 x i8] } { [47 x %struct.reg_value] [%struct.reg_value { i16 13842, i8 -85 }, %struct.reg_value { i16 13844, i8 80 }, %struct.reg_value { i16 13848, i8 4 }, %struct.reg_value { i16 12340, i8 24 }, %struct.reg_value { i16 12341, i8 17 }, %struct.reg_value { i16 12342, i8 84 }, %struct.reg_value { i16 13824, i8 8 }, %struct.reg_value { i16 13825, i8 51 }, %struct.reg_value { i16 14088, i8 99 }, %struct.reg_value { i16 14092, i8 -64 }, %struct.reg_value { i16 14336, i8 0 }, %struct.reg_value { i16 14337, i8 0 }, %struct.reg_value { i16 14338, i8 0 }, %struct.reg_value { i16 14339, i8 0 }, %struct.reg_value { i16 14340, i8 10 }, %struct.reg_value { i16 14341, i8 63 }, %struct.reg_value { i16 14342, i8 7 }, %struct.reg_value { i16 14343, i8 -97 }, %struct.reg_value { i16 14344, i8 10 }, %struct.reg_value { i16 14345, i8 32 }, %struct.reg_value { i16 14346, i8 7 }, %struct.reg_value { i16 14347, i8 -104 }, %struct.reg_value { i16 14348, i8 11 }, %struct.reg_value { i16 14349, i8 28 }, %struct.reg_value { i16 14350, i8 7 }, %struct.reg_value { i16 14351, i8 -80 }, %struct.reg_value { i16 14355, i8 6 }, %struct.reg_value { i16 14356, i8 17 }, %struct.reg_value { i16 14357, i8 17 }, %struct.reg_value { i16 14368, i8 71 }, %struct.reg_value { i16 17684, i8 -120 }, %struct.reg_value { i16 14850, i8 7 }, %struct.reg_value { i16 14851, i8 -80 }, %struct.reg_value { i16 14856, i8 1 }, %struct.reg_value { i16 14857, i8 39 }, %struct.reg_value { i16 14858, i8 0 }, %struct.reg_value { i16 14859, i8 -10 }, %struct.reg_value { i16 14862, i8 6 }, %struct.reg_value { i16 14861, i8 8 }, %struct.reg_value { i16 14868, i8 7 }, %struct.reg_value { i16 14869, i8 -80 }, %struct.reg_value { i16 14872, i8 1 }, %struct.reg_value { i16 16388, i8 6 }, %struct.reg_value { i16 16389, i8 24 }, %struct.reg_value { i16 17152, i8 50 }, %struct.reg_value { i16 18487, i8 11 }, %struct.reg_value { i16 16898, i8 0 }], [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov5645_global_init_setting = internal constant { [239 x %struct.reg_value], [228 x i8] } { [239 x %struct.reg_value] [%struct.reg_value { i16 12547, i8 17 }, %struct.reg_value { i16 12296, i8 -126 }, %struct.reg_value { i16 12296, i8 66 }, %struct.reg_value { i16 12547, i8 3 }, %struct.reg_value { i16 13571, i8 7 }, %struct.reg_value { i16 12290, i8 28 }, %struct.reg_value { i16 12294, i8 -61 }, %struct.reg_value { i16 12311, i8 0 }, %struct.reg_value { i16 12312, i8 0 }, %struct.reg_value { i16 12334, i8 11 }, %struct.reg_value { i16 12343, i8 19 }, %struct.reg_value { i16 12552, i8 1 }, %struct.reg_value { i16 13841, i8 6 }, %struct.reg_value { i16 13568, i8 0 }, %struct.reg_value { i16 13569, i8 1 }, %struct.reg_value { i16 13570, i8 0 }, %struct.reg_value { i16 13578, i8 0 }, %struct.reg_value { i16 13579, i8 63 }, %struct.reg_value { i16 13856, i8 51 }, %struct.reg_value { i16 13857, i8 -32 }, %struct.reg_value { i16 13858, i8 1 }, %struct.reg_value { i16 13872, i8 46 }, %struct.reg_value { i16 13873, i8 0 }, %struct.reg_value { i16 13874, i8 50 }, %struct.reg_value { i16 13875, i8 82 }, %struct.reg_value { i16 13876, i8 112 }, %struct.reg_value { i16 13877, i8 19 }, %struct.reg_value { i16 13878, i8 3 }, %struct.reg_value { i16 14083, i8 90 }, %struct.reg_value { i16 14084, i8 -96 }, %struct.reg_value { i16 14085, i8 26 }, %struct.reg_value { i16 14089, i8 18 }, %struct.reg_value { i16 14091, i8 97 }, %struct.reg_value { i16 14095, i8 16 }, %struct.reg_value { i16 14101, i8 120 }, %struct.reg_value { i16 14103, i8 1 }, %struct.reg_value { i16 14107, i8 32 }, %struct.reg_value { i16 14129, i8 18 }, %struct.reg_value { i16 14593, i8 10 }, %struct.reg_value { i16 14597, i8 2 }, %struct.reg_value { i16 14598, i8 16 }, %struct.reg_value { i16 14105, i8 -122 }, %struct.reg_value { i16 14352, i8 0 }, %struct.reg_value { i16 14353, i8 16 }, %struct.reg_value { i16 14354, i8 0 }, %struct.reg_value { i16 14369, i8 1 }, %struct.reg_value { i16 14372, i8 1 }, %struct.reg_value { i16 14374, i8 3 }, %struct.reg_value { i16 14376, i8 8 }, %struct.reg_value { i16 14873, i8 -8 }, %struct.reg_value { i16 15361, i8 52 }, %struct.reg_value { i16 15364, i8 40 }, %struct.reg_value { i16 15365, i8 -104 }, %struct.reg_value { i16 15367, i8 7 }, %struct.reg_value { i16 15369, i8 -62 }, %struct.reg_value { i16 15370, i8 -100 }, %struct.reg_value { i16 15371, i8 64 }, %struct.reg_value { i16 15361, i8 52 }, %struct.reg_value { i16 16385, i8 2 }, %struct.reg_value { i16 17684, i8 0 }, %struct.reg_value { i16 17696, i8 -80 }, %struct.reg_value { i16 17931, i8 55 }, %struct.reg_value { i16 17932, i8 32 }, %struct.reg_value { i16 18456, i8 1 }, %struct.reg_value { i16 18461, i8 -16 }, %struct.reg_value { i16 18463, i8 80 }, %struct.reg_value { i16 18467, i8 112 }, %struct.reg_value { i16 18481, i8 20 }, %struct.reg_value { i16 20480, i8 -89 }, %struct.reg_value { i16 20481, i8 -125 }, %struct.reg_value { i16 20509, i8 0 }, %struct.reg_value { i16 20511, i8 0 }, %struct.reg_value { i16 20541, i8 0 }, %struct.reg_value { i16 20572, i8 48 }, %struct.reg_value { i16 20865, i8 89 }, %struct.reg_value { i16 20867, i8 0 }, %struct.reg_value { i16 20881, i8 -16 }, %struct.reg_value { i16 20882, i8 3 }, %struct.reg_value { i16 22148, i8 16 }, %struct.reg_value { i16 22149, i8 -96 }, %struct.reg_value { i16 22150, i8 12 }, %struct.reg_value { i16 22151, i8 120 }, %struct.reg_value { i16 23040, i8 8 }, %struct.reg_value { i16 23073, i8 0 }, %struct.reg_value { i16 23076, i8 0 }, %struct.reg_value { i16 12296, i8 2 }, %struct.reg_value { i16 13571, i8 0 }, %struct.reg_value { i16 20864, i8 -1 }, %struct.reg_value { i16 20865, i8 -14 }, %struct.reg_value { i16 20866, i8 0 }, %struct.reg_value { i16 20867, i8 20 }, %struct.reg_value { i16 20868, i8 37 }, %struct.reg_value { i16 20869, i8 36 }, %struct.reg_value { i16 20870, i8 9 }, %struct.reg_value { i16 20871, i8 9 }, %struct.reg_value { i16 20872, i8 10 }, %struct.reg_value { i16 20873, i8 117 }, %struct.reg_value { i16 20874, i8 82 }, %struct.reg_value { i16 20875, i8 -22 }, %struct.reg_value { i16 20876, i8 -88 }, %struct.reg_value { i16 20877, i8 66 }, %struct.reg_value { i16 20878, i8 56 }, %struct.reg_value { i16 20879, i8 86 }, %struct.reg_value { i16 20880, i8 66 }, %struct.reg_value { i16 20881, i8 -8 }, %struct.reg_value { i16 20882, i8 4 }, %struct.reg_value { i16 20883, i8 112 }, %struct.reg_value { i16 20884, i8 -16 }, %struct.reg_value { i16 20885, i8 -16 }, %struct.reg_value { i16 20886, i8 3 }, %struct.reg_value { i16 20887, i8 1 }, %struct.reg_value { i16 20888, i8 4 }, %struct.reg_value { i16 20889, i8 18 }, %struct.reg_value { i16 20890, i8 4 }, %struct.reg_value { i16 20891, i8 0 }, %struct.reg_value { i16 20892, i8 6 }, %struct.reg_value { i16 20893, i8 -126 }, %struct.reg_value { i16 20894, i8 56 }, %struct.reg_value { i16 21377, i8 30 }, %struct.reg_value { i16 21378, i8 91 }, %struct.reg_value { i16 21379, i8 8 }, %struct.reg_value { i16 21380, i8 10 }, %struct.reg_value { i16 21381, i8 126 }, %struct.reg_value { i16 21382, i8 -120 }, %struct.reg_value { i16 21383, i8 124 }, %struct.reg_value { i16 21384, i8 108 }, %struct.reg_value { i16 21385, i8 16 }, %struct.reg_value { i16 21386, i8 1 }, %struct.reg_value { i16 21387, i8 -104 }, %struct.reg_value { i16 21248, i8 8 }, %struct.reg_value { i16 21249, i8 48 }, %struct.reg_value { i16 21250, i8 16 }, %struct.reg_value { i16 21251, i8 0 }, %struct.reg_value { i16 21252, i8 8 }, %struct.reg_value { i16 21253, i8 48 }, %struct.reg_value { i16 21254, i8 8 }, %struct.reg_value { i16 21255, i8 22 }, %struct.reg_value { i16 21257, i8 8 }, %struct.reg_value { i16 21258, i8 48 }, %struct.reg_value { i16 21259, i8 4 }, %struct.reg_value { i16 21260, i8 6 }, %struct.reg_value { i16 21632, i8 1 }, %struct.reg_value { i16 21633, i8 8 }, %struct.reg_value { i16 21634, i8 20 }, %struct.reg_value { i16 21635, i8 40 }, %struct.reg_value { i16 21636, i8 81 }, %struct.reg_value { i16 21637, i8 101 }, %struct.reg_value { i16 21638, i8 113 }, %struct.reg_value { i16 21639, i8 125 }, %struct.reg_value { i16 21640, i8 -121 }, %struct.reg_value { i16 21641, i8 -111 }, %struct.reg_value { i16 21642, i8 -102 }, %struct.reg_value { i16 21643, i8 -86 }, %struct.reg_value { i16 21644, i8 -72 }, %struct.reg_value { i16 21645, i8 -51 }, %struct.reg_value { i16 21646, i8 -35 }, %struct.reg_value { i16 21647, i8 -22 }, %struct.reg_value { i16 21648, i8 29 }, %struct.reg_value { i16 21888, i8 2 }, %struct.reg_value { i16 21891, i8 64 }, %struct.reg_value { i16 21892, i8 16 }, %struct.reg_value { i16 21897, i8 16 }, %struct.reg_value { i16 21898, i8 0 }, %struct.reg_value { i16 21899, i8 -8 }, %struct.reg_value { i16 22528, i8 63 }, %struct.reg_value { i16 22529, i8 22 }, %struct.reg_value { i16 22530, i8 14 }, %struct.reg_value { i16 22531, i8 13 }, %struct.reg_value { i16 22532, i8 23 }, %struct.reg_value { i16 22533, i8 63 }, %struct.reg_value { i16 22534, i8 11 }, %struct.reg_value { i16 22535, i8 6 }, %struct.reg_value { i16 22536, i8 4 }, %struct.reg_value { i16 22537, i8 4 }, %struct.reg_value { i16 22538, i8 6 }, %struct.reg_value { i16 22539, i8 11 }, %struct.reg_value { i16 22540, i8 9 }, %struct.reg_value { i16 22541, i8 3 }, %struct.reg_value { i16 22542, i8 0 }, %struct.reg_value { i16 22543, i8 0 }, %struct.reg_value { i16 22544, i8 3 }, %struct.reg_value { i16 22545, i8 8 }, %struct.reg_value { i16 22546, i8 10 }, %struct.reg_value { i16 22547, i8 3 }, %struct.reg_value { i16 22548, i8 0 }, %struct.reg_value { i16 22549, i8 0 }, %struct.reg_value { i16 22550, i8 4 }, %struct.reg_value { i16 22551, i8 9 }, %struct.reg_value { i16 22552, i8 15 }, %struct.reg_value { i16 22553, i8 8 }, %struct.reg_value { i16 22554, i8 6 }, %struct.reg_value { i16 22555, i8 6 }, %struct.reg_value { i16 22556, i8 8 }, %struct.reg_value { i16 22557, i8 12 }, %struct.reg_value { i16 22558, i8 63 }, %struct.reg_value { i16 22559, i8 30 }, %struct.reg_value { i16 22560, i8 18 }, %struct.reg_value { i16 22561, i8 19 }, %struct.reg_value { i16 22562, i8 33 }, %struct.reg_value { i16 22563, i8 63 }, %struct.reg_value { i16 22564, i8 104 }, %struct.reg_value { i16 22565, i8 40 }, %struct.reg_value { i16 22566, i8 44 }, %struct.reg_value { i16 22567, i8 40 }, %struct.reg_value { i16 22568, i8 8 }, %struct.reg_value { i16 22569, i8 72 }, %struct.reg_value { i16 22570, i8 100 }, %struct.reg_value { i16 22571, i8 98 }, %struct.reg_value { i16 22572, i8 100 }, %struct.reg_value { i16 22573, i8 40 }, %struct.reg_value { i16 22574, i8 70 }, %struct.reg_value { i16 22575, i8 98 }, %struct.reg_value { i16 22576, i8 96 }, %struct.reg_value { i16 22577, i8 98 }, %struct.reg_value { i16 22578, i8 38 }, %struct.reg_value { i16 22579, i8 72 }, %struct.reg_value { i16 22580, i8 102 }, %struct.reg_value { i16 22581, i8 68 }, %struct.reg_value { i16 22582, i8 100 }, %struct.reg_value { i16 22583, i8 40 }, %struct.reg_value { i16 22584, i8 102 }, %struct.reg_value { i16 22585, i8 72 }, %struct.reg_value { i16 22586, i8 44 }, %struct.reg_value { i16 22587, i8 40 }, %struct.reg_value { i16 22588, i8 38 }, %struct.reg_value { i16 22589, i8 -82 }, %struct.reg_value { i16 20517, i8 0 }, %struct.reg_value { i16 14863, i8 48 }, %struct.reg_value { i16 14864, i8 40 }, %struct.reg_value { i16 14875, i8 48 }, %struct.reg_value { i16 14878, i8 38 }, %struct.reg_value { i16 14865, i8 96 }, %struct.reg_value { i16 14879, i8 20 }, %struct.reg_value { i16 1537, i8 2 }, %struct.reg_value { i16 12296, i8 66 }, %struct.reg_value { i16 12296, i8 2 }, %struct.reg_value { i16 12302, i8 64 }, %struct.reg_value { i16 18432, i8 36 }, %struct.reg_value { i16 12313, i8 112 }], [228 x i8] zeroinitializer }, align 32
@ov5645_s_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 693, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not set init registers\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov5645_s_power\00", [17 x i8] zeroinitializer }, align 32
@ov5645_s_power._entry_ptr = internal global ptr @ov5645_s_power._entry, section ".printk_index", align 4
@ov5645_set_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 648, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk prepare enable failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ov5645_set_power_on\00", [44 x i8] zeroinitializer }, align 32
@ov5645_set_power_on._entry_ptr = internal global ptr @ov5645_set_power_on._entry, section ".printk_index", align 4
@ov5645_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: write reg error %d: reg=%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov5645_read_reg\00", [16 x i8] zeroinitializer }, align 32
@ov5645_read_reg._entry_ptr = internal global ptr @ov5645_read_reg._entry, section ".printk_index", align 4
@ov5645_read_reg._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 581, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: read reg error %d: reg=%x\0A\00", [33 x i8] zeroinitializer }, align 32
@ov5645_read_reg._entry_ptr.91 = internal global ptr @ov5645_read_reg._entry.89, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 9963778, i64 9963788, i64 9963794, i64 9963796, i64 9963797, i64 10094849, i64 10422531]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"ov5645_i2c_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1284, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1287, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"ov5645_of_match\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1278, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"ov5645_id\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1272, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1073, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1083, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1088, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1093, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1095, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1099, i32 43 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1101, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1107, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1114, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1126, i32 44 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1128, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1132, i32 41 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1134, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1138, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1140, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"ov5645_ctrl_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 835, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant [25 x i8] c"ov5645_test_pattern_menu\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 773, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant [10 x i8] c"link_freq\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 512, i32 18 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1173, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [18 x i8] c"ov5645_subdev_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1048, i32 37 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1187, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1193, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1199, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1205, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1210, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1215, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1223, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1231, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1240, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 66, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 67, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 68, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 555, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 774, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 775, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 776, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 777, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 778, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [16 x i8] c"ov5645_core_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1031, i32 42 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"ov5645_video_ops\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1035, i32 43 }
@___asan_gen_.312 = private unnamed_addr constant [22 x i8] c"ov5645_subdev_pad_ops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1039, i32 41 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 998, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1005, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant [22 x i8] c"ov5645_mode_info_data\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 517, i32 38 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c"ov5645_setting_sxga\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 364, i32 31 }
@___asan_gen_.336 = private unnamed_addr constant [21 x i8] c"ov5645_setting_1080p\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 412, i32 31 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c"ov5645_setting_full\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 462, i32 31 }
@___asan_gen_.343 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 998, i32 6 }
@___asan_gen_.345 = private unnamed_addr constant [27 x i8] c"ov5645_global_init_setting\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 122, i32 31 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 692, i32 5 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 648, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 573, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.379 = private constant [30 x i8] c"../drivers/media/i2c/ov5645.c\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 580, i32 3 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ov5645_i2c_driver_exit, ptr @__initcall__kmod_ov5645__293_1294_ov5645_i2c_driver_init6, ptr @ov5645_i2c_driver_exit, ptr @ov5645_probe._entry, ptr @ov5645_probe._entry.13, ptr @ov5645_probe._entry.17, ptr @ov5645_probe._entry.20, ptr @ov5645_probe._entry.23, ptr @ov5645_probe._entry.27, ptr @ov5645_probe._entry.31, ptr @ov5645_probe._entry.36, ptr @ov5645_probe._entry.39, ptr @ov5645_probe._entry.42, ptr @ov5645_probe._entry.45, ptr @ov5645_probe._entry.48, ptr @ov5645_probe._entry.51, ptr @ov5645_probe._entry.55, ptr @ov5645_probe._entry.58, ptr @ov5645_probe._entry.6, ptr @ov5645_probe._entry.61, ptr @ov5645_probe._entry.64, ptr @ov5645_probe._entry.9, ptr @ov5645_probe._entry_ptr, ptr @ov5645_probe._entry_ptr.11, ptr @ov5645_probe._entry_ptr.15, ptr @ov5645_probe._entry_ptr.19, ptr @ov5645_probe._entry_ptr.22, ptr @ov5645_probe._entry_ptr.25, ptr @ov5645_probe._entry_ptr.29, ptr @ov5645_probe._entry_ptr.33, ptr @ov5645_probe._entry_ptr.38, ptr @ov5645_probe._entry_ptr.41, ptr @ov5645_probe._entry_ptr.44, ptr @ov5645_probe._entry_ptr.47, ptr @ov5645_probe._entry_ptr.50, ptr @ov5645_probe._entry_ptr.54, ptr @ov5645_probe._entry_ptr.57, ptr @ov5645_probe._entry_ptr.60, ptr @ov5645_probe._entry_ptr.63, ptr @ov5645_probe._entry_ptr.66, ptr @ov5645_probe._entry_ptr.8, ptr @ov5645_read_reg._entry, ptr @ov5645_read_reg._entry.89, ptr @ov5645_read_reg._entry_ptr, ptr @ov5645_read_reg._entry_ptr.91, ptr @ov5645_s_power._entry, ptr @ov5645_s_power._entry_ptr, ptr @ov5645_s_stream._entry, ptr @ov5645_s_stream._entry.79, ptr @ov5645_s_stream._entry_ptr, ptr @ov5645_s_stream._entry_ptr.81, ptr @ov5645_set_power_on._entry, ptr @ov5645_set_power_on._entry_ptr, ptr @ov5645_write_reg._entry, ptr @ov5645_write_reg._entry_ptr, ptr @ov5645_i2c_driver, ptr @.str, ptr @ov5645_of_match, ptr @ov5645_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @ov5645_probe.__key, ptr @.str.34, ptr @ov5645_probe._key, ptr @.str.35, ptr @ov5645_ctrl_ops, ptr @ov5645_test_pattern_menu, ptr @link_freq, ptr @.str.37, ptr @ov5645_subdev_ops, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @ov5645_core_ops, ptr @ov5645_video_ops, ptr @ov5645_subdev_pad_ops, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @ov5645_mode_info_data, ptr @ov5645_setting_sxga, ptr @ov5645_setting_1080p, ptr @ov5645_setting_full, ptr @.str.82, ptr @ov5645_global_init_setting, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_s_stream._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_mode_info_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_setting_sxga to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_setting_1080p to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_setting_full to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_global_init_setting to i32), i32 956, i32 1184, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_s_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_set_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5645_read_reg._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5645_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov5645_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov5645_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ov5645_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5645_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #6
  %ctrls = getelementptr i8, ptr %1, i32 400
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #6
  %power_lock = getelementptr i8, ptr %1, i32 596
  tail call void @mutex_destroy(ptr noundef %power_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5645_probe(ptr noundef %client) #2 align 64 {
entry:
  %fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %chip_id_high = alloca i8, align 1
  %chip_id_low = alloca i8, align 1
  %xclk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chip_id_high) #6
  %0 = ptrtoint ptr %chip_id_high to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %chip_id_high, align 1, !annotation !199
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chip_id_low) #6
  %1 = ptrtoint ptr %chip_id_low to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %chip_id_low, align 1, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xclk_freq) #6
  %2 = ptrtoint ptr %xclk_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %xclk_freq, align 4, !annotation !199
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 708, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %call.i, align 4
  %dev2 = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev2, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %6, ptr noundef null) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call3, i32 0, i32 3
  %ep = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 4
  %call8 = tail call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode, ptr noundef %ep) #6
  tail call void @of_node_put(ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end13

do.end12:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end13:                                         ; preds = %cond.end
  %bus_type = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp15.not = icmp eq i32 %8, 5
  br i1 %cmp15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #6
  %xclk = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %xclk, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  %10 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xclk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.16, ptr noundef nonnull %xclk_freq, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool33.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool33.not, label %if.end38, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %15 = ptrtoint ptr %xclk_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xclk_freq, align 4
  %17 = add i32 %16, -24240001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -480001, i32 %17)
  %18 = icmp ult i32 %17, -480001
  br i1 %18, label %do.end44, label %if.end45

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %16) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %19 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xclk, align 4
  %call47 = call i32 @clk_set_rate(ptr noundef %20, i32 noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %for.body.preheader, label %do.end52

for.body.preheader:                               ; preds = %if.end45
  %arrayidx55 = getelementptr %struct.ov5645, ptr %call.i, i32 0, i32 8, i32 0
  %21 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.67, ptr %arrayidx55, align 4
  %arrayidx55.1 = getelementptr %struct.ov5645, ptr %call.i, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.68, ptr %arrayidx55.1, align 4
  %arrayidx55.2 = getelementptr %struct.ov5645, ptr %call.i, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.69, ptr %arrayidx55.2, align 4
  %call57 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %for.body.preheader.cleanup_crit_edge, label %if.end60

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end60:                                         ; preds = %for.body.preheader
  %call61 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef 7) #6
  %enable_gpio = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 18
  %24 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call61, ptr %enable_gpio, align 4
  %cmp.i336 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i336, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #9
  %25 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enable_gpio, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end70:                                         ; preds = %if.end60
  %call71 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef 7) #6
  %rst_gpio = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 19
  %28 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call71, ptr %rst_gpio, align 4
  %cmp.i337 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i337, label %do.end77, label %do.body81

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #9
  %29 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rst_gpio, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

do.body81:                                        ; preds = %if.end70
  %power_lock = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 16
  call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @ov5645_probe.__key) #6
  %ctrls = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 10
  %call85 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 9, ptr noundef nonnull @ov5645_probe._key, ptr noundef nonnull @.str.35) #6
  %call87 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov5645_ctrl_ops, i32 noundef 9963778, i64 noundef -4, i64 noundef 4, i64 noundef 1, i64 noundef 0) #6
  %call89 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov5645_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %call91 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov5645_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %call93 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov5645_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %call95 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov5645_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %call97 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls, ptr noundef nonnull @ov5645_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #6
  %call99 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls, ptr noundef nonnull @ov5645_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov5645_test_pattern_menu) #6
  %call101 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov5645_ctrl_ops, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 1) #6
  %pixel_clock = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 11
  %32 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call101, ptr %pixel_clock, align 4
  %call103 = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrls, ptr noundef nonnull @ov5645_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @link_freq) #6
  %link_freq = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 12
  %33 = ptrtoint ptr %link_freq to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call103, ptr %link_freq, align 4
  %tobool105.not = icmp eq ptr %call103, null
  br i1 %tobool105.not, label %do.body81.if.end108_crit_edge, label %if.then106

do.body81.if.end108_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then106:                                       ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call103, i32 0, i32 20
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %or = or i32 %35, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %do.body81.if.end108_crit_edge
  %sd = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 2
  %ctrl_handler = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 2, i32 8
  %36 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 10, i32 9
  %37 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool111.not = icmp eq i32 %38, 0
  br i1 %tobool111.not, label %if.end120, label %do.end115

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef %38) #9
  %39 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %error, align 4
  br label %free_ctrl

if.end120:                                        ; preds = %if.end108
  call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @ov5645_subdev_ops) #6
  %flags123 = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %flags123 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags123, align 4
  %or124 = or i32 %42, 4
  store i32 %or124, ptr %flags123, align 4
  %pad = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 3
  %flags125 = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %flags125 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %flags125, align 4
  %dev128 = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 2, i32 14
  %44 = ptrtoint ptr %dev128 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev1, ptr %dev128, align 4
  %function = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %45 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 131073, ptr %function, align 4
  %call133 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %do.end138, label %if.end139

do.end138:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #9
  br label %free_ctrl

if.end139:                                        ; preds = %if.end120
  %call141 = call i32 @ov5645_s_power(ptr noundef %sd, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %do.end146, label %if.end147

do.end146:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #9
  br label %free_ctrl

if.end147:                                        ; preds = %if.end139
  %call148 = call fastcc i32 @ov5645_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 12298, ptr noundef nonnull %chip_id_high)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %if.end147.power_down_crit_edge, label %lor.lhs.false150

if.end147.power_down_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down

lor.lhs.false150:                                 ; preds = %if.end147
  %46 = ptrtoint ptr %chip_id_high to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %chip_id_high, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %47)
  %cmp151.not = icmp eq i8 %47, 86
  br i1 %cmp151.not, label %if.end157, label %lor.lhs.false150.power_down_crit_edge

lor.lhs.false150.power_down_crit_edge:            ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down

if.end157:                                        ; preds = %lor.lhs.false150
  %call158 = call fastcc i32 @ov5645_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 12299, ptr noundef nonnull %chip_id_low)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %if.end157.power_down_crit_edge, label %lor.lhs.false161

if.end157.power_down_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down

lor.lhs.false161:                                 ; preds = %if.end157
  %48 = ptrtoint ptr %chip_id_low to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %chip_id_low, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %49)
  %cmp163.not = icmp eq i8 %49, 69
  br i1 %cmp163.not, label %do.end172, label %lor.lhs.false161.power_down_crit_edge

lor.lhs.false161.power_down_crit_edge:            ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down

do.end172:                                        ; preds = %lor.lhs.false161
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr, align 2
  %conv173 = zext i16 %51 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.52, i32 noundef %conv173) #9
  %aec_pk_manual = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 13
  %call174 = call fastcc i32 @ov5645_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 13571, ptr noundef %aec_pk_manual)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %do.end172.power_down_crit_edge, label %if.end181

do.end172.power_down_crit_edge:                   ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down

if.end181:                                        ; preds = %do.end172
  %timing_tc_reg20 = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 14
  %call182 = call fastcc i32 @ov5645_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 14368, ptr noundef %timing_tc_reg20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %if.end181.power_down_crit_edge, label %if.end189

if.end181.power_down_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down

if.end189:                                        ; preds = %if.end181
  %timing_tc_reg21 = getelementptr inbounds %struct.ov5645, ptr %call.i, i32 0, i32 15
  %call190 = call fastcc i32 @ov5645_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 14369, ptr noundef %timing_tc_reg21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %if.end189.power_down_crit_edge, label %if.end197

if.end189.power_down_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down

if.end197:                                        ; preds = %if.end189
  %call199 = call i32 @ov5645_s_power(ptr noundef %sd, i32 noundef 0)
  %call201 = call i32 @v4l2_async_register_subdev(ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %do.end207, label %if.end208

do.end207:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.65) #9
  br label %free_ctrl

if.end208:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i) #6
  %52 = getelementptr inbounds i8, ptr %fmt.i, i32 4
  %53 = call ptr @memset(ptr %52, i32 0, i32 84)
  %54 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %fmt.i, align 4
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2
  %55 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1920, ptr %format.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1080, ptr %height.i, align 4
  %call.i338 = call i32 @ov5645_set_format(ptr noundef %sd, ptr noundef null, ptr noundef nonnull %fmt.i) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #6
  br label %cleanup

power_down:                                       ; preds = %if.end189.power_down_crit_edge, %if.end181.power_down_crit_edge, %do.end172.power_down_crit_edge, %lor.lhs.false161.power_down_crit_edge, %if.end157.power_down_crit_edge, %lor.lhs.false150.power_down_crit_edge, %if.end147.power_down_crit_edge
  %.str.62.sink = phi ptr [ @.str.46, %if.end147.power_down_crit_edge ], [ @.str.46, %lor.lhs.false150.power_down_crit_edge ], [ @.str.49, %if.end157.power_down_crit_edge ], [ @.str.49, %lor.lhs.false161.power_down_crit_edge ], [ @.str.56, %do.end172.power_down_crit_edge ], [ @.str.59, %if.end181.power_down_crit_edge ], [ @.str.62, %if.end189.power_down_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.62.sink) #9
  %call212 = call i32 @ov5645_s_power(ptr noundef %sd, i32 noundef 0)
  br label %free_ctrl

free_ctrl:                                        ; preds = %power_down, %do.end207, %do.end146, %do.end138, %do.end115
  %ret.2 = phi i32 [ %40, %do.end115 ], [ %call133, %do.end138 ], [ %call141, %do.end146 ], [ -19, %power_down ], [ %call201, %do.end207 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #6
  call void @mutex_destroy(ptr noundef %power_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %free_ctrl, %if.end208, %do.end77, %do.end67, %do.end52, %for.body.preheader.cleanup_crit_edge, %do.end44, %do.end37, %do.end27, %do.end19, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end12 ], [ -22, %do.end19 ], [ %12, %do.end27 ], [ %call.i.i, %do.end37 ], [ -22, %do.end44 ], [ %call47, %do.end52 ], [ %27, %do.end67 ], [ %31, %do.end77 ], [ %ret.2, %free_ctrl ], [ 0, %if.end208 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call57, %for.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xclk_freq) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chip_id_low) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chip_id_high) #6
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
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5645_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %regbuf.i = alloca [3 x i8], align 1
  %regbuf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %power_lock = getelementptr i8, ptr %sd, i32 596
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #6
  %power_count = getelementptr i8, ptr %sd, i32 688
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %supplies.i = getelementptr i8, ptr %sd, i32 360
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then2.exit_crit_edge, label %if.end.i

if.then2.exit_crit_edge:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end.i:                                         ; preds = %if.then2
  %xclk.i = getelementptr i8, ptr %sd, i32 356
  %2 = ptrtoint ptr %xclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.clk_prepare_enable.exit.i_crit_edge

if.end.i.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.then3.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp2.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp2.i, label %do.end.i, label %clk_prepare_enable.exit.i.if.end_crit_edge

clk_prepare_enable.exit.i.if.end_crit_edge:       ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr i8, ptr %sd, i32 -4
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.85) #9
  %call6.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #6
  br label %exit

if.end:                                           ; preds = %clk_prepare_enable.exit.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #6
  %enable_gpio.i = getelementptr i8, ptr %sd, i32 692
  %6 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %rst_gpio.i = getelementptr i8, ptr %sd, i32 696
  %8 = ptrtoint ptr %rst_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 20) #6
  %10 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.012.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %settings.addr.011.i = phi ptr [ @ov5645_global_init_setting, %if.end ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %settings.addr.011.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %settings.addr.011.i, align 2
  %val.i = getelementptr inbounds %struct.reg_value, ptr %settings.addr.011.i, i32 0, i32 1
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i) #6
  %16 = lshr i16 %13, 8
  %conv1.i.i = trunc i16 %16 to i8
  %17 = ptrtoint ptr %regbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1.i.i, ptr %regbuf.i.i, align 1
  %conv3.i.i = trunc i16 %13 to i8
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i.i, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %15, ptr %11, align 1
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %regbuf.i.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #6
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %incdec.ptr.i = getelementptr %struct.reg_value, ptr %settings.addr.011.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 239
  br i1 %exitcond.not.i, label %if.end9, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %13 to i32
  %dev.i.i = getelementptr i8, ptr %sd, i32 -4
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %conv8.i.i = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.i, i32 noundef %conv.i.i, i32 noundef %conv8.i.i) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #6
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.83) #9
  call fastcc void @ov5645_set_power_off(ptr noundef %add.ptr.i)
  br label %exit

if.end9:                                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #6
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i) #6
  %26 = getelementptr inbounds [3 x i8], ptr %regbuf.i, i32 0, i32 1
  %27 = getelementptr inbounds [3 x i8], ptr %regbuf.i, i32 0, i32 2
  %28 = ptrtoint ptr %regbuf.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 48, ptr %regbuf.i, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 14, ptr %26, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 88, ptr %27, align 1
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i61 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %regbuf.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %cmp.i62 = icmp slt i32 %call.i.i61, 0
  br i1 %cmp.i62, label %do.end.i64, label %if.else.ov5645_write_reg.exit_crit_edge

if.else.ov5645_write_reg.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %ov5645_write_reg.exit

do.end.i64:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i63 = getelementptr i8, ptr %sd, i32 -4
  %33 = ptrtoint ptr %dev.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i61, i32 noundef 12302, i32 noundef 88) #9
  br label %ov5645_write_reg.exit

ov5645_write_reg.exit:                            ; preds = %do.end.i64, %if.else.ov5645_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i) #6
  %rst_gpio.i66 = getelementptr i8, ptr %sd, i32 696
  %35 = ptrtoint ptr %rst_gpio.i66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rst_gpio.i66, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %36, i32 noundef 1) #6
  %enable_gpio.i67 = getelementptr i8, ptr %sd, i32 692
  %37 = ptrtoint ptr %enable_gpio.i67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %enable_gpio.i67, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %38, i32 noundef 0) #6
  %xclk.i68 = getelementptr i8, ptr %sd, i32 356
  %39 = ptrtoint ptr %xclk.i68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xclk.i68, align 4
  call void @clk_disable(ptr noundef %40) #6
  call void @clk_unprepare(ptr noundef %40) #6
  %supplies.i69 = getelementptr i8, ptr %sd, i32 360
  %call.i70 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i69) #6
  br label %if.end12

if.end12:                                         ; preds = %ov5645_write_reg.exit, %if.end9, %entry.if.end12_crit_edge
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %41 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %power_count, align 4
  %add = add i32 %42, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp16 = icmp slt i32 %add, 0
  br i1 %cmp16, label %do.end31, label %if.end12.exit_crit_edge, !prof !200

if.end12.exit_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

do.end31:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 707, i32 noundef 9, ptr noundef null) #6
  br label %exit

exit:                                             ; preds = %do.end31, %if.end12.exit_crit_edge, %do.end, %do.end.i, %if.then2.exit_crit_edge
  %ret.1 = phi i32 [ %call.i.i.i, %do.end ], [ 0, %do.end31 ], [ 0, %if.end12.exit_crit_edge ], [ %call.i, %if.then2.exit_crit_edge ], [ %retval.0.i.i, %do.end.i ]
  call void @mutex_unlock(ptr noundef %power_lock) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5645_read_reg(ptr nocapture noundef readonly %ov5645, i16 noundef zeroext %reg, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  %regbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regbuf) #6
  %0 = getelementptr inbounds [2 x i8], ptr %regbuf, i32 0, i32 1
  %conv = zext i16 %reg to i32
  %1 = lshr i16 %reg, 8
  %conv1 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %regbuf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %regbuf, align 1
  %conv3 = trunc i16 %reg to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  %4 = ptrtoint ptr %ov5645 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ov5645, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %regbuf, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ov5645, ptr %ov5645, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef %call.i, i32 noundef %conv) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ov5645 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ov5645, align 4
  %call.i30 = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef %val, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp9 = icmp slt i32 %call.i30, 0
  br i1 %cmp9, label %do.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.ov5645, ptr %ov5645, i32 0, i32 1
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88, i32 noundef %call.i30, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i30, %do.end14 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regbuf) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5645_entity_init_cfg(ptr nocapture noundef %subdev, ptr noundef readonly %sd_state) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #6
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
  store i32 1920, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1080, ptr %height, align 4
  %call = call i32 @ov5645_set_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef nonnull %fmt)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5645_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %regbuf.i.i81 = alloca [3 x i8], align 1
  %regbuf.i.i70 = alloca [3 x i8], align 1
  %regbuf.i.i60 = alloca [3 x i8], align 1
  %regbuf.i.i51 = alloca [3 x i8], align 1
  %regbuf.i.i45 = alloca [3 x i8], align 1
  %regbuf.i.i40 = alloca [3 x i8], align 1
  %regbuf.i8.i = alloca [3 x i8], align 1
  %regbuf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -408
  %power_lock = getelementptr i8, ptr %1, i32 196
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #6
  %power_count = getelementptr i8, ptr %1, i32 288
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %power_lock) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 9963778, label %sw.bb
    i32 9963788, label %sw.bb2
    i32 9963794, label %sw.bb5
    i32 10094849, label %sw.bb8
    i32 10422531, label %sw.bb11
    i32 9963796, label %sw.bb14
    i32 9963797, label %sw.bb17
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %value.tr.i = trunc i32 %8 to i8
  %9 = shl i8 %value.tr.i, 4
  %conv.i = add i8 %9, 64
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i) #6
  %10 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %regbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 85, ptr %regbuf.i.i, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -125, ptr %10, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %11, align 1
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %regbuf.i.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %ov5645_write_reg.exit.thread.i, label %if.end.i

ov5645_write_reg.exit.thread.i:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr i8, ptr %1, i32 -404
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %conv8.i.i = zext i8 %conv.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.i, i32 noundef 21891, i32 noundef %conv8.i.i) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #6
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i8.i) #6
  %19 = getelementptr inbounds [3 x i8], ptr %regbuf.i8.i, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %regbuf.i8.i, i32 0, i32 2
  %21 = ptrtoint ptr %regbuf.i8.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 85, ptr %regbuf.i8.i, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -124, ptr %19, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %20, align 1
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %call.i.i9.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %regbuf.i8.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9.i)
  %cmp.i10.i = icmp slt i32 %call.i.i9.i, 0
  br i1 %cmp.i10.i, label %do.end.i13.i, label %if.end.i.ov5645_write_reg.exit15.i_crit_edge

if.end.i.ov5645_write_reg.exit15.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ov5645_write_reg.exit15.i

do.end.i13.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i11.i = getelementptr i8, ptr %1, i32 -404
  %26 = ptrtoint ptr %dev.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i11.i, align 4
  %conv8.i12.i = zext i8 %conv.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i9.i, i32 noundef 21892, i32 noundef %conv8.i12.i) #9
  br label %ov5645_write_reg.exit15.i

ov5645_write_reg.exit15.i:                        ; preds = %do.end.i13.i, %if.end.i.ov5645_write_reg.exit15.i_crit_edge
  %retval.0.i14.i = phi i32 [ %call.i.i9.i, %do.end.i13.i ], [ 0, %if.end.i.ov5645_write_reg.exit15.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i8.i) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %28 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  %spec.store.select.i = zext i1 %tobool.not.i to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i40) #6
  %30 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i40, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i40, i32 0, i32 2
  %32 = ptrtoint ptr %regbuf.i.i40 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 52, ptr %regbuf.i.i40, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 6, ptr %30, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.store.select.i, ptr %31, align 1
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %regbuf.i.i40, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i41)
  %cmp.i.i42 = icmp slt i32 %call.i.i.i41, 0
  br i1 %cmp.i.i42, label %do.end.i.i, label %sw.bb2.ov5645_set_awb.exit_crit_edge

sw.bb2.ov5645_set_awb.exit_crit_edge:             ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %ov5645_set_awb.exit

do.end.i.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i43 = getelementptr i8, ptr %1, i32 -404
  %37 = ptrtoint ptr %dev.i.i43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i43, align 4
  %conv8.i.i44 = zext i1 %tobool.not.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.i41, i32 noundef 13318, i32 noundef %conv8.i.i44) #9
  br label %ov5645_set_awb.exit

ov5645_set_awb.exit:                              ; preds = %do.end.i.i, %sw.bb2.ov5645_set_awb.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i41, %do.end.i.i ], [ 0, %sw.bb2.ov5645_set_awb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i40) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %39 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val6, align 4
  %aec_pk_manual.i = getelementptr i8, ptr %1, i32 192
  %41 = ptrtoint ptr %aec_pk_manual.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %aec_pk_manual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i46 = icmp eq i32 %40, 0
  %43 = and i8 %42, -3
  %masksel.i = select i1 %tobool.not.i46, i8 2, i8 0
  %val.0.i = or i8 %43, %masksel.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i45) #6
  %44 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i45, i32 0, i32 1
  %45 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i45, i32 0, i32 2
  %46 = ptrtoint ptr %regbuf.i.i45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 53, ptr %regbuf.i.i45, align 1
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %44, align 1
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %val.0.i, ptr %45, align 1
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i47 = call i32 @i2c_transfer_buffer_flags(ptr noundef %50, ptr noundef nonnull %regbuf.i.i45, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i47)
  %cmp.i.i48 = icmp slt i32 %call.i.i.i47, 0
  br i1 %cmp.i.i48, label %ov5645_write_reg.exit.i, label %if.then5.i

ov5645_write_reg.exit.i:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i49 = getelementptr i8, ptr %1, i32 -404
  %51 = ptrtoint ptr %dev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i49, align 4
  %conv8.i.i50 = zext i8 %val.0.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.i47, i32 noundef 13571, i32 noundef %conv8.i.i50) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i45) #6
  br label %sw.epilog

if.then5.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i45) #6
  %53 = ptrtoint ptr %aec_pk_manual.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %val.0.i, ptr %aec_pk_manual.i, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %54 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val9, align 4
  %aec_pk_manual.i52 = getelementptr i8, ptr %1, i32 192
  %56 = ptrtoint ptr %aec_pk_manual.i52 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %aec_pk_manual.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i = icmp ne i32 %55, 0
  %58 = and i8 %57, -2
  %masksel.i53 = zext i1 %cmp.i to i8
  %val.0.i54 = or i8 %58, %masksel.i53
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i51) #6
  %59 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i51, i32 0, i32 1
  %60 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i51, i32 0, i32 2
  %61 = ptrtoint ptr %regbuf.i.i51 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 53, ptr %regbuf.i.i51, align 1
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %59, align 1
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %val.0.i54, ptr %60, align 1
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i55 = call i32 @i2c_transfer_buffer_flags(ptr noundef %65, ptr noundef nonnull %regbuf.i.i51, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i55)
  %cmp.i.i56 = icmp slt i32 %call.i.i.i55, 0
  br i1 %cmp.i.i56, label %ov5645_write_reg.exit.i59, label %if.then4.i

ov5645_write_reg.exit.i59:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i57 = getelementptr i8, ptr %1, i32 -404
  %66 = ptrtoint ptr %dev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i57, align 4
  %conv8.i.i58 = zext i8 %val.0.i54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.i55, i32 noundef 13571, i32 noundef %conv8.i.i58) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i51) #6
  br label %sw.epilog

if.then4.i:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i51) #6
  %68 = ptrtoint ptr %aec_pk_manual.i52 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %val.0.i54, ptr %aec_pk_manual.i52, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %69 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i61 = icmp eq i32 %70, 0
  %71 = trunc i32 %70 to i8
  %72 = add i8 %71, 3
  %73 = and i8 %72, 3
  %conv2.i = or i8 %73, -128
  %val.0.i62 = select i1 %tobool.not.i61, i8 0, i8 %conv2.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i60) #6
  %74 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i60, i32 0, i32 1
  %75 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i60, i32 0, i32 2
  %76 = ptrtoint ptr %regbuf.i.i60 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 80, ptr %regbuf.i.i60, align 1
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 61, ptr %74, align 1
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %val.0.i62, ptr %75, align 1
  %79 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i63 = call i32 @i2c_transfer_buffer_flags(ptr noundef %80, ptr noundef nonnull %regbuf.i.i60, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i63)
  %cmp.i.i64 = icmp slt i32 %call.i.i.i63, 0
  br i1 %cmp.i.i64, label %do.end.i.i67, label %sw.bb11.ov5645_set_test_pattern.exit_crit_edge

sw.bb11.ov5645_set_test_pattern.exit_crit_edge:   ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %ov5645_set_test_pattern.exit

do.end.i.i67:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i65 = getelementptr i8, ptr %1, i32 -404
  %81 = ptrtoint ptr %dev.i.i65 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i65, align 4
  %conv8.i.i66 = zext i8 %val.0.i62 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.i63, i32 noundef 20541, i32 noundef %conv8.i.i66) #9
  br label %ov5645_set_test_pattern.exit

ov5645_set_test_pattern.exit:                     ; preds = %do.end.i.i67, %sw.bb11.ov5645_set_test_pattern.exit_crit_edge
  %retval.0.i.i68 = phi i32 [ %call.i.i.i63, %do.end.i.i67 ], [ 0, %sw.bb11.ov5645_set_test_pattern.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i60) #6
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %83 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val15, align 4
  %timing_tc_reg21.i = getelementptr i8, ptr %1, i32 194
  %85 = ptrtoint ptr %timing_tc_reg21.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %timing_tc_reg21.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i71 = icmp eq i32 %84, 0
  %87 = and i8 %86, -3
  %masksel.i72 = select i1 %cmp.i71, i8 0, i8 2
  %val.0.i73 = or i8 %87, %masksel.i72
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i70) #6
  %88 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i70, i32 0, i32 1
  %89 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i70, i32 0, i32 2
  %90 = ptrtoint ptr %regbuf.i.i70 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 56, ptr %regbuf.i.i70, align 1
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 33, ptr %88, align 1
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %val.0.i73, ptr %89, align 1
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i74 = call i32 @i2c_transfer_buffer_flags(ptr noundef %94, ptr noundef nonnull %regbuf.i.i70, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i74)
  %cmp.i.i75 = icmp slt i32 %call.i.i.i74, 0
  br i1 %cmp.i.i75, label %ov5645_write_reg.exit.i78, label %if.then4.i79

ov5645_write_reg.exit.i78:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i76 = getelementptr i8, ptr %1, i32 -404
  %95 = ptrtoint ptr %dev.i.i76 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i.i76, align 4
  %conv8.i.i77 = zext i8 %val.0.i73 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.i74, i32 noundef 14369, i32 noundef %conv8.i.i77) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i70) #6
  br label %sw.epilog

if.then4.i79:                                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i70) #6
  %97 = ptrtoint ptr %timing_tc_reg21.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %val.0.i73, ptr %timing_tc_reg21.i, align 2
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %98 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val18, align 4
  %timing_tc_reg20.i = getelementptr i8, ptr %1, i32 193
  %100 = ptrtoint ptr %timing_tc_reg20.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %timing_tc_reg20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i82 = icmp eq i32 %99, 0
  %102 = and i8 %101, -7
  %masksel.i83 = select i1 %cmp.i82, i8 6, i8 0
  %val.0.i84 = or i8 %102, %masksel.i83
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i81) #6
  %103 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i81, i32 0, i32 1
  %104 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i81, i32 0, i32 2
  %105 = ptrtoint ptr %regbuf.i.i81 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 56, ptr %regbuf.i.i81, align 1
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 32, ptr %103, align 1
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %val.0.i84, ptr %104, align 1
  %108 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i85 = call i32 @i2c_transfer_buffer_flags(ptr noundef %109, ptr noundef nonnull %regbuf.i.i81, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i85)
  %cmp.i.i86 = icmp slt i32 %call.i.i.i85, 0
  br i1 %cmp.i.i86, label %ov5645_write_reg.exit.i89, label %if.then4.i90

ov5645_write_reg.exit.i89:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i87 = getelementptr i8, ptr %1, i32 -404
  %110 = ptrtoint ptr %dev.i.i87 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i.i87, align 4
  %conv8.i.i88 = zext i8 %val.0.i84 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.i85, i32 noundef 14368, i32 noundef %conv8.i.i88) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i81) #6
  br label %sw.epilog

if.then4.i90:                                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i81) #6
  %112 = ptrtoint ptr %timing_tc_reg20.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %val.0.i84, ptr %timing_tc_reg20.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then4.i90, %ov5645_write_reg.exit.i89, %if.then4.i79, %ov5645_write_reg.exit.i78, %ov5645_set_test_pattern.exit, %if.then4.i, %ov5645_write_reg.exit.i59, %if.then5.i, %ov5645_write_reg.exit.i, %ov5645_set_awb.exit, %ov5645_write_reg.exit15.i, %ov5645_write_reg.exit.thread.i, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.i68, %ov5645_set_test_pattern.exit ], [ %retval.0.i.i, %ov5645_set_awb.exit ], [ -22, %if.end.sw.epilog_crit_edge ], [ %retval.0.i14.i, %ov5645_write_reg.exit15.i ], [ %call.i.i.i, %ov5645_write_reg.exit.thread.i ], [ 0, %if.then5.i ], [ %call.i.i.i47, %ov5645_write_reg.exit.i ], [ 0, %if.then4.i ], [ %call.i.i.i55, %ov5645_write_reg.exit.i59 ], [ 0, %if.then4.i79 ], [ %call.i.i.i74, %ov5645_write_reg.exit.i78 ], [ 0, %if.then4.i90 ], [ %call.i.i.i85, %ov5645_write_reg.exit.i89 ]
  call void @mutex_unlock(ptr noundef %power_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5645_s_stream(ptr noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  %regbuf.i69 = alloca [3 x i8], align 1
  %regbuf.i62 = alloca [3 x i8], align 1
  %regbuf.i55 = alloca [3 x i8], align 1
  %regbuf.i = alloca [3 x i8], align 1
  %regbuf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %current_mode = getelementptr i8, ptr %subdev, i32 396
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_mode, align 4
  %data_size = getelementptr inbounds %struct.ov5645_mode_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %data = getelementptr inbounds %struct.ov5645_mode_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %settings.addr.011.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %settings.addr.011.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %settings.addr.011.i, align 2
  %val.i = getelementptr inbounds %struct.reg_value, ptr %settings.addr.011.i, i32 0, i32 1
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i) #6
  %12 = lshr i16 %9, 8
  %conv1.i.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %regbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i.i, ptr %regbuf.i.i, align 1
  %conv3.i.i = trunc i16 %9 to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv3.i.i, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %11, ptr %7, align 1
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %regbuf.i.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #6
  %inc.i = add nuw i32 %i.012.i, 1
  %incdec.ptr.i = getelementptr %struct.reg_value, ptr %settings.addr.011.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %9 to i32
  %dev.i.i = getelementptr i8, ptr %subdev, i32 -4
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %conv8.i.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.i, i32 noundef %conv.i.i, i32 noundef %conv8.i.i) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #6
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %22 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %current_mode, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %height = getelementptr inbounds %struct.ov5645_mode_info, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.77, i32 noundef %25, i32 noundef %27) #9
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ctrls = getelementptr i8, ptr %subdev, i32 400
  %call6 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev12 = getelementptr i8, ptr %subdev, i32 -4
  %28 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.80) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i) #6
  %30 = getelementptr inbounds [3 x i8], ptr %regbuf.i, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i8], ptr %regbuf.i, i32 0, i32 2
  %32 = ptrtoint ptr %regbuf.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 48, ptr %regbuf.i, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 14, ptr %30, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 69, ptr %31, align 1
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %regbuf.i, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ov5645_write_reg.exit.thread, label %if.end17

ov5645_write_reg.exit.thread:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr i8, ptr %subdev, i32 -4
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i, i32 noundef 12302, i32 noundef 69) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i55) #6
  %39 = getelementptr inbounds [3 x i8], ptr %regbuf.i55, i32 0, i32 1
  %40 = getelementptr inbounds [3 x i8], ptr %regbuf.i55, i32 0, i32 2
  %41 = ptrtoint ptr %regbuf.i55 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 48, ptr %regbuf.i55, align 1
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 8, ptr %39, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %40, align 1
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i56 = call i32 @i2c_transfer_buffer_flags(ptr noundef %45, ptr noundef nonnull %regbuf.i55, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp.i57 = icmp slt i32 %call.i.i56, 0
  br i1 %cmp.i57, label %ov5645_write_reg.exit61.thread, label %ov5645_write_reg.exit61

ov5645_write_reg.exit61.thread:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i58 = getelementptr i8, ptr %subdev, i32 -4
  %46 = ptrtoint ptr %dev.i58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i58, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i56, i32 noundef 12296, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i55) #6
  br label %cleanup

ov5645_write_reg.exit61:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i55) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i62) #6
  %48 = getelementptr inbounds [3 x i8], ptr %regbuf.i62, i32 0, i32 1
  %49 = getelementptr inbounds [3 x i8], ptr %regbuf.i62, i32 0, i32 2
  %50 = ptrtoint ptr %regbuf.i62 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 48, ptr %regbuf.i62, align 1
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 14, ptr %48, align 1
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 64, ptr %49, align 1
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i63 = call i32 @i2c_transfer_buffer_flags(ptr noundef %54, ptr noundef nonnull %regbuf.i62, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %cmp.i64 = icmp slt i32 %call.i.i63, 0
  br i1 %cmp.i64, label %ov5645_write_reg.exit68.thread, label %if.end25

ov5645_write_reg.exit68.thread:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i65 = getelementptr i8, ptr %subdev, i32 -4
  %55 = ptrtoint ptr %dev.i65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i63, i32 noundef 12302, i32 noundef 64) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i62) #6
  br label %cleanup

if.end25:                                         ; preds = %if.else
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i62) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i69) #6
  %57 = getelementptr inbounds [3 x i8], ptr %regbuf.i69, i32 0, i32 1
  %58 = getelementptr inbounds [3 x i8], ptr %regbuf.i69, i32 0, i32 2
  %59 = ptrtoint ptr %regbuf.i69 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 48, ptr %regbuf.i69, align 1
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 8, ptr %57, align 1
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 66, ptr %58, align 1
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i70 = call i32 @i2c_transfer_buffer_flags(ptr noundef %63, ptr noundef nonnull %regbuf.i69, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.i71 = icmp slt i32 %call.i.i70, 0
  br i1 %cmp.i71, label %ov5645_write_reg.exit75.thread, label %ov5645_write_reg.exit75

ov5645_write_reg.exit75.thread:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i72 = getelementptr i8, ptr %subdev, i32 -4
  %64 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call.i.i70, i32 noundef 12296, i32 noundef 66) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i69) #6
  br label %cleanup

ov5645_write_reg.exit75:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i69) #6
  br label %cleanup

cleanup:                                          ; preds = %ov5645_write_reg.exit75, %ov5645_write_reg.exit75.thread, %ov5645_write_reg.exit68.thread, %ov5645_write_reg.exit61, %ov5645_write_reg.exit61.thread, %ov5645_write_reg.exit.thread, %do.end11, %do.end
  %retval.0 = phi i32 [ %call.i.i.i, %do.end ], [ %call6, %do.end11 ], [ %call.i.i, %ov5645_write_reg.exit.thread ], [ %call.i.i56, %ov5645_write_reg.exit61.thread ], [ %call.i.i63, %ov5645_write_reg.exit68.thread ], [ %call.i.i70, %ov5645_write_reg.exit75.thread ], [ 0, %ov5645_write_reg.exit75 ], [ 0, %ov5645_write_reg.exit61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5645_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8198, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5645_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %1)
  %cmp.not = icmp eq i32 %1, 8198
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp ugt i32 %3, 2
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [3 x %struct.ov5645_mode_info], ptr @ov5645_mode_info_data, i32 0, i32 %3
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
  %height = getelementptr [3 x %struct.ov5645_mode_info], ptr @ov5645_mode_info_data, i32 0, i32 %3, i32 1
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
define internal i32 @ov5645_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %1, label %entry.__ov5645_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__ov5645_get_pad_format.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ov5645_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
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
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !201

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__ov5645_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fmt.i = getelementptr i8, ptr %sd, i32 292
  br label %__ov5645_get_pad_format.exit

__ov5645_get_pad_format.exit:                     ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__ov5645_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %fmt.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__ov5645_get_pad_format.exit_crit_edge ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format1, ptr %retval.0.i, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5645_set_format(ptr nocapture noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %1, label %entry.__ov5645_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__ov5645_get_pad_crop.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ov5645_get_pad_crop.exit

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
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !201

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i, i32 1
  br label %__ov5645_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %crop.i = getelementptr i8, ptr %sd, i32 340
  br label %__ov5645_get_pad_crop.exit

__ov5645_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %entry.__ov5645_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %entry.__ov5645_get_pad_crop.exit_crit_edge ]
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format2, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %call4 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov5645_mode_info_data, i32 noundef 3, i32 noundef 24, i32 noundef 0, i32 noundef 4, i32 noundef %10, i32 noundef %12) #6
  %13 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call4, align 4
  %width6 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %width6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %width6, align 4
  %height7 = getelementptr inbounds %struct.ov5645_mode_info, ptr %call4, i32 0, i32 1
  %16 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height7, align 4
  %height8 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height8, align 4
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then, label %__ov5645_get_pad_crop.exit.if.end21_crit_edge

__ov5645_get_pad_crop.exit.if.end21_crit_edge:    ; preds = %__ov5645_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then:                                          ; preds = %__ov5645_get_pad_crop.exit
  %pixel_clock = getelementptr i8, ptr %sd, i32 584
  %21 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pixel_clock, align 4
  %pixel_clock10 = getelementptr inbounds %struct.ov5645_mode_info, ptr %call4, i32 0, i32 4
  %23 = ptrtoint ptr %pixel_clock10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pixel_clock10, align 4
  %conv = zext i32 %24 to i64
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %28, i32 noundef 0) #6
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %22, i64 noundef %conv) #6
  %29 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handler.i.i, align 8
  %lock.i4.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %lock.i4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock.i4.i, align 4
  tail call void @mutex_unlock(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %link_freq = getelementptr i8, ptr %sd, i32 588
  %33 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %link_freq, align 4
  %link_freq15 = getelementptr inbounds %struct.ov5645_mode_info, ptr %call4, i32 0, i32 5
  %35 = ptrtoint ptr %link_freq15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link_freq15, align 4
  %handler.i.i61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %handler.i.i61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %handler.i.i61, align 8
  %lock.i.i62 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %lock.i.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lock.i.i62, align 4
  tail call void @mutex_lock_nested(ptr noundef %40, i32 noundef 0) #6
  %call.i63 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %34, i32 noundef %36) #6
  %41 = ptrtoint ptr %handler.i.i61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handler.i.i61, align 8
  %lock.i4.i64 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %lock.i4.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lock.i4.i64, align 4
  tail call void @mutex_unlock(ptr noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp17 = icmp slt i32 %call.i63, 0
  br i1 %cmp17, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %current_mode = getelementptr i8, ptr %sd, i32 396
  %45 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call4, ptr %current_mode, align 4
  %46 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %format, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %__ov5645_get_pad_crop.exit.if.end21_crit_edge
  %47 = phi i32 [ %.pr, %if.end20 ], [ %20, %__ov5645_get_pad_crop.exit.if.end21_crit_edge ]
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %47, label %if.end21.__ov5645_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i68
    i32 1, label %sw.bb1.i71
  ]

if.end21.__ov5645_get_pad_format.exit_crit_edge:  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ov5645_get_pad_format.exit

sw.bb.i68:                                        ; preds = %if.end21
  %49 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pad, align 4
  %num_pads.i.i65 = getelementptr i8, ptr %sd, i32 32
  %51 = ptrtoint ptr %num_pads.i.i65 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %num_pads.i.i65, align 4
  %conv.i.i66 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv.i.i66)
  %cmp.not.i.i67 = icmp ult i32 %50, %conv.i.i66
  br i1 %cmp.not.i.i67, label %sw.bb.i68.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i69, !prof !201

sw.bb.i68.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i69:                                     ; preds = %sw.bb.i68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i69, %sw.bb.i68.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i70 = phi i32 [ 0, %do.end.i.i69 ], [ %50, %sw.bb.i68.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %53 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %54, i32 %spec.select.i.i70
  br label %__ov5645_get_pad_format.exit

sw.bb1.i71:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %fmt.i = getelementptr i8, ptr %sd, i32 292
  br label %__ov5645_get_pad_format.exit

__ov5645_get_pad_format.exit:                     ; preds = %sw.bb1.i71, %v4l2_subdev_get_try_format.exit.i, %if.end21.__ov5645_get_pad_format.exit_crit_edge
  %retval.0.i72 = phi ptr [ %fmt.i, %sw.bb1.i71 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.end21.__ov5645_get_pad_format.exit_crit_edge ]
  %55 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %width6, align 4
  %57 = ptrtoint ptr %retval.0.i72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %retval.0.i72, align 4
  %58 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height8, align 4
  %height28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i72, i32 0, i32 1
  %60 = ptrtoint ptr %height28 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %height28, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i72, i32 0, i32 2
  %61 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8198, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i72, i32 0, i32 3
  %62 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i72, i32 0, i32 4
  %63 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 8, ptr %colorspace, align 4
  %64 = call ptr @memcpy(ptr %format2, ptr %retval.0.i72, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %__ov5645_get_pad_format.exit, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__ov5645_get_pad_format.exit ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i63, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5645_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %3, label %if.end.__ov5645_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__ov5645_get_pad_crop.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ov5645_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %7 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %6, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !201

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %6, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i, i32 1
  br label %__ov5645_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %crop.i = getelementptr i8, ptr %sd, i32 340
  br label %__ov5645_get_pad_crop.exit

__ov5645_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__ov5645_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__ov5645_get_pad_crop.exit_crit_edge ]
  %11 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %__ov5645_get_pad_crop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__ov5645_get_pad_crop.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov5645_set_power_off(ptr noundef %ov5645) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_gpio = getelementptr inbounds %struct.ov5645, ptr %ov5645, i32 0, i32 19
  %0 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #6
  %enable_gpio = getelementptr inbounds %struct.ov5645, ptr %ov5645, i32 0, i32 18
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #6
  %xclk = getelementptr inbounds %struct.ov5645, ptr %ov5645, i32 0, i32 7
  %4 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xclk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %supplies = getelementptr inbounds %struct.ov5645, ptr %ov5645, i32 0, i32 8
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !179, !180, !181, !182, !184, !185, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @__initcall__kmod_ov5645__293_1294_ov5645_i2c_driver_init6, !1, !"__initcall__kmod_ov5645__293_1294_ov5645_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov5645.c", i32 1294, i32 1}
!2 = !{ptr @__exitcall_ov5645_i2c_driver_exit, !1, !"__exitcall_ov5645_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov5645.c", i32 1296, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov5645.c", i32 1297, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov5645.c", i32 1298, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov5645.c", i32 1287, i32 12}
!12 = !{ptr @ov5645_i2c_driver, !13, !"ov5645_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov5645.c", i32 1284, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov5645.c", i32 1073, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov5645_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov5645_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov5645.c", i32 1083, i32 3}
!24 = !{ptr @ov5645_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov5645_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov5645.c", i32 1088, i32 3}
!28 = !{ptr @ov5645_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov5645_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov5645.c", i32 1093, i32 35}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ov5645.c", i32 1095, i32 3}
!34 = !{ptr @ov5645_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ov5645_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov5645.c", i32 1099, i32 43}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/ov5645.c", i32 1101, i32 3}
!40 = !{ptr @ov5645_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ov5645_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/ov5645.c", i32 1107, i32 3}
!44 = !{ptr @ov5645_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ov5645_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov5645.c", i32 1114, i32 3}
!48 = !{ptr @ov5645_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ov5645_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov5645.c", i32 1126, i32 44}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov5645.c", i32 1128, i32 3}
!54 = !{ptr @ov5645_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ov5645_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov5645.c", i32 1132, i32 41}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov5645.c", i32 1134, i32 3}
!60 = !{ptr @ov5645_probe._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ov5645_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ov5645_probe.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov5645.c", i32 1138, i32 2}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ov5645_probe._key, !66, !"_key", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/ov5645.c", i32 1140, i32 2}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov5645.c", i32 1173, i32 3}
!70 = !{ptr @ov5645_probe._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ov5645_probe._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov5645.c", i32 1187, i32 3}
!74 = !{ptr @ov5645_probe._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ov5645_probe._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ov5645.c", i32 1193, i32 3}
!78 = !{ptr @ov5645_probe._entry.42, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ov5645_probe._entry_ptr.44, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov5645.c", i32 1199, i32 3}
!82 = !{ptr @ov5645_probe._entry.45, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ov5645_probe._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov5645.c", i32 1205, i32 3}
!86 = !{ptr @ov5645_probe._entry.48, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ov5645_probe._entry_ptr.50, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov5645.c", i32 1210, i32 2}
!90 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ov5645_probe._entry.51, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ov5645_probe._entry_ptr.54, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov5645.c", i32 1215, i32 3}
!95 = !{ptr @ov5645_probe._entry.55, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ov5645_probe._entry_ptr.57, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.59, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov5645.c", i32 1223, i32 3}
!99 = !{ptr @ov5645_probe._entry.58, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ov5645_probe._entry_ptr.60, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/ov5645.c", i32 1231, i32 3}
!103 = !{ptr @ov5645_probe._entry.61, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ov5645_probe._entry_ptr.63, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.65, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov5645.c", i32 1240, i32 3}
!107 = !{ptr @ov5645_probe._entry.64, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ov5645_probe._entry_ptr.66, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov5645.c", i32 66, i32 2}
!111 = !{ptr @.str.68, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov5645.c", i32 67, i32 2}
!113 = !{ptr @.str.69, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov5645.c", i32 68, i32 2}
!115 = distinct !{null, !116, !"ov5645_supply_name", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ov5645.c", i32 65, i32 27}
!117 = !{ptr @ov5645_ctrl_ops, !118, !"ov5645_ctrl_ops", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov5645.c", i32 835, i32 35}
!119 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ov5645.c", i32 555, i32 3}
!121 = !{ptr @.str.71, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ov5645_write_reg._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ov5645_write_reg._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov5645.c", i32 774, i32 2}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ov5645.c", i32 775, i32 2}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ov5645.c", i32 776, i32 2}
!130 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/ov5645.c", i32 777, i32 2}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov5645.c", i32 778, i32 2}
!134 = !{ptr @ov5645_test_pattern_menu, !135, !"ov5645_test_pattern_menu", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov5645.c", i32 773, i32 27}
!136 = !{ptr @link_freq, !137, !"link_freq", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/ov5645.c", i32 512, i32 18}
!138 = !{ptr @ov5645_subdev_ops, !139, !"ov5645_subdev_ops", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/ov5645.c", i32 1048, i32 37}
!140 = !{ptr @ov5645_core_ops, !141, !"ov5645_core_ops", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/ov5645.c", i32 1031, i32 42}
!142 = !{ptr @ov5645_video_ops, !143, !"ov5645_video_ops", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov5645.c", i32 1035, i32 43}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/ov5645.c", i32 998, i32 4}
!146 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ov5645_s_stream._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @ov5645_s_stream._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/ov5645.c", i32 1005, i32 4}
!151 = !{ptr @ov5645_s_stream._entry.79, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @ov5645_s_stream._entry_ptr.81, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @ov5645_subdev_pad_ops, !154, !"ov5645_subdev_pad_ops", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/ov5645.c", i32 1039, i32 41}
!155 = !{ptr @ov5645_mode_info_data, !156, !"ov5645_mode_info_data", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/ov5645.c", i32 517, i32 38}
!157 = !{ptr @ov5645_setting_sxga, !158, !"ov5645_setting_sxga", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ov5645.c", i32 364, i32 31}
!159 = !{ptr @ov5645_setting_1080p, !160, !"ov5645_setting_1080p", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/ov5645.c", i32 412, i32 31}
!161 = !{ptr @ov5645_setting_full, !162, !"ov5645_setting_full", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/ov5645.c", i32 462, i32 31}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/ov5645.c", i32 692, i32 5}
!167 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ov5645_s_power._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @ov5645_s_power._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/ov5645.c", i32 648, i32 3}
!172 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ov5645_set_power_on._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ov5645_set_power_on._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @ov5645_global_init_setting, !176, !"ov5645_global_init_setting", i1 false, i1 false}
!176 = !{!"../drivers/media/i2c/ov5645.c", i32 122, i32 31}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/i2c/ov5645.c", i32 573, i32 3}
!179 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ov5645_read_reg._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ov5645_read_reg._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/ov5645.c", i32 580, i32 3}
!184 = !{ptr @ov5645_read_reg._entry.89, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @ov5645_read_reg._entry_ptr.91, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @ov5645_of_match, !187, !"ov5645_of_match", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/ov5645.c", i32 1278, i32 34}
!188 = !{ptr @ov5645_id, !189, !"ov5645_id", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/ov5645.c", i32 1272, i32 35}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{!"auto-init"}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{!"branch_weights", i32 2000, i32 1}
