; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov7251.c_pt.bc'
source_filename = "../drivers/media/i2c/ov7251.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov7251_mode_info = type { i32, i32, ptr, i32, i32, i32, i16, i16, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
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
%struct.ov7251 = type { ptr, ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_fwnode_endpoint, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, ptr, i32, ptr, ptr, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, i8, i8, i8, i8, %struct.mutex, i8, ptr }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__initcall__kmod_ov7251__293_1502_ov7251_i2c_driver_init6 = internal global ptr @ov7251_i2c_driver_init, section ".initcall6.init", align 4
@ov7251_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov7251_remove, ptr @ov7251_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov7251_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov7251_i2c_driver_exit = internal global ptr @ov7251_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [51 x i8] c"ov7251.description=Omnivision OV7251 Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [51 x i8] c"ov7251.author=Todor Tomov <todor.tomov@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"ov7251.file=drivers/media/i2c/ov7251\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"ov7251.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov7251\00", [25 x i8] zeroinitializer }, align 32
@ov7251_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov7251\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov7251_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"endpoint node not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov7251_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov7251.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr = internal global ptr @ov7251_probe._entry, section ".printk_index", align 4
@ov7251_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"parsing endpoint node failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.8 = internal global ptr @ov7251_probe._entry.6, section ".printk_index", align 4
@ov7251_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"invalid bus type (%u), must be CSI2 (%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.11 = internal global ptr @ov7251_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xclk\00", [27 x i8] zeroinitializer }, align 32
@ov7251_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not get xclk\00", [45 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.15 = internal global ptr @ov7251_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@ov7251_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not get xclk frequency\0A\00", [34 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.19 = internal global ptr @ov7251_probe._entry.17, section ".printk_index", align 4
@ov7251_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"external clock frequency %u is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.22 = internal global ptr @ov7251_probe._entry.20, section ".printk_index", align 4
@ov7251_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not set xclk frequency\0A\00", [34 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.25 = internal global ptr @ov7251_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdddo\00", [26 x i8] zeroinitializer }, align 32
@ov7251_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot get io regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.29 = internal global ptr @ov7251_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddd\00", [27 x i8] zeroinitializer }, align 32
@ov7251_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get core regulator\0A\00", [37 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.33 = internal global ptr @ov7251_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@ov7251_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 1332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot get analog regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.37 = internal global ptr @ov7251_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@ov7251_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 1338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot get enable gpio\0A\00", [40 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.41 = internal global ptr @ov7251_probe._entry.39, section ".printk_index", align 4
@ov7251_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ov7251->lock\00", [18 x i8] zeroinitializer }, align 32
@ov7251_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ov7251:1344:(&ov7251->ctrls)->_lock\00", [60 x i8] zeroinitializer }, align 32
@ov7251_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov7251_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov7251_test_pattern_menu = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.87, ptr @.str.88], [24 x i8] zeroinitializer }, align 32
@link_freq = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 240000000], [24 x i8] zeroinitializer }, align 32
@ov7251_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 1375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: control initialization error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.46 = internal global ptr @ov7251_probe._entry.44, section ".printk_index", align 4
@ov7251_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov7251_core_ops, ptr null, ptr null, ptr @ov7251_video_ops, ptr null, ptr null, ptr null, ptr @ov7251_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov7251_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.2, ptr @.str.3, i32 1388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register media entity\0A\00", [63 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.49 = internal global ptr @ov7251_probe._entry.47, section ".printk_index", align 4
@ov7251_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 1394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not power up OV7251\0A\00", [37 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.52 = internal global ptr @ov7251_probe._entry.50, section ".printk_index", align 4
@ov7251_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.2, ptr @.str.3, i32 1400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not read ID high\0A\00", [40 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.55 = internal global ptr @ov7251_probe._entry.53, section ".printk_index", align 4
@ov7251_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.2, ptr @.str.3, i32 1406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not read ID low\0A\00", [41 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.58 = internal global ptr @ov7251_probe._entry.56, section ".printk_index", align 4
@ov7251_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.2, ptr @.str.3, i32 1413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not read revision\0A\00", [39 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.61 = internal global ptr @ov7251_probe._entry.59, section ".printk_index", align 4
@ov7251_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.2, ptr @.str.3, i32 1425, ptr @.str.64, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"OV7251 revision %x (%s) detected at address 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.65 = internal global ptr @ov7251_probe._entry.62, section ".printk_index", align 4
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1A / 1B\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1C / 1D\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1E\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1F\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@ov7251_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.2, ptr @.str.3, i32 1430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not read test pattern value\0A\00", [61 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.73 = internal global ptr @ov7251_probe._entry.71, section ".printk_index", align 4
@ov7251_probe._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.2, ptr @.str.3, i32 1438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not read vflip value\0A\00", [36 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.76 = internal global ptr @ov7251_probe._entry.74, section ".printk_index", align 4
@ov7251_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.2, ptr @.str.3, i32 1446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not read hflip value\0A\00", [36 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.79 = internal global ptr @ov7251_probe._entry.77, section ".printk_index", align 4
@ov7251_probe._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.2, ptr @.str.3, i32 1455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@ov7251_probe._entry_ptr.82 = internal global ptr @ov7251_probe._entry.80, section ".printk_index", align 4
@ov7251_write_seq_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 662, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: write seq regs error %d: first reg=%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov7251_write_seq_regs\00", [42 x i8] zeroinitializer }, align 32
@ov7251_write_seq_regs._entry_ptr = internal global ptr @ov7251_write_seq_regs._entry, section ".printk_index", align 4
@ov7251_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: write reg error %d: reg=%x, val=%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov7251_write_reg\00", [47 x i8] zeroinitializer }, align 32
@ov7251_write_reg._entry_ptr = internal global ptr @ov7251_write_reg._entry, section ".printk_index", align 4
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Vertical Pattern Bars\00", [42 x i8] zeroinitializer }, align 32
@ov7251_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov7251_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ov7251_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov7251_s_stream, ptr null, ptr @ov7251_get_frame_interval, ptr @ov7251_set_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov7251_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @ov7251_entity_init_cfg, ptr @ov7251_enum_mbus_code, ptr @ov7251_enum_frame_size, ptr @ov7251_enum_frame_ival, ptr @ov7251_get_format, ptr @ov7251_set_format, ptr @ov7251_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov7251_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 1151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not set mode %dx%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov7251_s_stream\00", [16 x i8] zeroinitializer }, align 32
@ov7251_s_stream._entry_ptr = internal global ptr @ov7251_s_stream._entry, section ".printk_index", align 4
@ov7251_s_stream._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 1156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not sync v4l2 controls\0A\00", [34 x i8] zeroinitializer }, align 32
@ov7251_s_stream._entry_ptr.93 = internal global ptr @ov7251_s_stream._entry.91, section ".printk_index", align 4
@ov7251_mode_info_data = internal constant { [3 x %struct.ov7251_mode_info], [52 x i8] } { [3 x %struct.ov7251_mode_info] [%struct.ov7251_mode_info { i32 640, i32 480, ptr @ov7251_setting_vga_30fps, i32 135, i32 48000000, i32 0, i16 1704, i16 504, %struct.v4l2_fract { i32 100, i32 3000 } }, %struct.ov7251_mode_info { i32 640, i32 480, ptr @ov7251_setting_vga_60fps, i32 135, i32 48000000, i32 0, i16 840, i16 504, %struct.v4l2_fract { i32 100, i32 6014 } }, %struct.ov7251_mode_info { i32 640, i32 480, ptr @ov7251_setting_vga_90fps, i32 135, i32 48000000, i32 0, i16 552, i16 504, %struct.v4l2_fract { i32 100, i32 9043 } }], [52 x i8] zeroinitializer }, align 32
@ov7251_setting_vga_30fps = internal constant { [135 x %struct.reg_value], [132 x i8] } { [135 x %struct.reg_value] [%struct.reg_value { i16 12293, i8 0 }, %struct.reg_value { i16 12306, i8 -64 }, %struct.reg_value { i16 12307, i8 -46 }, %struct.reg_value { i16 12308, i8 4 }, %struct.reg_value { i16 12310, i8 -16 }, %struct.reg_value { i16 12311, i8 -16 }, %struct.reg_value { i16 12312, i8 -16 }, %struct.reg_value { i16 12314, i8 -16 }, %struct.reg_value { i16 12315, i8 -16 }, %struct.reg_value { i16 12316, i8 -16 }, %struct.reg_value { i16 12323, i8 5 }, %struct.reg_value { i16 12343, i8 -16 }, %struct.reg_value { i16 12440, i8 4 }, %struct.reg_value { i16 12441, i8 40 }, %struct.reg_value { i16 12442, i8 5 }, %struct.reg_value { i16 12443, i8 4 }, %struct.reg_value { i16 12445, i8 0 }, %struct.reg_value { i16 12464, i8 10 }, %struct.reg_value { i16 12465, i8 1 }, %struct.reg_value { i16 12467, i8 100 }, %struct.reg_value { i16 12468, i8 3 }, %struct.reg_value { i16 12469, i8 5 }, %struct.reg_value { i16 12550, i8 -38 }, %struct.reg_value { i16 13571, i8 7 }, %struct.reg_value { i16 13577, i8 16 }, %struct.reg_value { i16 13824, i8 28 }, %struct.reg_value { i16 13826, i8 98 }, %struct.reg_value { i16 13856, i8 -73 }, %struct.reg_value { i16 13858, i8 4 }, %struct.reg_value { i16 13862, i8 33 }, %struct.reg_value { i16 13863, i8 48 }, %struct.reg_value { i16 13872, i8 68 }, %struct.reg_value { i16 13873, i8 53 }, %struct.reg_value { i16 13876, i8 96 }, %struct.reg_value { i16 13878, i8 0 }, %struct.reg_value { i16 13922, i8 1 }, %struct.reg_value { i16 13923, i8 112 }, %struct.reg_value { i16 13924, i8 80 }, %struct.reg_value { i16 13926, i8 10 }, %struct.reg_value { i16 13929, i8 26 }, %struct.reg_value { i16 13930, i8 0 }, %struct.reg_value { i16 13931, i8 80 }, %struct.reg_value { i16 13939, i8 1 }, %struct.reg_value { i16 13940, i8 -1 }, %struct.reg_value { i16 13941, i8 3 }, %struct.reg_value { i16 14085, i8 -63 }, %struct.reg_value { i16 14089, i8 64 }, %struct.reg_value { i16 14140, i8 8 }, %struct.reg_value { i16 14146, i8 0 }, %struct.reg_value { i16 14167, i8 -77 }, %struct.reg_value { i16 14216, i8 0 }, %struct.reg_value { i16 14248, i8 1 }, %struct.reg_value { i16 14249, i8 -64 }, %struct.reg_value { i16 14336, i8 0 }, %struct.reg_value { i16 14337, i8 4 }, %struct.reg_value { i16 14338, i8 0 }, %struct.reg_value { i16 14339, i8 4 }, %struct.reg_value { i16 14340, i8 2 }, %struct.reg_value { i16 14341, i8 -117 }, %struct.reg_value { i16 14342, i8 1 }, %struct.reg_value { i16 14343, i8 -21 }, %struct.reg_value { i16 14344, i8 2 }, %struct.reg_value { i16 14345, i8 -128 }, %struct.reg_value { i16 14346, i8 1 }, %struct.reg_value { i16 14347, i8 -32 }, %struct.reg_value { i16 14348, i8 3 }, %struct.reg_value { i16 14349, i8 -96 }, %struct.reg_value { i16 14350, i8 6 }, %struct.reg_value { i16 14351, i8 -68 }, %struct.reg_value { i16 14352, i8 0 }, %struct.reg_value { i16 14353, i8 4 }, %struct.reg_value { i16 14354, i8 0 }, %struct.reg_value { i16 14355, i8 5 }, %struct.reg_value { i16 14356, i8 17 }, %struct.reg_value { i16 14357, i8 17 }, %struct.reg_value { i16 14368, i8 64 }, %struct.reg_value { i16 14369, i8 0 }, %struct.reg_value { i16 14383, i8 14 }, %struct.reg_value { i16 14386, i8 0 }, %struct.reg_value { i16 14387, i8 5 }, %struct.reg_value { i16 14388, i8 0 }, %struct.reg_value { i16 14389, i8 12 }, %struct.reg_value { i16 14391, i8 0 }, %struct.reg_value { i16 15232, i8 0 }, %struct.reg_value { i16 15233, i8 -91 }, %struct.reg_value { i16 15234, i8 16 }, %struct.reg_value { i16 15235, i8 0 }, %struct.reg_value { i16 15236, i8 8 }, %struct.reg_value { i16 15237, i8 0 }, %struct.reg_value { i16 15238, i8 1 }, %struct.reg_value { i16 15239, i8 0 }, %struct.reg_value { i16 15240, i8 0 }, %struct.reg_value { i16 15241, i8 0 }, %struct.reg_value { i16 15242, i8 0 }, %struct.reg_value { i16 15243, i8 5 }, %struct.reg_value { i16 15244, i8 0 }, %struct.reg_value { i16 15245, i8 0 }, %struct.reg_value { i16 15246, i8 0 }, %struct.reg_value { i16 15247, i8 26 }, %struct.reg_value { i16 15252, i8 5 }, %struct.reg_value { i16 15253, i8 -14 }, %struct.reg_value { i16 15254, i8 64 }, %struct.reg_value { i16 15360, i8 -119 }, %struct.reg_value { i16 15361, i8 99 }, %struct.reg_value { i16 15362, i8 1 }, %struct.reg_value { i16 15363, i8 0 }, %struct.reg_value { i16 15364, i8 0 }, %struct.reg_value { i16 15365, i8 3 }, %struct.reg_value { i16 15366, i8 0 }, %struct.reg_value { i16 15367, i8 6 }, %struct.reg_value { i16 15372, i8 1 }, %struct.reg_value { i16 15373, i8 -48 }, %struct.reg_value { i16 15374, i8 2 }, %struct.reg_value { i16 15375, i8 10 }, %struct.reg_value { i16 16385, i8 66 }, %struct.reg_value { i16 16388, i8 4 }, %struct.reg_value { i16 16389, i8 0 }, %struct.reg_value { i16 16462, i8 1 }, %struct.reg_value { i16 17152, i8 -1 }, %struct.reg_value { i16 17153, i8 0 }, %struct.reg_value { i16 17173, i8 0 }, %struct.reg_value { i16 17665, i8 72 }, %struct.reg_value { i16 17920, i8 0 }, %struct.reg_value { i16 17921, i8 78 }, %struct.reg_value { i16 18433, i8 15 }, %struct.reg_value { i16 18438, i8 15 }, %struct.reg_value { i16 18457, i8 -86 }, %struct.reg_value { i16 18467, i8 62 }, %struct.reg_value { i16 18487, i8 25 }, %struct.reg_value { i16 18957, i8 0 }, %struct.reg_value { i16 19015, i8 127 }, %struct.reg_value { i16 19017, i8 -16 }, %struct.reg_value { i16 19019, i8 48 }, %struct.reg_value { i16 20480, i8 -123 }, %struct.reg_value { i16 20481, i8 -128 }], [132 x i8] zeroinitializer }, align 32
@ov7251_setting_vga_60fps = internal constant { [135 x %struct.reg_value], [132 x i8] } { [135 x %struct.reg_value] [%struct.reg_value { i16 12293, i8 0 }, %struct.reg_value { i16 12306, i8 -64 }, %struct.reg_value { i16 12307, i8 -46 }, %struct.reg_value { i16 12308, i8 4 }, %struct.reg_value { i16 12310, i8 16 }, %struct.reg_value { i16 12311, i8 0 }, %struct.reg_value { i16 12312, i8 0 }, %struct.reg_value { i16 12314, i8 0 }, %struct.reg_value { i16 12315, i8 0 }, %struct.reg_value { i16 12316, i8 0 }, %struct.reg_value { i16 12323, i8 5 }, %struct.reg_value { i16 12343, i8 -16 }, %struct.reg_value { i16 12440, i8 4 }, %struct.reg_value { i16 12441, i8 40 }, %struct.reg_value { i16 12442, i8 5 }, %struct.reg_value { i16 12443, i8 4 }, %struct.reg_value { i16 12445, i8 0 }, %struct.reg_value { i16 12464, i8 10 }, %struct.reg_value { i16 12465, i8 1 }, %struct.reg_value { i16 12467, i8 100 }, %struct.reg_value { i16 12468, i8 3 }, %struct.reg_value { i16 12469, i8 5 }, %struct.reg_value { i16 12550, i8 -38 }, %struct.reg_value { i16 13571, i8 7 }, %struct.reg_value { i16 13577, i8 16 }, %struct.reg_value { i16 13824, i8 28 }, %struct.reg_value { i16 13826, i8 98 }, %struct.reg_value { i16 13856, i8 -73 }, %struct.reg_value { i16 13858, i8 4 }, %struct.reg_value { i16 13862, i8 33 }, %struct.reg_value { i16 13863, i8 48 }, %struct.reg_value { i16 13872, i8 68 }, %struct.reg_value { i16 13873, i8 53 }, %struct.reg_value { i16 13876, i8 96 }, %struct.reg_value { i16 13878, i8 0 }, %struct.reg_value { i16 13922, i8 1 }, %struct.reg_value { i16 13923, i8 112 }, %struct.reg_value { i16 13924, i8 80 }, %struct.reg_value { i16 13926, i8 10 }, %struct.reg_value { i16 13929, i8 26 }, %struct.reg_value { i16 13930, i8 0 }, %struct.reg_value { i16 13931, i8 80 }, %struct.reg_value { i16 13939, i8 1 }, %struct.reg_value { i16 13940, i8 -1 }, %struct.reg_value { i16 13941, i8 3 }, %struct.reg_value { i16 14085, i8 -63 }, %struct.reg_value { i16 14089, i8 64 }, %struct.reg_value { i16 14140, i8 8 }, %struct.reg_value { i16 14146, i8 0 }, %struct.reg_value { i16 14167, i8 -77 }, %struct.reg_value { i16 14216, i8 0 }, %struct.reg_value { i16 14248, i8 1 }, %struct.reg_value { i16 14249, i8 -64 }, %struct.reg_value { i16 14336, i8 0 }, %struct.reg_value { i16 14337, i8 4 }, %struct.reg_value { i16 14338, i8 0 }, %struct.reg_value { i16 14339, i8 4 }, %struct.reg_value { i16 14340, i8 2 }, %struct.reg_value { i16 14341, i8 -117 }, %struct.reg_value { i16 14342, i8 1 }, %struct.reg_value { i16 14343, i8 -21 }, %struct.reg_value { i16 14344, i8 2 }, %struct.reg_value { i16 14345, i8 -128 }, %struct.reg_value { i16 14346, i8 1 }, %struct.reg_value { i16 14347, i8 -32 }, %struct.reg_value { i16 14348, i8 3 }, %struct.reg_value { i16 14349, i8 -96 }, %struct.reg_value { i16 14350, i8 3 }, %struct.reg_value { i16 14351, i8 92 }, %struct.reg_value { i16 14352, i8 0 }, %struct.reg_value { i16 14353, i8 4 }, %struct.reg_value { i16 14354, i8 0 }, %struct.reg_value { i16 14355, i8 5 }, %struct.reg_value { i16 14356, i8 17 }, %struct.reg_value { i16 14357, i8 17 }, %struct.reg_value { i16 14368, i8 64 }, %struct.reg_value { i16 14369, i8 0 }, %struct.reg_value { i16 14383, i8 14 }, %struct.reg_value { i16 14386, i8 0 }, %struct.reg_value { i16 14387, i8 5 }, %struct.reg_value { i16 14388, i8 0 }, %struct.reg_value { i16 14389, i8 12 }, %struct.reg_value { i16 14391, i8 0 }, %struct.reg_value { i16 15232, i8 0 }, %struct.reg_value { i16 15233, i8 -91 }, %struct.reg_value { i16 15234, i8 16 }, %struct.reg_value { i16 15235, i8 0 }, %struct.reg_value { i16 15236, i8 8 }, %struct.reg_value { i16 15237, i8 0 }, %struct.reg_value { i16 15238, i8 1 }, %struct.reg_value { i16 15239, i8 0 }, %struct.reg_value { i16 15240, i8 0 }, %struct.reg_value { i16 15241, i8 0 }, %struct.reg_value { i16 15242, i8 0 }, %struct.reg_value { i16 15243, i8 5 }, %struct.reg_value { i16 15244, i8 0 }, %struct.reg_value { i16 15245, i8 0 }, %struct.reg_value { i16 15246, i8 0 }, %struct.reg_value { i16 15247, i8 26 }, %struct.reg_value { i16 15252, i8 5 }, %struct.reg_value { i16 15253, i8 -14 }, %struct.reg_value { i16 15254, i8 64 }, %struct.reg_value { i16 15360, i8 -119 }, %struct.reg_value { i16 15361, i8 99 }, %struct.reg_value { i16 15362, i8 1 }, %struct.reg_value { i16 15363, i8 0 }, %struct.reg_value { i16 15364, i8 0 }, %struct.reg_value { i16 15365, i8 3 }, %struct.reg_value { i16 15366, i8 0 }, %struct.reg_value { i16 15367, i8 6 }, %struct.reg_value { i16 15372, i8 1 }, %struct.reg_value { i16 15373, i8 -48 }, %struct.reg_value { i16 15374, i8 2 }, %struct.reg_value { i16 15375, i8 10 }, %struct.reg_value { i16 16385, i8 66 }, %struct.reg_value { i16 16388, i8 4 }, %struct.reg_value { i16 16389, i8 0 }, %struct.reg_value { i16 16462, i8 1 }, %struct.reg_value { i16 17152, i8 -1 }, %struct.reg_value { i16 17153, i8 0 }, %struct.reg_value { i16 17173, i8 0 }, %struct.reg_value { i16 17665, i8 72 }, %struct.reg_value { i16 17920, i8 0 }, %struct.reg_value { i16 17921, i8 78 }, %struct.reg_value { i16 18433, i8 15 }, %struct.reg_value { i16 18438, i8 15 }, %struct.reg_value { i16 18457, i8 -86 }, %struct.reg_value { i16 18467, i8 62 }, %struct.reg_value { i16 18487, i8 25 }, %struct.reg_value { i16 18957, i8 0 }, %struct.reg_value { i16 19015, i8 127 }, %struct.reg_value { i16 19017, i8 -16 }, %struct.reg_value { i16 19019, i8 48 }, %struct.reg_value { i16 20480, i8 -123 }, %struct.reg_value { i16 20481, i8 -128 }], [132 x i8] zeroinitializer }, align 32
@ov7251_setting_vga_90fps = internal constant { [135 x %struct.reg_value], [132 x i8] } { [135 x %struct.reg_value] [%struct.reg_value { i16 12293, i8 0 }, %struct.reg_value { i16 12306, i8 -64 }, %struct.reg_value { i16 12307, i8 -46 }, %struct.reg_value { i16 12308, i8 4 }, %struct.reg_value { i16 12310, i8 16 }, %struct.reg_value { i16 12311, i8 0 }, %struct.reg_value { i16 12312, i8 0 }, %struct.reg_value { i16 12314, i8 0 }, %struct.reg_value { i16 12315, i8 0 }, %struct.reg_value { i16 12316, i8 0 }, %struct.reg_value { i16 12323, i8 5 }, %struct.reg_value { i16 12343, i8 -16 }, %struct.reg_value { i16 12440, i8 4 }, %struct.reg_value { i16 12441, i8 40 }, %struct.reg_value { i16 12442, i8 5 }, %struct.reg_value { i16 12443, i8 4 }, %struct.reg_value { i16 12445, i8 0 }, %struct.reg_value { i16 12464, i8 10 }, %struct.reg_value { i16 12465, i8 1 }, %struct.reg_value { i16 12467, i8 100 }, %struct.reg_value { i16 12468, i8 3 }, %struct.reg_value { i16 12469, i8 5 }, %struct.reg_value { i16 12550, i8 -38 }, %struct.reg_value { i16 13571, i8 7 }, %struct.reg_value { i16 13577, i8 16 }, %struct.reg_value { i16 13824, i8 28 }, %struct.reg_value { i16 13826, i8 98 }, %struct.reg_value { i16 13856, i8 -73 }, %struct.reg_value { i16 13858, i8 4 }, %struct.reg_value { i16 13862, i8 33 }, %struct.reg_value { i16 13863, i8 48 }, %struct.reg_value { i16 13872, i8 68 }, %struct.reg_value { i16 13873, i8 53 }, %struct.reg_value { i16 13876, i8 96 }, %struct.reg_value { i16 13878, i8 0 }, %struct.reg_value { i16 13922, i8 1 }, %struct.reg_value { i16 13923, i8 112 }, %struct.reg_value { i16 13924, i8 80 }, %struct.reg_value { i16 13926, i8 10 }, %struct.reg_value { i16 13929, i8 26 }, %struct.reg_value { i16 13930, i8 0 }, %struct.reg_value { i16 13931, i8 80 }, %struct.reg_value { i16 13939, i8 1 }, %struct.reg_value { i16 13940, i8 -1 }, %struct.reg_value { i16 13941, i8 3 }, %struct.reg_value { i16 14085, i8 -63 }, %struct.reg_value { i16 14089, i8 64 }, %struct.reg_value { i16 14140, i8 8 }, %struct.reg_value { i16 14146, i8 0 }, %struct.reg_value { i16 14167, i8 -77 }, %struct.reg_value { i16 14216, i8 0 }, %struct.reg_value { i16 14248, i8 1 }, %struct.reg_value { i16 14249, i8 -64 }, %struct.reg_value { i16 14336, i8 0 }, %struct.reg_value { i16 14337, i8 4 }, %struct.reg_value { i16 14338, i8 0 }, %struct.reg_value { i16 14339, i8 4 }, %struct.reg_value { i16 14340, i8 2 }, %struct.reg_value { i16 14341, i8 -117 }, %struct.reg_value { i16 14342, i8 1 }, %struct.reg_value { i16 14343, i8 -21 }, %struct.reg_value { i16 14344, i8 2 }, %struct.reg_value { i16 14345, i8 -128 }, %struct.reg_value { i16 14346, i8 1 }, %struct.reg_value { i16 14347, i8 -32 }, %struct.reg_value { i16 14348, i8 3 }, %struct.reg_value { i16 14349, i8 -96 }, %struct.reg_value { i16 14350, i8 2 }, %struct.reg_value { i16 14351, i8 60 }, %struct.reg_value { i16 14352, i8 0 }, %struct.reg_value { i16 14353, i8 4 }, %struct.reg_value { i16 14354, i8 0 }, %struct.reg_value { i16 14355, i8 5 }, %struct.reg_value { i16 14356, i8 17 }, %struct.reg_value { i16 14357, i8 17 }, %struct.reg_value { i16 14368, i8 64 }, %struct.reg_value { i16 14369, i8 0 }, %struct.reg_value { i16 14383, i8 14 }, %struct.reg_value { i16 14386, i8 0 }, %struct.reg_value { i16 14387, i8 5 }, %struct.reg_value { i16 14388, i8 0 }, %struct.reg_value { i16 14389, i8 12 }, %struct.reg_value { i16 14391, i8 0 }, %struct.reg_value { i16 15232, i8 0 }, %struct.reg_value { i16 15233, i8 -91 }, %struct.reg_value { i16 15234, i8 16 }, %struct.reg_value { i16 15235, i8 0 }, %struct.reg_value { i16 15236, i8 8 }, %struct.reg_value { i16 15237, i8 0 }, %struct.reg_value { i16 15238, i8 1 }, %struct.reg_value { i16 15239, i8 0 }, %struct.reg_value { i16 15240, i8 0 }, %struct.reg_value { i16 15241, i8 0 }, %struct.reg_value { i16 15242, i8 0 }, %struct.reg_value { i16 15243, i8 5 }, %struct.reg_value { i16 15244, i8 0 }, %struct.reg_value { i16 15245, i8 0 }, %struct.reg_value { i16 15246, i8 0 }, %struct.reg_value { i16 15247, i8 26 }, %struct.reg_value { i16 15252, i8 5 }, %struct.reg_value { i16 15253, i8 -14 }, %struct.reg_value { i16 15254, i8 64 }, %struct.reg_value { i16 15360, i8 -119 }, %struct.reg_value { i16 15361, i8 99 }, %struct.reg_value { i16 15362, i8 1 }, %struct.reg_value { i16 15363, i8 0 }, %struct.reg_value { i16 15364, i8 0 }, %struct.reg_value { i16 15365, i8 3 }, %struct.reg_value { i16 15366, i8 0 }, %struct.reg_value { i16 15367, i8 6 }, %struct.reg_value { i16 15372, i8 1 }, %struct.reg_value { i16 15373, i8 -48 }, %struct.reg_value { i16 15374, i8 2 }, %struct.reg_value { i16 15375, i8 10 }, %struct.reg_value { i16 16385, i8 66 }, %struct.reg_value { i16 16388, i8 4 }, %struct.reg_value { i16 16389, i8 0 }, %struct.reg_value { i16 16462, i8 1 }, %struct.reg_value { i16 17152, i8 -1 }, %struct.reg_value { i16 17153, i8 0 }, %struct.reg_value { i16 17173, i8 0 }, %struct.reg_value { i16 17665, i8 72 }, %struct.reg_value { i16 17920, i8 0 }, %struct.reg_value { i16 17921, i8 78 }, %struct.reg_value { i16 18433, i8 15 }, %struct.reg_value { i16 18438, i8 15 }, %struct.reg_value { i16 18457, i8 -86 }, %struct.reg_value { i16 18467, i8 62 }, %struct.reg_value { i16 18487, i8 25 }, %struct.reg_value { i16 18957, i8 0 }, %struct.reg_value { i16 19015, i8 127 }, %struct.reg_value { i16 19017, i8 -16 }, %struct.reg_value { i16 19019, i8 48 }, %struct.reg_value { i16 20480, i8 -123 }, %struct.reg_value { i16 20481, i8 -128 }], [132 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov7251_s_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 788, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not set init registers\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov7251_s_power\00", [17 x i8] zeroinitializer }, align 32
@ov7251_s_power._entry_ptr = internal global ptr @ov7251_s_power._entry, section ".printk_index", align 4
@ov7251_set_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 746, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk prepare enable failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ov7251_set_power_on\00", [44 x i8] zeroinitializer }, align 32
@ov7251_set_power_on._entry_ptr = internal global ptr @ov7251_set_power_on._entry, section ".printk_index", align 4
@ov7251_regulators_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set io voltage failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ov7251_regulators_enable\00", [39 x i8] zeroinitializer }, align 32
@ov7251_regulators_enable._entry_ptr = internal global ptr @ov7251_regulators_enable._entry, section ".printk_index", align 4
@ov7251_regulators_enable._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 586, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set analog voltage failed\0A\00", [37 x i8] zeroinitializer }, align 32
@ov7251_regulators_enable._entry_ptr.103 = internal global ptr @ov7251_regulators_enable._entry.101, section ".printk_index", align 4
@ov7251_regulators_enable._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set core voltage failed\0A\00", [39 x i8] zeroinitializer }, align 32
@ov7251_regulators_enable._entry_ptr.106 = internal global ptr @ov7251_regulators_enable._entry.104, section ".printk_index", align 4
@ov7251_regulators_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"core regulator disable failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ov7251_regulators_disable\00", [38 x i8] zeroinitializer }, align 32
@ov7251_regulators_disable._entry_ptr = internal global ptr @ov7251_regulators_disable._entry, section ".printk_index", align 4
@ov7251_regulators_disable._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"analog regulator disable failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ov7251_regulators_disable._entry_ptr.111 = internal global ptr @ov7251_regulators_disable._entry.109, section ".printk_index", align 4
@ov7251_regulators_disable._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.3, i32 621, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"io regulator disable failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ov7251_regulators_disable._entry_ptr.114 = internal global ptr @ov7251_regulators_disable._entry.112, section ".printk_index", align 4
@ov7251_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 680, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: write reg error %d: reg=%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov7251_read_reg\00", [16 x i8] zeroinitializer }, align 32
@ov7251_read_reg._entry_ptr = internal global ptr @ov7251_read_reg._entry, section ".printk_index", align 4
@ov7251_read_reg._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.3, i32 687, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: read reg error %d: reg=%x\0A\00", [33 x i8] zeroinitializer }, align 32
@ov7251_read_reg._entry_ptr.119 = internal global ptr @ov7251_read_reg._entry.117, section ".printk_index", align 4
@switch.table.ov7251_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963793, i64 9963795, i64 9963796, i64 9963797, i64 10422531]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"ov7251_i2c_driver\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1493, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1496, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"ov7251_of_match\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1487, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1274, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1281, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1286, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1292, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1294, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1298, i32 50 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1301, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1307, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1314, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1318, i32 49 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1320, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1324, i32 51 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1326, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1330, i32 53 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1332, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1336, i32 44 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1338, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1342, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1344, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [16 x i8] c"ov7251_ctrl_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 896, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant [25 x i8] c"ov7251_test_pattern_menu\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 856, i32 27 }
@___asan_gen_.248 = private unnamed_addr constant [10 x i8] c"link_freq\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 521, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1374, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"ov7251_subdev_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1251, i32 37 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1388, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1394, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1400, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1406, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1413, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1419, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1430, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1438, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1446, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1455, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 660, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 635, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 857, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 858, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [16 x i8] c"ov7251_core_ops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1231, i32 42 }
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"ov7251_video_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1235, i32 43 }
@___asan_gen_.368 = private unnamed_addr constant [22 x i8] c"ov7251_subdev_pad_ops\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1241, i32 41 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1149, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1156, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant [22 x i8] c"ov7251_mode_info_data\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 525, i32 38 }
@___asan_gen_.389 = private unnamed_addr constant [25 x i8] c"ov7251_setting_vga_30fps\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 107, i32 31 }
@___asan_gen_.392 = private unnamed_addr constant [25 x i8] c"ov7251_setting_vga_60fps\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 245, i32 31 }
@___asan_gen_.395 = private unnamed_addr constant [25 x i8] c"ov7251_setting_vga_90fps\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 383, i32 31 }
@___asan_gen_.399 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 998, i32 6 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 788, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 746, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 580, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 586, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 592, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 613, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 617, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 621, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 679, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.474 = private constant [30 x i8] c"../drivers/media/i2c/ov7251.c\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 686, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [26 x i8] c"switch.table.ov7251_probe\00", align 1
@llvm.compiler.used = appending global [161 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ov7251_i2c_driver_exit, ptr @__initcall__kmod_ov7251__293_1502_ov7251_i2c_driver_init6, ptr @ov7251_i2c_driver_exit, ptr @ov7251_probe._entry, ptr @ov7251_probe._entry.13, ptr @ov7251_probe._entry.17, ptr @ov7251_probe._entry.20, ptr @ov7251_probe._entry.23, ptr @ov7251_probe._entry.27, ptr @ov7251_probe._entry.31, ptr @ov7251_probe._entry.35, ptr @ov7251_probe._entry.39, ptr @ov7251_probe._entry.44, ptr @ov7251_probe._entry.47, ptr @ov7251_probe._entry.50, ptr @ov7251_probe._entry.53, ptr @ov7251_probe._entry.56, ptr @ov7251_probe._entry.59, ptr @ov7251_probe._entry.6, ptr @ov7251_probe._entry.62, ptr @ov7251_probe._entry.71, ptr @ov7251_probe._entry.74, ptr @ov7251_probe._entry.77, ptr @ov7251_probe._entry.80, ptr @ov7251_probe._entry.9, ptr @ov7251_probe._entry_ptr, ptr @ov7251_probe._entry_ptr.11, ptr @ov7251_probe._entry_ptr.15, ptr @ov7251_probe._entry_ptr.19, ptr @ov7251_probe._entry_ptr.22, ptr @ov7251_probe._entry_ptr.25, ptr @ov7251_probe._entry_ptr.29, ptr @ov7251_probe._entry_ptr.33, ptr @ov7251_probe._entry_ptr.37, ptr @ov7251_probe._entry_ptr.41, ptr @ov7251_probe._entry_ptr.46, ptr @ov7251_probe._entry_ptr.49, ptr @ov7251_probe._entry_ptr.52, ptr @ov7251_probe._entry_ptr.55, ptr @ov7251_probe._entry_ptr.58, ptr @ov7251_probe._entry_ptr.61, ptr @ov7251_probe._entry_ptr.65, ptr @ov7251_probe._entry_ptr.73, ptr @ov7251_probe._entry_ptr.76, ptr @ov7251_probe._entry_ptr.79, ptr @ov7251_probe._entry_ptr.8, ptr @ov7251_probe._entry_ptr.82, ptr @ov7251_read_reg._entry, ptr @ov7251_read_reg._entry.117, ptr @ov7251_read_reg._entry_ptr, ptr @ov7251_read_reg._entry_ptr.119, ptr @ov7251_regulators_disable._entry, ptr @ov7251_regulators_disable._entry.109, ptr @ov7251_regulators_disable._entry.112, ptr @ov7251_regulators_disable._entry_ptr, ptr @ov7251_regulators_disable._entry_ptr.111, ptr @ov7251_regulators_disable._entry_ptr.114, ptr @ov7251_regulators_enable._entry, ptr @ov7251_regulators_enable._entry.101, ptr @ov7251_regulators_enable._entry.104, ptr @ov7251_regulators_enable._entry_ptr, ptr @ov7251_regulators_enable._entry_ptr.103, ptr @ov7251_regulators_enable._entry_ptr.106, ptr @ov7251_s_power._entry, ptr @ov7251_s_power._entry_ptr, ptr @ov7251_s_stream._entry, ptr @ov7251_s_stream._entry.91, ptr @ov7251_s_stream._entry_ptr, ptr @ov7251_s_stream._entry_ptr.93, ptr @ov7251_set_power_on._entry, ptr @ov7251_set_power_on._entry_ptr, ptr @ov7251_write_reg._entry, ptr @ov7251_write_reg._entry_ptr, ptr @ov7251_write_seq_regs._entry, ptr @ov7251_write_seq_regs._entry_ptr, ptr @ov7251_i2c_driver, ptr @.str, ptr @ov7251_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @ov7251_probe.__key, ptr @.str.42, ptr @ov7251_probe._key, ptr @.str.43, ptr @ov7251_ctrl_ops, ptr @ov7251_test_pattern_menu, ptr @link_freq, ptr @.str.45, ptr @ov7251_subdev_ops, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @ov7251_core_ops, ptr @ov7251_video_ops, ptr @ov7251_subdev_pad_ops, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @ov7251_mode_info_data, ptr @ov7251_setting_vga_30fps, ptr @ov7251_setting_vga_60fps, ptr @ov7251_setting_vga_90fps, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @switch.table.ov7251_probe], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_test_pattern_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_probe._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_write_seq_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_s_stream._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_mode_info_data to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_setting_vga_30fps to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_setting_vga_60fps to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_setting_vga_90fps to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_s_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_set_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_regulators_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_regulators_enable._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_regulators_enable._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_regulators_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_regulators_disable._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_regulators_disable._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7251_read_reg._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ov7251_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov7251_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov7251_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov7251_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrls = getelementptr i8, ptr %1, i32 380
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #8
  %lock = getelementptr i8, ptr %1, i32 584
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_probe(ptr noundef %client) #2 align 64 {
entry:
  %fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %chip_id_high = alloca i8, align 1
  %chip_id_low = alloca i8, align 1
  %chip_rev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chip_id_high) #8
  %0 = ptrtoint ptr %chip_id_high to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %chip_id_high, align 1, !annotation !235
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chip_id_low) #8
  %1 = ptrtoint ptr %chip_id_low to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %chip_id_low, align 1, !annotation !235
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chip_rev) #8
  %2 = ptrtoint ptr %chip_rev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %chip_rev, align 1, !annotation !235
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 692, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %call.i, align 4
  %dev2 = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @dev_fwnode(ptr noundef %dev1) #8
  %call4 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call3, ptr noundef null) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ep = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 4
  %call8 = tail call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call4, ptr noundef %ep) #8
  tail call void @fwnode_handle_put(ptr noundef nonnull %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %bus_type = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp15.not = icmp eq i32 %6, 5
  br i1 %cmp15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %6, i32 noundef 5) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  %xclk = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call23, ptr %xclk, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  %8 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xclk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call33 = tail call ptr @dev_fwnode(ptr noundef %dev1) #8
  %xclk_freq = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 8
  %call.i398 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %call33, ptr noundef nonnull @.str.16, ptr noundef %xclk_freq, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i398)
  %tobool35.not = icmp eq i32 %call.i398, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %11 = ptrtoint ptr %xclk_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xclk_freq, align 4
  %13 = add i32 %12, -24240001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -480001, i32 %13)
  %14 = icmp ult i32 %13, -480001
  br i1 %14, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %12) #11
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %15 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xclk, align 4
  %call53 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end50
  %call60 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.26) #8
  %io_regulator = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %io_regulator to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call60, ptr %io_regulator, align 4
  %cmp.i399 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i399, label %do.end66, label %if.end69

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #11
  %18 = ptrtoint ptr %io_regulator to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_regulator, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end69:                                         ; preds = %if.end59
  %call70 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.30) #8
  %core_regulator = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %core_regulator to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call70, ptr %core_regulator, align 4
  %cmp.i400 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i400, label %do.end76, label %if.end79

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #11
  %22 = ptrtoint ptr %core_regulator to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core_regulator, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end79:                                         ; preds = %if.end69
  %call80 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.34) #8
  %analog_regulator = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %analog_regulator to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call80, ptr %analog_regulator, align 4
  %cmp.i401 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401, label %do.end86, label %if.end89

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #11
  %26 = ptrtoint ptr %analog_regulator to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %analog_regulator, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.end89:                                         ; preds = %if.end79
  %call90 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef 7) #8
  %enable_gpio = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 24
  %29 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call90, ptr %enable_gpio, align 4
  %cmp.i402 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i402, label %do.end96, label %do.body100

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #11
  %30 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enable_gpio, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

