; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/imx290.c_pt.bc'
source_filename = "../drivers/media/i2c/imx290.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.imx290_pixfmt = type { i32, i8 }
%struct.imx290_mode = type { i32, i32, i32, i8, ptr, i32 }
%struct.imx290_regval = type { i16, i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.imx290 = type { ptr, ptr, ptr, i8, i8, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_mbus_framefmt, ptr, [3 x %struct.regulator_bulk_data], ptr, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.mutex }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }

@__initcall__kmod_imx290__295_1157_imx290_i2c_driver_init6 = internal global ptr @imx290_i2c_driver_init, section ".initcall6.init", align 4
@imx290_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @imx290_remove, ptr @imx290_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx290_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx290_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_imx290_i2c_driver_exit = internal global ptr @imx290_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [56 x i8] c"imx290.description=Sony IMX290 CMOS Image Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [26 x i8] c"imx290.author=FRAMOS GmbH\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [71 x i8] c"imx290.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [37 x i8] c"imx290.file=drivers/media/i2c/imx290\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [22 x i8] c"imx290.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx290\00", [25 x i8] zeroinitializer }, align 32
@imx290_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,imx290\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx290_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx290_power_off, ptr @imx290_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx290_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@imx290_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"imx290:947:(&imx290_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@imx290_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 949, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to initialize I2C\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx290_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/imx290.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr = internal global ptr @imx290_probe._entry, section ".printk_index", align 4
@imx290_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 955, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Endpoint node not found\0A\00", [39 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.9 = internal global ptr @imx290_probe._entry.7, section ".printk_index", align 4
@imx290_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 962, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported bus type, should be CSI2\0A\00", [58 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.12 = internal global ptr @imx290_probe._entry.10, section ".printk_index", align 4
@imx290_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 965, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Parsing endpoint node failed\0A\00", [34 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.15 = internal global ptr @imx290_probe._entry.13, section ".printk_index", align 4
@imx290_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 972, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid data lanes: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.18 = internal global ptr @imx290_probe._entry.16, section ".printk_index", align 4
@imx290_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.19, i8 0, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Using %u data lanes\0A\00", [43 x i8] zeroinitializer }, align 32
@imx290_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 980, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"link-frequency property not found in DT\0A\00", [55 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.22 = internal global ptr @imx290_probe._entry.20, section ".printk_index", align 4
@imx290_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 988, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Link frequency of %lld is not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.25 = internal global ptr @imx290_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xclk\00", [27 x i8] zeroinitializer }, align 32
@imx290_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 996, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Could not get xclk\00", [45 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.29 = internal global ptr @imx290_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@imx290_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 1004, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not get xclk frequency\0A\00", [34 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.33 = internal global ptr @imx290_probe._entry.31, section ".printk_index", align 4
@imx290_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 1011, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"External clock frequency %u is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.36 = internal global ptr @imx290_probe._entry.34, section ".printk_index", align 4
@imx290_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 1018, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not set xclk frequency\0A\00", [34 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.39 = internal global ptr @imx290_probe._entry.37, section ".printk_index", align 4
@imx290_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 1024, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get regulators\0A\00", [41 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.42 = internal global ptr @imx290_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@imx290_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 1031, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get reset gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.46 = internal global ptr @imx290_probe._entry.44, section ".printk_index", align 4
@imx290_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&imx290->lock\00", [18 x i8] zeroinitializer }, align 32
@imx290_probe._key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"imx290:1045:(&imx290->ctrls)->_lock\00", [60 x i8] zeroinitializer }, align 32
@imx290_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @imx290_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@imx290_test_pattern_menu = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], [32 x i8] zeroinitializer }, align 32
@imx290_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.3, ptr @.str.4, i32 1072, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Control initialization error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.52 = internal global ptr @imx290_probe._entry.50, section ".printk_index", align 4
@imx290_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @imx290_video_ops, ptr null, ptr null, ptr null, ptr @imx290_pad_ops }, [32 x i8] zeroinitializer }, align 32
@imx290_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@imx290_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.3, ptr @.str.4, i32 1086, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register media entity\0A\00", [63 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.55 = internal global ptr @imx290_probe._entry.53, section ".printk_index", align 4
@imx290_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.3, ptr @.str.4, i32 1092, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.58 = internal global ptr @imx290_probe._entry.56, section ".printk_index", align 4
@imx290_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.3, ptr @.str.4, i32 1099, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not power on the device\0A\00", [33 x i8] zeroinitializer }, align 32
@imx290_probe._entry_ptr.61 = internal global ptr @imx290_probe._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddd\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdddo\00", [26 x i8] zeroinitializer }, align 32
@imx290_formats = internal constant { [2 x %struct.imx290_pixfmt], [16 x i8] } { [2 x %struct.imx290_pixfmt] [%struct.imx290_pixfmt { i32 12303, i8 10 }, %struct.imx290_pixfmt { i32 12306, i8 12 }], [16 x i8] zeroinitializer }, align 32
@imx290_modes_2lanes = internal constant { [2 x %struct.imx290_mode], [48 x i8] } { [2 x %struct.imx290_mode] [%struct.imx290_mode { i32 1920, i32 1080, i32 4400, i8 0, ptr @imx290_1080p_settings, i32 33 }, %struct.imx290_mode { i32 1280, i32 720, i32 6600, i8 1, ptr @imx290_720p_settings, i32 33 }], [48 x i8] zeroinitializer }, align 32
@imx290_modes_4lanes = internal constant { [2 x %struct.imx290_mode], [48 x i8] } { [2 x %struct.imx290_mode] [%struct.imx290_mode { i32 1920, i32 1080, i32 2200, i8 0, ptr @imx290_1080p_settings, i32 33 }, %struct.imx290_mode { i32 1280, i32 720, i32 3300, i8 1, ptr @imx290_720p_settings, i32 33 }], [48 x i8] zeroinitializer }, align 32
@imx290_1080p_settings = internal constant { [33 x %struct.imx290_regval], [60 x i8] } { [33 x %struct.imx290_regval] [%struct.imx290_regval { i16 12295, i8 0 }, %struct.imx290_regval { i16 12346, i8 12 }, %struct.imx290_regval { i16 13332, i8 10 }, %struct.imx290_regval { i16 13426, i8 -128 }, %struct.imx290_regval { i16 13427, i8 7 }, %struct.imx290_regval { i16 13336, i8 56 }, %struct.imx290_regval { i16 13337, i8 4 }, %struct.imx290_regval { i16 12306, i8 100 }, %struct.imx290_regval { i16 12307, i8 0 }, %struct.imx290_regval { i16 12380, i8 24 }, %struct.imx290_regval { i16 12381, i8 3 }, %struct.imx290_regval { i16 12382, i8 32 }, %struct.imx290_regval { i16 12383, i8 1 }, %struct.imx290_regval { i16 12638, i8 26 }, %struct.imx290_regval { i16 12644, i8 26 }, %struct.imx290_regval { i16 13440, i8 73 }, %struct.imx290_regval { i16 13317, i8 16 }, %struct.imx290_regval { i16 13382, i8 87 }, %struct.imx290_regval { i16 13383, i8 0 }, %struct.imx290_regval { i16 13384, i8 55 }, %struct.imx290_regval { i16 13385, i8 0 }, %struct.imx290_regval { i16 13386, i8 31 }, %struct.imx290_regval { i16 13387, i8 0 }, %struct.imx290_regval { i16 13388, i8 31 }, %struct.imx290_regval { i16 13389, i8 0 }, %struct.imx290_regval { i16 13390, i8 31 }, %struct.imx290_regval { i16 13391, i8 0 }, %struct.imx290_regval { i16 13392, i8 119 }, %struct.imx290_regval { i16 13393, i8 0 }, %struct.imx290_regval { i16 13394, i8 31 }, %struct.imx290_regval { i16 13395, i8 0 }, %struct.imx290_regval { i16 13396, i8 23 }, %struct.imx290_regval { i16 13397, i8 0 }], [60 x i8] zeroinitializer }, align 32
@imx290_720p_settings = internal constant { [33 x %struct.imx290_regval], [60 x i8] } { [33 x %struct.imx290_regval] [%struct.imx290_regval { i16 12295, i8 16 }, %struct.imx290_regval { i16 12346, i8 6 }, %struct.imx290_regval { i16 13332, i8 4 }, %struct.imx290_regval { i16 13426, i8 0 }, %struct.imx290_regval { i16 13427, i8 5 }, %struct.imx290_regval { i16 13336, i8 -48 }, %struct.imx290_regval { i16 13337, i8 2 }, %struct.imx290_regval { i16 12306, i8 100 }, %struct.imx290_regval { i16 12307, i8 0 }, %struct.imx290_regval { i16 12380, i8 32 }, %struct.imx290_regval { i16 12381, i8 0 }, %struct.imx290_regval { i16 12382, i8 32 }, %struct.imx290_regval { i16 12383, i8 1 }, %struct.imx290_regval { i16 12638, i8 26 }, %struct.imx290_regval { i16 12644, i8 26 }, %struct.imx290_regval { i16 13440, i8 73 }, %struct.imx290_regval { i16 13317, i8 16 }, %struct.imx290_regval { i16 13382, i8 79 }, %struct.imx290_regval { i16 13383, i8 0 }, %struct.imx290_regval { i16 13384, i8 47 }, %struct.imx290_regval { i16 13385, i8 0 }, %struct.imx290_regval { i16 13386, i8 23 }, %struct.imx290_regval { i16 13387, i8 0 }, %struct.imx290_regval { i16 13388, i8 23 }, %struct.imx290_regval { i16 13389, i8 0 }, %struct.imx290_regval { i16 13390, i8 23 }, %struct.imx290_regval { i16 13391, i8 0 }, %struct.imx290_regval { i16 13392, i8 87 }, %struct.imx290_regval { i16 13393, i8 0 }, %struct.imx290_regval { i16 13394, i8 23 }, %struct.imx290_regval { i16 13395, i8 0 }, %struct.imx290_regval { i16 13396, i8 23 }, %struct.imx290_regval { i16 13397, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@imx290_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to write gain\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx290_set_gain\00", [16 x i8] zeroinitializer }, align 32
@imx290_set_gain._entry_ptr = internal global ptr @imx290_set_gain._entry, section ".printk_index", align 4
@imx290_write_buffered_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 422, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error setting hold register\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"imx290_write_buffered_reg\00", [38 x i8] zeroinitializer }, align 32
@imx290_write_buffered_reg._entry_ptr = internal global ptr @imx290_write_buffered_reg._entry, section ".printk_index", align 4
@imx290_write_buffered_reg._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error writing buffered registers\0A\00", [62 x i8] zeroinitializer }, align 32
@imx290_write_buffered_reg._entry_ptr.72 = internal global ptr @imx290_write_buffered_reg._entry.70, section ".printk_index", align 4
@imx290_write_buffered_reg._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 437, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@imx290_write_buffered_reg._entry_ptr.74 = internal global ptr @imx290_write_buffered_reg._entry.73, section ".printk_index", align 4
@imx290_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I2C write failed for addr: %x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx290_write_reg\00", [47 x i8] zeroinitializer }, align 32
@imx290_write_reg._entry_ptr = internal global ptr @imx290_write_reg._entry, section ".printk_index", align 4
@imx290_link_freq_2lanes = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 445500000, i64 297000000], [16 x i8] zeroinitializer }, align 32
@imx290_link_freq_4lanes = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 222750000, i64 148500000], [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sequence Pattern 1\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Horizontal Color-bar Chart\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Vertical Color-bar Chart\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sequence Pattern 2\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Gradation Pattern 1\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Gradation Pattern 2\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"000/555h Toggle Pattern\00", [40 x i8] zeroinitializer }, align 32
@imx290_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx290_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx290_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx290_entity_init_cfg, ptr @imx290_enum_mbus_code, ptr @imx290_enum_frame_size, ptr null, ptr @imx290_get_fmt, ptr @imx290_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx290_set_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 773, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Start stream failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx290_set_stream\00", [46 x i8] zeroinitializer }, align 32
@imx290_set_stream._entry_ptr = internal global ptr @imx290_set_stream._entry, section ".printk_index", align 4
@imx290_global_init_settings = internal constant { [57 x %struct.imx290_regval], [60 x i8] } { [57 x %struct.imx290_regval] [%struct.imx290_regval { i16 12295, i8 0 }, %struct.imx290_regval { i16 12312, i8 101 }, %struct.imx290_regval { i16 12313, i8 4 }, %struct.imx290_regval { i16 12314, i8 0 }, %struct.imx290_regval { i16 13380, i8 32 }, %struct.imx290_regval { i16 13381, i8 37 }, %struct.imx290_regval { i16 12346, i8 12 }, %struct.imx290_regval { i16 12352, i8 0 }, %struct.imx290_regval { i16 12353, i8 0 }, %struct.imx290_regval { i16 12348, i8 0 }, %struct.imx290_regval { i16 12349, i8 0 }, %struct.imx290_regval { i16 12354, i8 -100 }, %struct.imx290_regval { i16 12355, i8 7 }, %struct.imx290_regval { i16 12350, i8 73 }, %struct.imx290_regval { i16 12351, i8 4 }, %struct.imx290_regval { i16 12363, i8 10 }, %struct.imx290_regval { i16 12303, i8 0 }, %struct.imx290_regval { i16 12304, i8 33 }, %struct.imx290_regval { i16 12306, i8 100 }, %struct.imx290_regval { i16 12310, i8 9 }, %struct.imx290_regval { i16 12400, i8 2 }, %struct.imx290_regval { i16 12401, i8 17 }, %struct.imx290_regval { i16 12443, i8 16 }, %struct.imx290_regval { i16 12444, i8 34 }, %struct.imx290_regval { i16 12450, i8 2 }, %struct.imx290_regval { i16 12454, i8 32 }, %struct.imx290_regval { i16 12456, i8 32 }, %struct.imx290_regval { i16 12458, i8 32 }, %struct.imx290_regval { i16 12460, i8 32 }, %struct.imx290_regval { i16 12464, i8 67 }, %struct.imx290_regval { i16 12569, i8 -98 }, %struct.imx290_regval { i16 12572, i8 30 }, %struct.imx290_regval { i16 12574, i8 8 }, %struct.imx290_regval { i16 12584, i8 5 }, %struct.imx290_regval { i16 12605, i8 -125 }, %struct.imx290_regval { i16 12624, i8 3 }, %struct.imx290_regval { i16 12670, i8 0 }, %struct.imx290_regval { i16 12984, i8 80 }, %struct.imx290_regval { i16 12985, i8 16 }, %struct.imx290_regval { i16 12986, i8 0 }, %struct.imx290_regval { i16 12987, i8 4 }, %struct.imx290_regval { i16 13000, i8 80 }, %struct.imx290_regval { i16 13001, i8 16 }, %struct.imx290_regval { i16 13002, i8 0 }, %struct.imx290_regval { i16 13003, i8 4 }, %struct.imx290_regval { i16 13100, i8 -45 }, %struct.imx290_regval { i16 13101, i8 16 }, %struct.imx290_regval { i16 13102, i8 13 }, %struct.imx290_regval { i16 13144, i8 6 }, %struct.imx290_regval { i16 13145, i8 -31 }, %struct.imx290_regval { i16 13146, i8 17 }, %struct.imx290_regval { i16 13152, i8 30 }, %struct.imx290_regval { i16 13153, i8 97 }, %struct.imx290_regval { i16 13154, i8 16 }, %struct.imx290_regval { i16 13232, i8 80 }, %struct.imx290_regval { i16 13234, i8 26 }, %struct.imx290_regval { i16 13235, i8 4 }], [60 x i8] zeroinitializer }, align 32
@imx290_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 722, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not set init registers\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx290_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@imx290_start_streaming._entry_ptr = internal global ptr @imx290_start_streaming._entry, section ".printk_index", align 4
@imx290_start_streaming._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.4, i32 729, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not set frame format\0A\00", [36 x i8] zeroinitializer }, align 32
@imx290_start_streaming._entry_ptr.91 = internal global ptr @imx290_start_streaming._entry.89, section ".printk_index", align 4
@imx290_start_streaming._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.4, i32 737, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not set current mode\0A\00", [36 x i8] zeroinitializer }, align 32
@imx290_start_streaming._entry_ptr.94 = internal global ptr @imx290_start_streaming._entry.92, section ".printk_index", align 4
@imx290_start_streaming._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.4, i32 747, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not sync v4l2 controls\0A\00", [34 x i8] zeroinitializer }, align 32
@imx290_start_streaming._entry_ptr.97 = internal global ptr @imx290_start_streaming._entry.95, section ".printk_index", align 4
@imx290_10bit_settings = internal constant { [9 x %struct.imx290_regval], [60 x i8] } { [9 x %struct.imx290_regval] [%struct.imx290_regval { i16 12293, i8 0 }, %struct.imx290_regval { i16 12358, i8 0 }, %struct.imx290_regval { i16 12585, i8 29 }, %struct.imx290_regval { i16 12668, i8 18 }, %struct.imx290_regval { i16 12780, i8 55 }, %struct.imx290_regval { i16 13377, i8 10 }, %struct.imx290_regval { i16 13378, i8 10 }, %struct.imx290_regval { i16 12298, i8 60 }, %struct.imx290_regval { i16 12299, i8 0 }], [60 x i8] zeroinitializer }, align 32
@imx290_write_current_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 672, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not set format registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imx290_write_current_format\00", [36 x i8] zeroinitializer }, align 32
@imx290_write_current_format._entry_ptr = internal global ptr @imx290_write_current_format._entry, section ".printk_index", align 4
@imx290_12bit_settings = internal constant { [9 x %struct.imx290_regval], [60 x i8] } { [9 x %struct.imx290_regval] [%struct.imx290_regval { i16 12293, i8 1 }, %struct.imx290_regval { i16 12358, i8 1 }, %struct.imx290_regval { i16 12585, i8 0 }, %struct.imx290_regval { i16 12668, i8 0 }, %struct.imx290_regval { i16 12780, i8 14 }, %struct.imx290_regval { i16 13377, i8 12 }, %struct.imx290_regval { i16 13378, i8 12 }, %struct.imx290_regval { i16 12298, i8 -16 }, %struct.imx290_regval { i16 12299, i8 0 }], [60 x i8] zeroinitializer }, align 32
@imx290_write_current_format._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 681, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@imx290_write_current_format._entry_ptr.101 = internal global ptr @imx290_write_current_format._entry.100, section ".printk_index", align 4
@imx290_write_current_format._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.99, ptr @.str.4, i32 686, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown pixel format\0A\00", [42 x i8] zeroinitializer }, align 32
@imx290_write_current_format._entry_ptr.104 = internal global ptr @imx290_write_current_format._entry.102, section ".printk_index", align 4
@imx290_set_hmax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 699, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error setting HMAX register\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx290_set_hmax\00", [16 x i8] zeroinitializer }, align 32
@imx290_set_hmax._entry_ptr = internal global ptr @imx290_set_hmax._entry, section ".printk_index", align 4
@imx290_set_hmax._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 705, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@imx290_set_hmax._entry_ptr.108 = internal global ptr @imx290_set_hmax._entry.107, section ".printk_index", align 4
@imx290_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.4, i32 849, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx290_power_on\00", [16 x i8] zeroinitializer }, align 32
@imx290_power_on._entry_ptr = internal global ptr @imx290_power_on._entry, section ".printk_index", align 4
@imx290_power_on._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.4, i32 855, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@imx290_power_on._entry_ptr.113 = internal global ptr @imx290_power_on._entry.111, section ".printk_index", align 4
@imx290_set_data_lanes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 816, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Lane configuration not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx290_set_data_lanes\00", [42 x i8] zeroinitializer }, align 32
@imx290_set_data_lanes._entry_ptr = internal global ptr @imx290_set_data_lanes._entry, section ".printk_index", align 4
@imx290_set_data_lanes._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.4, i32 823, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error setting Physical Lane number register\0A\00", [51 x i8] zeroinitializer }, align 32
@imx290_set_data_lanes._entry_ptr.118 = internal global ptr @imx290_set_data_lanes._entry.116, section ".printk_index", align 4
@imx290_set_data_lanes._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.4, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error setting CSI Lane mode register\0A\00", [58 x i8] zeroinitializer }, align 32
@imx290_set_data_lanes._entry_ptr.121 = internal global ptr @imx290_set_data_lanes._entry.119, section ".printk_index", align 4
@imx290_set_data_lanes._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.115, ptr @.str.4, i32 835, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error setting FR/FDG SEL register\0A\00", [61 x i8] zeroinitializer }, align 32
@imx290_set_data_lanes._entry_ptr.124 = internal global ptr @imx290_set_data_lanes._entry.122, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 9963795, i64 10422531]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 12303, i64 12306]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 12303, i64 12306]
@___asan_gen_.130 = private unnamed_addr constant [18 x i8] c"imx290_i2c_driver\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1147, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1151, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"imx290_of_match\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1141, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"imx290_pm_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 882, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"imx290_regmap_config\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 97, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 947, i32 19 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 949, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 955, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 962, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 965, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 972, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 977, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 980, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 988, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 994, i32 35 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 996, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1001, i32 50 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1004, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1010, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1018, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1024, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1028, i32 50 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1031, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1036, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1045, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [16 x i8] c"imx290_ctrl_ops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 514, i32 35 }
@___asan_gen_.268 = private unnamed_addr constant [25 x i8] c"imx290_test_pattern_menu\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 103, i32 27 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1071, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [18 x i8] c"imx290_subdev_ops\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 898, i32 37 }
@___asan_gen_.280 = private unnamed_addr constant [25 x i8] c"imx290_subdev_entity_ops\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 903, i32 45 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1086, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1092, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1099, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 43, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 44, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 45, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [15 x i8] c"imx290_formats\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 92, i32 35 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c"imx290_modes_2lanes\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 307, i32 33 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c"imx290_modes_4lanes\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 326, i32 33 }
@___asan_gen_.319 = private unnamed_addr constant [22 x i8] c"imx290_1080p_settings\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 174, i32 35 }
@___asan_gen_.322 = private unnamed_addr constant [21 x i8] c"imx290_720p_settings\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 212, i32 35 }
@___asan_gen_.326 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 998, i32 6 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 450, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 422, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 430, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 437, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 388, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant [24 x i8] c"imx290_link_freq_2lanes\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 277, i32 18 }
@___asan_gen_.367 = private unnamed_addr constant [24 x i8] c"imx290_link_freq_4lanes\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 281, i32 18 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 104, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 105, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 106, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 107, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 108, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 109, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 110, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 111, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c"imx290_video_ops\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 886, i32 43 }
@___asan_gen_.397 = private unnamed_addr constant [15 x i8] c"imx290_pad_ops\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 890, i32 41 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 773, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant [28 x i8] c"imx290_global_init_settings\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 114, i32 35 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 722, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 729, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 737, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 747, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant [22 x i8] c"imx290_10bit_settings\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 250, i32 35 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 672, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant [22 x i8] c"imx290_12bit_settings\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 262, i32 35 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 681, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 686, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 699, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 705, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 849, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 855, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 816, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 823, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 829, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.515 = private constant [30 x i8] c"../drivers/media/i2c/imx290.c\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 835, i32 3 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_imx290_i2c_driver_exit, ptr @__initcall__kmod_imx290__295_1157_imx290_i2c_driver_init6, ptr @imx290_i2c_driver_exit, ptr @imx290_power_on._entry, ptr @imx290_power_on._entry.111, ptr @imx290_power_on._entry_ptr, ptr @imx290_power_on._entry_ptr.113, ptr @imx290_probe._entry, ptr @imx290_probe._entry.10, ptr @imx290_probe._entry.13, ptr @imx290_probe._entry.16, ptr @imx290_probe._entry.20, ptr @imx290_probe._entry.23, ptr @imx290_probe._entry.27, ptr @imx290_probe._entry.31, ptr @imx290_probe._entry.34, ptr @imx290_probe._entry.37, ptr @imx290_probe._entry.40, ptr @imx290_probe._entry.44, ptr @imx290_probe._entry.50, ptr @imx290_probe._entry.53, ptr @imx290_probe._entry.56, ptr @imx290_probe._entry.59, ptr @imx290_probe._entry.7, ptr @imx290_probe._entry_ptr, ptr @imx290_probe._entry_ptr.12, ptr @imx290_probe._entry_ptr.15, ptr @imx290_probe._entry_ptr.18, ptr @imx290_probe._entry_ptr.22, ptr @imx290_probe._entry_ptr.25, ptr @imx290_probe._entry_ptr.29, ptr @imx290_probe._entry_ptr.33, ptr @imx290_probe._entry_ptr.36, ptr @imx290_probe._entry_ptr.39, ptr @imx290_probe._entry_ptr.42, ptr @imx290_probe._entry_ptr.46, ptr @imx290_probe._entry_ptr.52, ptr @imx290_probe._entry_ptr.55, ptr @imx290_probe._entry_ptr.58, ptr @imx290_probe._entry_ptr.61, ptr @imx290_probe._entry_ptr.9, ptr @imx290_set_data_lanes._entry, ptr @imx290_set_data_lanes._entry.116, ptr @imx290_set_data_lanes._entry.119, ptr @imx290_set_data_lanes._entry.122, ptr @imx290_set_data_lanes._entry_ptr, ptr @imx290_set_data_lanes._entry_ptr.118, ptr @imx290_set_data_lanes._entry_ptr.121, ptr @imx290_set_data_lanes._entry_ptr.124, ptr @imx290_set_gain._entry, ptr @imx290_set_gain._entry_ptr, ptr @imx290_set_hmax._entry, ptr @imx290_set_hmax._entry.107, ptr @imx290_set_hmax._entry_ptr, ptr @imx290_set_hmax._entry_ptr.108, ptr @imx290_set_stream._entry, ptr @imx290_set_stream._entry_ptr, ptr @imx290_start_streaming._entry, ptr @imx290_start_streaming._entry.89, ptr @imx290_start_streaming._entry.92, ptr @imx290_start_streaming._entry.95, ptr @imx290_start_streaming._entry_ptr, ptr @imx290_start_streaming._entry_ptr.91, ptr @imx290_start_streaming._entry_ptr.94, ptr @imx290_start_streaming._entry_ptr.97, ptr @imx290_write_buffered_reg._entry, ptr @imx290_write_buffered_reg._entry.70, ptr @imx290_write_buffered_reg._entry.73, ptr @imx290_write_buffered_reg._entry_ptr, ptr @imx290_write_buffered_reg._entry_ptr.72, ptr @imx290_write_buffered_reg._entry_ptr.74, ptr @imx290_write_current_format._entry, ptr @imx290_write_current_format._entry.100, ptr @imx290_write_current_format._entry.102, ptr @imx290_write_current_format._entry_ptr, ptr @imx290_write_current_format._entry_ptr.101, ptr @imx290_write_current_format._entry_ptr.104, ptr @imx290_write_reg._entry, ptr @imx290_write_reg._entry_ptr, ptr @imx290_i2c_driver, ptr @.str, ptr @imx290_of_match, ptr @imx290_pm_ops, ptr @imx290_probe._key, ptr @imx290_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @imx290_probe.__key, ptr @.str.47, ptr @imx290_probe._key.48, ptr @.str.49, ptr @imx290_ctrl_ops, ptr @imx290_test_pattern_menu, ptr @.str.51, ptr @imx290_subdev_ops, ptr @imx290_subdev_entity_ops, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @imx290_formats, ptr @imx290_modes_2lanes, ptr @imx290_modes_4lanes, ptr @imx290_1080p_settings, ptr @imx290_720p_settings, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.75, ptr @.str.76, ptr @imx290_link_freq_2lanes, ptr @imx290_link_freq_4lanes, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @imx290_video_ops, ptr @imx290_pad_ops, ptr @.str.85, ptr @.str.86, ptr @imx290_global_init_settings, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @imx290_10bit_settings, ptr @.str.98, ptr @.str.99, ptr @imx290_12bit_settings, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.123], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_test_pattern_menu to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_modes_2lanes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_modes_4lanes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_1080p_settings to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_720p_settings to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_write_buffered_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_write_buffered_reg._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_write_buffered_reg._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_link_freq_2lanes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_link_freq_4lanes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_set_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_global_init_settings to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_start_streaming._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_start_streaming._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_start_streaming._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_10bit_settings to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_write_current_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_12bit_settings to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_write_current_format._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_write_current_format._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_set_hmax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_set_hmax._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_power_on._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_set_data_lanes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_set_data_lanes._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_set_data_lanes._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx290_set_data_lanes._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @imx290_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx290_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @imx290_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  %lock = getelementptr i8, ptr %1, i32 512
  tail call void @mutex_destroy(ptr noundef %lock) #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i15 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i15, align 4
  %xclk.i = getelementptr i8, ptr %11, i32 -12
  %12 = ptrtoint ptr %xclk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xclk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %rst_gpio.i = getelementptr i8, ptr %11, i32 316
  %14 = ptrtoint ptr %rst_gpio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rst_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #7
  %supplies.i = getelementptr i8, ptr %11, i32 280
  %call2.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %17, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_probe(ptr noundef %client) #2 align 64 {
