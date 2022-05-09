; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov5647.c_pt.bc'
source_filename = "../drivers/media/i2c/ov5647.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ov5647_mode = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, i64, i32, i32, ptr, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regval_list = type { i16, i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ov5647 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.mutex, ptr, ptr, i8, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.101, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.101 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_ov5647__310_1495_ov5647_driver_init6 = internal global ptr @ov5647_driver_init, section ".initcall6.init", align 4
@ov5647_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov5647_remove, ptr @ov5647_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov5647_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5647_pm_ops, ptr null, ptr null }, ptr @ov5647_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov5647_driver_exit = internal global ptr @ov5647_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author311 = internal constant [54 x i8] c"ov5647.author=Ramiro Oliveira <roliveir@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [68 x i8] c"ov5647.description=A low-level driver for OmniVision ov5647 sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [37 x i8] c"ov5647.file=drivers/media/i2c/ov5647\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [22 x i8] c"ov5647.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov5647\00", [25 x i8] zeroinitializer }, align 32
@ov5647_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov5647\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov5647_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5647_power_off, ptr @ov5647_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov5647_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov5647\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov5647_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DT parsing error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5647_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov5647.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov5647_probe._entry_ptr = internal global ptr @ov5647_probe._entry, section ".printk_index", align 4
@ov5647_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not get xclk\00", [45 x i8] zeroinitializer }, align 32
@ov5647_probe._entry_ptr.8 = internal global ptr @ov5647_probe._entry.6, section ".printk_index", align 4
@ov5647_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported clock frequency: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@ov5647_probe._entry_ptr.11 = internal global ptr @ov5647_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwdn\00", [27 x i8] zeroinitializer }, align 32
@ov5647_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get 'pwdn' gpio\0A\00", [37 x i8] zeroinitializer }, align 32
@ov5647_probe._entry_ptr.15 = internal global ptr @ov5647_probe._entry.13, section ".printk_index", align 4
@ov5647_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sensor->lock\00", [18 x i8] zeroinitializer }, align 32
@ov5647_modes = internal constant { [4 x %struct.ov5647_mode], [64 x i8] } { [4 x %struct.ov5647_mode] [%struct.ov5647_mode { %struct.v4l2_mbus_framefmt { i32 2592, i32 1944, i32 12295, i32 1, i32 8, %union.anon.96 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, %struct.v4l2_rect { i32 16, i32 16, i32 2592, i32 1944 }, i64 87500000, i32 2844, i32 1968, ptr @ov5647_2592x1944_10bpp, i32 86 }, %struct.ov5647_mode { %struct.v4l2_mbus_framefmt { i32 1920, i32 1080, i32 12295, i32 1, i32 8, %union.anon.96 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, %struct.v4l2_rect { i32 364, i32 450, i32 1928, i32 1080 }, i64 81666700, i32 2416, i32 1104, ptr @ov5647_1080p30_10bpp, i32 86 }, %struct.ov5647_mode { %struct.v4l2_mbus_framefmt { i32 1296, i32 972, i32 12295, i32 1, i32 8, %union.anon.96 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, %struct.v4l2_rect { i32 16, i32 16, i32 2592, i32 1944 }, i64 81666700, i32 1896, i32 1435, ptr @ov5647_2x2binned_10bpp, i32 90 }, %struct.ov5647_mode { %struct.v4l2_mbus_framefmt { i32 640, i32 480, i32 12295, i32 1, i32 8, %union.anon.96 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, %struct.v4l2_rect { i32 32, i32 16, i32 2560, i32 1920 }, i64 55000000, i32 1852, i32 504, ptr @ov5647_640x480_10bpp, i32 87 }], [64 x i8] zeroinitializer }, align 32
@ov5647_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov5647_subdev_core_ops, ptr null, ptr null, ptr @ov5647_subdev_video_ops, ptr null, ptr null, ptr null, ptr @ov5647_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov5647_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov5647_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov5647_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 1, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"OmniVision OV5647 camera driver probed\0A\00", [56 x i8] zeroinitializer }, align 32
@ov5647_2592x1944_10bpp = internal global { [86 x %struct.regval_list], [72 x i8] } { [86 x %struct.regval_list] [%struct.regval_list { i16 256, i8 0 }, %struct.regval_list { i16 259, i8 1 }, %struct.regval_list { i16 12340, i8 26 }, %struct.regval_list { i16 12341, i8 33 }, %struct.regval_list { i16 12342, i8 105 }, %struct.regval_list { i16 12348, i8 17 }, %struct.regval_list { i16 12550, i8 -11 }, %struct.regval_list { i16 14369, i8 6 }, %struct.regval_list { i16 14368, i8 0 }, %struct.regval_list { i16 14375, i8 -20 }, %struct.regval_list { i16 14092, i8 3 }, %struct.regval_list { i16 13842, i8 91 }, %struct.regval_list { i16 13848, i8 4 }, %struct.regval_list { i16 20480, i8 6 }, %struct.regval_list { i16 20482, i8 65 }, %struct.regval_list { i16 20483, i8 8 }, %struct.regval_list { i16 23040, i8 8 }, %struct.regval_list { i16 12288, i8 0 }, %struct.regval_list { i16 12289, i8 0 }, %struct.regval_list { i16 12290, i8 0 }, %struct.regval_list { i16 12310, i8 8 }, %struct.regval_list { i16 12311, i8 -32 }, %struct.regval_list { i16 12312, i8 68 }, %struct.regval_list { i16 12316, i8 -8 }, %struct.regval_list { i16 12317, i8 -16 }, %struct.regval_list { i16 14872, i8 0 }, %struct.regval_list { i16 14873, i8 -8 }, %struct.regval_list { i16 15361, i8 -128 }, %struct.regval_list { i16 15111, i8 12 }, %struct.regval_list { i16 14348, i8 11 }, %struct.regval_list { i16 14349, i8 28 }, %struct.regval_list { i16 14356, i8 17 }, %struct.regval_list { i16 14357, i8 17 }, %struct.regval_list { i16 14088, i8 100 }, %struct.regval_list { i16 14089, i8 18 }, %struct.regval_list { i16 14344, i8 10 }, %struct.regval_list { i16 14345, i8 32 }, %struct.regval_list { i16 14346, i8 7 }, %struct.regval_list { i16 14347, i8 -104 }, %struct.regval_list { i16 14336, i8 0 }, %struct.regval_list { i16 14337, i8 0 }, %struct.regval_list { i16 14338, i8 0 }, %struct.regval_list { i16 14339, i8 0 }, %struct.regval_list { i16 14340, i8 10 }, %struct.regval_list { i16 14341, i8 63 }, %struct.regval_list { i16 14342, i8 7 }, %struct.regval_list { i16 14343, i8 -93 }, %struct.regval_list { i16 14353, i8 16 }, %struct.regval_list { i16 14355, i8 6 }, %struct.regval_list { i16 13872, i8 46 }, %struct.regval_list { i16 13874, i8 -30 }, %struct.regval_list { i16 13875, i8 35 }, %struct.regval_list { i16 13876, i8 68 }, %struct.regval_list { i16 13878, i8 6 }, %struct.regval_list { i16 13856, i8 100 }, %struct.regval_list { i16 13857, i8 -32 }, %struct.regval_list { i16 13824, i8 55 }, %struct.regval_list { i16 14084, i8 -96 }, %struct.regval_list { i16 14083, i8 90 }, %struct.regval_list { i16 14101, i8 120 }, %struct.regval_list { i16 14103, i8 1 }, %struct.regval_list { i16 14129, i8 2 }, %struct.regval_list { i16 14091, i8 96 }, %struct.regval_list { i16 14085, i8 26 }, %struct.regval_list { i16 16133, i8 2 }, %struct.regval_list { i16 16134, i8 16 }, %struct.regval_list { i16 16129, i8 10 }, %struct.regval_list { i16 14856, i8 1 }, %struct.regval_list { i16 14857, i8 40 }, %struct.regval_list { i16 14858, i8 0 }, %struct.regval_list { i16 14859, i8 -10 }, %struct.regval_list { i16 14861, i8 8 }, %struct.regval_list { i16 14862, i8 6 }, %struct.regval_list { i16 14863, i8 88 }, %struct.regval_list { i16 14864, i8 80 }, %struct.regval_list { i16 14875, i8 88 }, %struct.regval_list { i16 14878, i8 80 }, %struct.regval_list { i16 14865, i8 96 }, %struct.regval_list { i16 14879, i8 40 }, %struct.regval_list { i16 16385, i8 2 }, %struct.regval_list { i16 16388, i8 4 }, %struct.regval_list { i16 16384, i8 9 }, %struct.regval_list { i16 18487, i8 25 }, %struct.regval_list { i16 18432, i8 36 }, %struct.regval_list { i16 13571, i8 3 }, %struct.regval_list { i16 256, i8 1 }], [72 x i8] zeroinitializer }, align 32
@ov5647_1080p30_10bpp = internal global { [86 x %struct.regval_list], [72 x i8] } { [86 x %struct.regval_list] [%struct.regval_list { i16 256, i8 0 }, %struct.regval_list { i16 259, i8 1 }, %struct.regval_list { i16 12340, i8 26 }, %struct.regval_list { i16 12341, i8 33 }, %struct.regval_list { i16 12342, i8 98 }, %struct.regval_list { i16 12348, i8 17 }, %struct.regval_list { i16 12550, i8 -11 }, %struct.regval_list { i16 14369, i8 6 }, %struct.regval_list { i16 14368, i8 0 }, %struct.regval_list { i16 14375, i8 -20 }, %struct.regval_list { i16 14092, i8 3 }, %struct.regval_list { i16 13842, i8 91 }, %struct.regval_list { i16 13848, i8 4 }, %struct.regval_list { i16 20480, i8 6 }, %struct.regval_list { i16 20482, i8 65 }, %struct.regval_list { i16 20483, i8 8 }, %struct.regval_list { i16 23040, i8 8 }, %struct.regval_list { i16 12288, i8 0 }, %struct.regval_list { i16 12289, i8 0 }, %struct.regval_list { i16 12290, i8 0 }, %struct.regval_list { i16 12310, i8 8 }, %struct.regval_list { i16 12311, i8 -32 }, %struct.regval_list { i16 12312, i8 68 }, %struct.regval_list { i16 12316, i8 -8 }, %struct.regval_list { i16 12317, i8 -16 }, %struct.regval_list { i16 14872, i8 0 }, %struct.regval_list { i16 14873, i8 -8 }, %struct.regval_list { i16 15361, i8 -128 }, %struct.regval_list { i16 15111, i8 12 }, %struct.regval_list { i16 14348, i8 9 }, %struct.regval_list { i16 14349, i8 112 }, %struct.regval_list { i16 14356, i8 17 }, %struct.regval_list { i16 14357, i8 17 }, %struct.regval_list { i16 14088, i8 100 }, %struct.regval_list { i16 14089, i8 18 }, %struct.regval_list { i16 14344, i8 7 }, %struct.regval_list { i16 14345, i8 -128 }, %struct.regval_list { i16 14346, i8 4 }, %struct.regval_list { i16 14347, i8 56 }, %struct.regval_list { i16 14336, i8 1 }, %struct.regval_list { i16 14337, i8 92 }, %struct.regval_list { i16 14338, i8 1 }, %struct.regval_list { i16 14339, i8 -78 }, %struct.regval_list { i16 14340, i8 8 }, %struct.regval_list { i16 14341, i8 -29 }, %struct.regval_list { i16 14342, i8 5 }, %struct.regval_list { i16 14343, i8 -15 }, %struct.regval_list { i16 14353, i8 4 }, %struct.regval_list { i16 14355, i8 2 }, %struct.regval_list { i16 13872, i8 46 }, %struct.regval_list { i16 13874, i8 -30 }, %struct.regval_list { i16 13875, i8 35 }, %struct.regval_list { i16 13876, i8 68 }, %struct.regval_list { i16 13878, i8 6 }, %struct.regval_list { i16 13856, i8 100 }, %struct.regval_list { i16 13857, i8 -32 }, %struct.regval_list { i16 13824, i8 55 }, %struct.regval_list { i16 14084, i8 -96 }, %struct.regval_list { i16 14083, i8 90 }, %struct.regval_list { i16 14101, i8 120 }, %struct.regval_list { i16 14103, i8 1 }, %struct.regval_list { i16 14129, i8 2 }, %struct.regval_list { i16 14091, i8 96 }, %struct.regval_list { i16 14085, i8 26 }, %struct.regval_list { i16 16133, i8 2 }, %struct.regval_list { i16 16134, i8 16 }, %struct.regval_list { i16 16129, i8 10 }, %struct.regval_list { i16 14856, i8 1 }, %struct.regval_list { i16 14857, i8 75 }, %struct.regval_list { i16 14858, i8 1 }, %struct.regval_list { i16 14859, i8 19 }, %struct.regval_list { i16 14861, i8 4 }, %struct.regval_list { i16 14862, i8 3 }, %struct.regval_list { i16 14863, i8 88 }, %struct.regval_list { i16 14864, i8 80 }, %struct.regval_list { i16 14875, i8 88 }, %struct.regval_list { i16 14878, i8 80 }, %struct.regval_list { i16 14865, i8 96 }, %struct.regval_list { i16 14879, i8 40 }, %struct.regval_list { i16 16385, i8 2 }, %struct.regval_list { i16 16388, i8 4 }, %struct.regval_list { i16 16384, i8 9 }, %struct.regval_list { i16 18487, i8 25 }, %struct.regval_list { i16 18432, i8 52 }, %struct.regval_list { i16 13571, i8 3 }, %struct.regval_list { i16 256, i8 1 }], [72 x i8] zeroinitializer }, align 32
@ov5647_2x2binned_10bpp = internal global { [90 x %struct.regval_list], [88 x i8] } { [90 x %struct.regval_list] [%struct.regval_list { i16 256, i8 0 }, %struct.regval_list { i16 259, i8 1 }, %struct.regval_list { i16 12340, i8 26 }, %struct.regval_list { i16 12341, i8 33 }, %struct.regval_list { i16 12342, i8 98 }, %struct.regval_list { i16 12348, i8 17 }, %struct.regval_list { i16 12550, i8 -11 }, %struct.regval_list { i16 14375, i8 -20 }, %struct.regval_list { i16 14092, i8 3 }, %struct.regval_list { i16 13842, i8 89 }, %struct.regval_list { i16 13848, i8 0 }, %struct.regval_list { i16 20480, i8 6 }, %struct.regval_list { i16 20482, i8 65 }, %struct.regval_list { i16 20483, i8 8 }, %struct.regval_list { i16 23040, i8 8 }, %struct.regval_list { i16 12288, i8 0 }, %struct.regval_list { i16 12289, i8 0 }, %struct.regval_list { i16 12290, i8 0 }, %struct.regval_list { i16 12310, i8 8 }, %struct.regval_list { i16 12311, i8 -32 }, %struct.regval_list { i16 12312, i8 68 }, %struct.regval_list { i16 12316, i8 -8 }, %struct.regval_list { i16 12317, i8 -16 }, %struct.regval_list { i16 14872, i8 0 }, %struct.regval_list { i16 14873, i8 -8 }, %struct.regval_list { i16 15361, i8 -128 }, %struct.regval_list { i16 15111, i8 12 }, %struct.regval_list { i16 14336, i8 0 }, %struct.regval_list { i16 14337, i8 0 }, %struct.regval_list { i16 14338, i8 0 }, %struct.regval_list { i16 14339, i8 0 }, %struct.regval_list { i16 14340, i8 10 }, %struct.regval_list { i16 14341, i8 63 }, %struct.regval_list { i16 14342, i8 7 }, %struct.regval_list { i16 14343, i8 -93 }, %struct.regval_list { i16 14344, i8 5 }, %struct.regval_list { i16 14345, i8 16 }, %struct.regval_list { i16 14346, i8 3 }, %struct.regval_list { i16 14347, i8 -52 }, %struct.regval_list { i16 14348, i8 7 }, %struct.regval_list { i16 14349, i8 104 }, %struct.regval_list { i16 14353, i8 12 }, %struct.regval_list { i16 14355, i8 6 }, %struct.regval_list { i16 14356, i8 49 }, %struct.regval_list { i16 14357, i8 49 }, %struct.regval_list { i16 13872, i8 46 }, %struct.regval_list { i16 13874, i8 -30 }, %struct.regval_list { i16 13875, i8 35 }, %struct.regval_list { i16 13876, i8 68 }, %struct.regval_list { i16 13878, i8 6 }, %struct.regval_list { i16 13856, i8 100 }, %struct.regval_list { i16 13857, i8 -32 }, %struct.regval_list { i16 13824, i8 55 }, %struct.regval_list { i16 14084, i8 -96 }, %struct.regval_list { i16 14083, i8 90 }, %struct.regval_list { i16 14101, i8 120 }, %struct.regval_list { i16 14103, i8 1 }, %struct.regval_list { i16 14129, i8 2 }, %struct.regval_list { i16 14091, i8 96 }, %struct.regval_list { i16 14085, i8 26 }, %struct.regval_list { i16 16133, i8 2 }, %struct.regval_list { i16 16134, i8 16 }, %struct.regval_list { i16 16129, i8 10 }, %struct.regval_list { i16 14856, i8 1 }, %struct.regval_list { i16 14857, i8 40 }, %struct.regval_list { i16 14858, i8 0 }, %struct.regval_list { i16 14859, i8 -10 }, %struct.regval_list { i16 14861, i8 8 }, %struct.regval_list { i16 14862, i8 6 }, %struct.regval_list { i16 14863, i8 88 }, %struct.regval_list { i16 14864, i8 80 }, %struct.regval_list { i16 14875, i8 88 }, %struct.regval_list { i16 14878, i8 80 }, %struct.regval_list { i16 14865, i8 96 }, %struct.regval_list { i16 14879, i8 40 }, %struct.regval_list { i16 16385, i8 2 }, %struct.regval_list { i16 16388, i8 4 }, %struct.regval_list { i16 16384, i8 9 }, %struct.regval_list { i16 18487, i8 22 }, %struct.regval_list { i16 18432, i8 36 }, %struct.regval_list { i16 13571, i8 3 }, %struct.regval_list { i16 14368, i8 65 }, %struct.regval_list { i16 14369, i8 7 }, %struct.regval_list { i16 13578, i8 0 }, %struct.regval_list { i16 13579, i8 16 }, %struct.regval_list { i16 13568, i8 0 }, %struct.regval_list { i16 13569, i8 26 }, %struct.regval_list { i16 13570, i8 -16 }, %struct.regval_list { i16 12818, i8 -96 }, %struct.regval_list { i16 256, i8 1 }], [88 x i8] zeroinitializer }, align 32
@ov5647_640x480_10bpp = internal global { [87 x %struct.regval_list], [68 x i8] } { [87 x %struct.regval_list] [%struct.regval_list { i16 256, i8 0 }, %struct.regval_list { i16 259, i8 1 }, %struct.regval_list { i16 12341, i8 17 }, %struct.regval_list { i16 12342, i8 70 }, %struct.regval_list { i16 12348, i8 17 }, %struct.regval_list { i16 14369, i8 7 }, %struct.regval_list { i16 14368, i8 65 }, %struct.regval_list { i16 14092, i8 3 }, %struct.regval_list { i16 13842, i8 89 }, %struct.regval_list { i16 13848, i8 0 }, %struct.regval_list { i16 20480, i8 6 }, %struct.regval_list { i16 20483, i8 8 }, %struct.regval_list { i16 23040, i8 8 }, %struct.regval_list { i16 12288, i8 -1 }, %struct.regval_list { i16 12289, i8 -1 }, %struct.regval_list { i16 12290, i8 -1 }, %struct.regval_list { i16 12317, i8 -16 }, %struct.regval_list { i16 14872, i8 0 }, %struct.regval_list { i16 14873, i8 -8 }, %struct.regval_list { i16 15361, i8 -128 }, %struct.regval_list { i16 15111, i8 12 }, %struct.regval_list { i16 14348, i8 7 }, %struct.regval_list { i16 14349, i8 60 }, %struct.regval_list { i16 14356, i8 53 }, %struct.regval_list { i16 14357, i8 53 }, %struct.regval_list { i16 14088, i8 100 }, %struct.regval_list { i16 14089, i8 82 }, %struct.regval_list { i16 14344, i8 2 }, %struct.regval_list { i16 14345, i8 -128 }, %struct.regval_list { i16 14346, i8 1 }, %struct.regval_list { i16 14347, i8 -32 }, %struct.regval_list { i16 14336, i8 0 }, %struct.regval_list { i16 14337, i8 16 }, %struct.regval_list { i16 14338, i8 0 }, %struct.regval_list { i16 14339, i8 0 }, %struct.regval_list { i16 14340, i8 10 }, %struct.regval_list { i16 14341, i8 47 }, %struct.regval_list { i16 14342, i8 7 }, %struct.regval_list { i16 14343, i8 -97 }, %struct.regval_list { i16 13872, i8 46 }, %struct.regval_list { i16 13874, i8 -30 }, %struct.regval_list { i16 13875, i8 35 }, %struct.regval_list { i16 13876, i8 68 }, %struct.regval_list { i16 13856, i8 100 }, %struct.regval_list { i16 13857, i8 -32 }, %struct.regval_list { i16 13824, i8 55 }, %struct.regval_list { i16 14084, i8 -96 }, %struct.regval_list { i16 14083, i8 90 }, %struct.regval_list { i16 14101, i8 120 }, %struct.regval_list { i16 14103, i8 1 }, %struct.regval_list { i16 14129, i8 2 }, %struct.regval_list { i16 14091, i8 96 }, %struct.regval_list { i16 14085, i8 26 }, %struct.regval_list { i16 16133, i8 2 }, %struct.regval_list { i16 16134, i8 16 }, %struct.regval_list { i16 16129, i8 10 }, %struct.regval_list { i16 14856, i8 1 }, %struct.regval_list { i16 14857, i8 46 }, %struct.regval_list { i16 14858, i8 0 }, %struct.regval_list { i16 14859, i8 -5 }, %struct.regval_list { i16 14861, i8 2 }, %struct.regval_list { i16 14862, i8 1 }, %struct.regval_list { i16 14863, i8 88 }, %struct.regval_list { i16 14864, i8 80 }, %struct.regval_list { i16 14875, i8 88 }, %struct.regval_list { i16 14878, i8 80 }, %struct.regval_list { i16 14865, i8 96 }, %struct.regval_list { i16 14879, i8 40 }, %struct.regval_list { i16 16385, i8 2 }, %struct.regval_list { i16 16388, i8 2 }, %struct.regval_list { i16 16384, i8 9 }, %struct.regval_list { i16 12288, i8 0 }, %struct.regval_list { i16 12289, i8 0 }, %struct.regval_list { i16 12290, i8 0 }, %struct.regval_list { i16 12311, i8 -32 }, %struct.regval_list { i16 12316, i8 -4 }, %struct.regval_list { i16 13878, i8 6 }, %struct.regval_list { i16 12310, i8 8 }, %struct.regval_list { i16 14375, i8 -20 }, %struct.regval_list { i16 12312, i8 68 }, %struct.regval_list { i16 12341, i8 33 }, %struct.regval_list { i16 12550, i8 -11 }, %struct.regval_list { i16 12340, i8 26 }, %struct.regval_list { i16 12316, i8 -8 }, %struct.regval_list { i16 18432, i8 52 }, %struct.regval_list { i16 13571, i8 3 }, %struct.regval_list { i16 256, i8 1 }], [68 x i8] zeroinitializer }, align 32
@ov5647_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ov5647:1273:(&sensor->ctrls)->_lock\00", [60 x i8] zeroinitializer }, align 32
@ov5647_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov5647_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov5647_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 1328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s Controls initialization failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov5647_init_controls\00", [43 x i8] zeroinitializer }, align 32
@ov5647_init_controls._entry_ptr = internal global ptr @ov5647_init_controls._entry, section ".printk_index", align 4
@ov5647_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1255, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Control (id:0x%x, val:0x%x) not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov5647_s_ctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov5647_s_ctrl._entry_ptr = internal global ptr @ov5647_s_ctrl._entry, section ".printk_index", align 4
@ov5647_write.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5647_write\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: i2c write error, reg: %x\0A\00", [34 x i8] zeroinitializer }, align 32
@ov5647_read.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.25, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov5647_read\00", [20 x i8] zeroinitializer }, align 32
@ov5647_read.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: i2c read error, reg: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@ov5647_write16.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.25, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov5647_write16\00", [17 x i8] zeroinitializer }, align 32
@ov5647_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5647_sensor_get_register, ptr @ov5647_sensor_set_register, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov5647_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5647_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov5647_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov5647_enum_mbus_code, ptr @ov5647_enum_frame_size, ptr null, ptr @ov5647_get_pad_fmt, ptr @ov5647_set_pad_fmt, ptr @ov5647_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov5647_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 892, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stream start failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov5647_s_stream\00", [16 x i8] zeroinitializer }, align 32
@ov5647_s_stream._entry_ptr = internal global ptr @ov5647_s_stream._entry, section ".printk_index", align 4
@ov5647_s_stream._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 898, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stream stop failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ov5647_s_stream._entry_ptr.33 = internal global ptr @ov5647_s_stream._entry.31, section ".printk_index", align 4
@ov5647_stream_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 712, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to program sensor mode: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov5647_stream_on\00", [47 x i8] zeroinitializer }, align 32
@ov5647_stream_on._entry_ptr = internal global ptr @ov5647_stream_on._entry, section ".printk_index", align 4
@ov5647_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"write sensor default regs error\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov5647_set_mode\00", [16 x i8] zeroinitializer }, align 32
@ov5647_set_mode._entry_ptr = internal global ptr @ov5647_set_mode._entry, section ".printk_index", align 4
@ov5647_set_mode._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 694, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Device was in SW standby\00", [39 x i8] zeroinitializer }, align 32
@ov5647_set_mode._entry_ptr.40 = internal global ptr @ov5647_set_mode._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov5647_power_on.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov5647_power_on\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OV5647 power on\0A\00", [47 x i8] zeroinitializer }, align 32
@ov5647_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 767, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk prepare enable failed\0A\00", [37 x i8] zeroinitializer }, align 32
@ov5647_power_on._entry_ptr = internal global ptr @ov5647_power_on._entry, section ".printk_index", align 4
@ov5647_power_on._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.3, i32 774, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"write sensor_oe_enable_regs error\0A\00", [61 x i8] zeroinitializer }, align 32
@ov5647_power_on._entry_ptr.47 = internal global ptr @ov5647_power_on._entry.45, section ".printk_index", align 4
@ov5647_power_on._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.42, ptr @.str.3, i32 781, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"camera not available, check power\0A\00", [61 x i8] zeroinitializer }, align 32
@ov5647_power_on._entry_ptr.50 = internal global ptr @ov5647_power_on._entry.48, section ".printk_index", align 4
@ov5647_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 1090, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ID High expected 0x56 got %x\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov5647_detect\00", [18 x i8] zeroinitializer }, align 32
@ov5647_detect._entry_ptr = internal global ptr @ov5647_detect._entry, section ".printk_index", align 4
@ov5647_detect._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 1099, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ID Low expected 0x47 got %x\00", [36 x i8] zeroinitializer }, align 32
@ov5647_detect._entry_ptr.55 = internal global ptr @ov5647_detect._entry.53, section ".printk_index", align 4
@ov5647_power_off.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov5647_power_off\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OV5647 power off\0A\00", [46 x i8] zeroinitializer }, align 32
@ov5647_power_off.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.58, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"disable oe failed\0A\00", [45 x i8] zeroinitializer }, align 32
@ov5647_power_off.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.59, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"software standby failed\0A\00", [39 x i8] zeroinitializer }, align 32
@ov5647_power_off.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.59, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 9963788, i64 9963793, i64 9963794, i64 10094849, i64 10356993, i64 10356994, i64 10356995, i64 10422530]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"ov5647_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1484, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1487, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"ov5647_of_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1477, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"ov5647_pm_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1466, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"ov5647_id\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1470, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1375, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1382, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1388, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1393, i32 46 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1395, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1399, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"ov5647_modes\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 492, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"ov5647_subdev_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1069, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"ov5647_subdev_internal_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1122, i32 46 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1435, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"ov5647_2592x1944_10bpp\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 131, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"ov5647_1080p30_10bpp\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 220, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"ov5647_2x2binned_10bpp\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 309, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant [21 x i8] c"ov5647_640x480_10bpp\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 402, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1273, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"ov5647_ctrl_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1264, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1327, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1253, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 607, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 623, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 630, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 591, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [23 x i8] c"ov5647_subdev_core_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 849, i32 42 }
@___asan_gen_.194 = private unnamed_addr constant [24 x i8] c"ov5647_subdev_video_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 917, i32 43 }
@___asan_gen_.197 = private unnamed_addr constant [22 x i8] c"ov5647_subdev_pad_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1061, i32 41 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 892, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 898, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 712, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 681, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 694, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 998, i32 6 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 758, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 767, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 774, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 781, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1090, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1099, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 801, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 806, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [30 x i8] c"../drivers/media/i2c/ov5647.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 811, i32 3 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_ov5647_driver_exit, ptr @__initcall__kmod_ov5647__310_1495_ov5647_driver_init6, ptr @ov5647_detect._entry, ptr @ov5647_detect._entry.53, ptr @ov5647_detect._entry_ptr, ptr @ov5647_detect._entry_ptr.55, ptr @ov5647_driver_exit, ptr @ov5647_init_controls._entry, ptr @ov5647_init_controls._entry_ptr, ptr @ov5647_power_on._entry, ptr @ov5647_power_on._entry.45, ptr @ov5647_power_on._entry.48, ptr @ov5647_power_on._entry_ptr, ptr @ov5647_power_on._entry_ptr.47, ptr @ov5647_power_on._entry_ptr.50, ptr @ov5647_probe._entry, ptr @ov5647_probe._entry.13, ptr @ov5647_probe._entry.6, ptr @ov5647_probe._entry.9, ptr @ov5647_probe._entry_ptr, ptr @ov5647_probe._entry_ptr.11, ptr @ov5647_probe._entry_ptr.15, ptr @ov5647_probe._entry_ptr.8, ptr @ov5647_s_ctrl._entry, ptr @ov5647_s_ctrl._entry_ptr, ptr @ov5647_s_stream._entry, ptr @ov5647_s_stream._entry.31, ptr @ov5647_s_stream._entry_ptr, ptr @ov5647_s_stream._entry_ptr.33, ptr @ov5647_set_mode._entry, ptr @ov5647_set_mode._entry.38, ptr @ov5647_set_mode._entry_ptr, ptr @ov5647_set_mode._entry_ptr.40, ptr @ov5647_stream_on._entry, ptr @ov5647_stream_on._entry_ptr, ptr @ov5647_driver, ptr @.str, ptr @ov5647_of_match, ptr @ov5647_pm_ops, ptr @ov5647_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @ov5647_probe.__key, ptr @.str.16, ptr @ov5647_modes, ptr @ov5647_subdev_ops, ptr @ov5647_subdev_internal_ops, ptr @.str.17, ptr @ov5647_2592x1944_10bpp, ptr @ov5647_1080p30_10bpp, ptr @ov5647_2x2binned_10bpp, ptr @ov5647_640x480_10bpp, ptr @ov5647_init_controls._key, ptr @.str.18, ptr @ov5647_ctrl_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ov5647_subdev_core_ops, ptr @ov5647_subdev_video_ops, ptr @ov5647_subdev_pad_ops, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_modes to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_2592x1944_10bpp to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_1080p30_10bpp to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_2x2binned_10bpp to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_640x480_10bpp to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_s_stream._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_stream_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_set_mode._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_power_on._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_power_on._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5647_detect._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov5647_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov5647_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov5647_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrls = getelementptr inbounds %struct.ov5647, ptr %1, i32 0, i32 6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #8
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %lock = getelementptr inbounds %struct.ov5647, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_probe(ptr noundef %client) #2 align 64 {
entry:
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 540, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  %2 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %3 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %3, align 4
  %call.i127 = tail call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %1, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i127, null
  br i1 %tobool.not.i, label %ov5647_parse_dt.exit.thread, label %cond.end.i