do.body100:                                       ; preds = %if.end89
  %lock = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.42, ptr noundef nonnull @ov7251_probe.__key) #8
  %ctrls = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 13
  %call103 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 7, ptr noundef nonnull @ov7251_probe._key, ptr noundef nonnull @.str.43) #8
  %lock106 = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 13, i32 1
  %33 = ptrtoint ptr %lock106 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %lock, ptr %lock106, align 4
  %call108 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov7251_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call110 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov7251_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call112 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov7251_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 32, i64 noundef 1, i64 noundef 32) #8
  %exposure = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 16
  %34 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call112, ptr %exposure, align 4
  %call114 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov7251_ctrl_ops, i32 noundef 9963795, i64 noundef 16, i64 noundef 1023, i64 noundef 1, i64 noundef 16) #8
  %gain = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 17
  %35 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call114, ptr %gain, align 4
  %call116 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls, ptr noundef nonnull @ov7251_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov7251_test_pattern_menu) #8
  %call118 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @ov7251_ctrl_ops, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 1) #8
  %pixel_clock = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 14
  %36 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call118, ptr %pixel_clock, align 4
  %call120 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrls, ptr noundef nonnull @ov7251_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq) #8
  %link_freq = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 15
  %37 = ptrtoint ptr %link_freq to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call120, ptr %link_freq, align 4
  %tobool122.not = icmp eq ptr %call120, null
  br i1 %tobool122.not, label %do.body100.if.end125_crit_edge, label %if.then123