entry:
  %fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %ep = alloca %struct.v4l2_fwnode_endpoint, align 4
  %xclk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep) #7
  %0 = call ptr @memset(ptr %ep, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xclk_freq) #7
  %3 = ptrtoint ptr %xclk_freq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %xclk_freq, align 4, !annotation !269
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 620, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @imx290_regmap_config, ptr noundef nonnull @imx290_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @dev_fwnode(ptr noundef %dev1) #7
  %call9 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call8, ptr noundef null) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call9, ptr noundef nonnull %ep) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call9) #7
  %6 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call16, label %do.end25 [
    i32 -6, label %do.end20
    i32 0, label %if.end27
  ]

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %free_err

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  br label %free_err

if.end27:                                         ; preds = %if.end15
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep, i32 0, i32 2, i32 2, i32 3
  %7 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_data_lanes, align 1
  %nlanes = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %nlanes to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %nlanes, align 4
  %10 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %8, label %do.end38 [
    i8 2, label %if.end27.do.body42_crit_edge
    i8 4, label %if.end27.do.body42_crit_edge326
  ]

if.end27.do.body42_crit_edge326:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

if.end27.do.body42_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

do.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %conv) #10
  br label %free_err

do.body42:                                        ; preds = %if.end27.do.body42_crit_edge, %if.end27.do.body42_crit_edge326
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx290_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx290_probe, %if.then48)) #7
          to label %do.end53 [label %if.then48], !srcloc !270