ov5647_parse_dt.exit.thread:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %do.end

cond.end.i:                                       ; preds = %if.then4
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i127, i32 0, i32 3
  %call2.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %bus_cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %ov5647_parse_dt.exit.thread137, label %ov5647_parse_dt.exit

ov5647_parse_dt.exit.thread137:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mipi_csi2.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %mipi_csi2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mipi_csi2.i, align 4
  %clock_ncont.i = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 5
  %and.i = lshr i32 %6, 9
  %7 = trunc i32 %and.i to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %clock_ncont.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %clock_ncont.i, align 4
  call void @of_node_put(ptr noundef nonnull %call.i127) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %if.end9

ov5647_parse_dt.exit:                             ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %call.i127) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #8
  br label %do.end

do.end:                                           ; preds = %ov5647_parse_dt.exit, %ov5647_parse_dt.exit.thread
  %retval.0.i128136 = phi i32 [ -22, %ov5647_parse_dt.exit.thread ], [ %call2.i, %ov5647_parse_dt.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i128136) #11
  br label %cleanup

if.end9:                                          ; preds = %ov5647_parse_dt.exit.thread137, %if.end.if.end9_crit_edge
  %call10 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %xclk = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %xclk, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %11 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xclk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %call21 = call i32 @clk_get_rate(ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %call21)
  %cmp.not = icmp eq i32 %call21, 25000000
  br i1 %cmp.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call21) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %call27 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 7) #8
  %pwdn = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %pwdn to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call27, ptr %pwdn, align 4
  %cmp.i129 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %do.end33, label %do.body35

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