do.body100.if.end125_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then123:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call120, i32 0, i32 20
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %or = or i32 %39, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %do.body100.if.end125_crit_edge
  %sd = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 2
  %ctrl_handler = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 2, i32 8
  %40 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 13, i32 9
  %41 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool128.not = icmp eq i32 %42, 0
  br i1 %tobool128.not, label %if.end137, label %do.end132

do.end132:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef %42) #11
  %43 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %error, align 4
  br label %free_ctrl

if.end137:                                        ; preds = %if.end125
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @ov7251_subdev_ops) #8
  %flags140 = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 2, i32 4
  %45 = ptrtoint ptr %flags140 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags140, align 4
  %or141 = or i32 %46, 4
  store i32 %or141, ptr %flags140, align 4
  %pad = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 3
  %flags142 = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 3, i32 4
  %47 = ptrtoint ptr %flags142 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %flags142, align 4
  %dev145 = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 2, i32 14
  %48 = ptrtoint ptr %dev145 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev1, ptr %dev145, align 4
  %function = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %49 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 131073, ptr %function, align 4
  %call150 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %do.end155, label %if.end156

do.end155:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48) #11
  br label %free_ctrl

if.end156:                                        ; preds = %if.end137
  %call158 = tail call i32 @ov7251_s_power(ptr noundef %sd, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %do.end163, label %if.end164

do.end163:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51) #11
  br label %free_ctrl