if.then48:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %nlanes to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nlanes, align 4
  %conv50 = zext i8 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx290_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %conv50) #7
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body42
  %nr_of_link_frequencies = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep, i32 0, i32 4
  %13 = ptrtoint ptr %nr_of_link_frequencies to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_of_link_frequencies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool54.not = icmp eq i32 %14, 0
  br i1 %tobool54.not, label %do.end58, label %for.body4.lr.ph.i

do.end58:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #10
  br label %free_err

for.body4.lr.ph.i:                                ; preds = %do.end53
  %15 = ptrtoint ptr %nlanes to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nlanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.i.i = icmp eq i8 %16, 2
  %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i.i = select i1 %cmp.i.i, ptr @imx290_link_freq_2lanes, ptr @imx290_link_freq_4lanes
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep, i32 0, i32 3
  %17 = ptrtoint ptr %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i.i, align 8
  %19 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %j.030.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.inc.i.for.body4.i_crit_edge ]
  %arrayidx5.i = getelementptr i64, ptr %20, i32 %j.030.i
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %22)
  %cmp6.i = icmp eq i64 %18, %22
  br i1 %cmp6.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body4.i
  %inc.i = add nuw i32 %j.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.inc.i.imx290_check_link_freqs.exit_crit_edge, label %for.inc.i.for.body4.i_crit_edge

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i

for.inc.i.imx290_check_link_freqs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_check_link_freqs.exit

for.end.i:                                        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.030.i, i32 %14)
  %cmp8.i = icmp eq i32 %j.030.i, %14
  br i1 %cmp8.i, label %for.end.i.imx290_check_link_freqs.exit_crit_edge, label %for.body4.lr.ph.1.i

for.end.i.imx290_check_link_freqs.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_check_link_freqs.exit

for.body4.lr.ph.1.i:                              ; preds = %for.end.i
  %23 = select i1 %cmp.i.i, i64 297000000, i64 148500000
  br label %for.body4.1.i

for.body4.1.i:                                    ; preds = %for.inc.1.i.for.body4.1.i_crit_edge, %for.body4.lr.ph.1.i
  %j.030.1.i = phi i32 [ 0, %for.body4.lr.ph.1.i ], [ %inc.1.i, %for.inc.1.i.for.body4.1.i_crit_edge ]
  %arrayidx5.1.i = getelementptr i64, ptr %20, i32 %j.030.1.i
  %24 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx5.1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp6.1.i = icmp eq i64 %23, %25
  br i1 %cmp6.1.i, label %for.end.1.i, label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.body4.1.i
  %inc.1.i = add nuw i32 %j.030.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, %14
  br i1 %exitcond.1.not.i, label %for.inc.1.i.imx290_check_link_freqs.exit_crit_edge, label %for.inc.1.i.for.body4.1.i_crit_edge

for.inc.1.i.for.body4.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.1.i

for.inc.1.i.imx290_check_link_freqs.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_check_link_freqs.exit