do.body35:                                        ; preds = %if.end26
  %lock = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @ov5647_probe.__key) #8
  %mode = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds ([4 x %struct.ov5647_mode], ptr @ov5647_modes, i32 0, i32 3), ptr %mode, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  %ctrls.i = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 6
  %call1.i = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls.i, i32 noundef 8, ptr noundef nonnull @ov5647_init_controls._key, ptr noundef nonnull @.str.18) #8
  %call3.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @ov5647_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call5.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @ov5647_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call7.i = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @ov5647_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #8
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode, align 4
  %vts.i = getelementptr inbounds %struct.ov5647_mode, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %vts.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vts.i, align 4
  %sub.i = add i32 %21, -4
  %22 = call i32 @llvm.smin.i32(i32 %sub.i, i32 1000) #8
  %conv.i = sext i32 %sub.i to i64
  %conv10.i = sext i32 %22 to i64
  %call11.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @ov5647_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv.i, i64 noundef 1, i64 noundef %conv10.i) #8
  %exposure.i = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call11.i, ptr %exposure.i, align 4
  %call13.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @ov5647_ctrl_ops, i32 noundef 10356995, i64 noundef 16, i64 noundef 1023, i64 noundef 1, i64 noundef 32) #8
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mode, align 4
  %pixel_rate.i = getelementptr inbounds %struct.ov5647_mode, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pixel_rate.i, align 8
  %call20.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @ov5647_ctrl_ops, i32 noundef 10422530, i64 noundef %27, i64 noundef %27, i64 noundef 1, i64 noundef %27) #8
  %pixel_rate21.i = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %pixel_rate21.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call20.i, ptr %pixel_rate21.i, align 4
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mode, align 4
  %hts.i = getelementptr inbounds %struct.ov5647_mode, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %hts.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hts.i, align 8
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 8
  %sub24.i = sub i32 %32, %34
  %conv26.i = sext i32 %sub24.i to i64
  %call29.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @ov5647_ctrl_ops, i32 noundef 10356994, i64 noundef %conv26.i, i64 noundef %conv26.i, i64 noundef 1, i64 noundef %conv26.i) #8
  %hblank30.i = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %hblank30.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call29.i, ptr %hblank30.i, align 4
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mode, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height.i, align 4
  %sub34.i = sub i32 32767, %39
  %conv35.i = zext i32 %sub34.i to i64
  %vts37.i = getelementptr inbounds %struct.ov5647_mode, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %vts37.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vts37.i, align 4
  %sub41.i = sub i32 %41, %39
  %conv42.i = zext i32 %sub41.i to i64
  %call43.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @ov5647_ctrl_ops, i32 noundef 10356993, i64 noundef 4, i64 noundef %conv35.i, i64 noundef 1, i64 noundef %conv42.i) #8
  %vblank.i = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 10
  %42 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call43.i, ptr %vblank.i, align 4
  %error.i = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 6, i32 9
  %43 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i130 = icmp eq i32 %44, 0
  br i1 %tobool.not.i130, label %ov5647_init_controls.exit.thread, label %ov5647_init_controls.exit