if.end164:                                        ; preds = %if.end156
  %call165 = call fastcc i32 @ov7251_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 12298, ptr noundef nonnull %chip_id_high)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.end164.power_down_crit_edge, label %lor.lhs.false167

if.end164.power_down_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_down

lor.lhs.false167:                                 ; preds = %if.end164
  %50 = ptrtoint ptr %chip_id_high to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %chip_id_high, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %51)
  %cmp168.not = icmp eq i8 %51, 119
  br i1 %cmp168.not, label %if.end174, label %lor.lhs.false167.power_down_crit_edge

lor.lhs.false167.power_down_crit_edge:            ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_down

if.end174:                                        ; preds = %lor.lhs.false167
  %call175 = call fastcc i32 @ov7251_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 12299, ptr noundef nonnull %chip_id_low)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176 = icmp slt i32 %call175, 0
  br i1 %cmp176, label %if.end174.power_down_crit_edge, label %lor.lhs.false178

if.end174.power_down_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_down

lor.lhs.false178:                                 ; preds = %if.end174
  %52 = ptrtoint ptr %chip_id_low to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %chip_id_low, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %53)
  %cmp180.not = icmp eq i8 %53, 80
  br i1 %cmp180.not, label %if.end186, label %lor.lhs.false178.power_down_crit_edge

lor.lhs.false178.power_down_crit_edge:            ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_down

if.end186:                                        ; preds = %lor.lhs.false178
  %call187 = call fastcc i32 @ov7251_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 12329, ptr noundef nonnull %chip_rev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %if.end186.power_down_crit_edge, label %if.end194

if.end186.power_down_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_down

if.end194:                                        ; preds = %if.end186
  %54 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %chip_rev, align 1
  %56 = lshr i8 %55, 4
  store i8 %56, ptr %chip_rev, align 1
  %conv200 = zext i8 %56 to i32
  %trunc = trunc i8 %56 to i4
  %switch.tableidx = add i4 %trunc, -4
  %57 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %57)
  %58 = icmp ult i4 %switch.tableidx, 3
  br i1 %58, label %switch.lookup, label %cond.false213

cond.false213:                                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %56)
  %cmp215 = icmp eq i8 %56, 7
  %cond = select i1 %cmp215, ptr @.str.69, ptr @.str.70
  br label %cond.end220

switch.lookup:                                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  %59 = sext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ov7251_probe, i32 0, i32 %59
  %60 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end220

cond.end220:                                      ; preds = %switch.lookup, %cond.false213
  %cond221 = phi ptr [ %cond, %cond.false213 ], [ %switch.load, %switch.lookup ]
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %61 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %addr, align 2
  %conv222 = zext i16 %62 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %conv200, ptr noundef nonnull %cond221, i32 noundef %conv222) #11
  %pre_isp_00 = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 19
  %call223 = call fastcc i32 @ov7251_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 24064, ptr noundef %pre_isp_00)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %cmp224 = icmp slt i32 %call223, 0
  br i1 %cmp224, label %cond.end220.power_down_crit_edge, label %if.end230

cond.end220.power_down_crit_edge:                 ; preds = %cond.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_down

if.end230:                                        ; preds = %cond.end220
  %timing_format1 = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 20
  %call231 = call fastcc i32 @ov7251_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 14368, ptr noundef %timing_format1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232 = icmp slt i32 %call231, 0
  br i1 %cmp232, label %if.end230.power_down_crit_edge, label %if.end238

if.end230.power_down_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_down

if.end238:                                        ; preds = %if.end230
  %timing_format2 = getelementptr inbounds %struct.ov7251, ptr %call.i, i32 0, i32 21
  %call239 = call fastcc i32 @ov7251_read_reg(ptr noundef nonnull %call.i, i16 noundef zeroext 14369, ptr noundef %timing_format2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %if.end238.power_down_crit_edge, label %if.end246

if.end238.power_down_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_down

if.end246:                                        ; preds = %if.end238
  %call248 = call i32 @ov7251_s_power(ptr noundef %sd, i32 noundef 0)
  %call250 = call i32 @v4l2_async_register_subdev(ptr noundef %sd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %do.end256, label %if.end257

do.end256:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.81) #11
  br label %free_ctrl

if.end257:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i) #8
  %63 = getelementptr inbounds i8, ptr %fmt.i, i32 4
  %64 = call ptr @memset(ptr %63, i32 0, i32 84)
  %65 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %fmt.i, align 4
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2
  %66 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 640, ptr %format.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 480, ptr %height.i, align 4
  %call.i403 = call i32 @ov7251_set_format(ptr noundef %sd, ptr noundef null, ptr noundef nonnull %fmt.i) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #8
  br label %cleanup