for.end.1.i:                                      ; preds = %for.body4.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.030.1.i, i32 %14)
  %cmp8.1.i = icmp eq i32 %j.030.1.i, %14
  br i1 %cmp8.1.i, label %for.end.1.i.imx290_check_link_freqs.exit_crit_edge, label %for.end.1.i.if.end66_crit_edge

for.end.1.i.if.end66_crit_edge:                   ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

for.end.1.i.imx290_check_link_freqs.exit_crit_edge: ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_check_link_freqs.exit

imx290_check_link_freqs.exit:                     ; preds = %for.end.1.i.imx290_check_link_freqs.exit_crit_edge, %for.inc.1.i.imx290_check_link_freqs.exit_crit_edge, %for.end.i.imx290_check_link_freqs.exit_crit_edge, %for.inc.i.imx290_check_link_freqs.exit_crit_edge
  %i.034.lcssa.i = phi i32 [ 0, %for.end.i.imx290_check_link_freqs.exit_crit_edge ], [ 1, %for.end.1.i.imx290_check_link_freqs.exit_crit_edge ], [ 1, %for.inc.1.i.imx290_check_link_freqs.exit_crit_edge ], [ 0, %for.inc.i.imx290_check_link_freqs.exit_crit_edge ]
  %arrayidx10.i = getelementptr i64, ptr %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i.i, i32 %i.034.lcssa.i
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool61.not = icmp eq i64 %27, 0
  br i1 %tobool61.not, label %imx290_check_link_freqs.exit.if.end66_crit_edge, label %do.end65

imx290_check_link_freqs.exit.if.end66_crit_edge:  ; preds = %imx290_check_link_freqs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end65:                                         ; preds = %imx290_check_link_freqs.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i64 noundef %27) #10
  br label %free_err

if.end66:                                         ; preds = %imx290_check_link_freqs.exit.if.end66_crit_edge, %for.end.1.i.if.end66_crit_edge
  %call67 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.26) #7
  %xclk = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call67, ptr %xclk, align 4
  %cmp.i297 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i297, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #10
  %29 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xclk, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %free_err

if.end76:                                         ; preds = %if.end66
  %call77 = call ptr @dev_fwnode(ptr noundef %dev1) #7
  %call.i298 = call i32 @fwnode_property_read_u32_array(ptr noundef %call77, ptr noundef nonnull @.str.30, ptr noundef nonnull %xclk_freq, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298)
  %tobool79.not = icmp eq i32 %call.i298, 0
  br i1 %tobool79.not, label %if.end84, label %do.end83

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #10
  br label %free_err

if.end84:                                         ; preds = %if.end76
  %32 = ptrtoint ptr %xclk_freq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37125000, i32 %33)
  %cmp85.not = icmp eq i32 %33, 37125000
  br i1 %cmp85.not, label %if.end91, label %do.end90

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %33) #10
  br label %free_err

if.end91:                                         ; preds = %if.end84
  %34 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xclk, align 4
  %call93 = call i32 @clk_set_rate(ptr noundef %35, i32 noundef 37125000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end99, label %do.end98

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #10
  br label %free_err

if.end99:                                         ; preds = %if.end91
  %arrayidx1.i = getelementptr %struct.imx290, ptr %call.i, i32 0, i32 9, i32 0
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.62, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.imx290, ptr %call.i, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.63, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.imx290, ptr %call.i, i32 0, i32 9, i32 2
  %38 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.64, ptr %arrayidx1.2.i, align 4
  %call.i299 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i299)
  %cmp101 = icmp slt i32 %call.i299, 0
  br i1 %cmp101, label %do.end106, label %if.end107

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #10
  br label %free_err

if.end107:                                        ; preds = %if.end99
  %call108 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef 7) #7
  %rst_gpio = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 10
  %39 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call108, ptr %rst_gpio, align 4
  %cmp.i300 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300, label %do.end114, label %do.body118

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45) #10
  %40 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rst_gpio, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %free_err

do.body118:                                       ; preds = %if.end107
  %lock = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 14
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.47, ptr noundef nonnull @imx290_probe.__key) #7
  %sd = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i) #7
  %43 = getelementptr inbounds i8, ptr %fmt.i, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 84)
  %45 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %fmt.i, align 4
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2
  %46 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1920, ptr %format.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1080, ptr %height.i, align 4
  %call.i301 = call i32 @imx290_set_fmt(ptr noundef %sd, ptr noundef null, ptr noundef nonnull %fmt.i) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #7
  %ctrls = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 11
  %call123 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 4, ptr noundef nonnull @imx290_probe._key.48, ptr noundef nonnull @.str.49) #7
  %call125 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @imx290_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 72, i64 noundef 1, i64 noundef 0) #7
  %48 = ptrtoint ptr %nlanes to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %nlanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %49)
  %cmp.i302 = icmp eq i8 %49, 2
  %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i = select i1 %cmp.i302, ptr @imx290_link_freq_2lanes, ptr @imx290_link_freq_4lanes
  %call130 = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrls, ptr noundef nonnull @imx290_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i) #7
  %link_freq = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 12
  %50 = ptrtoint ptr %link_freq to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call130, ptr %link_freq, align 4
  %tobool132.not = icmp eq ptr %call130, null
  br i1 %tobool132.not, label %do.body118.if.end135_crit_edge, label %if.then133

do.body118.if.end135_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then133:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call130, i32 0, i32 20
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %or = or i32 %52, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %do.body118.if.end135_crit_edge
  %current_mode.i.i.i = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 8
  %53 = ptrtoint ptr %current_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %current_mode.i.i.i, align 4
  %link_freq_index.i.i.i = getelementptr inbounds %struct.imx290_mode, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %link_freq_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %link_freq_index.i.i.i, align 4
  %57 = ptrtoint ptr %nlanes to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nlanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp.i.i.i = icmp eq i8 %58, 2
  %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i.i.i = select i1 %cmp.i.i.i, ptr @imx290_link_freq_2lanes, ptr @imx290_link_freq_4lanes
  %conv.i.i = zext i8 %56 to i32
  %add.ptr.i.i = getelementptr i64, ptr %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i.i.i, i32 %conv.i.i
  %59 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %add.ptr.i.i, align 8
  %mul.i = shl i64 %60, 1
  %conv.i = zext i8 %58 to i64
  %mul2.i = mul i64 %mul.i, %conv.i
  %bpp.i = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 4
  %61 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bpp.i, align 1
  %conv3.i = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2.i)
  %cmp171.i = icmp ult i64 %mul2.i, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !271

if.then175.i:                                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i = trunc i64 %mul2.i to i32
  %div179.i = udiv i32 %conv176.i, %conv3.i
  %conv180.i = zext i32 %div179.i to i64
  br label %imx290_calc_pixel_rate.exit

if.else181.i:                                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %63 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv3.i, i64 %mul2.i) #11, !srcloc !272
  %asmresult1.i.i = extractvalue { i64, i64 } %63, 1
  br label %imx290_calc_pixel_rate.exit

imx290_calc_pixel_rate.exit:                      ; preds = %if.else181.i, %if.then175.i
  %pixel_rate.0.i = phi i64 [ %conv180.i, %if.then175.i ], [ %asmresult1.i.i, %if.else181.i ]
  %call138 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @imx290_ctrl_ops, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef %pixel_rate.0.i) #7
  %pixel_rate = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 13
  %64 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call138, ptr %pixel_rate, align 4
  %call140 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls, ptr noundef nonnull @imx290_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 7, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @imx290_test_pattern_menu) #7
  %ctrl_handler = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 5, i32 8
  %65 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 11, i32 9
  %66 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool144.not = icmp eq i32 %67, 0
  br i1 %tobool144.not, label %if.end153, label %do.end148

do.end148:                                        ; preds = %imx290_calc_pixel_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %67) #10
  %68 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %error, align 4
  br label %free_ctrl

if.end153:                                        ; preds = %imx290_calc_pixel_rate.exit
  call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @imx290_subdev_ops) #7
  %flags156 = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 5, i32 4
  %70 = ptrtoint ptr %flags156 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags156, align 4
  %or157 = or i32 %71, 4
  store i32 %or157, ptr %flags156, align 4
  %dev160 = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 5, i32 14
  %72 = ptrtoint ptr %dev160 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %dev1, ptr %dev160, align 4
  %ops = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 5, i32 0, i32 11
  %73 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @imx290_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  %74 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 6
  %flags164 = getelementptr inbounds %struct.imx290, ptr %call.i, i32 0, i32 6, i32 4
  %75 = ptrtoint ptr %flags164 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %flags164, align 4
  %call168 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %do.end174, label %if.end175

do.end174:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54) #10
  br label %free_ctrl

if.end175:                                        ; preds = %if.end153
  %call177 = call i32 @v4l2_async_register_subdev(ptr noundef %sd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %do.end183, label %if.end184

do.end183:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57) #10
  br label %free_ctrl

if.end184:                                        ; preds = %if.end175
  %call185 = call i32 @imx290_power_on(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %do.end191, label %if.end192

do.end191:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60) #10
  br label %free_ctrl

if.end192:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  %call.i304 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i305 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 0) #7
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %ep) #7
  br label %cleanup

free_ctrl:                                        ; preds = %do.end191, %do.end183, %do.end174, %do.end148
  %ret.1 = phi i32 [ %69, %do.end148 ], [ %call168, %do.end174 ], [ %call177, %do.end183 ], [ %call185, %do.end191 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  call void @mutex_destroy(ptr noundef %lock) #7
  br label %free_err

free_err:                                         ; preds = %free_ctrl, %do.end114, %do.end106, %do.end98, %do.end90, %do.end83, %do.end73, %do.end65, %do.end58, %do.end38, %do.end25, %do.end20
  %ret.2 = phi i32 [ -6, %do.end20 ], [ %call16, %do.end25 ], [ -22, %do.end38 ], [ -22, %do.end65 ], [ %31, %do.end73 ], [ %call.i298, %do.end83 ], [ -22, %do.end90 ], [ %call93, %do.end98 ], [ %call.i299, %do.end106 ], [ %42, %do.end114 ], [ %ret.1, %free_ctrl ], [ -22, %do.end58 ]
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %ep) #7
  br label %cleanup

cleanup:                                          ; preds = %free_err, %if.end192, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.2, %free_err ], [ 0, %if.end192 ], [ -22, %do.end14 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xclk_freq) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep) #7
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_power_off(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %xclk = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xclk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %rst_gpio = getelementptr i8, ptr %1, i32 316
  %4 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #7
  %supplies = getelementptr i8, ptr %1, i32 280
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_entity_init_cfg(ptr noundef %subdev, ptr noundef readonly %sd_state) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #7
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
  %call = call i32 @imx290_set_fmt(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef nonnull %fmt)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_power_on(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %xclk = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xclk, align 4
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
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.109) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %supplies = getelementptr i8, ptr %1, i32 280
  %call3 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.112) #10
  %4 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #7
  %rst_gpio = getelementptr i8, ptr %1, i32 316
  %6 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 31000, i32 noundef 2) #7
  %nlanes.i = getelementptr i8, ptr %1, i32 -4
  %8 = ptrtoint ptr %nlanes.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nlanes.i, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %9, label %if.end10.exit.sink.split.i_crit_edge [
    i8 2, label %if.end10.sw.epilog.i_crit_edge
    i8 4, label %sw.bb1.i
  ]