ov5647_init_controls.exit.thread:                 ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %pixel_rate21.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pixel_rate21.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 20
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %48, 4
  store i32 %or.i, ptr %flags.i, align 4
  %49 = ptrtoint ptr %hblank30.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hblank30.i, align 4
  %flags47.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %flags47.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags47.i, align 4
  %or48.i = or i32 %52, 4
  store i32 %or48.i, ptr %flags47.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %53 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ctrls.i, ptr %ctrl_handler.i, align 4
  br label %if.end41

ov5647_init_controls.exit:                        ; preds = %do.body35
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %44) #11
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls.i) #8
  %54 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool39.not = icmp eq i32 %55, 0
  br i1 %tobool39.not, label %ov5647_init_controls.exit.if.end41_crit_edge, label %ov5647_init_controls.exit.mutex_destroy_crit_edge

ov5647_init_controls.exit.mutex_destroy_crit_edge: ; preds = %ov5647_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mutex_destroy

ov5647_init_controls.exit.if.end41_crit_edge:     ; preds = %ov5647_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end41:                                         ; preds = %ov5647_init_controls.exit.if.end41_crit_edge, %ov5647_init_controls.exit.thread
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ov5647_subdev_ops) #8
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %56 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ov5647_subdev_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  %or = or i32 %58, 12
  store i32 %or, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 1
  %flags43 = getelementptr inbounds %struct.ov5647, ptr %call.i, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %flags43 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %flags43, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %60 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 131073, ptr %function, align 4
  %call46 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end41.ctrl_handler_free_crit_edge, label %if.end49

if.end41.ctrl_handler_free_crit_edge:             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %ctrl_handler_free

if.end49:                                         ; preds = %if.end41
  %call50 = call i32 @ov5647_power_on(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.ctrl_handler_free_crit_edge

if.end49.ctrl_handler_free_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %ctrl_handler_free

if.end53:                                         ; preds = %if.end49
  %call54 = call fastcc i32 @ov5647_detect(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.power_off_crit_edge, label %if.end57

if.end53.power_off_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_off

if.end57:                                         ; preds = %if.end53
  %call58 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.power_off_crit_edge, label %if.end61

if.end57.power_off_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_off

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call.i132 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i133 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_probe, %if.then69)) #8
          to label %cleanup [label %if.then69], !srcloc !172

if.then69:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_probe.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

power_off:                                        ; preds = %if.end57.power_off_crit_edge, %if.end53.power_off_crit_edge
  %ret.0 = phi i32 [ %call54, %if.end53.power_off_crit_edge ], [ %call58, %if.end57.power_off_crit_edge ]
  %call73 = call i32 @ov5647_power_off(ptr noundef %dev)
  br label %ctrl_handler_free

ctrl_handler_free:                                ; preds = %power_off, %if.end49.ctrl_handler_free_crit_edge, %if.end41.ctrl_handler_free_crit_edge
  %ret.2 = phi i32 [ %call46, %if.end41.ctrl_handler_free_crit_edge ], [ %call50, %if.end49.ctrl_handler_free_crit_edge ], [ %ret.0, %power_off ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls.i) #8
  br label %mutex_destroy

mutex_destroy:                                    ; preds = %ctrl_handler_free, %ov5647_init_controls.exit.mutex_destroy_crit_edge
  %ret.3 = phi i32 [ %55, %ov5647_init_controls.exit.mutex_destroy_crit_edge ], [ %ret.2, %ctrl_handler_free ]
  call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %mutex_destroy, %if.then69, %if.end61, %do.end33, %do.end25, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i128136, %do.end ], [ %13, %do.end16 ], [ -22, %do.end25 ], [ -22, %do.end33 ], [ %ret.3, %mutex_destroy ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then69 ], [ 0, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_power_on(ptr noundef %dev) #2 align 64 {
entry:
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_power_on.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_power_on, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_power_on.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.43) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pwdn = getelementptr inbounds %struct.ov5647, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pwdn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwdn, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 20) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %xclk = getelementptr inbounds %struct.ov5647, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.clk_prepare_enable.exit_crit_edge

if.end7.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end13_crit_edge, label %if.then3.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end7.clk_prepare_enable.exit_crit_edge
  %retval.0.i45 = phi i32 [ %call.i, %if.end7.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i45)
  %cmp = icmp slt i32 %retval.0.i45, 0
  br i1 %cmp, label %do.end12, label %clk_prepare_enable.exit.if.end13_crit_edge

clk_prepare_enable.exit.if.end13_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end12:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #11
  br label %error_pwdn

if.end13:                                         ; preds = %clk_prepare_enable.exit.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %6 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 48, ptr %data.i.i, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %6, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 15, ptr %7, align 1
  %11 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end13.do.body.i.i_crit_edge, label %for.inc.i

if.end13.do.body.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.1.do.body.i.i_crit_edge, %for.inc.i.do.body.i.i_crit_edge, %if.end13.do.body.i.i_crit_edge
  %.lcssa59 = phi i32 [ 12288, %if.end13.do.body.i.i_crit_edge ], [ 12289, %for.inc.i.do.body.i.i_crit_edge ], [ 12290, %for.inc.i.1.do.body.i.i_crit_edge ]
  %.lcssa = phi ptr [ %12, %if.end13.do.body.i.i_crit_edge ], [ %17, %for.inc.i.do.body.i.i_crit_edge ], [ %22, %for.inc.i.1.do.body.i.i_crit_edge ]
  %call.i.i.i.lcssa = phi i32 [ %call.i.i.i, %if.end13.do.body.i.i_crit_edge ], [ %call.i.i.i.1, %for.inc.i.do.body.i.i_crit_edge ], [ %call.i.i.i.2, %for.inc.i.1.do.body.i.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_power_on, %ov5647_write.exit.thread.i)) #8
          to label %ov5647_write.exit.i [label %ov5647_write.exit.thread.i], !srcloc !172

ov5647_write.exit.thread.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %.lcssa, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %.lcssa59) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %error_clk_disable

ov5647_write.exit.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %error_clk_disable

for.inc.i:                                        ; preds = %if.end13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 48, ptr %data.i.i, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %7, align 1
  %16 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call.i.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %cmp.i.i.1 = icmp slt i32 %call.i.i.i.1, 0
  br i1 %cmp.i.i.1, label %for.inc.i.do.body.i.i_crit_edge, label %for.inc.i.1

for.inc.i.do.body.i.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

for.inc.i.1:                                      ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 48, ptr %data.i.i, align 1
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %6, align 1
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -28, ptr %7, align 1
  %21 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call.i.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.2)
  %cmp.i.i.2 = icmp slt i32 %call.i.i.i.2, 0
  br i1 %cmp.i.i.2, label %for.inc.i.1.do.body.i.i_crit_edge, label %for.inc.i.2

for.inc.i.1.do.body.i.i_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

for.inc.i.2:                                      ; preds = %for.inc.i.1
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  %call22 = call fastcc i32 @ov5647_stream_off(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %for.inc.i.2.error_clk_disable_crit_edge, label %for.inc.i.2.cleanup_crit_edge

for.inc.i.2.cleanup_crit_edge:                    ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i.2.error_clk_disable_crit_edge:          ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_clk_disable

error_clk_disable:                                ; preds = %for.inc.i.2.error_clk_disable_crit_edge, %ov5647_write.exit.i, %ov5647_write.exit.thread.i
  %.str.49.sink = phi ptr [ @.str.46, %ov5647_write.exit.i ], [ @.str.46, %ov5647_write.exit.thread.i ], [ @.str.49, %for.inc.i.2.error_clk_disable_crit_edge ]
  %ret.0 = phi i32 [ %call.i.i.i.lcssa, %ov5647_write.exit.i ], [ %call.i.i.i.lcssa, %ov5647_write.exit.thread.i ], [ %call22, %for.inc.i.2.error_clk_disable_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.49.sink) #11
  %23 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xclk, align 4
  call void @clk_disable(ptr noundef %24) #8
  call void @clk_unprepare(ptr noundef %24) #8
  br label %error_pwdn

error_pwdn:                                       ; preds = %error_clk_disable, %do.end12
  %ret.1 = phi i32 [ %retval.0.i45, %do.end12 ], [ %ret.0, %error_clk_disable ]
  %25 = ptrtoint ptr %pwdn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pwdn, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %26, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %error_pwdn, %for.inc.i.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error_pwdn ], [ 0, %for.inc.i.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5647_detect(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  %data.i39 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  %read = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read) #8
  %2 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %read, align 1, !annotation !173
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %data.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %4, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_detect, %ov5647_write.exit.thread)) #8
          to label %ov5647_write.exit [label %ov5647_write.exit.thread], !srcloc !172

ov5647_write.exit.thread:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 259) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

ov5647_write.exit:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %call2 = call fastcc i32 @ov5647_read(ptr noundef %sd, i16 noundef zeroext 12298, ptr noundef nonnull %read)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %9)
  %cmp6.not = icmp eq i8 %9, 86
  br i1 %cmp6.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %9 to i32
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %conv) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = call fastcc i32 @ov5647_read(ptr noundef %sd, i16 noundef zeroext 12299, ptr noundef nonnull %read)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %11)
  %cmp17.not = icmp eq i8 %11, 71
  br i1 %cmp17.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %conv16 = zext i8 %11 to i32
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.54, i32 noundef %conv16) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i39) #8
  %12 = getelementptr inbounds [3 x i8], ptr %data.i39, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i39, i32 0, i32 2
  %14 = ptrtoint ptr %data.i39 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %data.i39, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %13, align 1
  %17 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i39, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.i42 = icmp slt i32 %call.i.i41, 0
  br i1 %cmp.i42, label %do.body.i43, label %if.end25.ov5647_write.exit47_crit_edge

if.end25.ov5647_write.exit47_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_write.exit47