power_down:                                       ; preds = %if.end238.power_down_crit_edge, %if.end230.power_down_crit_edge, %cond.end220.power_down_crit_edge, %if.end186.power_down_crit_edge, %lor.lhs.false178.power_down_crit_edge, %if.end174.power_down_crit_edge, %lor.lhs.false167.power_down_crit_edge, %if.end164.power_down_crit_edge
  %.str.78.sink = phi ptr [ @.str.54, %if.end164.power_down_crit_edge ], [ @.str.54, %lor.lhs.false167.power_down_crit_edge ], [ @.str.57, %if.end174.power_down_crit_edge ], [ @.str.57, %lor.lhs.false178.power_down_crit_edge ], [ @.str.60, %if.end186.power_down_crit_edge ], [ @.str.72, %cond.end220.power_down_crit_edge ], [ @.str.75, %if.end230.power_down_crit_edge ], [ @.str.78, %if.end238.power_down_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.78.sink) #11
  %call261 = call i32 @ov7251_s_power(ptr noundef %sd, i32 noundef 0)
  br label %free_ctrl

free_ctrl:                                        ; preds = %power_down, %do.end256, %do.end163, %do.end155, %do.end132
  %ret.2 = phi i32 [ %44, %do.end132 ], [ %call150, %do.end155 ], [ %call158, %do.end163 ], [ -19, %power_down ], [ %call250, %do.end256 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #8
  call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %free_ctrl, %if.end257, %do.end96, %do.end86, %do.end76, %do.end66, %do.end58, %do.end48, %do.end39, %do.end29, %do.end19, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end12 ], [ -22, %do.end19 ], [ %10, %do.end29 ], [ %call.i398, %do.end39 ], [ -22, %do.end48 ], [ %call53, %do.end58 ], [ %20, %do.end66 ], [ %24, %do.end76 ], [ %28, %do.end86 ], [ %32, %do.end96 ], [ %ret.2, %free_ctrl ], [ 0, %if.end257 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chip_rev) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chip_id_low) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chip_id_high) #8
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
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %regbuf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %lock = getelementptr i8, ptr %sd, i32 584
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %power_on = getelementptr i8, ptr %sd, i32 676
  %0 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_on, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool1 = icmp ne i32 %on, 0
  %2 = zext i1 %tobool1 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  br i1 %tobool1, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %io_regulator.i.i = getelementptr i8, ptr %sd, i32 364
  %3 = ptrtoint ptr %io_regulator.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_regulator.i.i, align 4
  %call.i.i = tail call i32 @regulator_enable(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %ov7251_regulators_enable.exit.thread.i, label %if.end.i.i

ov7251_regulators_enable.exit.thread.i:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr i8, ptr %sd, i32 -4
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.99) #11
  br label %exit

if.end.i.i:                                       ; preds = %if.then5
  %analog_regulator.i.i = getelementptr i8, ptr %sd, i32 372
  %7 = ptrtoint ptr %analog_regulator.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %analog_regulator.i.i, align 4
  %call1.i.i = tail call i32 @regulator_enable(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %do.end5.i.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev6.i.i = getelementptr i8, ptr %sd, i32 -4
  %9 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev6.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.102) #11
  br label %ov7251_regulators_enable.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %core_regulator.i.i = getelementptr i8, ptr %sd, i32 368
  %11 = ptrtoint ptr %core_regulator.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core_regulator.i.i, align 4
  %call8.i.i = tail call i32 @regulator_enable(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end7.i.i.if.end.i_crit_edge, label %do.end13.i.i

if.end7.i.i.if.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end13.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev14.i.i = getelementptr i8, ptr %sd, i32 -4
  %13 = ptrtoint ptr %dev14.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.105) #11
  %15 = ptrtoint ptr %analog_regulator.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %analog_regulator.i.i, align 4
  %call17.i.i = tail call i32 @regulator_disable(ptr noundef %16) #8
  br label %ov7251_regulators_enable.exit.i

ov7251_regulators_enable.exit.i:                  ; preds = %do.end13.i.i, %do.end5.i.i
  %ret.0.i.i = phi i32 [ %call1.i.i, %do.end5.i.i ], [ %call8.i.i, %do.end13.i.i ]
  %17 = ptrtoint ptr %io_regulator.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_regulator.i.i, align 4
  %call19.i.i = tail call i32 @regulator_disable(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp.i, label %ov7251_regulators_enable.exit.i.exit_crit_edge, label %ov7251_regulators_enable.exit.i.if.end.i_crit_edge

ov7251_regulators_enable.exit.i.if.end.i_crit_edge: ; preds = %ov7251_regulators_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

ov7251_regulators_enable.exit.i.exit_crit_edge:   ; preds = %ov7251_regulators_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end.i:                                         ; preds = %ov7251_regulators_enable.exit.i.if.end.i_crit_edge, %if.end7.i.i.if.end.i_crit_edge
  %xclk.i = getelementptr i8, ptr %sd, i32 356
  %19 = ptrtoint ptr %xclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xclk.i, align 4
  %call.i24.i = tail call i32 @clk_prepare(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool.not.i25.i, label %if.end.i27.i, label %if.end.i.clk_prepare_enable.exit.i_crit_edge

if.end.i.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.i

if.end.i27.i:                                     ; preds = %if.end.i
  %call1.i26.i = tail call i32 @clk_enable(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i27.i.if.end10_crit_edge, label %if.then3.i.i

if.end.i27.i.if.end10_crit_edge:                  ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then3.i.i:                                     ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %20) #8
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i28.i = phi i32 [ %call.i24.i, %if.end.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i26.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i28.i)
  %cmp2.i = icmp slt i32 %retval.0.i28.i, 0
  br i1 %cmp2.i, label %do.end.i, label %clk_prepare_enable.exit.i.if.end10_crit_edge

clk_prepare_enable.exit.i.if.end10_crit_edge:     ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end.i:                                         ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %sd, i32 -4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.97) #11
  tail call fastcc void @ov7251_regulators_disable(ptr noundef %add.ptr.i) #8
  br label %exit

if.end10:                                         ; preds = %clk_prepare_enable.exit.i.if.end10_crit_edge, %if.end.i27.i.if.end10_crit_edge
  %enable_gpio.i = getelementptr i8, ptr %sd, i32 680
  %23 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %24, i32 noundef 1) #8
  %xclk_freq.i = getelementptr i8, ptr %sd, i32 360
  %25 = ptrtoint ptr %xclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xclk_freq.i, align 4
  %sub.i = add i32 %26, 999
  %div.i = udiv i32 %sub.i, 1000
  %sub6.i = add nuw nsw i32 %div.i, 65535999
  %div11.i = udiv i32 %sub6.i, %div.i
  %add12.i = add nuw nsw i32 %div11.i, 1000
  tail call void @usleep_range_state(i32 noundef %div11.i, i32 noundef %add12.i, i32 noundef 2) #8
  %27 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i) #8
  %29 = ptrtoint ptr %regbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %regbuf.i.i, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %27, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %28, align 1
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %regbuf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i32 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i32, label %if.end10.do.end_crit_edge, label %for.inc.i

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.i:                                        ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i) #8
  %34 = ptrtoint ptr %regbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 48, ptr %regbuf.i.i, align 1
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 59, ptr %27, align 1
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %28, align 1
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %38, ptr noundef nonnull %regbuf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %cmp.i.i32.1 = icmp slt i32 %call.i.i.i.1, 0
  br i1 %cmp.i.i32.1, label %for.inc.i.do.end_crit_edge, label %for.inc.i.1

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #8
  %39 = ptrtoint ptr %power_on to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %power_on, align 4
  br label %exit

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %if.end10.do.end_crit_edge
  %.lcssa48 = phi i32 [ 259, %if.end10.do.end_crit_edge ], [ 12347, %for.inc.i.do.end_crit_edge ]
  %.lcssa = phi i32 [ 1, %if.end10.do.end_crit_edge ], [ 2, %for.inc.i.do.end_crit_edge ]
  %call.i.i.i.lcssa = phi i32 [ %call.i.i.i, %if.end10.do.end_crit_edge ], [ %call.i.i.i.1, %for.inc.i.do.end_crit_edge ]
  %dev.i.i33 = getelementptr i8, ptr %sd, i32 -4
  %40 = ptrtoint ptr %dev.i.i33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %call.i.i.i.lcssa, i32 noundef %.lcssa48, i32 noundef %.lcssa) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #8
  %42 = ptrtoint ptr %dev.i.i33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.95) #11
  call fastcc void @ov7251_set_power_off(ptr noundef %add.ptr.i)
  br label %exit

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %xclk.i35 = getelementptr i8, ptr %sd, i32 356
  %44 = ptrtoint ptr %xclk.i35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xclk.i35, align 4
  tail call void @clk_disable(ptr noundef %45) #8
  tail call void @clk_unprepare(ptr noundef %45) #8
  %enable_gpio.i36 = getelementptr i8, ptr %sd, i32 680
  %46 = ptrtoint ptr %enable_gpio.i36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %enable_gpio.i36, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %47, i32 noundef 0) #8
  tail call fastcc void @ov7251_regulators_disable(ptr noundef %add.ptr.i) #8
  %48 = ptrtoint ptr %power_on to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %power_on, align 4
  br label %exit

exit:                                             ; preds = %if.else, %do.end, %for.inc.i.1, %do.end.i, %ov7251_regulators_enable.exit.i.exit_crit_edge, %ov7251_regulators_enable.exit.thread.i, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 0, %entry.exit_crit_edge ], [ %call.i.i.i.lcssa, %do.end ], [ 0, %for.inc.i.1 ], [ 0, %if.else ], [ %call.i.i, %ov7251_regulators_enable.exit.thread.i ], [ %ret.0.i.i, %ov7251_regulators_enable.exit.i.exit_crit_edge ], [ %retval.0.i28.i, %do.end.i ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov7251_read_reg(ptr nocapture noundef readonly %ov7251, i16 noundef zeroext %reg, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  %regbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regbuf) #8
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
  %4 = ptrtoint ptr %ov7251 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ov7251, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %regbuf, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef %call.i, i32 noundef %conv) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ov7251 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ov7251, align 4
  %call.i30 = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef %val, i32 noundef 1, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp9 = icmp slt i32 %call.i30, 0
  br i1 %cmp9, label %do.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 1
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.116, i32 noundef %call.i30, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i30, %do.end14 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regbuf) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_entity_init_cfg(ptr noundef %subdev, ptr noundef readonly %sd_state) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #8
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
  store i32 640, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 480, ptr %height, align 4
  %call = call i32 @ov7251_set_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef nonnull %fmt)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %regbuf.i.i48 = alloca [3 x i8], align 1
  %regbuf.i.i37 = alloca [3 x i8], align 1
  %regbuf.i.i34 = alloca [3 x i8], align 1
  %regbuf.i.i25 = alloca [5 x i8], align 1
  %regbuf.i.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -388
  %power_on = getelementptr i8, ptr %1, i32 296
  %2 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_on, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963793, label %sw.bb
    i32 9963795, label %sw.bb1
    i32 10422531, label %sw.bb4
    i32 9963796, label %sw.bb7
    i32 9963797, label %sw.bb10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and.i = lshr i32 %8, 12
  %9 = trunc i32 %and.i to i8
  %conv.i = and i8 %9, 15
  %and1.i = lshr i32 %8, 4
  %conv3.i = trunc i32 %and1.i to i8
  %exposure.tr.i = trunc i32 %8 to i8
  %conv6.i = shl i8 %exposure.tr.i, 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %regbuf.i.i) #8
  %10 = getelementptr inbounds [5 x i8], ptr %regbuf.i.i, i32 0, i32 1
  %11 = getelementptr inbounds [5 x i8], ptr %regbuf.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %regbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 53, ptr %regbuf.i.i, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %10, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %11, align 1
  %val.sroa.5.0..sroa_idx.i = getelementptr inbounds [5 x i8], ptr %regbuf.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %val.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3.i, ptr %val.sroa.5.0..sroa_idx.i, align 1
  %val.sroa.7.0..sroa_idx.i = getelementptr inbounds [5 x i8], ptr %regbuf.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %val.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6.i, ptr %val.sroa.7.0..sroa_idx.i, align 1
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %regbuf.i.i, i32 noundef 5, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp12.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp12.i.i, label %do.end.i.i, label %sw.bb.ov7251_set_exposure.exit_crit_edge