if.end10.sw.epilog.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end10.exit.sink.split.i_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

sw.bb1.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end10.sw.epilog.i_crit_edge
  %laneval.0.i = phi i32 [ 3, %sw.bb1.i ], [ 1, %if.end10.sw.epilog.i_crit_edge ]
  %frsel.0.i = phi i32 [ 1, %sw.bb1.i ], [ 2, %if.end10.sw.epilog.i_crit_edge ]
  %regmap.i.i = getelementptr i8, ptr %1, i32 -8
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 13319, i32 noundef %laneval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i23, label %sw.epilog.i.exit.sink.split.sink.split.i_crit_edge

sw.epilog.i.exit.sink.split.sink.split.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.sink.split.i

if.end.i23:                                       ; preds = %sw.epilog.i
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %call.i3.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 13379, i32 noundef %laneval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %if.end15.i, label %if.end.i23.exit.sink.split.sink.split.i_crit_edge

if.end.i23.exit.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.sink.split.i

if.end15.i:                                       ; preds = %if.end.i23
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %call.i9.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 12297, i32 noundef %frsel.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %if.end15.i.cleanup_crit_edge, label %if.end15.i.exit.sink.split.sink.split.i_crit_edge

if.end15.i.exit.sink.split.sink.split.i_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.sink.split.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

exit.sink.split.sink.split.i:                     ; preds = %if.end15.i.exit.sink.split.sink.split.i_crit_edge, %if.end.i23.exit.sink.split.sink.split.i_crit_edge, %sw.epilog.i.exit.sink.split.sink.split.i_crit_edge
  %.sink13.i = phi i32 [ 13319, %sw.epilog.i.exit.sink.split.sink.split.i_crit_edge ], [ 13379, %if.end.i23.exit.sink.split.sink.split.i_crit_edge ], [ 12297, %if.end15.i.exit.sink.split.sink.split.i_crit_edge ]
  %.str.123.sink.ph.i = phi ptr [ @.str.117, %sw.epilog.i.exit.sink.split.sink.split.i_crit_edge ], [ @.str.120, %if.end.i23.exit.sink.split.sink.split.i_crit_edge ], [ @.str.123, %if.end15.i.exit.sink.split.sink.split.i_crit_edge ]
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.75, i32 noundef %.sink13.i) #10
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %exit.sink.split.sink.split.i, %if.end10.exit.sink.split.i_crit_edge
  %.str.123.sink.i = phi ptr [ @.str.114, %if.end10.exit.sink.split.i_crit_edge ], [ %.str.123.sink.ph.i, %exit.sink.split.sink.split.i ]
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull %.str.123.sink.i) #10
  br label %cleanup

cleanup:                                          ; preds = %exit.sink.split.i, %if.end15.i.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call3, %do.end8 ], [ 0, %if.end15.i.cleanup_crit_edge ], [ 0, %exit.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 512
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %nlanes.i = getelementptr i8, ptr %sd, i32 -4
  %0 = ptrtoint ptr %nlanes.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nlanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.i = icmp eq i8 %1, 2
  %imx290_modes_2lanes.imx290_modes_4lanes.i = select i1 %cmp.i, ptr @imx290_modes_2lanes, ptr @imx290_modes_4lanes
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %2 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format3, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %call5 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull %imx290_modes_2lanes.imx290_modes_4lanes.i, i32 noundef 2, i32 noundef 24, i32 noundef 0, i32 noundef 4, i32 noundef %3, i32 noundef %5) #7
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call5, align 4
  %8 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %format3, align 4
  %height9 = getelementptr inbounds %struct.imx290_mode, ptr %call5, i32 0, i32 1
  %9 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height9, align 4
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height, align 4
  %code13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12306, i32 %13)
  %cond = icmp eq i32 %13, 12306
  %spec.select = zext i1 %cond to i32
  %arrayidx18 = getelementptr [2 x %struct.imx290_pixfmt], ptr @imx290_formats, i32 0, i32 %spec.select
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18, align 4
  %16 = ptrtoint ptr %code13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %code13, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field, align 4
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23 = icmp eq i32 %19, 0
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %22 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %21, %conv.i
  br i1 %cmp.not.i, label %if.then24.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !271

if.then24.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then24.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %21, %if.then24.v4l2_subdev_get_try_format.exit_crit_edge ]
  %24 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %25, i32 %spec.select.i
  br label %if.end39

if.else:                                          ; preds = %entry
  %current_format = getelementptr i8, ptr %sd, i32 228
  %current_mode = getelementptr i8, ptr %sd, i32 276
  %26 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5, ptr %current_mode, align 4
  %bpp = getelementptr [2 x %struct.imx290_pixfmt], ptr @imx290_formats, i32 0, i32 %spec.select, i32 1
  %27 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bpp, align 4
  %bpp27 = getelementptr i8, ptr %sd, i32 -3
  %29 = ptrtoint ptr %bpp27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %bpp27, align 1
  %link_freq = getelementptr i8, ptr %sd, i32 504
  %30 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link_freq, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %if.else.if.end32_crit_edge, label %if.then28

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %link_freq_index.i = getelementptr inbounds %struct.imx290_mode, ptr %call5, i32 0, i32 3
  %32 = ptrtoint ptr %link_freq_index.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %link_freq_index.i, align 4
  %conv = zext i8 %33 to i32
  %call31 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %31, i32 noundef %conv) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.else.if.end32_crit_edge
  %pixel_rate = getelementptr i8, ptr %sd, i32 508
  %34 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pixel_rate, align 4
  %tobool33.not = icmp eq ptr %35, null
  br i1 %tobool33.not, label %if.end32.if.end39_crit_edge, label %if.then34

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then34:                                        ; preds = %if.end32
  %36 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %current_mode, align 4
  %link_freq_index.i.i.i = getelementptr inbounds %struct.imx290_mode, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %link_freq_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %link_freq_index.i.i.i, align 4
  %40 = ptrtoint ptr %nlanes.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nlanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp.i.i.i = icmp eq i8 %41, 2
  %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i.i.i = select i1 %cmp.i.i.i, ptr @imx290_link_freq_2lanes, ptr @imx290_link_freq_4lanes
  %conv.i.i = zext i8 %39 to i32
  %add.ptr.i.i = getelementptr i64, ptr %imx290_link_freq_2lanes.imx290_link_freq_4lanes.i.i.i, i32 %conv.i.i
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.i.i, align 8
  %mul.i = shl i64 %43, 1
  %conv.i72 = zext i8 %41 to i64
  %mul2.i = mul i64 %mul.i, %conv.i72
  %44 = ptrtoint ptr %bpp27 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bpp27, align 1
  %conv3.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2.i)
  %cmp171.i = icmp ult i64 %mul2.i, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !271

if.then175.i:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i = trunc i64 %mul2.i to i32
  %div179.i = udiv i32 %conv176.i, %conv3.i
  %conv180.i = zext i32 %div179.i to i64
  br label %imx290_calc_pixel_rate.exit

if.else181.i:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %46 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv3.i, i64 %mul2.i) #11, !srcloc !272
  %asmresult1.i.i = extractvalue { i64, i64 } %46, 1
  br label %imx290_calc_pixel_rate.exit

imx290_calc_pixel_rate.exit:                      ; preds = %if.else181.i, %if.then175.i
  %pixel_rate.0.i = phi i64 [ %conv180.i, %if.then175.i ], [ %asmresult1.i.i, %if.else181.i ]
  %call37 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef nonnull %35, i64 noundef %pixel_rate.0.i) #7
  br label %if.end39

if.end39:                                         ; preds = %imx290_calc_pixel_rate.exit, %if.end32.if.end39_crit_edge, %v4l2_subdev_get_try_format.exit
  %format.0 = phi ptr [ %arrayidx.i, %v4l2_subdev_get_try_format.exit ], [ %current_format, %imx290_calc_pixel_rate.exit ], [ %current_format, %if.end32.if.end39_crit_edge ]
  %47 = call ptr @memcpy(ptr %format.0, ptr %format3, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -336
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %3, i1 noundef zeroext false) #7
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 9963795, label %sw.bb
    i32 10422531, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %regmap.i.i.i = getelementptr i8, ptr %1, i32 -328
  %9 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 12289, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i, label %sw.bb.do.end.i_crit_edge

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.i.i:                                     ; preds = %sw.bb
  %11 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i.i, align 4
  %conv1.i.i.i = and i32 %8, 255
  %call.i2.i.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 12308, i32 noundef %conv1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %for.end.i.i, label %for.body.i.i.do.end.i_crit_edge

for.body.i.i.do.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %13 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i7.i.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 12289, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool.not.i8.i.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool.not.i8.i.i, label %for.end.i.i.sw.epilog_crit_edge, label %for.end.i.i.do.end.i_crit_edge

for.end.i.i.do.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.end.i.i.sw.epilog_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i:                                         ; preds = %for.end.i.i.do.end.i_crit_edge, %for.body.i.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  %.sink11.i.i = phi i32 [ 12289, %sw.bb.do.end.i_crit_edge ], [ 12308, %for.body.i.i.do.end.i_crit_edge ], [ 12289, %for.end.i.i.do.end.i_crit_edge ]
  %.str.68.sink.i.i = phi ptr [ @.str.68, %sw.bb.do.end.i_crit_edge ], [ @.str.71, %for.body.i.i.do.end.i_crit_edge ], [ @.str.68, %for.end.i.i.do.end.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call.i.i.i, %sw.bb.do.end.i_crit_edge ], [ %call.i2.i.i, %for.body.i.i.do.end.i_crit_edge ], [ %call.i7.i.i, %for.end.i.i.do.end.i_crit_edge ]
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.75, i32 noundef %.sink11.i.i) #10
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull %.str.68.sink.i.i) #10
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.66) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not = icmp eq i32 %22, 0
  %regmap.i49 = getelementptr i8, ptr %1, i32 -328
  %23 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i49, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %sw.bb2
  %call.i37 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 12298, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i, label %if.then5.imx290_write_reg.exit_crit_edge, label %do.end.i38

if.then5.imx290_write_reg.exit_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_write_reg.exit

do.end.i38:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.75, i32 noundef 12298) #10
  br label %imx290_write_reg.exit

imx290_write_reg.exit:                            ; preds = %do.end.i38, %if.then5.imx290_write_reg.exit_crit_edge
  %27 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i49, align 4
  %call.i40 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 12299, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %imx290_write_reg.exit.imx290_write_reg.exit43_crit_edge, label %do.end.i42

imx290_write_reg.exit.imx290_write_reg.exit43_crit_edge: ; preds = %imx290_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_write_reg.exit43

do.end.i42:                                       ; preds = %imx290_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.75, i32 noundef 12299) #10
  br label %imx290_write_reg.exit43

imx290_write_reg.exit43:                          ; preds = %do.end.i42, %imx290_write_reg.exit.imx290_write_reg.exit43_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %31 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val3, align 4
  %33 = shl i32 %32, 4
  %34 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i49, align 4
  %conv = and i32 %33, 240
  %conv1.i = or i32 %conv, 3
  %call.i45 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 12428, i32 noundef %conv1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %imx290_write_reg.exit43.sw.epilog_crit_edge, label %do.end.i47