do.body.i43:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_detect, %if.then10.i45)) #8
          to label %ov5647_write.exit47 [label %if.then10.i45], !srcloc !172

if.then10.i45:                                    ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i44 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i44, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 259) #8
  br label %ov5647_write.exit47

ov5647_write.exit47:                              ; preds = %if.then10.i45, %do.body.i43, %if.end25.ov5647_write.exit47_crit_edge
  %retval.0.i46 = phi i32 [ %call.i.i41, %if.then10.i45 ], [ 0, %if.end25.ov5647_write.exit47_crit_edge ], [ %call.i.i41, %do.body.i43 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i39) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5647_write.exit47, %do.end22, %if.end10.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %ov5647_write.exit, %ov5647_write.exit.thread
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end22 ], [ %retval.0.i46, %ov5647_write.exit47 ], [ %call.i.i, %ov5647_write.exit ], [ %call2, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call.i.i, %ov5647_write.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_power_off(ptr noundef %dev) #2 align 64 {
entry:
  %data.i87 = alloca [3 x i8], align 1
  %data.i.i = alloca [3 x i8], align 1
  %rdval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdval) #8
  %2 = ptrtoint ptr %rdval to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rdval, align 1, !annotation !173
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_power_off.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_power_off, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_power_off.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.57) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 48, ptr %data.i.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.do.body.i.i_crit_edge, label %for.inc.i

do.end.do.body.i.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.1.do.body.i.i_crit_edge, %for.inc.i.do.body.i.i_crit_edge, %do.end.do.body.i.i_crit_edge
  %.lcssa104 = phi i32 [ 12288, %do.end.do.body.i.i_crit_edge ], [ 12289, %for.inc.i.do.body.i.i_crit_edge ], [ 12290, %for.inc.i.1.do.body.i.i_crit_edge ]
  %.lcssa = phi ptr [ %9, %do.end.do.body.i.i_crit_edge ], [ %14, %for.inc.i.do.body.i.i_crit_edge ], [ %19, %for.inc.i.1.do.body.i.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_power_off, %ov5647_write.exit.thread.i)) #8
          to label %ov5647_write.exit.i [label %ov5647_write.exit.thread.i], !srcloc !172

ov5647_write.exit.thread.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %.lcssa, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %.lcssa104) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %do.body6

ov5647_write.exit.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %do.body6

for.inc.i:                                        ; preds = %do.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 48, ptr %data.i.i, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %3, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %13 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call.i.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %cmp.i.i.1 = icmp slt i32 %call.i.i.i.1, 0
  br i1 %cmp.i.i.1, label %for.inc.i.do.body.i.i_crit_edge, label %for.inc.i.1

for.inc.i.do.body.i.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

for.inc.i.1:                                      ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 48, ptr %data.i.i, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %3, align 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %4, align 1
  %18 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call.i.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.2)
  %cmp.i.i.2 = icmp slt i32 %call.i.i.i.2, 0
  br i1 %cmp.i.i.2, label %for.inc.i.1.do.body.i.i_crit_edge, label %for.inc.i.2

for.inc.i.1.do.body.i.i_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

for.inc.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %if.end22

do.body6:                                         ; preds = %ov5647_write.exit.i, %ov5647_write.exit.thread.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_power_off.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_power_off, %if.then18)) #8
          to label %if.end22 [label %if.then18], !srcloc !172

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_power_off.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.58) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %do.body6, %for.inc.i.2
  %call24 = call fastcc i32 @ov5647_read(ptr noundef %1, i16 noundef zeroext 256, ptr noundef nonnull %rdval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.body27, label %if.end22.if.end43_crit_edge

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.body27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_power_off.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_power_off, %if.then39)) #8
          to label %if.end43 [label %if.then39], !srcloc !172

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_power_off.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.59) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %do.body27, %if.end22.if.end43_crit_edge
  %20 = ptrtoint ptr %rdval to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rdval, align 1
  %22 = and i8 %21, -2
  store i8 %22, ptr %rdval, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i87) #8
  %23 = getelementptr inbounds [3 x i8], ptr %data.i87, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %data.i87, i32 0, i32 2
  %25 = ptrtoint ptr %data.i87 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %data.i87, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %23, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %22, ptr %24, align 1
  %28 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %data.i87, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %ov5647_write.exit.thread96

ov5647_write.exit.thread96:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i87) #8
  br label %if.end66

do.body.i:                                        ; preds = %if.end43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_power_off, %ov5647_write.exit.thread)) #8
          to label %ov5647_write.exit [label %ov5647_write.exit.thread], !srcloc !172

ov5647_write.exit.thread:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 256) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i87) #8
  br label %do.body50

ov5647_write.exit:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i87) #8
  br label %do.body50

do.body50:                                        ; preds = %ov5647_write.exit, %ov5647_write.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_power_off.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_power_off, %if.then62)) #8
          to label %if.end66 [label %if.then62], !srcloc !172

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_power_off.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.59) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %do.body50, %ov5647_write.exit.thread96
  %xclk = getelementptr inbounds %struct.ov5647, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xclk, align 4
  call void @clk_disable(ptr noundef %31) #8
  call void @clk_unprepare(ptr noundef %31) #8
  %pwdn = getelementptr inbounds %struct.ov5647, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %pwdn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pwdn, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdval) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %data.i = alloca [4 x i8], align 1
  %data.i.i82 = alloca [3 x i8], align 1
  %reg.i83 = alloca i8, align 1
  %data.i.i72 = alloca [3 x i8], align 1
  %reg.i = alloca i8, align 1
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -332
  %dev_priv.i = getelementptr i8, ptr %1, i32 -180
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
  %mode = getelementptr i8, ptr %1, i32 184
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -4
  %sub = add i32 %add, %11
  %12 = tail call i32 @llvm.smin.i32(i32 %sub, i32 1000)
  %exposure = getelementptr i8, ptr %1, i32 200
  %13 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %minimum, align 8
  %conv = sext i32 %sub to i64
  %17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 18
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %conv6 = sext i32 %12 to i64
  %call7 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %14, i64 noundef %16, i64 noundef %conv, i64 noundef %19, i64 noundef %conv6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp eq i32 %call.i, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end [
    i32 9963788, label %sw.bb
    i32 9963794, label %sw.bb16
    i32 10094849, label %sw.bb19
    i32 10356995, label %sw.bb22
    i32 9963793, label %sw.bb25
    i32 10356993, label %sw.bb28
    i32 10422530, label %if.end12.sw.epilog_crit_edge
    i32 10356994, label %if.end12.sw.epilog_crit_edge101
  ]

if.end12.sw.epilog_crit_edge101:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp ne i32 %24, 0
  %conv.i = zext i1 %tobool.not.i to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %25 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 80, ptr %data.i.i, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %25, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i, ptr %26, align 1
  %30 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %sw.bb.ov5647_s_auto_white_balance.exit_crit_edge

sw.bb.ov5647_s_auto_white_balance.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_s_auto_white_balance.exit

do.body.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_s_ctrl, %if.then10.i.i)) #8
          to label %ov5647_s_auto_white_balance.exit [label %if.then10.i.i], !srcloc !172

if.then10.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 20481) #8
  br label %ov5647_s_auto_white_balance.exit

ov5647_s_auto_white_balance.exit:                 ; preds = %if.then10.i.i, %do.body.i.i, %sw.bb.ov5647_s_auto_white_balance.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %if.then10.i.i ], [ 0, %sw.bb.ov5647_s_auto_white_balance.exit_crit_edge ], [ %call.i.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end12
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val17, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #8
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %reg.i, align 1, !annotation !173
  %call.i73 = call fastcc i32 @ov5647_read(ptr noundef %add.ptr, i16 noundef zeroext 13571, ptr noundef nonnull %reg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i74, label %if.end.i, label %sw.bb16.ov5647_s_autogain.exit_crit_edge

sw.bb16.ov5647_s_autogain.exit_crit_edge:         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_s_autogain.exit

if.end.i:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.i = icmp eq i32 %33, 0
  %35 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reg.i, align 1
  %and.i = and i8 %36, -3
  %masksel.i = select i1 %tobool1.not.i, i8 2, i8 0
  %cond.i = or i8 %and.i, %masksel.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i72) #8
  %37 = getelementptr inbounds [3 x i8], ptr %data.i.i72, i32 0, i32 1
  %38 = getelementptr inbounds [3 x i8], ptr %data.i.i72, i32 0, i32 2
  %39 = ptrtoint ptr %data.i.i72 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 53, ptr %data.i.i72, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %37, align 1
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %cond.i, ptr %38, align 1
  %42 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i.i76 = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %data.i.i72, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i76)
  %cmp.i.i77 = icmp slt i32 %call.i.i.i76, 0
  br i1 %cmp.i.i77, label %do.body.i.i78, label %if.end.i.ov5647_write.exit.i_crit_edge

if.end.i.ov5647_write.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_write.exit.i

do.body.i.i78:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_s_ctrl, %if.then10.i.i80)) #8
          to label %ov5647_write.exit.i [label %if.then10.i.i80], !srcloc !172

if.then10.i.i80:                                  ; preds = %do.body.i.i78
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i79 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i.i79, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 13571) #8
  br label %ov5647_write.exit.i

ov5647_write.exit.i:                              ; preds = %if.then10.i.i80, %do.body.i.i78, %if.end.i.ov5647_write.exit.i_crit_edge
  %retval.0.i.i81 = phi i32 [ %call.i.i.i76, %if.then10.i.i80 ], [ 0, %if.end.i.ov5647_write.exit.i_crit_edge ], [ %call.i.i.i76, %do.body.i.i78 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i72) #8
  br label %ov5647_s_autogain.exit

ov5647_s_autogain.exit:                           ; preds = %ov5647_write.exit.i, %sw.bb16.ov5647_s_autogain.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i81, %ov5647_write.exit.i ], [ %call.i73, %sw.bb16.ov5647_s_autogain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end12
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val20, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i83) #8
  %46 = ptrtoint ptr %reg.i83 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %reg.i83, align 1, !annotation !173
  %call.i84 = call fastcc i32 @ov5647_read(ptr noundef %add.ptr, i16 noundef zeroext 13571, ptr noundef nonnull %reg.i83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.end.i91, label %sw.bb19.ov5647_s_exposure_auto.exit_crit_edge

sw.bb19.ov5647_s_exposure_auto.exit_crit_edge:    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_s_exposure_auto.exit

if.end.i91:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i = icmp eq i32 %45, 1
  %47 = ptrtoint ptr %reg.i83 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %reg.i83, align 1
  %49 = and i8 %48, -2
  %masksel.i86 = zext i1 %cmp.i to i8
  %cond.i87 = or i8 %49, %masksel.i86
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i82) #8
  %50 = getelementptr inbounds [3 x i8], ptr %data.i.i82, i32 0, i32 1
  %51 = getelementptr inbounds [3 x i8], ptr %data.i.i82, i32 0, i32 2
  %52 = ptrtoint ptr %data.i.i82 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 53, ptr %data.i.i82, align 1
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %50, align 1
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %cond.i87, ptr %51, align 1
  %55 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i.i89 = call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %data.i.i82, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i89)
  %cmp.i.i90 = icmp slt i32 %call.i.i.i89, 0
  br i1 %cmp.i.i90, label %do.body.i.i92, label %if.end.i91.ov5647_write.exit.i96_crit_edge

if.end.i91.ov5647_write.exit.i96_crit_edge:       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_write.exit.i96

do.body.i.i92:                                    ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_s_ctrl, %if.then10.i.i94)) #8
          to label %ov5647_write.exit.i96 [label %if.then10.i.i94], !srcloc !172

if.then10.i.i94:                                  ; preds = %do.body.i.i92
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i93 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i.i93, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 13571) #8
  br label %ov5647_write.exit.i96