sw.bb.ov7251_set_exposure.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov7251_set_exposure.exit

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr i8, ptr %1, i32 -384
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %call.i.i.i, i32 noundef 13568) #11
  br label %ov7251_set_exposure.exit

ov7251_set_exposure.exit:                         ; preds = %do.end.i.i, %sw.bb.ov7251_set_exposure.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %do.end.i.i ], [ 0, %sw.bb.ov7251_set_exposure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %regbuf.i.i) #8
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val2, align 4
  %and.i26 = lshr i32 %22, 8
  %23 = trunc i32 %and.i26 to i8
  %conv.i27 = and i8 %23, 3
  %conv2.i = trunc i32 %22 to i8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %regbuf.i.i25) #8
  %24 = getelementptr inbounds [5 x i8], ptr %regbuf.i.i25, i32 0, i32 1
  %25 = getelementptr inbounds [5 x i8], ptr %regbuf.i.i25, i32 0, i32 2
  %26 = getelementptr inbounds [5 x i8], ptr %regbuf.i.i25, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %26, align 1
  %28 = ptrtoint ptr %regbuf.i.i25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 53, ptr %regbuf.i.i25, align 1
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 10, ptr %24, align 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i27, ptr %25, align 1
  %val.sroa.5.0..sroa_idx.i28 = getelementptr inbounds [5 x i8], ptr %regbuf.i.i25, i32 0, i32 3
  %31 = ptrtoint ptr %val.sroa.5.0..sroa_idx.i28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv2.i, ptr %val.sroa.5.0..sroa_idx.i28, align 1
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i29 = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %regbuf.i.i25, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i29)
  %cmp12.i.i30 = icmp slt i32 %call.i.i.i29, 0
  br i1 %cmp12.i.i30, label %do.end.i.i32, label %sw.bb1.ov7251_set_gain.exit_crit_edge

sw.bb1.ov7251_set_gain.exit_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov7251_set_gain.exit

do.end.i.i32:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i31 = getelementptr i8, ptr %1, i32 -384
  %34 = ptrtoint ptr %dev.i.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %call.i.i.i29, i32 noundef 13578) #11
  br label %ov7251_set_gain.exit

ov7251_set_gain.exit:                             ; preds = %do.end.i.i32, %sw.bb1.ov7251_set_gain.exit_crit_edge
  %retval.0.i.i33 = phi i32 [ %call.i.i.i29, %do.end.i.i32 ], [ 0, %sw.bb1.ov7251_set_gain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %regbuf.i.i25) #8
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val5, align 4
  %pre_isp_00.i = getelementptr i8, ptr %1, i32 201
  %38 = ptrtoint ptr %pre_isp_00.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pre_isp_00.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  %40 = and i8 %39, 127
  %masksel.i = select i1 %tobool.not.i, i8 0, i8 -128
  %val.0.i = or i8 %40, %masksel.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i34) #8
  %41 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i34, i32 0, i32 1
  %42 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i34, i32 0, i32 2
  %43 = ptrtoint ptr %regbuf.i.i34 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 94, ptr %regbuf.i.i34, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %41, align 1
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %val.0.i, ptr %42, align 1
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i35 = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull %regbuf.i.i34, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i35)
  %cmp.i.i = icmp slt i32 %call.i.i.i35, 0
  br i1 %cmp.i.i, label %ov7251_write_reg.exit.i, label %if.then5.i

ov7251_write_reg.exit.i:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i36 = getelementptr i8, ptr %1, i32 -384
  %48 = ptrtoint ptr %dev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i36, align 4
  %conv8.i.i = zext i8 %val.0.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %call.i.i.i35, i32 noundef 24064, i32 noundef %conv8.i.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i34) #8
  br label %cleanup

if.then5.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i34) #8
  %50 = ptrtoint ptr %pre_isp_00.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %val.0.i, ptr %pre_isp_00.i, align 1
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %51 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val8, align 4
  %timing_format2.i = getelementptr i8, ptr %1, i32 203
  %53 = ptrtoint ptr %timing_format2.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %timing_format2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i38 = icmp eq i32 %52, 0
  %55 = and i8 %54, -5
  %masksel.i39 = select i1 %tobool.not.i38, i8 0, i8 4
  %val.0.i40 = or i8 %55, %masksel.i39
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i37) #8
  %56 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i37, i32 0, i32 1
  %57 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i37, i32 0, i32 2
  %58 = ptrtoint ptr %regbuf.i.i37 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 56, ptr %regbuf.i.i37, align 1
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 33, ptr %56, align 1
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %val.0.i40, ptr %57, align 1
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %62, ptr noundef nonnull %regbuf.i.i37, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i41)
  %cmp.i.i42 = icmp slt i32 %call.i.i.i41, 0
  br i1 %cmp.i.i42, label %ov7251_write_reg.exit.i45, label %if.then5.i46

ov7251_write_reg.exit.i45:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i43 = getelementptr i8, ptr %1, i32 -384
  %63 = ptrtoint ptr %dev.i.i43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i43, align 4
  %conv8.i.i44 = zext i8 %val.0.i40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %call.i.i.i41, i32 noundef 14369, i32 noundef %conv8.i.i44) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i37) #8
  br label %cleanup

if.then5.i46:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i37) #8
  %65 = ptrtoint ptr %timing_format2.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %val.0.i40, ptr %timing_format2.i, align 1
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %66 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val11, align 4
  %timing_format1.i = getelementptr i8, ptr %1, i32 202
  %68 = ptrtoint ptr %timing_format1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %timing_format1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i49 = icmp eq i32 %67, 0
  %70 = and i8 %69, -5
  %masksel.i50 = select i1 %tobool.not.i49, i8 0, i8 4
  %val.0.i51 = or i8 %70, %masksel.i50
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i48) #8
  %71 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i48, i32 0, i32 1
  %72 = getelementptr inbounds [3 x i8], ptr %regbuf.i.i48, i32 0, i32 2
  %73 = ptrtoint ptr %regbuf.i.i48 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 56, ptr %regbuf.i.i48, align 1
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 32, ptr %71, align 1
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %val.0.i51, ptr %72, align 1
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i52 = call i32 @i2c_transfer_buffer_flags(ptr noundef %77, ptr noundef nonnull %regbuf.i.i48, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i52)
  %cmp.i.i53 = icmp slt i32 %call.i.i.i52, 0
  br i1 %cmp.i.i53, label %ov7251_write_reg.exit.i56, label %if.then5.i57

ov7251_write_reg.exit.i56:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i54 = getelementptr i8, ptr %1, i32 -384
  %78 = ptrtoint ptr %dev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i54, align 4
  %conv8.i.i55 = zext i8 %val.0.i51 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %call.i.i.i52, i32 noundef 14368, i32 noundef %conv8.i.i55) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i48) #8
  br label %cleanup

if.then5.i57:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i48) #8
  %80 = ptrtoint ptr %timing_format1.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %val.0.i51, ptr %timing_format1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i57, %ov7251_write_reg.exit.i56, %if.then5.i46, %ov7251_write_reg.exit.i45, %if.then5.i, %ov7251_write_reg.exit.i, %ov7251_set_gain.exit, %ov7251_set_exposure.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.i33, %ov7251_set_gain.exit ], [ %retval.0.i.i, %ov7251_set_exposure.exit ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then5.i ], [ %call.i.i.i35, %ov7251_write_reg.exit.i ], [ 0, %if.then5.i46 ], [ %call.i.i.i41, %ov7251_write_reg.exit.i45 ], [ 0, %if.then5.i57 ], [ %call.i.i.i52, %ov7251_write_reg.exit.i56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_s_stream(ptr noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  %regbuf.i32 = alloca [3 x i8], align 1
  %regbuf.i = alloca [3 x i8], align 1
  %regbuf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -8
  %lock = getelementptr i8, ptr %subdev, i32 584
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %current_mode = getelementptr i8, ptr %subdev, i32 376
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_mode, align 4
  %data_size = getelementptr inbounds %struct.ov7251_mode_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %data = getelementptr inbounds %struct.ov7251_mode_info, ptr %1, i32 0, i32 2
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
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i.i) #8
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
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %regbuf.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #8
  %inc.i = add nuw i32 %i.012.i, 1
  %incdec.ptr.i = getelementptr %struct.reg_value, ptr %settings.addr.011.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i16 %9 to i32
  %dev.i.i = getelementptr i8, ptr %subdev, i32 -4
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %conv8.i.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %call.i.i.i, i32 noundef %conv.i.i, i32 noundef %conv8.i.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i.i) #8
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %22 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %current_mode, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %height = getelementptr inbounds %struct.ov7251_mode_info, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.89, i32 noundef %25, i32 noundef %27) #11
  br label %exit

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ctrls = getelementptr i8, ptr %subdev, i32 380
  %call6 = call i32 @__v4l2_ctrl_handler_setup(ptr noundef %ctrls) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr i8, ptr %subdev, i32 -4
  %28 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.92) #11
  br label %exit

if.end13:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i) #8
  %30 = getelementptr inbounds [3 x i8], ptr %regbuf.i, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i8], ptr %regbuf.i, i32 0, i32 2
  %32 = ptrtoint ptr %regbuf.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %regbuf.i, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %30, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %31, align 1
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %regbuf.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end13.ov7251_write_reg.exit_crit_edge

if.end13.ov7251_write_reg.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov7251_write_reg.exit

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %subdev, i32 -4
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %call.i.i, i32 noundef 256, i32 noundef 1) #11
  br label %ov7251_write_reg.exit

ov7251_write_reg.exit:                            ; preds = %do.end.i, %if.end13.ov7251_write_reg.exit_crit_edge
  %retval.0.i31 = phi i32 [ %call.i.i, %do.end.i ], [ 0, %if.end13.ov7251_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i) #8
  br label %exit

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf.i32) #8
  %39 = getelementptr inbounds [3 x i8], ptr %regbuf.i32, i32 0, i32 1
  %40 = getelementptr inbounds [3 x i8], ptr %regbuf.i32, i32 0, i32 2
  %41 = ptrtoint ptr %regbuf.i32 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %regbuf.i32, align 1
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %39, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %40, align 1
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i33 = call i32 @i2c_transfer_buffer_flags(ptr noundef %45, ptr noundef nonnull %regbuf.i32, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %cmp.i34 = icmp slt i32 %call.i.i33, 0
  br i1 %cmp.i34, label %do.end.i36, label %if.else.ov7251_write_reg.exit38_crit_edge

if.else.ov7251_write_reg.exit38_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov7251_write_reg.exit38

do.end.i36:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i35 = getelementptr i8, ptr %subdev, i32 -4
  %46 = ptrtoint ptr %dev.i35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %call.i.i33, i32 noundef 256, i32 noundef 0) #11
  br label %ov7251_write_reg.exit38

ov7251_write_reg.exit38:                          ; preds = %do.end.i36, %if.else.ov7251_write_reg.exit38_crit_edge
  %retval.0.i37 = phi i32 [ %call.i.i33, %do.end.i36 ], [ 0, %if.else.ov7251_write_reg.exit38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf.i32) #8
  br label %exit