imx290_write_reg.exit43.sw.epilog_crit_edge:      ; preds = %imx290_write_reg.exit43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i47:                                       ; preds = %imx290_write_reg.exit43
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.75, i32 noundef 12428) #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb2
  %call.i50 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 12428, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.else.imx290_write_reg.exit53_crit_edge, label %do.end.i52

if.else.imx290_write_reg.exit53_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_write_reg.exit53

do.end.i52:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.75, i32 noundef 12428) #10
  br label %imx290_write_reg.exit53

imx290_write_reg.exit53:                          ; preds = %do.end.i52, %if.else.imx290_write_reg.exit53_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %bpp = getelementptr i8, ptr %1, i32 -323
  %40 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bpp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %41)
  %cmp = icmp eq i8 %41, 10
  %42 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i49, align 4
  br i1 %cmp, label %if.then13, label %if.else15

if.then13:                                        ; preds = %imx290_write_reg.exit53
  %call.i55 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 12298, i32 noundef 60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.then13.if.end17_crit_edge, label %if.then13.if.end17.sink.split_crit_edge

if.then13.if.end17.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.sink.split

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else15:                                        ; preds = %imx290_write_reg.exit53
  %call.i60 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 12298, i32 noundef 240) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %if.else15.if.end17_crit_edge, label %if.else15.if.end17.sink.split_crit_edge

if.else15.if.end17.sink.split_crit_edge:          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.sink.split

if.else15.if.end17_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17.sink.split:                              ; preds = %if.else15.if.end17.sink.split_crit_edge, %if.then13.if.end17.sink.split_crit_edge
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.75, i32 noundef 12298) #10
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else15.if.end17_crit_edge, %if.then13.if.end17_crit_edge
  %46 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i49, align 4
  %call.i65 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 12299, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %if.end17.sw.epilog_crit_edge, label %do.end.i67

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i67:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.75, i32 noundef 12299) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i67, %if.end17.sw.epilog_crit_edge, %do.end.i47, %imx290_write_reg.exit43.sw.epilog_crit_edge, %do.end.i, %for.end.i.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.sw.epilog_crit_edge ], [ %retval.0.ph.i.i, %do.end.i ], [ 0, %for.end.i.i.sw.epilog_crit_edge ], [ 0, %imx290_write_reg.exit43.sw.epilog_crit_edge ], [ 0, %do.end.i47 ], [ 0, %if.end17.sw.epilog_crit_edge ], [ 0, %do.end.i67 ]
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %call.i69 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_set_stream(ptr noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !274
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.unlock_and_return_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.unlock_and_return_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_and_return

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !275
  br label %unlock_and_return

if.end:                                           ; preds = %if.then
  %regmap.i.i.i = getelementptr i8, ptr %sd, i32 -8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end
  %i.010.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %settings.addr.09.i.i = phi ptr [ @imx290_global_init_settings, %if.end ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %3 = ptrtoint ptr %settings.addr.09.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %settings.addr.09.i.i, align 2
  %val.i.i = getelementptr inbounds %struct.imx290_regval, ptr %settings.addr.09.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i.i, align 2
  %7 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i.i.i = zext i16 %4 to i32
  %conv1.i.i.i = zext i8 %6 to i32
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %conv.i.i.i, i32 noundef %conv1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %imx290_write_reg.exit.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

imx290_write_reg.exit.i.i:                        ; preds = %for.body.i.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.75, i32 noundef %conv.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp1.i.i, label %do.end.i, label %imx290_write_reg.exit.i.i.for.inc.i.i_crit_edge

imx290_write_reg.exit.i.i.for.inc.i.i_crit_edge:  ; preds = %imx290_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %imx290_write_reg.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.imx290_regval, ptr %settings.addr.09.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 57
  br i1 %exitcond.not.i.i, label %if.end.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

do.end.i:                                         ; preds = %imx290_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.87) #10
  br label %do.end

if.end.i:                                         ; preds = %for.inc.i.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %code.i.i = getelementptr i8, ptr %sd, i32 236
  %13 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code.i.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %14, label %if.end.i.do.end6.i_crit_edge [
    i32 12303, label %if.end.i.for.body.i.i.i_crit_edge
    i32 12306, label %if.end.i.for.body.i30.i.i_crit_edge
  ]

if.end.i.for.body.i30.i.i_crit_edge:              ; preds = %if.end.i
  br label %for.body.i30.i.i

if.end.i.for.body.i.i.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i.i.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.for.body.i.i.i_crit_edge
  %i.010.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i.i_crit_edge ]
  %settings.addr.09.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ @imx290_10bit_settings, %if.end.i.for.body.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %settings.addr.09.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %settings.addr.09.i.i.i, align 2
  %val.i.i.i = getelementptr inbounds %struct.imx290_regval, ptr %settings.addr.09.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i.i.i, align 2
  %20 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %17 to i32
  %conv1.i.i.i.i = zext i8 %19 to i32
  %call.i.i.i.i21 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %conv.i.i.i.i, i32 noundef %conv1.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i21)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i21, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %imx290_write_reg.exit.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

imx290_write_reg.exit.i.i.i:                      ; preds = %for.body.i.i.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.75, i32 noundef %conv.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i21)
  %cmp1.i.i.i = icmp slt i32 %call.i.i.i.i21, 0
  br i1 %cmp1.i.i.i, label %imx290_write_reg.exit.i.i.i.do.end6.i_crit_edge, label %imx290_write_reg.exit.i.i.i.for.inc.i.i.i_crit_edge

imx290_write_reg.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %imx290_write_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

imx290_write_reg.exit.i.i.i.do.end6.i_crit_edge:  ; preds = %imx290_write_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

for.inc.i.i.i:                                    ; preds = %imx290_write_reg.exit.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.imx290_regval, ptr %settings.addr.09.i.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 9
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end8.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.if.end8.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

for.body.i30.i.i:                                 ; preds = %for.inc.i36.i.i.for.body.i30.i.i_crit_edge, %if.end.i.for.body.i30.i.i_crit_edge
  %i.010.i23.i.i = phi i32 [ %inc.i33.i.i, %for.inc.i36.i.i.for.body.i30.i.i_crit_edge ], [ 0, %if.end.i.for.body.i30.i.i_crit_edge ]
  %settings.addr.09.i24.i.i = phi ptr [ %incdec.ptr.i34.i.i, %for.inc.i36.i.i.for.body.i30.i.i_crit_edge ], [ @imx290_12bit_settings, %if.end.i.for.body.i30.i.i_crit_edge ]
  %24 = ptrtoint ptr %settings.addr.09.i24.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %settings.addr.09.i24.i.i, align 2
  %val.i25.i.i = getelementptr inbounds %struct.imx290_regval, ptr %settings.addr.09.i24.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %val.i25.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val.i25.i.i, align 2
  %28 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i.i26.i.i = zext i16 %25 to i32
  %conv1.i.i27.i.i = zext i8 %27 to i32
  %call.i.i28.i.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %conv.i.i26.i.i, i32 noundef %conv1.i.i27.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28.i.i)
  %tobool.not.i.i29.i.i = icmp eq i32 %call.i.i28.i.i, 0
  br i1 %tobool.not.i.i29.i.i, label %for.body.i30.i.i.for.inc.i36.i.i_crit_edge, label %imx290_write_reg.exit.i32.i.i

for.body.i30.i.i.for.inc.i36.i.i_crit_edge:       ; preds = %for.body.i30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i36.i.i

imx290_write_reg.exit.i32.i.i:                    ; preds = %for.body.i30.i.i
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.75, i32 noundef %conv.i.i26.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28.i.i)
  %cmp1.i31.i.i = icmp slt i32 %call.i.i28.i.i, 0
  br i1 %cmp1.i31.i.i, label %imx290_write_reg.exit.i32.i.i.do.end6.i_crit_edge, label %imx290_write_reg.exit.i32.i.i.for.inc.i36.i.i_crit_edge

imx290_write_reg.exit.i32.i.i.for.inc.i36.i.i_crit_edge: ; preds = %imx290_write_reg.exit.i32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i36.i.i

imx290_write_reg.exit.i32.i.i.do.end6.i_crit_edge: ; preds = %imx290_write_reg.exit.i32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

for.inc.i36.i.i:                                  ; preds = %imx290_write_reg.exit.i32.i.i.for.inc.i36.i.i_crit_edge, %for.body.i30.i.i.for.inc.i36.i.i_crit_edge
  %inc.i33.i.i = add nuw nsw i32 %i.010.i23.i.i, 1
  %incdec.ptr.i34.i.i = getelementptr %struct.imx290_regval, ptr %settings.addr.09.i24.i.i, i32 1
  %exitcond.not.i35.i.i = icmp eq i32 %inc.i33.i.i, 9
  br i1 %exitcond.not.i35.i.i, label %for.inc.i36.i.i.if.end8.i_crit_edge, label %for.inc.i36.i.i.for.body.i30.i.i_crit_edge

for.inc.i36.i.i.for.body.i30.i.i_crit_edge:       ; preds = %for.inc.i36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i30.i.i

for.inc.i36.i.i.if.end8.i_crit_edge:              ; preds = %for.inc.i36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

do.end6.i:                                        ; preds = %imx290_write_reg.exit.i32.i.i.do.end6.i_crit_edge, %imx290_write_reg.exit.i.i.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %.str.103.sink.i = phi ptr [ @.str.103, %if.end.i.do.end6.i_crit_edge ], [ @.str.98, %imx290_write_reg.exit.i.i.i.do.end6.i_crit_edge ], [ @.str.98, %imx290_write_reg.exit.i32.i.i.do.end6.i_crit_edge ]
  %retval.0.i59.ph.i = phi i32 [ -22, %if.end.i.do.end6.i_crit_edge ], [ %call.i.i.i.i21, %imx290_write_reg.exit.i.i.i.do.end6.i_crit_edge ], [ %call.i.i28.i.i, %imx290_write_reg.exit.i32.i.i.do.end6.i_crit_edge ]
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull %.str.103.sink.i) #10
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.90) #10
  br label %do.end

if.end8.i:                                        ; preds = %for.inc.i36.i.i.if.end8.i_crit_edge, %for.inc.i.i.i.if.end8.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %current_mode.i = getelementptr i8, ptr %sd, i32 276
  %36 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %current_mode.i, align 4
  %data_size.i = getelementptr inbounds %struct.imx290_mode, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp8.not.i.i = icmp eq i32 %39, 0
  br i1 %cmp8.not.i.i, label %if.end8.i.if.end17.i_crit_edge, label %for.body.i68.preheader.i

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

for.body.i68.preheader.i:                         ; preds = %if.end8.i
  %data.i = getelementptr inbounds %struct.imx290_mode, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  br label %for.body.i68.i