ov5647_write.exit.i96:                            ; preds = %if.then10.i.i94, %do.body.i.i92, %if.end.i91.ov5647_write.exit.i96_crit_edge
  %retval.0.i.i95 = phi i32 [ %call.i.i.i89, %if.then10.i.i94 ], [ 0, %if.end.i91.ov5647_write.exit.i96_crit_edge ], [ %call.i.i.i89, %do.body.i.i92 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i82) #8
  br label %ov5647_s_exposure_auto.exit

ov5647_s_exposure_auto.exit:                      ; preds = %ov5647_write.exit.i96, %sw.bb19.ov5647_s_exposure_auto.exit_crit_edge
  %retval.0.i97 = phi i32 [ %retval.0.i.i95, %ov5647_write.exit.i96 ], [ %call.i84, %sw.bb19.ov5647_s_exposure_auto.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i83) #8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %57 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val23, align 4
  %call24 = tail call fastcc i32 @ov5647_s_analogue_gain(ptr noundef %add.ptr, i32 noundef %58)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %59 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val26, align 4
  %call27 = tail call fastcc i32 @ov5647_s_exposure(ptr noundef %add.ptr, i32 noundef %60)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end12
  %mode29 = getelementptr i8, ptr %1, i32 184
  %61 = ptrtoint ptr %mode29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mode29, align 4
  %height31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %height31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %height31, align 4
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %65 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val32, align 4
  %add33 = add i32 %66, %64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #8
  %67 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %68 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %69 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 56, ptr %data.i, align 1
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 14, ptr %67, align 1
  %72 = lshr i32 %add33, 8
  %conv7.i = trunc i32 %72 to i8
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv7.i, ptr %68, align 1
  %conv11.i = trunc i32 %add33 to i8
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv11.i, ptr %69, align 1
  %75 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %76, ptr noundef nonnull %data.i, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i98 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i98, label %do.body.i, label %sw.bb28.ov5647_write16.exit_crit_edge

sw.bb28.ov5647_write16.exit_crit_edge:            ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_write16.exit

do.body.i:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write16.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_s_ctrl, %if.then17.i)) #8
          to label %ov5647_write16.exit [label %if.then17.i], !srcloc !172

if.then17.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write16.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, i32 noundef 14350) #8
  br label %ov5647_write16.exit

ov5647_write16.exit:                              ; preds = %if.then17.i, %do.body.i, %sw.bb28.ov5647_write16.exit_crit_edge
  %retval.0.i99 = phi i32 [ %call.i.i, %if.then17.i ], [ 0, %sw.bb28.ov5647_write16.exit_crit_edge ], [ %call.i.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #8
  br label %sw.epilog

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %77 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val39, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %21, i32 noundef %78) #11
  br label %cleanup

sw.epilog:                                        ; preds = %ov5647_write16.exit, %sw.bb25, %sw.bb22, %ov5647_s_exposure_auto.exit, %ov5647_s_autogain.exit, %ov5647_s_auto_white_balance.exit, %if.end12.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge101
  %ret.0 = phi i32 [ 0, %if.end12.sw.epilog_crit_edge ], [ 0, %if.end12.sw.epilog_crit_edge101 ], [ %retval.0.i99, %ov5647_write16.exit ], [ %call27, %sw.bb25 ], [ %call24, %sw.bb22 ], [ %retval.0.i97, %ov5647_s_exposure_auto.exit ], [ %retval.0.i, %ov5647_s_autogain.exit ], [ %retval.0.i.i, %ov5647_s_auto_white_balance.exit ]
  %call.i100 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5647_s_analogue_gain(ptr nocapture noundef readonly %sd, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %data.i7 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %val, 8
  %0 = trunc i32 %shr to i8
  %conv = and i8 %0, 3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 53, ptr %data.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %1, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %2, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_s_analogue_gain, %if.then10.i)) #8
          to label %ov5647_write.exit [label %if.then10.i], !srcloc !172

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 13578) #8
  br label %ov5647_write.exit

ov5647_write.exit:                                ; preds = %if.then10.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %conv2 = trunc i32 %val to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i7) #8
  %8 = getelementptr inbounds [3 x i8], ptr %data.i7, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %data.i7, i32 0, i32 2
  %10 = ptrtoint ptr %data.i7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 53, ptr %data.i7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 11, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2, ptr %9, align 1
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %data.i7, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i10 = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i10, label %do.body.i11, label %if.end.ov5647_write.exit15_crit_edge

if.end.ov5647_write.exit15_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_write.exit15

do.body.i11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_s_analogue_gain, %if.then10.i13)) #8
          to label %ov5647_write.exit15 [label %if.then10.i13], !srcloc !172

if.then10.i13:                                    ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i12 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i12, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 13579) #8
  br label %ov5647_write.exit15

ov5647_write.exit15:                              ; preds = %if.then10.i13, %do.body.i11, %if.end.ov5647_write.exit15_crit_edge
  %retval.0.i14 = phi i32 [ %call.i.i9, %if.then10.i13 ], [ 0, %if.end.ov5647_write.exit15_crit_edge ], [ %call.i.i9, %do.body.i11 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i7) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5647_write.exit15, %ov5647_write.exit
  %retval.0 = phi i32 [ %retval.0.i14, %ov5647_write.exit15 ], [ %call.i.i, %ov5647_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5647_s_exposure(ptr nocapture noundef readonly %sd, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %data.i27 = alloca [3 x i8], align 1
  %data.i18 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %val, 12
  %0 = trunc i32 %shr to i8
  %conv = and i8 %0, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 53, ptr %data.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %1, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %2, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_s_exposure, %if.then10.i)) #8
          to label %ov5647_write.exit [label %if.then10.i], !srcloc !172

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 13568) #8
  br label %ov5647_write.exit

ov5647_write.exit:                                ; preds = %if.then10.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %shr1 = lshr i32 %val, 4
  %conv3 = trunc i32 %shr1 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i18) #8
  %8 = getelementptr inbounds [3 x i8], ptr %data.i18, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %data.i18, i32 0, i32 2
  %10 = ptrtoint ptr %data.i18 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 53, ptr %data.i18, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %9, align 1
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i20 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %data.i18, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp.i21 = icmp slt i32 %call.i.i20, 0
  br i1 %cmp.i21, label %do.body.i22, label %if.end7

do.body.i22:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_s_exposure, %if.then10.i24)) #8
          to label %ov5647_write.exit26 [label %if.then10.i24], !srcloc !172

if.then10.i24:                                    ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i23 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i23, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 13569) #8
  br label %ov5647_write.exit26

ov5647_write.exit26:                              ; preds = %if.then10.i24, %do.body.i22
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i18) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i18) #8
  %val.tr = trunc i32 %val to i8
  %conv9 = shl i8 %val.tr, 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i27) #8
  %15 = getelementptr inbounds [3 x i8], ptr %data.i27, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %data.i27, i32 0, i32 2
  %17 = ptrtoint ptr %data.i27 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 53, ptr %data.i27, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv9, ptr %16, align 1
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i29 = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %data.i27, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i30, label %do.body.i31, label %if.end7.ov5647_write.exit35_crit_edge

if.end7.ov5647_write.exit35_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_write.exit35

do.body.i31:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_s_exposure, %if.then10.i33)) #8
          to label %ov5647_write.exit35 [label %if.then10.i33], !srcloc !172

if.then10.i33:                                    ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i32 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i32, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 13570) #8
  br label %ov5647_write.exit35

ov5647_write.exit35:                              ; preds = %if.then10.i33, %do.body.i31, %if.end7.ov5647_write.exit35_crit_edge
  %retval.0.i34 = phi i32 [ %call.i.i29, %if.then10.i33 ], [ 0, %if.end7.ov5647_write.exit35_crit_edge ], [ %call.i.i29, %do.body.i31 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i27) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5647_write.exit35, %ov5647_write.exit26, %ov5647_write.exit
  %retval.0 = phi i32 [ %retval.0.i34, %ov5647_write.exit35 ], [ %call.i.i, %ov5647_write.exit ], [ %call.i.i20, %ov5647_write.exit26 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5647_write(ptr nocapture noundef readonly %sd, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %conv = zext i16 %reg to i32
  %2 = lshr i16 %reg, 8
  %conv1 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %data, align 1
  %conv3 = trunc i16 %reg to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %val, ptr %1, align 1
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %data, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_write, %if.then10)) #8
          to label %cleanup [label %if.then10], !srcloc !172

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then10 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.body ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5647_read(ptr nocapture noundef readonly %sd, i16 noundef zeroext %reg, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  %data_w = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_w) #8
  %0 = getelementptr inbounds [2 x i8], ptr %data_w, i32 0, i32 1
  %conv = zext i16 %reg to i32
  %1 = lshr i16 %reg, 8
  %conv1 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %data_w to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %data_w, align 1
  %conv3 = trunc i16 %reg to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %data_w, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_read.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_read, %if.then9)) #8
          to label %cleanup [label %if.then9], !srcloc !172

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_read.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %conv) #8
  br label %cleanup

if.end11:                                         ; preds = %entry
  %call.i49 = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef %val, i32 noundef 1, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp13 = icmp slt i32 %call.i49, 0
  br i1 %cmp13, label %do.body16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_read.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_read, %if.then28)) #8
          to label %cleanup [label %if.then28], !srcloc !172

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_read.__UNIQUE_ID_ddebug296, ptr noundef %dev29, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body16, %if.end11.cleanup_crit_edge, %if.then9, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call.i49, %if.then28 ], [ 0, %if.end11.cleanup_crit_edge ], [ %call.i, %do.body ], [ %call.i49, %do.body16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_w) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_sensor_get_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !173
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %1 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %reg1, align 1
  %3 = trunc i64 %2 to i16
  %conv = and i16 %3, 255
  %call = call fastcc i32 @ov5647_read(ptr noundef %sd, i16 noundef zeroext %conv, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 1
  %conv3 = zext i8 %5 to i64
  %val4 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %conv3, ptr %val4, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_sensor_set_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %2 = trunc i64 %1 to i32
  %conv = and i32 %2, 255
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %3 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %4 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %5 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %data.i, align 1
  %conv3.i = trunc i64 %1 to i8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i, ptr %5, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %6, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.ov5647_write.exit_crit_edge

entry.ov5647_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_write.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_sensor_set_register, %if.then10.i)) #8
          to label %ov5647_write.exit [label %if.then10.i], !srcloc !172

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %conv) #8
  br label %ov5647_write.exit

ov5647_write.exit:                                ; preds = %if.then10.i, %do.body.i, %entry.ov5647_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.then10.i ], [ 0, %entry.ov5647_write.exit_crit_edge ], [ %call.i.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 12
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !174
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4 = icmp ne i32 %enable, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %if.then5
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !176
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !177
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  %call11 = tail call fastcc i32 @ov5647_stream_on(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end, label %if.end10.if.end28_crit_edge

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call11) #11
  br label %error_pm

if.else:                                          ; preds = %if.end
  %call17 = tail call fastcc i32 @ov5647_stream_off(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br i1 %cmp18, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.32, i32 noundef %call17) #11
  br label %error_pm

if.end25:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i56 = tail call i32 @__pm_runtime_idle(ptr noundef %dev24, i32 noundef 5) #8
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end10.if.end28_crit_edge
  %frombool = zext i1 %tobool4 to i8
  %6 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %streaming, align 4
  br label %cleanup

error_pm:                                         ; preds = %do.end23, %do.end
  %ret.0 = phi i32 [ %call11, %do.end ], [ %call17, %do.end23 ]
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i57 = tail call i32 @__pm_runtime_idle(ptr noundef %dev32, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %error_pm, %if.end28, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %error_pm ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5647_stream_on(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  %data.i48 = alloca [3 x i8], align 1
  %data.i39 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call2 = tail call fastcc i32 @ov5647_set_mode(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  %call3 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %clock_ncont = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %clock_ncont to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clock_ncont, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool7.not, i8 4, i8 52
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %6 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 72, ptr %data.i, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %6, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %7, align 1
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end14

do.body.i:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_stream_on, %ov5647_write.exit.thread)) #8
          to label %ov5647_write.exit [label %ov5647_write.exit.thread], !srcloc !172

ov5647_write.exit.thread:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 18432) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

ov5647_write.exit:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i39) #8
  %13 = getelementptr inbounds [3 x i8], ptr %data.i39, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i8], ptr %data.i39, i32 0, i32 2
  %15 = ptrtoint ptr %data.i39 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 66, ptr %data.i39, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %13, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %14, align 1
  %18 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %data.i39, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.i42 = icmp slt i32 %call.i.i41, 0
  br i1 %cmp.i42, label %do.body.i43, label %if.end19