exit:                                             ; preds = %ov7251_write_reg.exit38, %ov7251_write_reg.exit, %do.end11, %do.end
  %ret.0 = phi i32 [ %call.i.i.i, %do.end ], [ %call6, %do.end11 ], [ %retval.0.i31, %ov7251_write_reg.exit ], [ %retval.0.i37, %ov7251_write_reg.exit38 ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_get_frame_interval(ptr noundef %subdev, ptr nocapture noundef writeonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %subdev, i32 584
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %current_mode = getelementptr i8, ptr %subdev, i32 376
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_mode, align 4
  %timeperframe = getelementptr inbounds %struct.ov7251_mode_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %timeperframe, align 4
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_set_frame_interval(ptr noundef %subdev, ptr nocapture noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %subdev, i32 584
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %current_mode.i = getelementptr i8, ptr %subdev, i32 376
  %0 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_mode.i, align 4
  %denominator.i.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %denominator.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator.i.i, align 4
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interval, align 4
  %shr.i.i = lshr i32 %5, 1
  %add.i.i = add i32 %shr.i.i, %3
  %div.i.i = udiv i32 %add.i.i, %5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %7)
  %cmp2.not.i = icmp eq i32 %7, 640
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %entry.ov7251_find_mode_by_ival.exit_crit_edge

entry.ov7251_find_mode_by_ival.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov7251_find_mode_by_ival.exit

lor.lhs.false.i:                                  ; preds = %entry
  %height.i = getelementptr inbounds %struct.ov7251_mode_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %9)
  %cmp5.not.i = icmp eq i32 %9, 480
  br i1 %cmp5.not.i, label %if.end.2.i, label %lor.lhs.false.i.ov7251_find_mode_by_ival.exit_crit_edge

lor.lhs.false.i.ov7251_find_mode_by_ival.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov7251_find_mode_by_ival.exit

if.end.2.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %div.i.i, -30
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  %sub.1.i = add i32 %div.i.i, -60
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp11.1.i = icmp ult i32 %11, %10
  %n.1.1.i = zext i1 %cmp11.1.i to i32
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %10) #8
  %sub.2.i = add i32 %div.i.i, -90
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp11.2.i = icmp ult i32 %13, %12
  %n.1.2.i = select i1 %cmp11.2.i, i32 2, i32 %n.1.1.i
  br label %ov7251_find_mode_by_ival.exit

ov7251_find_mode_by_ival.exit:                    ; preds = %if.end.2.i, %lor.lhs.false.i.ov7251_find_mode_by_ival.exit_crit_edge, %entry.ov7251_find_mode_by_ival.exit_crit_edge
  %n.2.2.i = phi i32 [ %n.1.2.i, %if.end.2.i ], [ 0, %entry.ov7251_find_mode_by_ival.exit_crit_edge ], [ 0, %lor.lhs.false.i.ov7251_find_mode_by_ival.exit_crit_edge ]
  %arrayidx15.i = getelementptr [3 x %struct.ov7251_mode_info], ptr @ov7251_mode_info_data, i32 0, i32 %n.2.2.i
  %cmp.not = icmp eq ptr %arrayidx15.i, %1
  br i1 %cmp.not, label %ov7251_find_mode_by_ival.exit.if.end34_crit_edge, label %if.then

ov7251_find_mode_by_ival.exit.if.end34_crit_edge: ; preds = %ov7251_find_mode_by_ival.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then:                                          ; preds = %ov7251_find_mode_by_ival.exit
  %pixel_clock = getelementptr i8, ptr %subdev, i32 564
  %14 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pixel_clock, align 4
  %pixel_clock2 = getelementptr [3 x %struct.ov7251_mode_info], ptr @ov7251_mode_info_data, i32 0, i32 %n.2.2.i, i32 4
  %16 = ptrtoint ptr %pixel_clock2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixel_clock2, align 4
  %conv = zext i32 %17 to i64
  %call3 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %15, i64 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.exit_crit_edge, label %if.end

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %if.then
  %link_freq = getelementptr i8, ptr %subdev, i32 568
  %18 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link_freq, align 4
  %link_freq7 = getelementptr [3 x %struct.ov7251_mode_info], ptr @ov7251_mode_info_data, i32 0, i32 %n.2.2.i, i32 5
  %20 = ptrtoint ptr %link_freq7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_freq7, align 4
  %call8 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %19, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.exit_crit_edge, label %if.end12

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end12:                                         ; preds = %if.end
  %exposure = getelementptr i8, ptr %subdev, i32 572
  %22 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %exposure, align 4
  %exposure_max = getelementptr [3 x %struct.ov7251_mode_info], ptr @ov7251_mode_info_data, i32 0, i32 %n.2.2.i, i32 6
  %24 = ptrtoint ptr %exposure_max to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %exposure_max, align 4
  %conv13 = zext i16 %25 to i64
  %exposure_def = getelementptr [3 x %struct.ov7251_mode_info], ptr @ov7251_mode_info_data, i32 0, i32 %n.2.2.i, i32 7
  %26 = ptrtoint ptr %exposure_def to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %exposure_def, align 2
  %conv14 = zext i16 %27 to i64
  %call15 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %23, i64 noundef 1, i64 noundef %conv13, i64 noundef 1, i64 noundef %conv14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end12.exit_crit_edge, label %if.end19

if.end12.exit_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end19:                                         ; preds = %if.end12
  %28 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %exposure, align 4
  %conv22 = zext i16 %27 to i32
  %call23 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %29, i32 noundef %conv22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end19.exit_crit_edge, label %if.end27

if.end19.exit_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end27:                                         ; preds = %if.end19
  %gain = getelementptr i8, ptr %subdev, i32 576
  %30 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gain, align 4
  %call28 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %31, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.exit_crit_edge, label %if.end32

if.end27.exit_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx15.i, ptr %current_mode.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %ov7251_find_mode_by_ival.exit.if.end34_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end32 ], [ 0, %ov7251_find_mode_by_ival.exit.if.end34_crit_edge ]
  %33 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %current_mode.i, align 4
  %timeperframe = getelementptr inbounds %struct.ov7251_mode_info, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %timeperframe, align 4
  %37 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %interval, align 4
  br label %exit

exit:                                             ; preds = %if.end34, %if.end27.exit_crit_edge, %if.end19.exit_crit_edge, %if.end12.exit_crit_edge, %if.end.exit_crit_edge, %if.then.exit_crit_edge
  %ret.1 = phi i32 [ %call3, %if.then.exit_crit_edge ], [ %call8, %if.end.exit_crit_edge ], [ %call15, %if.end12.exit_crit_edge ], [ %call23, %if.end19.exit_crit_edge ], [ %call28, %if.end27.exit_crit_edge ], [ %ret.0, %if.end34 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov7251_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
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
  store i32 8202, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov7251_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8202, i32 %1)
  %cmp.not = icmp eq i32 %1, 8202
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp ugt i32 %3, 2
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [3 x %struct.ov7251_mode_info], ptr @ov7251_mode_info_data, i32 0, i32 %3
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
  %height = getelementptr [3 x %struct.ov7251_mode_info], ptr @ov7251_mode_info_data, i32 0, i32 %3, i32 1
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

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_enum_frame_ival(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fie, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %3)
  %cmp3.not = icmp eq i32 %3, 640
  br i1 %cmp3.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %5)
  %cmp6.not = icmp eq i32 %5, 480
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %1, label %lor.lhs.false.2 [
    i32 0, label %if.end.if.then8_crit_edge
    i32 1, label %if.then8.fold.split
  ]

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8.fold.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.2.if.then8_crit_edge, %if.then8.fold.split, %if.end.if.then8_crit_edge
  %i.021.lcssa = phi i32 [ %1, %if.end.if.then8_crit_edge ], [ 2, %lor.lhs.false.2.if.then8_crit_edge ], [ 1, %if.then8.fold.split ]
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %timeperframe = getelementptr [3 x %struct.ov7251_mode_info], ptr @ov7251_mode_info_data, i32 0, i32 %i.021.lcssa, i32 8
  %7 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %timeperframe, align 4
  %9 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %interval, align 4
  br label %cleanup

lor.lhs.false.2:                                  ; preds = %if.end
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %.pr)
  %cmp6.not.2 = icmp eq i32 %.pr, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp7.2 = icmp eq i32 %1, 2
  %or.cond = select i1 %cmp6.not.2, i1 %cmp7.2, i1 false
  br i1 %or.cond, label %lor.lhs.false.2.if.then8_crit_edge, label %lor.lhs.false.2.cleanup_crit_edge

lor.lhs.false.2.cleanup_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.2.if.then8_crit_edge:               ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

cleanup:                                          ; preds = %lor.lhs.false.2.cleanup_crit_edge, %if.then8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 584
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %1, label %entry.__ov7251_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__ov7251_get_pad_format.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ov7251_get_pad_format.exit

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
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !237

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__ov7251_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fmt.i = getelementptr i8, ptr %sd, i32 292
  br label %__ov7251_get_pad_format.exit

__ov7251_get_pad_format.exit:                     ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__ov7251_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %fmt.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__ov7251_get_pad_format.exit_crit_edge ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format1, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 584
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %1, label %entry.__ov7251_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__ov7251_get_pad_crop.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ov7251_get_pad_crop.exit

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
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !237

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i, i32 1
  br label %__ov7251_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %crop.i = getelementptr i8, ptr %sd, i32 340
  br label %__ov7251_get_pad_crop.exit

__ov7251_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %entry.__ov7251_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %entry.__ov7251_get_pad_crop.exit_crit_edge ]
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format2, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %call4 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov7251_mode_info_data, i32 noundef 3, i32 noundef 36, i32 noundef 0, i32 noundef 4, i32 noundef %10, i32 noundef %12) #8
  %13 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call4, align 4
  %width6 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %width6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %width6, align 4
  %height7 = getelementptr inbounds %struct.ov7251_mode_info, ptr %call4, i32 0, i32 1
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
  br i1 %cmp, label %if.then, label %__ov7251_get_pad_crop.exit.if.end41_crit_edge

__ov7251_get_pad_crop.exit.if.end41_crit_edge:    ; preds = %__ov7251_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then:                                          ; preds = %__ov7251_get_pad_crop.exit
  %pixel_clock = getelementptr i8, ptr %sd, i32 564
  %21 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pixel_clock, align 4
  %pixel_clock10 = getelementptr inbounds %struct.ov7251_mode_info, ptr %call4, i32 0, i32 4
  %23 = ptrtoint ptr %pixel_clock10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pixel_clock10, align 4
  %conv = zext i32 %24 to i64
  %call11 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %22, i64 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.exit_crit_edge, label %if.end

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %if.then
  %link_freq = getelementptr i8, ptr %sd, i32 568
  %25 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link_freq, align 4
  %link_freq15 = getelementptr inbounds %struct.ov7251_mode_info, ptr %call4, i32 0, i32 5
  %27 = ptrtoint ptr %link_freq15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_freq15, align 4
  %call16 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %26, i32 noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end.exit_crit_edge, label %if.end20

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end20:                                         ; preds = %if.end
  %exposure = getelementptr i8, ptr %sd, i32 572
  %29 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %exposure, align 4
  %exposure_max = getelementptr inbounds %struct.ov7251_mode_info, ptr %call4, i32 0, i32 6
  %31 = ptrtoint ptr %exposure_max to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %exposure_max, align 4
  %conv21 = zext i16 %32 to i64
  %exposure_def = getelementptr inbounds %struct.ov7251_mode_info, ptr %call4, i32 0, i32 7
  %33 = ptrtoint ptr %exposure_def to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %exposure_def, align 2
  %conv22 = zext i16 %34 to i64
  %call23 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %30, i64 noundef 1, i64 noundef %conv21, i64 noundef 1, i64 noundef %conv22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end20.exit_crit_edge, label %if.end27

if.end20.exit_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end27:                                         ; preds = %if.end20
  %35 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %exposure, align 4
  %37 = ptrtoint ptr %exposure_def to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %exposure_def, align 2
  %conv30 = zext i16 %38 to i32
  %call31 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %36, i32 noundef %conv30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end27.exit_crit_edge, label %if.end35

if.end27.exit_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end35:                                         ; preds = %if.end27
  %gain = getelementptr i8, ptr %sd, i32 576
  %39 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gain, align 4
  %call36 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %40, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end35.exit_crit_edge, label %if.end40

if.end35.exit_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %current_mode = getelementptr i8, ptr %sd, i32 376
  %41 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call4, ptr %current_mode, align 4
  %42 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %format, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %__ov7251_get_pad_crop.exit.if.end41_crit_edge
  %43 = phi i32 [ %.pr, %if.end40 ], [ %20, %__ov7251_get_pad_crop.exit.if.end41_crit_edge ]
  %ret.0 = phi i32 [ %call36, %if.end40 ], [ 0, %__ov7251_get_pad_crop.exit.if.end41_crit_edge ]
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %43, label %if.end41.cond.end100_crit_edge [
    i32 0, label %sw.bb.i160
    i32 1, label %sw.bb1.i163
  ]

if.end41.cond.end100_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end100