for.body.i68.i:                                   ; preds = %for.inc.i74.i.for.body.i68.i_crit_edge, %for.body.i68.preheader.i
  %i.010.i61.i = phi i32 [ %inc.i71.i, %for.inc.i74.i.for.body.i68.i_crit_edge ], [ 0, %for.body.i68.preheader.i ]
  %settings.addr.09.i62.i = phi ptr [ %incdec.ptr.i72.i, %for.inc.i74.i.for.body.i68.i_crit_edge ], [ %41, %for.body.i68.preheader.i ]
  %42 = ptrtoint ptr %settings.addr.09.i62.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %settings.addr.09.i62.i, align 2
  %val.i63.i = getelementptr inbounds %struct.imx290_regval, ptr %settings.addr.09.i62.i, i32 0, i32 1
  %44 = ptrtoint ptr %val.i63.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val.i63.i, align 2
  %46 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i.i64.i = zext i16 %43 to i32
  %conv1.i.i65.i = zext i8 %45 to i32
  %call.i.i66.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %conv.i.i64.i, i32 noundef %conv1.i.i65.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66.i)
  %tobool.not.i.i67.i = icmp eq i32 %call.i.i66.i, 0
  br i1 %tobool.not.i.i67.i, label %for.body.i68.i.for.inc.i74.i_crit_edge, label %imx290_write_reg.exit.i70.i

for.body.i68.i.for.inc.i74.i_crit_edge:           ; preds = %for.body.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i74.i

imx290_write_reg.exit.i70.i:                      ; preds = %for.body.i68.i
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.75, i32 noundef %conv.i.i64.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66.i)
  %cmp1.i69.i = icmp slt i32 %call.i.i66.i, 0
  br i1 %cmp1.i69.i, label %do.end15.i, label %imx290_write_reg.exit.i70.i.for.inc.i74.i_crit_edge

imx290_write_reg.exit.i70.i.for.inc.i74.i_crit_edge: ; preds = %imx290_write_reg.exit.i70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i74.i

for.inc.i74.i:                                    ; preds = %imx290_write_reg.exit.i70.i.for.inc.i74.i_crit_edge, %for.body.i68.i.for.inc.i74.i_crit_edge
  %inc.i71.i = add nuw i32 %i.010.i61.i, 1
  %incdec.ptr.i72.i = getelementptr %struct.imx290_regval, ptr %settings.addr.09.i62.i, i32 1
  %exitcond.not.i73.i = icmp eq i32 %inc.i71.i, %39
  br i1 %exitcond.not.i73.i, label %for.inc.i74.i.if.end17.i_crit_edge, label %for.inc.i74.i.for.body.i68.i_crit_edge

for.inc.i74.i.for.body.i68.i_crit_edge:           ; preds = %for.inc.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i68.i

for.inc.i74.i.if.end17.i_crit_edge:               ; preds = %for.inc.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

do.end15.i:                                       ; preds = %imx290_write_reg.exit.i70.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.93) #10
  br label %do.end

if.end17.i:                                       ; preds = %for.inc.i74.i.if.end17.i_crit_edge, %if.end8.i.if.end17.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %52 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %current_mode.i, align 4
  %hmax.i = getelementptr inbounds %struct.imx290_mode, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %hmax.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hmax.i, align 4
  %56 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i.i.i, align 4
  %conv1.i.i79.i = and i32 %55, 255
  %call.i.i80.i = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 12316, i32 noundef %conv1.i.i79.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80.i)
  %tobool.not.i.i81.i = icmp eq i32 %call.i.i80.i, 0
  br i1 %tobool.not.i.i81.i, label %if.end.i.i, label %if.end17.i.imx290_set_hmax.exit.i_crit_edge

if.end17.i.imx290_set_hmax.exit.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_set_hmax.exit.i

if.end.i.i:                                       ; preds = %if.end17.i
  %shr.i.i = lshr i32 %55, 8
  %58 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i.i.i, align 4
  %conv1.i19.i.i = and i32 %shr.i.i, 255
  %call.i20.i.i = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 12317, i32 noundef %conv1.i19.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %if.end.i.i.if.end22.i_crit_edge, label %if.end.i.i.imx290_set_hmax.exit.i_crit_edge

if.end.i.i.imx290_set_hmax.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_set_hmax.exit.i

if.end.i.i.if.end22.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

imx290_set_hmax.exit.i:                           ; preds = %if.end.i.i.imx290_set_hmax.exit.i_crit_edge, %if.end17.i.imx290_set_hmax.exit.i_crit_edge
  %.sink24.i.i = phi i32 [ 12316, %if.end17.i.imx290_set_hmax.exit.i_crit_edge ], [ 12317, %if.end.i.i.imx290_set_hmax.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call.i.i80.i, %if.end17.i.imx290_set_hmax.exit.i_crit_edge ], [ %call.i20.i.i, %if.end.i.i.imx290_set_hmax.exit.i_crit_edge ]
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.75, i32 noundef %.sink24.i.i) #10
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.105) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i.i)
  %cmp20.i = icmp slt i32 %retval.0.ph.i.i, 0
  br i1 %cmp20.i, label %imx290_set_hmax.exit.i.do.end_crit_edge, label %imx290_set_hmax.exit.i.if.end22.i_crit_edge

imx290_set_hmax.exit.i.if.end22.i_crit_edge:      ; preds = %imx290_set_hmax.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

imx290_set_hmax.exit.i.do.end_crit_edge:          ; preds = %imx290_set_hmax.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end22.i:                                       ; preds = %imx290_set_hmax.exit.i.if.end22.i_crit_edge, %if.end.i.i.if.end22.i_crit_edge
  %ctrl_handler.i = getelementptr i8, ptr %sd, i32 112
  %64 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctrl_handler.i, align 4
  %call23.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool.not.i, label %if.end29.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.96) #10
  br label %do.end

if.end29.i:                                       ; preds = %if.end22.i
  %68 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 12288, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end29.i.if.end33.i_crit_edge, label %imx290_write_reg.exit.i

if.end29.i.if.end33.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

imx290_write_reg.exit.i:                          ; preds = %if.end29.i
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.75, i32 noundef 12288) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp31.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp31.i, label %imx290_write_reg.exit.i.do.end_crit_edge, label %imx290_write_reg.exit.i.if.end33.i_crit_edge

imx290_write_reg.exit.i.if.end33.i_crit_edge:     ; preds = %imx290_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

imx290_write_reg.exit.i.do.end_crit_edge:         ; preds = %imx290_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end33.i:                                       ; preds = %imx290_write_reg.exit.i.if.end33.i_crit_edge, %if.end29.i.if.end33.i_crit_edge
  tail call void @msleep(i32 noundef 30) #7
  %72 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i85.i = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 12290, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool.not.i86.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool.not.i86.i, label %if.end33.i.unlock_and_return_crit_edge, label %do.end.i87.i

if.end33.i.unlock_and_return_crit_edge:           ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_and_return

do.end.i87.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.75, i32 noundef 12290) #10
  br label %do.end

do.end:                                           ; preds = %do.end.i87.i, %imx290_write_reg.exit.i.do.end_crit_edge, %do.end27.i, %imx290_set_hmax.exit.i.do.end_crit_edge, %do.end15.i, %do.end6.i, %do.end.i
  %retval.0.i22.ph = phi i32 [ %call.i85.i, %do.end.i87.i ], [ %call.i.i, %imx290_write_reg.exit.i.do.end_crit_edge ], [ %retval.0.ph.i.i, %imx290_set_hmax.exit.i.do.end_crit_edge ], [ %call23.i, %do.end27.i ], [ %call.i.i66.i, %do.end15.i ], [ %retval.0.i59.ph.i, %do.end6.i ], [ %call.i.i.i, %do.end.i ]
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.85) #10
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  %call.i23 = tail call i32 @__pm_runtime_idle(ptr noundef %79, i32 noundef 5) #7
  br label %unlock_and_return

if.else:                                          ; preds = %entry
  %regmap.i.i = getelementptr i8, ptr %sd, i32 -8
  %80 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i24 = tail call i32 @regmap_write(ptr noundef %81, i32 noundef 12288, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %call.i.i24, 0
  br i1 %tobool.not.i.i25, label %if.else.if.end.i28_crit_edge, label %imx290_write_reg.exit.i27

if.else.if.end.i28_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i28

imx290_write_reg.exit.i27:                        ; preds = %if.else
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.75, i32 noundef 12288) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp.i26 = icmp slt i32 %call.i.i24, 0
  br i1 %cmp.i26, label %imx290_write_reg.exit.i27.imx290_stop_streaming.exit_crit_edge, label %imx290_write_reg.exit.i27.if.end.i28_crit_edge

imx290_write_reg.exit.i27.if.end.i28_crit_edge:   ; preds = %imx290_write_reg.exit.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i28

imx290_write_reg.exit.i27.imx290_stop_streaming.exit_crit_edge: ; preds = %imx290_write_reg.exit.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_stop_streaming.exit

if.end.i28:                                       ; preds = %imx290_write_reg.exit.i27.if.end.i28_crit_edge, %if.else.if.end.i28_crit_edge
  tail call void @msleep(i32 noundef 30) #7
  %84 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i.i, align 4
  %call.i2.i = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 12290, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.end.i28.imx290_stop_streaming.exit_crit_edge, label %do.end.i4.i

if.end.i28.imx290_stop_streaming.exit_crit_edge:  ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx290_stop_streaming.exit

do.end.i4.i:                                      ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.75, i32 noundef 12290) #10
  br label %imx290_stop_streaming.exit

imx290_stop_streaming.exit:                       ; preds = %do.end.i4.i, %if.end.i28.imx290_stop_streaming.exit_crit_edge, %imx290_write_reg.exit.i27.imx290_stop_streaming.exit_crit_edge
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 4
  %call.i29 = tail call i32 @__pm_runtime_idle(ptr noundef %89, i32 noundef 5) #7
  br label %unlock_and_return

unlock_and_return:                                ; preds = %imx290_stop_streaming.exit, %do.end, %if.end33.i.unlock_and_return_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.unlock_and_return_crit_edge
  %ret.0 = phi i32 [ %retval.0.i22.ph, %do.end ], [ 0, %imx290_stop_streaming.exit ], [ 0, %if.end33.i.unlock_and_return_crit_edge ], [ %call.i, %if.then.i.unlock_and_return_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx290_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x %struct.imx290_pixfmt], ptr @imx290_formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx290_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nlanes.i = getelementptr i8, ptr %sd, i32 -4
  %0 = ptrtoint ptr %nlanes.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nlanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.i = icmp eq i8 %1, 2
  %imx290_modes_2lanes.imx290_modes_4lanes.i = select i1 %cmp.i, ptr @imx290_modes_2lanes, ptr @imx290_modes_4lanes
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 12303, label %entry.if.end_crit_edge
    i32 12306, label %entry.if.end_crit_edge32
  ]

entry.if.end_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge32
  %5 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp ugt i32 %6, 1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.imx290_mode, ptr %imx290_modes_2lanes.imx290_modes_4lanes.i, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %9 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %10 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %max_width, align 4
  %height = getelementptr %struct.imx290_mode, ptr %imx290_modes_2lanes.imx290_modes_4lanes.i, i32 %6, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %13 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %14 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx290_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 512
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !271

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %current_format = getelementptr i8, ptr %sd, i32 228
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %framefmt.0 = phi ptr [ %arrayidx.i, %v4l2_subdev_get_try_format.exit ], [ %current_format, %if.else ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %framefmt.0, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !205, !206, !207, !209, !210, !212, !213, !214, !216, !218, !220, !221, !222, !223, !225, !226, !228, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258}
!llvm.module.flags = !{!260, !261, !262, !263, !264, !265, !266, !267}
!llvm.ident = !{!268}