do.body.i43:                                      ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_stream_on, %ov5647_write.exit47.thread)) #8
          to label %ov5647_write.exit47 [label %ov5647_write.exit47.thread], !srcloc !172

ov5647_write.exit47.thread:                       ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i44 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i44, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 16898) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i39) #8
  br label %cleanup

ov5647_write.exit47:                              ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i39) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i39) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i48) #8
  %20 = getelementptr inbounds [3 x i8], ptr %data.i48, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %data.i48, i32 0, i32 2
  %22 = ptrtoint ptr %data.i48 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 48, ptr %data.i48, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 13, ptr %20, align 1
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %21, align 1
  %25 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i50 = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %data.i48, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp.i51 = icmp slt i32 %call.i.i50, 0
  br i1 %cmp.i51, label %do.body.i52, label %if.end19.ov5647_write.exit56_crit_edge

if.end19.ov5647_write.exit56_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_write.exit56

do.body.i52:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_stream_on, %if.then10.i54)) #8
          to label %ov5647_write.exit56 [label %if.then10.i54], !srcloc !172

if.then10.i54:                                    ; preds = %do.body.i52
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i53 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i53, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 12301) #8
  br label %ov5647_write.exit56

ov5647_write.exit56:                              ; preds = %if.then10.i54, %do.body.i52, %if.end19.ov5647_write.exit56_crit_edge
  %retval.0.i55 = phi i32 [ %call.i.i50, %if.then10.i54 ], [ 0, %if.end19.ov5647_write.exit56_crit_edge ], [ %call.i.i50, %do.body.i52 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i48) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5647_write.exit56, %ov5647_write.exit47, %ov5647_write.exit47.thread, %ov5647_write.exit, %ov5647_write.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval.0.i55, %ov5647_write.exit56 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call.i.i, %ov5647_write.exit ], [ %call.i.i41, %ov5647_write.exit47 ], [ %call.i.i, %ov5647_write.exit.thread ], [ %call.i.i41, %ov5647_write.exit47.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5647_stream_off(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  %data.i20 = alloca [3 x i8], align 1
  %data.i11 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 72, ptr %data.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 37, ptr %1, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_stream_off, %ov5647_write.exit.thread)) #8
          to label %ov5647_write.exit [label %ov5647_write.exit.thread], !srcloc !172

ov5647_write.exit.thread:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 18432) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

ov5647_write.exit:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i11) #8
  %7 = getelementptr inbounds [3 x i8], ptr %data.i11, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %data.i11, i32 0, i32 2
  %9 = ptrtoint ptr %data.i11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 66, ptr %data.i11, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 15, ptr %8, align 1
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i13 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %data.i11, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %cmp.i14 = icmp slt i32 %call.i.i13, 0
  br i1 %cmp.i14, label %do.body.i15, label %if.end4

do.body.i15:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_stream_off, %ov5647_write.exit19.thread)) #8
          to label %ov5647_write.exit19 [label %ov5647_write.exit19.thread], !srcloc !172

ov5647_write.exit19.thread:                       ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i16 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i16, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 16898) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i11) #8
  br label %cleanup

ov5647_write.exit19:                              ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i11) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i11) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i20) #8
  %14 = getelementptr inbounds [3 x i8], ptr %data.i20, i32 0, i32 1
  %15 = getelementptr inbounds [3 x i8], ptr %data.i20, i32 0, i32 2
  %16 = ptrtoint ptr %data.i20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 48, ptr %data.i20, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 13, ptr %14, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %15, align 1
  %19 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i22 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %data.i20, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i23 = icmp slt i32 %call.i.i22, 0
  br i1 %cmp.i23, label %do.body.i24, label %if.end4.ov5647_write.exit28_crit_edge

if.end4.ov5647_write.exit28_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5647_write.exit28

do.body.i24:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_stream_off, %if.then10.i26)) #8
          to label %ov5647_write.exit28 [label %if.then10.i26], !srcloc !172

if.then10.i26:                                    ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i25 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i25, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 12301) #8
  br label %ov5647_write.exit28

ov5647_write.exit28:                              ; preds = %if.then10.i26, %do.body.i24, %if.end4.ov5647_write.exit28_crit_edge
  %retval.0.i27 = phi i32 [ %call.i.i22, %if.then10.i26 ], [ 0, %if.end4.ov5647_write.exit28_crit_edge ], [ %call.i.i22, %do.body.i24 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i20) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5647_write.exit28, %ov5647_write.exit19, %ov5647_write.exit19.thread, %ov5647_write.exit, %ov5647_write.exit.thread
  %retval.0 = phi i32 [ %retval.0.i27, %ov5647_write.exit28 ], [ %call.i.i, %ov5647_write.exit ], [ %call.i.i13, %ov5647_write.exit19 ], [ %call.i.i, %ov5647_write.exit.thread ], [ %call.i.i13, %ov5647_write.exit19.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5647_set_mode(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  %data.i.i48 = alloca [3 x i8], align 1
  %channel_id.i = alloca i8, align 1
  %data.i.i = alloca [3 x i8], align 1
  %resetval = alloca i8, align 1
  %rdval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resetval) #8
  %2 = ptrtoint ptr %resetval to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %resetval, align 1, !annotation !173
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdval) #8
  %3 = ptrtoint ptr %rdval to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %rdval, align 1, !annotation !173
  %call2 = call fastcc i32 @ov5647_read(ptr noundef %sd, i16 noundef zeroext 256, ptr noundef nonnull %rdval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode, align 4
  %reg_list = getelementptr inbounds %struct.ov5647_mode, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %reg_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_list, align 8
  %num_regs = getelementptr inbounds %struct.ov5647_mode, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %num_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15.i = icmp sgt i32 %9, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %if.end
  %10 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.regval_list, ptr %7, i32 %i.016.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  %data.i = getelementptr %struct.regval_list, ptr %7, i32 %i.016.i, i32 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %16 = lshr i16 %13, 8
  %conv1.i.i = trunc i16 %16 to i8
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1.i.i, ptr %data.i.i, align 1
  %conv3.i.i = trunc i16 %13 to i8
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i.i, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %15, ptr %11, align 1
  %20 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %for.inc.i

do.body.i.i:                                      ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_set_mode, %ov5647_write.exit.thread.i)) #8
          to label %ov5647_write.exit.i [label %ov5647_write.exit.thread.i], !srcloc !172

ov5647_write.exit.thread.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.le.i = zext i16 %13 to i32
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %conv.i.le.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %do.end

ov5647_write.exit.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %do.end

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.if.end7_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %ov5647_write.exit.i, %ov5647_write.exit.thread.i
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #11
  br label %cleanup

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %channel_id.i) #8
  %22 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %channel_id.i, align 1, !annotation !173
  %call.i = call fastcc i32 @ov5647_read(ptr noundef %sd, i16 noundef zeroext 18452, ptr noundef nonnull %channel_id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5647_set_virtual_channel.exit.thread, label %if.end.i

ov5647_set_virtual_channel.exit.thread:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %channel_id.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %23 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %channel_id.i, align 1
  %25 = and i8 %24, 63
  store i8 %25, ptr %channel_id.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i48) #8
  %26 = getelementptr inbounds [3 x i8], ptr %data.i.i48, i32 0, i32 1
  %27 = getelementptr inbounds [3 x i8], ptr %data.i.i48, i32 0, i32 2
  %28 = ptrtoint ptr %data.i.i48 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 72, ptr %data.i.i48, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 20, ptr %26, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %25, ptr %27, align 1
  %31 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i.i50 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %data.i.i48, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i50)
  %cmp.i.i51 = icmp slt i32 %call.i.i.i50, 0
  br i1 %cmp.i.i51, label %do.body.i.i52, label %if.end11

do.body.i.i52:                                    ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5647_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5647_set_mode, %ov5647_set_virtual_channel.exit.thread61)) #8
          to label %ov5647_set_virtual_channel.exit [label %ov5647_set_virtual_channel.exit.thread61], !srcloc !172

ov5647_set_virtual_channel.exit.thread61:         ; preds = %do.body.i.i52
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i53 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5647_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i.i53, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 18452) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i48) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %channel_id.i) #8
  br label %cleanup

ov5647_set_virtual_channel.exit:                  ; preds = %do.body.i.i52
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i48) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %channel_id.i) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i48) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %channel_id.i) #8
  %call12 = call fastcc i32 @ov5647_read(ptr noundef %sd, i16 noundef zeroext 256, ptr noundef nonnull %resetval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %33 = ptrtoint ptr %resetval to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %resetval, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not = icmp eq i8 %35, 0
  br i1 %tobool.not, label %do.end19, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end19:                                         ; preds = %if.end15
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.39) #11
  %call21 = call fastcc i32 @ov5647_write(ptr noundef %sd, i16 noundef zeroext 256, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end19.cleanup_crit_edge, label %do.end19.if.end26_crit_edge

do.end19.if.end26_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %do.end19.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %ov5647_set_virtual_channel.exit, %ov5647_set_virtual_channel.exit.thread61, %ov5647_set_virtual_channel.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %do.end ], [ 0, %if.end26 ], [ %call2, %entry.cleanup_crit_edge ], [ %call.i.i.i50, %ov5647_set_virtual_channel.exit ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call21, %do.end19.cleanup_crit_edge ], [ %call.i, %ov5647_set_virtual_channel.exit.thread ], [ %call.i.i.i50, %ov5647_set_virtual_channel.exit.thread61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdval) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resetval) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5647_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
  store i32 12295, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5647_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12295, i32 %1)
  %cmp.not = icmp eq i32 %1, 12295
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1 = icmp ugt i32 %3, 3
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x %struct.ov5647_mode], ptr @ov5647_modes, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %7 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %max_width, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx, i32 0, i32 1
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
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_get_pad_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
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
  br i1 %cmp.not.i, label %sw.bb.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !178