sw.bb.i160:                                       ; preds = %if.end41
  %45 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pad, align 4
  %num_pads.i.i157 = getelementptr i8, ptr %sd, i32 32
  %47 = ptrtoint ptr %num_pads.i.i157 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_pads.i.i157, align 4
  %conv.i.i158 = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv.i.i158)
  %cmp.not.i.i159 = icmp ult i32 %46, %conv.i.i158
  br i1 %cmp.not.i.i159, label %sw.bb.i160.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i161, !prof !237

sw.bb.i160.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i161:                                    ; preds = %sw.bb.i160
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i161, %sw.bb.i160.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i162 = phi i32 [ 0, %do.end.i.i161 ], [ %46, %sw.bb.i160.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %49 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %50, i32 %spec.select.i.i162
  br label %cond.end100

sw.bb1.i163:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %fmt.i = getelementptr i8, ptr %sd, i32 292
  br label %cond.end100

cond.end100:                                      ; preds = %sw.bb1.i163, %v4l2_subdev_get_try_format.exit.i, %if.end41.cond.end100_crit_edge
  %retval.0.i164 = phi ptr [ %fmt.i, %sw.bb1.i163 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.end41.cond.end100_crit_edge ]
  %51 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width6, align 4
  %53 = ptrtoint ptr %retval.0.i164 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %retval.0.i164, align 4
  %54 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height8, align 4
  %height48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i164, i32 0, i32 1
  %56 = ptrtoint ptr %height48 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %height48, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i164, i32 0, i32 2
  %57 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8202, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i164, i32 0, i32 3
  %58 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i164, i32 0, i32 4
  %59 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %colorspace, align 4
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i164, i32 0, i32 5
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %60, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i164, i32 0, i32 6
  %62 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i164, i32 0, i32 7
  %63 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 2, ptr %xfer_func, align 4
  %64 = call ptr @memcpy(ptr %format2, ptr %retval.0.i164, i32 48)
  br label %exit

exit:                                             ; preds = %cond.end100, %if.end35.exit_crit_edge, %if.end27.exit_crit_edge, %if.end20.exit_crit_edge, %if.end.exit_crit_edge, %if.then.exit_crit_edge
  %ret.1 = phi i32 [ %call11, %if.then.exit_crit_edge ], [ %call16, %if.end.exit_crit_edge ], [ %call23, %if.end20.exit_crit_edge ], [ %call31, %if.end27.exit_crit_edge ], [ %call36, %if.end35.exit_crit_edge ], [ %ret.0, %cond.end100 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7251_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 584
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %3, label %if.end.__ov7251_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__ov7251_get_pad_crop.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ov7251_get_pad_crop.exit

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
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !237

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %6, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i, i32 1
  br label %__ov7251_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %crop.i = getelementptr i8, ptr %sd, i32 340
  br label %__ov7251_get_pad_crop.exit

__ov7251_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__ov7251_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__ov7251_get_pad_crop.exit_crit_edge ]
  %11 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %__ov7251_get_pad_crop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__ov7251_get_pad_crop.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov7251_set_power_off(ptr nocapture noundef readonly %ov7251) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xclk = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 7
  %0 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xclk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  %enable_gpio = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 24
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  tail call fastcc void @ov7251_regulators_disable(ptr noundef %ov7251)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov7251_regulators_disable(ptr nocapture noundef readonly %ov7251) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core_regulator = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 10
  %0 = ptrtoint ptr %core_regulator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_regulator, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.107) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %analog_regulator = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 11
  %4 = ptrtoint ptr %analog_regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %analog_regulator, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.110) #11
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %if.end.if.end8_crit_edge
  %io_regulator = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 9
  %8 = ptrtoint ptr %io_regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_regulator, align 4
  %call9 = tail call i32 @regulator_disable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.ov7251, ptr %ov7251, i32 0, i32 1
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.113) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end8.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !217, !218, !219, !220, !222, !223, !224}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @__initcall__kmod_ov7251__293_1502_ov7251_i2c_driver_init6, !1, !"__initcall__kmod_ov7251__293_1502_ov7251_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov7251.c", i32 1502, i32 1}
!2 = !{ptr @__exitcall_ov7251_i2c_driver_exit, !1, !"__exitcall_ov7251_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov7251.c", i32 1504, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov7251.c", i32 1505, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov7251.c", i32 1506, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov7251.c", i32 1496, i32 12}
!12 = !{ptr @ov7251_i2c_driver, !13, !"ov7251_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov7251.c", i32 1493, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov7251.c", i32 1274, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov7251_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov7251_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov7251.c", i32 1281, i32 3}
!24 = !{ptr @ov7251_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov7251_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov7251.c", i32 1286, i32 3}
!28 = !{ptr @ov7251_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov7251_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov7251.c", i32 1292, i32 35}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ov7251.c", i32 1294, i32 3}
!34 = !{ptr @ov7251_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ov7251_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov7251.c", i32 1298, i32 50}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/ov7251.c", i32 1301, i32 3}
!40 = !{ptr @ov7251_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ov7251_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/ov7251.c", i32 1307, i32 3}
!44 = !{ptr @ov7251_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ov7251_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov7251.c", i32 1314, i32 3}
!48 = !{ptr @ov7251_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ov7251_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov7251.c", i32 1318, i32 49}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov7251.c", i32 1320, i32 3}
!54 = !{ptr @ov7251_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ov7251_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov7251.c", i32 1324, i32 51}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov7251.c", i32 1326, i32 3}
!60 = !{ptr @ov7251_probe._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ov7251_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov7251.c", i32 1330, i32 53}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov7251.c", i32 1332, i32 3}
!66 = !{ptr @ov7251_probe._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ov7251_probe._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov7251.c", i32 1336, i32 44}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov7251.c", i32 1338, i32 3}
!72 = !{ptr @ov7251_probe._entry.39, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ov7251_probe._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ov7251_probe.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov7251.c", i32 1342, i32 2}
!76 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ov7251_probe._key, !78, !"_key", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ov7251.c", i32 1344, i32 2}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov7251.c", i32 1374, i32 3}
!82 = !{ptr @ov7251_probe._entry.44, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ov7251_probe._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov7251.c", i32 1388, i32 3}
!86 = !{ptr @ov7251_probe._entry.47, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ov7251_probe._entry_ptr.49, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov7251.c", i32 1394, i32 3}
!90 = !{ptr @ov7251_probe._entry.50, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ov7251_probe._entry_ptr.52, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov7251.c", i32 1400, i32 3}
!94 = !{ptr @ov7251_probe._entry.53, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ov7251_probe._entry_ptr.55, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ov7251.c", i32 1406, i32 3}
!98 = !{ptr @ov7251_probe._entry.56, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ov7251_probe._entry_ptr.58, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ov7251.c", i32 1413, i32 3}
!102 = !{ptr @ov7251_probe._entry.59, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ov7251_probe._entry_ptr.61, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ov7251.c", i32 1419, i32 2}
!106 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ov7251_probe._entry.62, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @ov7251_probe._entry_ptr.65, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.66, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.67, !105, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.68, !105, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.69, !105, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.70, !105, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.72, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/ov7251.c", i32 1430, i32 3}
!116 = !{ptr @ov7251_probe._entry.71, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ov7251_probe._entry_ptr.73, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.75, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/ov7251.c", i32 1438, i32 3}
!120 = !{ptr @ov7251_probe._entry.74, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ov7251_probe._entry_ptr.76, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.78, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ov7251.c", i32 1446, i32 3}
!124 = !{ptr @ov7251_probe._entry.77, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ov7251_probe._entry_ptr.79, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.81, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ov7251.c", i32 1455, i32 3}
!128 = !{ptr @ov7251_probe._entry.80, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ov7251_probe._entry_ptr.82, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @ov7251_ctrl_ops, !131, !"ov7251_ctrl_ops", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/ov7251.c", i32 896, i32 35}
!132 = !{ptr @.str.83, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov7251.c", i32 660, i32 3}
!134 = !{ptr @.str.84, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ov7251_write_seq_regs._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @ov7251_write_seq_regs._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/ov7251.c", i32 635, i32 3}
!139 = !{ptr @.str.86, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ov7251_write_reg._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @ov7251_write_reg._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.87, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov7251.c", i32 857, i32 2}
!144 = !{ptr @.str.88, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/ov7251.c", i32 858, i32 2}
!146 = !{ptr @ov7251_test_pattern_menu, !147, !"ov7251_test_pattern_menu", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/ov7251.c", i32 856, i32 27}
!148 = !{ptr @link_freq, !149, !"link_freq", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/ov7251.c", i32 521, i32 18}
!150 = !{ptr @ov7251_subdev_ops, !151, !"ov7251_subdev_ops", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/ov7251.c", i32 1251, i32 37}
!152 = !{ptr @ov7251_core_ops, !153, !"ov7251_core_ops", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/ov7251.c", i32 1231, i32 42}
!154 = !{ptr @ov7251_video_ops, !155, !"ov7251_video_ops", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/ov7251.c", i32 1235, i32 43}
!156 = !{ptr @.str.89, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/i2c/ov7251.c", i32 1149, i32 4}
!158 = !{ptr @.str.90, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ov7251_s_stream._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ov7251_s_stream._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.92, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/ov7251.c", i32 1156, i32 4}
!163 = !{ptr @ov7251_s_stream._entry.91, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ov7251_s_stream._entry_ptr.93, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @ov7251_mode_info_data, !166, !"ov7251_mode_info_data", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/ov7251.c", i32 525, i32 38}
!167 = !{ptr @ov7251_setting_vga_30fps, !168, !"ov7251_setting_vga_30fps", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/ov7251.c", i32 107, i32 31}
!169 = !{ptr @ov7251_setting_vga_60fps, !170, !"ov7251_setting_vga_60fps", i1 false, i1 false}
!170 = !{!"../drivers/media/i2c/ov7251.c", i32 245, i32 31}
!171 = !{ptr @ov7251_setting_vga_90fps, !172, !"ov7251_setting_vga_90fps", i1 false, i1 false}
!172 = !{!"../drivers/media/i2c/ov7251.c", i32 383, i32 31}
!173 = !{ptr @ov7251_subdev_pad_ops, !174, !"ov7251_subdev_pad_ops", i1 false, i1 false}
!174 = !{!"../drivers/media/i2c/ov7251.c", i32 1241, i32 41}
!175 = !{ptr @.str.94, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!177 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/i2c/ov7251.c", i32 788, i32 4}
!179 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ov7251_s_power._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ov7251_s_power._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/ov7251.c", i32 746, i32 3}
!184 = !{ptr @.str.98, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ov7251_set_power_on._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @ov7251_set_power_on._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.99, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/i2c/ov7251.c", i32 580, i32 3}
!189 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @ov7251_regulators_enable._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @ov7251_regulators_enable._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/ov7251.c", i32 586, i32 3}
!194 = !{ptr @ov7251_regulators_enable._entry.101, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @ov7251_regulators_enable._entry_ptr.103, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/ov7251.c", i32 592, i32 3}
!198 = !{ptr @ov7251_regulators_enable._entry.104, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @ov7251_regulators_enable._entry_ptr.106, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.107, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/i2c/ov7251.c", i32 613, i32 3}
!202 = !{ptr @.str.108, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ov7251_regulators_disable._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @ov7251_regulators_disable._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.110, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/i2c/ov7251.c", i32 617, i32 3}
!207 = !{ptr @ov7251_regulators_disable._entry.109, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @ov7251_regulators_disable._entry_ptr.111, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/i2c/ov7251.c", i32 621, i32 3}
!211 = !{ptr @ov7251_regulators_disable._entry.112, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @ov7251_regulators_disable._entry_ptr.114, !210, !"_entry_ptr", i1 false, i1 false}
!213 = distinct !{null, !214, !"ov7251_global_init_setting", i1 false, i1 false}
!214 = !{!"../drivers/media/i2c/ov7251.c", i32 102, i32 31}
!215 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/ov7251.c", i32 679, i32 3}
!217 = !{ptr @.str.116, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @ov7251_read_reg._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @ov7251_read_reg._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.118, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/i2c/ov7251.c", i32 686, i32 3}
!222 = !{ptr @ov7251_read_reg._entry.117, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @ov7251_read_reg._entry_ptr.119, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @ov7251_of_match, !225, !"ov7251_of_match", i1 false, i1 false}
!225 = !{!"../drivers/media/i2c/ov7251.c", i32 1487, i32 34}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{!"auto-init"}
!236 = !{i8 0, i8 2}
!237 = !{!"branch_weights", i32 2000, i32 1}