!0 = !{ptr @__initcall__kmod_imx290__295_1157_imx290_i2c_driver_init6, !1, !"__initcall__kmod_imx290__295_1157_imx290_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/imx290.c", i32 1157, i32 1}
!2 = !{ptr @__exitcall_imx290_i2c_driver_exit, !1, !"__exitcall_imx290_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/imx290.c", i32 1159, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/imx290.c", i32 1160, i32 1}
!7 = !{ptr @__UNIQUE_ID_author298, !8, !"__UNIQUE_ID_author298", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/imx290.c", i32 1161, i32 1}
!9 = !{ptr @__UNIQUE_ID_file299, !10, !"__UNIQUE_ID_file299", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/imx290.c", i32 1162, i32 1}
!11 = !{ptr @__UNIQUE_ID_license300, !10, !"__UNIQUE_ID_license300", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/imx290.c", i32 1151, i32 12}
!14 = !{ptr @imx290_i2c_driver, !15, !"imx290_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/imx290.c", i32 1147, i32 26}
!16 = !{ptr @imx290_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/imx290.c", i32 947, i32 19}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/imx290.c", i32 949, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @imx290_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @imx290_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/imx290.c", i32 955, i32 3}
!29 = !{ptr @imx290_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @imx290_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/imx290.c", i32 962, i32 3}
!33 = !{ptr @imx290_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @imx290_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/imx290.c", i32 965, i32 3}
!37 = !{ptr @imx290_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @imx290_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/imx290.c", i32 972, i32 3}
!41 = !{ptr @imx290_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @imx290_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/imx290.c", i32 977, i32 2}
!45 = !{ptr @imx290_probe.__UNIQUE_ID_ddebug294, !44, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/imx290.c", i32 980, i32 3}
!48 = !{ptr @imx290_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @imx290_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/imx290.c", i32 988, i32 3}
!52 = !{ptr @imx290_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx290_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/imx290.c", i32 994, i32 35}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/imx290.c", i32 996, i32 3}
!58 = !{ptr @imx290_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @imx290_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/imx290.c", i32 1001, i32 50}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/imx290.c", i32 1004, i32 3}
!64 = !{ptr @imx290_probe._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @imx290_probe._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/imx290.c", i32 1010, i32 3}
!68 = !{ptr @imx290_probe._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @imx290_probe._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/imx290.c", i32 1018, i32 3}
!72 = !{ptr @imx290_probe._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @imx290_probe._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/imx290.c", i32 1024, i32 3}
!76 = !{ptr @imx290_probe._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @imx290_probe._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/imx290.c", i32 1028, i32 50}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/imx290.c", i32 1031, i32 3}
!82 = !{ptr @imx290_probe._entry.44, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @imx290_probe._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @imx290_probe.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/imx290.c", i32 1036, i32 2}
!86 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @imx290_probe._key.48, !88, !"_key", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/imx290.c", i32 1045, i32 2}
!89 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/imx290.c", i32 1071, i32 3}
!92 = !{ptr @imx290_probe._entry.50, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @imx290_probe._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/imx290.c", i32 1086, i32 3}
!96 = !{ptr @imx290_probe._entry.53, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @imx290_probe._entry_ptr.55, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/imx290.c", i32 1092, i32 3}
!100 = !{ptr @imx290_probe._entry.56, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @imx290_probe._entry_ptr.58, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/imx290.c", i32 1099, i32 3}
!104 = !{ptr @imx290_probe._entry.59, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @imx290_probe._entry_ptr.61, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @imx290_regmap_config, !107, !"imx290_regmap_config", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/imx290.c", i32 97, i32 35}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/imx290.c", i32 43, i32 2}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/imx290.c", i32 44, i32 2}
!112 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/imx290.c", i32 45, i32 2}
!114 = distinct !{null, !115, !"imx290_supply_name", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/imx290.c", i32 42, i32 27}
!116 = !{ptr @imx290_modes_2lanes, !117, !"imx290_modes_2lanes", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/imx290.c", i32 307, i32 33}
!118 = !{ptr @imx290_1080p_settings, !119, !"imx290_1080p_settings", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/imx290.c", i32 174, i32 35}
!120 = !{ptr @imx290_720p_settings, !121, !"imx290_720p_settings", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/imx290.c", i32 212, i32 35}
!122 = !{ptr @imx290_modes_4lanes, !123, !"imx290_modes_4lanes", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/imx290.c", i32 326, i32 33}
!124 = !{ptr @imx290_formats, !125, !"imx290_formats", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/imx290.c", i32 92, i32 35}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!128 = !{ptr @imx290_ctrl_ops, !129, !"imx290_ctrl_ops", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/imx290.c", i32 514, i32 35}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/imx290.c", i32 450, i32 3}
!132 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @imx290_set_gain._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @imx290_set_gain._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/imx290.c", i32 422, i32 3}
!137 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @imx290_write_buffered_reg._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @imx290_write_buffered_reg._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/imx290.c", i32 430, i32 4}
!142 = !{ptr @imx290_write_buffered_reg._entry.70, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @imx290_write_buffered_reg._entry_ptr.72, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @imx290_write_buffered_reg._entry.73, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/imx290.c", i32 437, i32 3}
!146 = !{ptr @imx290_write_buffered_reg._entry_ptr.74, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/imx290.c", i32 388, i32 3}
!149 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @imx290_write_reg._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @imx290_write_reg._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @imx290_link_freq_2lanes, !153, !"imx290_link_freq_2lanes", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/imx290.c", i32 277, i32 18}
!154 = !{ptr @imx290_link_freq_4lanes, !155, !"imx290_link_freq_4lanes", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/imx290.c", i32 281, i32 18}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/i2c/imx290.c", i32 104, i32 2}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/imx290.c", i32 105, i32 2}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/imx290.c", i32 106, i32 2}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/imx290.c", i32 107, i32 2}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/imx290.c", i32 108, i32 2}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/imx290.c", i32 109, i32 2}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/imx290.c", i32 110, i32 2}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/imx290.c", i32 111, i32 2}
!172 = !{ptr @imx290_test_pattern_menu, !173, !"imx290_test_pattern_menu", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/imx290.c", i32 103, i32 27}
!174 = !{ptr @imx290_subdev_ops, !175, !"imx290_subdev_ops", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/imx290.c", i32 898, i32 37}
!176 = !{ptr @imx290_video_ops, !177, !"imx290_video_ops", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/imx290.c", i32 886, i32 43}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/imx290.c", i32 773, i32 4}
!180 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @imx290_set_stream._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @imx290_set_stream._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/i2c/imx290.c", i32 722, i32 3}
!185 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @imx290_start_streaming._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @imx290_start_streaming._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/imx290.c", i32 729, i32 3}
!190 = !{ptr @imx290_start_streaming._entry.89, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @imx290_start_streaming._entry_ptr.91, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/imx290.c", i32 737, i32 3}
!194 = !{ptr @imx290_start_streaming._entry.92, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @imx290_start_streaming._entry_ptr.94, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/imx290.c", i32 747, i32 3}
!198 = !{ptr @imx290_start_streaming._entry.95, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @imx290_start_streaming._entry_ptr.97, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @imx290_global_init_settings, !201, !"imx290_global_init_settings", i1 false, i1 false}
!201 = !{!"../drivers/media/i2c/imx290.c", i32 114, i32 35}
!202 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/i2c/imx290.c", i32 672, i32 4}
!204 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @imx290_write_current_format._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @imx290_write_current_format._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @imx290_write_current_format._entry.100, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/media/i2c/imx290.c", i32 681, i32 4}
!209 = !{ptr @imx290_write_current_format._entry_ptr.101, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/imx290.c", i32 686, i32 3}
!212 = !{ptr @imx290_write_current_format._entry.102, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @imx290_write_current_format._entry_ptr.104, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @imx290_10bit_settings, !215, !"imx290_10bit_settings", i1 false, i1 false}
!215 = !{!"../drivers/media/i2c/imx290.c", i32 250, i32 35}
!216 = !{ptr @imx290_12bit_settings, !217, !"imx290_12bit_settings", i1 false, i1 false}
!217 = !{!"../drivers/media/i2c/imx290.c", i32 262, i32 35}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/i2c/imx290.c", i32 699, i32 3}
!220 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @imx290_set_hmax._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @imx290_set_hmax._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @imx290_set_hmax._entry.107, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/media/i2c/imx290.c", i32 705, i32 3}
!225 = !{ptr @imx290_set_hmax._entry_ptr.108, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @imx290_pad_ops, !227, !"imx290_pad_ops", i1 false, i1 false}
!227 = !{!"../drivers/media/i2c/imx290.c", i32 890, i32 41}
!228 = !{ptr @imx290_subdev_entity_ops, !229, !"imx290_subdev_entity_ops", i1 false, i1 false}
!229 = !{!"../drivers/media/i2c/imx290.c", i32 903, i32 45}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/i2c/imx290.c", i32 849, i32 3}
!232 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @imx290_power_on._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @imx290_power_on._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/i2c/imx290.c", i32 855, i32 3}
!237 = !{ptr @imx290_power_on._entry.111, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @imx290_power_on._entry_ptr.113, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.114, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/i2c/imx290.c", i32 816, i32 3}
!241 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @imx290_set_data_lanes._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @imx290_set_data_lanes._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/i2c/imx290.c", i32 823, i32 3}
!246 = !{ptr @imx290_set_data_lanes._entry.116, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @imx290_set_data_lanes._entry_ptr.118, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/i2c/imx290.c", i32 829, i32 3}
!250 = !{ptr @imx290_set_data_lanes._entry.119, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @imx290_set_data_lanes._entry_ptr.121, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.123, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/i2c/imx290.c", i32 835, i32 3}
!254 = !{ptr @imx290_set_data_lanes._entry.122, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @imx290_set_data_lanes._entry_ptr.124, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @imx290_of_match, !257, !"imx290_of_match", i1 false, i1 false}
!257 = !{!"../drivers/media/i2c/imx290.c", i32 1141, i32 34}
!258 = !{ptr @imx290_pm_ops, !259, !"imx290_pm_ops", i1 false, i1 false}
!259 = !{!"../drivers/media/i2c/imx290.c", i32 882, i32 32}
!260 = !{i32 1, !"wchar_size", i32 2}
!261 = !{i32 1, !"min_enum_size", i32 4}
!262 = !{i32 8, !"branch-target-enforcement", i32 0}
!263 = !{i32 8, !"sign-return-address", i32 0}
!264 = !{i32 8, !"sign-return-address-all", i32 0}
!265 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!266 = !{i32 7, !"uwtable", i32 1}
!267 = !{i32 7, !"frame-pointer", i32 2}
!268 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!269 = !{!"auto-init"}
!270 = !{i64 2148746915, i64 2148746920, i64 2148746933, i64 2148746977, i64 2148747011, i64 2148747032}
!271 = !{!"branch_weights", i32 2000, i32 1}
!272 = !{i64 2148655634, i64 2148655914, i64 2148656248, i64 2148656582}
!273 = !{i64 2148264519}
!274 = !{i64 749342, i64 749367, i64 749389, i64 749405, i64 749417, i64 749437, i64 749461, i64 749477, i64 749489}
!275 = !{i64 2148264707}