sw.bb.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %sw.bb.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %sw.bb.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mode = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 7
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %v4l2_subdev_get_try_format.exit
  %sensor_format.0 = phi ptr [ %arrayidx.i, %v4l2_subdev_get_try_format.exit ], [ %9, %sw.default ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format1, ptr %sensor_format.0, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_set_pad_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %0 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %call2 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov5647_modes, i32 noundef 4, i32 noundef 88, i32 noundef 0, i32 noundef 4, i32 noundef %1, i32 noundef %3) #8
  %lock = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %7, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !178

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %7, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i
  %12 = call ptr @memcpy(ptr %arrayidx.i, ptr %call2, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mode5 = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 7
  %13 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2, ptr %mode5, align 4
  %pixel_rate = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 8
  %14 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pixel_rate, align 4
  %pixel_rate6 = getelementptr inbounds %struct.ov5647_mode, ptr %call2, i32 0, i32 2
  %16 = ptrtoint ptr %pixel_rate6 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pixel_rate6, align 8
  %call9 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %15, i64 noundef %17, i64 noundef %17, i64 noundef 1, i64 noundef %17) #8
  %hts = getelementptr inbounds %struct.ov5647_mode, ptr %call2, i32 0, i32 3
  %18 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hts, align 8
  %20 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call2, align 8
  %sub = sub i32 %19, %21
  %hblank12 = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 9
  %22 = ptrtoint ptr %hblank12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hblank12, align 4
  %conv = sext i32 %sub to i64
  %call15 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %23, i64 noundef %conv, i64 noundef %conv, i64 noundef 1, i64 noundef %conv) #8
  %vts = getelementptr inbounds %struct.ov5647_mode, ptr %call2, i32 0, i32 4
  %24 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vts, align 4
  %height17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call2, i32 0, i32 1
  %26 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height17, align 4
  %sub18 = sub i32 %25, %27
  %vblank19 = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 10
  %28 = ptrtoint ptr %vblank19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vblank19, align 4
  %sub22 = sub i32 32767, %27
  %conv23 = zext i32 %sub22 to i64
  %conv24 = sext i32 %sub18 to i64
  %call25 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %29, i64 noundef 4, i64 noundef %conv23, i64 noundef 1, i64 noundef %conv24) #8
  %30 = ptrtoint ptr %vblank19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vblank19, align 4
  %call27 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %31, i32 noundef %sub18) #8
  %32 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vts, align 4
  %sub29 = add i32 %33, -4
  %34 = tail call i32 @llvm.smin.i32(i32 %sub29, i32 1000)
  %exposure = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 11
  %35 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %minimum, align 8
  %conv34 = sext i32 %sub29 to i64
  %39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 18
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %39, align 8
  %conv36 = sext i32 %34 to i64
  %call37 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %36, i64 noundef %38, i64 noundef %conv34, i64 noundef %41, i64 noundef %conv36) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %42 = call ptr @memcpy(ptr %format1, ptr %call2, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb3
    i32 1, label %entry.sw.bb8_crit_edge
    i32 2, label %entry.sw.bb8_crit_edge30
  ]

entry.sw.bb8_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %3 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %4, label %sw.bb.__ov5647_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.__ov5647_get_pad_crop.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ov5647_get_pad_crop.exit

sw.bb.i:                                          ; preds = %sw.bb
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %7, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !178

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %7, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i.i, i32 1
  br label %__ov5647_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i = getelementptr inbounds %struct.ov5647, ptr %sd, i32 0, i32 7
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode.i, align 4
  %crop.i = getelementptr inbounds %struct.ov5647_mode, ptr %13, i32 0, i32 1
  br label %__ov5647_get_pad_crop.exit

__ov5647_get_pad_crop.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %sw.bb.__ov5647_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %sw.bb.__ov5647_get_pad_crop.exit_crit_edge ]
  %14 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %r4 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %top, align 4
  %16 = ptrtoint ptr %r4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %r4, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2624, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1956, ptr %height, align 4
  br label %return

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge30
  %r9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top10 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %top10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %top10, align 4
  %20 = ptrtoint ptr %r9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %r9, align 4
  %width14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %width14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2592, ptr %width14, align 4
  %height16 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1944, ptr %height16, align 4
  br label %return

return:                                           ; preds = %sw.bb8, %sw.bb3, %__ov5647_get_pad_crop.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb8 ], [ 0, %sw.bb3 ], [ 0, %__ov5647_get_pad_crop.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5647_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i.not, label %v4l2_subdev_get_try_format.exit, label %v4l2_subdev_get_try_format.exit.thread, !prof !179

v4l2_subdev_get_try_format.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %.pr = load i16, ptr %num_pads.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp.not.i10.not = icmp eq i16 %.pr, 0
  br i1 %cmp.not.i10.not, label %do.end.i11, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !179

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit

do.end.i11:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i11, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge, %v4l2_subdev_get_try_format.exit.thread
  %13 = phi ptr [ %7, %v4l2_subdev_get_try_format.exit.thread ], [ %12, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge ], [ %12, %do.end.i11 ]
  %14 = phi ptr [ %5, %v4l2_subdev_get_try_format.exit.thread ], [ %10, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge ], [ %10, %do.end.i11 ]
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %try_crop.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %try_crop.i, align 4
  %top = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %top, align 4
  %width = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2592, ptr %width, align 4
  %height = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1944, ptr %height, align 4
  %21 = call ptr @memcpy(ptr %14, ptr getelementptr inbounds ([4 x %struct.ov5647_mode], ptr @ov5647_modes, i32 0, i32 3), i32 48)
  ret i32 0
}

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
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !152, !153, !155, !157, !159, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__initcall__kmod_ov5647__310_1495_ov5647_driver_init6, !1, !"__initcall__kmod_ov5647__310_1495_ov5647_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov5647.c", i32 1495, i32 1}
!2 = !{ptr @__exitcall_ov5647_driver_exit, !1, !"__exitcall_ov5647_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author311, !4, !"__UNIQUE_ID_author311", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov5647.c", i32 1497, i32 1}
!5 = !{ptr @__UNIQUE_ID_description312, !6, !"__UNIQUE_ID_description312", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov5647.c", i32 1498, i32 1}
!7 = !{ptr @__UNIQUE_ID_file313, !8, !"__UNIQUE_ID_file313", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov5647.c", i32 1499, i32 1}
!9 = !{ptr @__UNIQUE_ID_license314, !8, !"__UNIQUE_ID_license314", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov5647.c", i32 1487, i32 11}
!12 = !{ptr @ov5647_driver, !13, !"ov5647_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov5647.c", i32 1484, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov5647.c", i32 1375, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov5647_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov5647_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov5647.c", i32 1382, i32 3}
!24 = !{ptr @ov5647_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov5647_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov5647.c", i32 1388, i32 3}
!28 = !{ptr @ov5647_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov5647_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov5647.c", i32 1393, i32 46}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ov5647.c", i32 1395, i32 3}
!34 = !{ptr @ov5647_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ov5647_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ov5647_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov5647.c", i32 1399, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ov5647.c", i32 1435, i32 2}
!41 = !{ptr @ov5647_probe.__UNIQUE_ID_ddebug309, !40, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!42 = !{ptr @ov5647_modes, !43, !"ov5647_modes", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/ov5647.c", i32 492, i32 33}
!44 = !{ptr @ov5647_2592x1944_10bpp, !45, !"ov5647_2592x1944_10bpp", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ov5647.c", i32 131, i32 27}
!46 = !{ptr @ov5647_1080p30_10bpp, !47, !"ov5647_1080p30_10bpp", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov5647.c", i32 220, i32 27}
!48 = !{ptr @ov5647_2x2binned_10bpp, !49, !"ov5647_2x2binned_10bpp", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ov5647.c", i32 309, i32 27}
!50 = !{ptr @ov5647_640x480_10bpp, !51, !"ov5647_640x480_10bpp", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov5647.c", i32 402, i32 27}
!52 = !{ptr @ov5647_init_controls._key, !53, !"_key", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov5647.c", i32 1273, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ov5647.c", i32 1327, i32 2}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ov5647_init_controls._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ov5647_init_controls._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @ov5647_ctrl_ops, !61, !"ov5647_ctrl_ops", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov5647.c", i32 1264, i32 35}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov5647.c", i32 1253, i32 3}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ov5647_s_ctrl._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @ov5647_s_ctrl._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov5647.c", i32 607, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ov5647_write.__UNIQUE_ID_ddebug294, !69, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov5647.c", i32 623, i32 3}
!74 = !{ptr @ov5647_read.__UNIQUE_ID_ddebug295, !73, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/ov5647.c", i32 630, i32 3}
!77 = !{ptr @ov5647_read.__UNIQUE_ID_ddebug296, !76, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov5647.c", i32 591, i32 3}
!80 = !{ptr @ov5647_write16.__UNIQUE_ID_ddebug293, !79, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!81 = !{ptr @ov5647_subdev_ops, !82, !"ov5647_subdev_ops", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ov5647.c", i32 1069, i32 37}
!83 = !{ptr @ov5647_subdev_core_ops, !84, !"ov5647_subdev_core_ops", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ov5647.c", i32 849, i32 42}
!85 = !{ptr @ov5647_subdev_video_ops, !86, !"ov5647_subdev_video_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/ov5647.c", i32 917, i32 43}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/ov5647.c", i32 892, i32 4}
!89 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ov5647_s_stream._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ov5647_s_stream._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov5647.c", i32 898, i32 4}
!94 = !{ptr @ov5647_s_stream._entry.31, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ov5647_s_stream._entry_ptr.33, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ov5647.c", i32 712, i32 3}
!98 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ov5647_stream_on._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ov5647_stream_on._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/ov5647.c", i32 681, i32 3}
!103 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ov5647_set_mode._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @ov5647_set_mode._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ov5647.c", i32 694, i32 3}
!108 = !{ptr @ov5647_set_mode._entry.38, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ov5647_set_mode._entry_ptr.40, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @ov5647_subdev_pad_ops, !111, !"ov5647_subdev_pad_ops", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ov5647.c", i32 1061, i32 41}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!114 = !{ptr @ov5647_subdev_internal_ops, !115, !"ov5647_subdev_internal_ops", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/ov5647.c", i32 1122, i32 46}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/ov5647.c", i32 758, i32 2}
!118 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ov5647_power_on.__UNIQUE_ID_ddebug297, !117, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/ov5647.c", i32 767, i32 3}
!122 = !{ptr @ov5647_power_on._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ov5647_power_on._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov5647.c", i32 774, i32 3}
!126 = !{ptr @ov5647_power_on._entry.45, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ov5647_power_on._entry_ptr.47, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ov5647.c", i32 781, i32 3}
!130 = !{ptr @ov5647_power_on._entry.48, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ov5647_power_on._entry_ptr.50, !129, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !133, !"sensor_oe_enable_regs", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov5647.c", i32 125, i32 33}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov5647.c", i32 1090, i32 3}
!136 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ov5647_detect._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @ov5647_detect._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/ov5647.c", i32 1099, i32 3}
!141 = !{ptr @ov5647_detect._entry.53, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ov5647_detect._entry_ptr.55, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/ov5647.c", i32 801, i32 2}
!145 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ov5647_power_off.__UNIQUE_ID_ddebug298, !144, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/ov5647.c", i32 806, i32 3}
!149 = !{ptr @ov5647_power_off.__UNIQUE_ID_ddebug299, !148, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/ov5647.c", i32 811, i32 3}
!152 = !{ptr @ov5647_power_off.__UNIQUE_ID_ddebug300, !151, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!153 = !{ptr @ov5647_power_off.__UNIQUE_ID_ddebug301, !154, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/ov5647.c", i32 816, i32 3}
!155 = distinct !{null, !156, !"sensor_oe_disable_regs", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/ov5647.c", i32 119, i32 33}
!157 = !{ptr @ov5647_of_match, !158, !"ov5647_of_match", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ov5647.c", i32 1477, i32 34}
!159 = !{ptr @ov5647_pm_ops, !160, !"ov5647_pm_ops", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/ov5647.c", i32 1466, i32 32}
!161 = !{ptr @ov5647_id, !162, !"ov5647_id", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/ov5647.c", i32 1470, i32 35}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2148753893, i64 2148753898, i64 2148753911, i64 2148753955, i64 2148753989, i64 2148754010}
!173 = !{!"auto-init"}
!174 = !{i8 0, i8 2}
!175 = !{i64 2148271497}
!176 = !{i64 756320, i64 756345, i64 756367, i64 756383, i64 756395, i64 756415, i64 756439, i64 756455, i64 756467}
!177 = !{i64 2148271685}
!178 = !{!"branch_weights", i32 2000, i32 1}
!179 = !{!"branch_weights", i32 1, i32 2000}
