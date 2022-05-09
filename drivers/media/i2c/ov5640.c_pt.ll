; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov5640.c_pt.bc'
source_filename = "../drivers/media/i2c/ov5640.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.ov5640_mode_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reg_value = type { i16, i8, i8, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov5640_pixfmt = type { i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.ov5640_dev = type { ptr, %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_fwnode_endpoint, ptr, i32, [3 x %struct.regulator_bulk_data], ptr, ptr, i8, %struct.mutex, i32, %struct.v4l2_mbus_framefmt, i8, ptr, ptr, i32, %struct.v4l2_fract, %struct.ov5640_ctrls, i32, i32, i32, i32, i32, i8, i8 }
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
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_fract = type { i32, i32 }
%struct.ov5640_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.101, %struct.anon.102, %struct.anon.103, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@__param_str_virtual_channel = internal constant [23 x i8] c"ov5640.virtual_channel\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@virtual_channel = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_virtual_channel = internal constant %struct.kernel_param { ptr @__param_str_virtual_channel, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @virtual_channel } }, section "__param", align 4
@__UNIQUE_ID_virtual_channeltype292 = internal constant [37 x i8] c"ov5640.parmtype=virtual_channel:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_virtual_channel293 = internal constant [73 x i8] c"ov5640.parm=virtual_channel:MIPI CSI-2 virtual channel (0..3), default 0\00", section ".modinfo", align 1
@__initcall__kmod_ov5640__299_3218_ov5640_i2c_driver_init6 = internal global ptr @ov5640_i2c_driver_init, section ".initcall6.init", align 4
@ov5640_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov5640_remove, ptr @ov5640_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov5640_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ov5640_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov5640_i2c_driver_exit = internal global ptr @ov5640_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description300 = internal constant [52 x i8] c"ov5640.description=OV5640 MIPI Camera Subdev Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [37 x i8] c"ov5640.file=drivers/media/i2c/ov5640\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [19 x i8] c"ov5640.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov5640\00", [25 x i8] zeroinitializer }, align 32
@ov5640_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov5640\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov5640_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov5640\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov5640_framerates = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 15, i32 30, i32 60], [20 x i8] zeroinitializer }, align 32
@ov5640_mode_data = internal constant { [10 x %struct.ov5640_mode_info], [88 x i8] } { [10 x %struct.ov5640_mode_info] [%struct.ov5640_mode_info { i32 0, i32 0, i32 160, i32 1896, i32 120, i32 984, ptr @ov5640_setting_QQVGA_160_120, i32 37, i32 1 }, %struct.ov5640_mode_info { i32 1, i32 0, i32 176, i32 1896, i32 144, i32 984, ptr @ov5640_setting_QCIF_176_144, i32 40, i32 1 }, %struct.ov5640_mode_info { i32 2, i32 0, i32 320, i32 1896, i32 240, i32 984, ptr @ov5640_setting_QVGA_320_240, i32 40, i32 1 }, %struct.ov5640_mode_info { i32 3, i32 0, i32 640, i32 1896, i32 480, i32 1080, ptr @ov5640_setting_VGA_640_480, i32 40, i32 2 }, %struct.ov5640_mode_info { i32 4, i32 0, i32 720, i32 1896, i32 480, i32 984, ptr @ov5640_setting_NTSC_720_480, i32 40, i32 1 }, %struct.ov5640_mode_info { i32 5, i32 0, i32 720, i32 1896, i32 576, i32 984, ptr @ov5640_setting_PAL_720_576, i32 40, i32 1 }, %struct.ov5640_mode_info { i32 6, i32 0, i32 1024, i32 1896, i32 768, i32 1080, ptr @ov5640_setting_XGA_1024_768, i32 40, i32 1 }, %struct.ov5640_mode_info { i32 7, i32 0, i32 1280, i32 1892, i32 720, i32 740, ptr @ov5640_setting_720P_1280_720, i32 40, i32 1 }, %struct.ov5640_mode_info { i32 8, i32 1, i32 1920, i32 2500, i32 1080, i32 1120, ptr @ov5640_setting_1080P_1920_1080, i32 70, i32 1 }, %struct.ov5640_mode_info { i32 9, i32 1, i32 2592, i32 2844, i32 1944, i32 1968, ptr @ov5640_setting_QSXGA_2592_1944, i32 40, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@ov5640_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3093, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%u degrees rotation is not supported, ignoring...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5640_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov5640.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov5640_probe._entry_ptr = internal global ptr @ov5640_probe._entry, section ".printk_index", align 4
@ov5640_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 3100, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"endpoint node not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ov5640_probe._entry_ptr.10 = internal global ptr @ov5640_probe._entry.7, section ".printk_index", align 4
@ov5640_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 3107, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not parse endpoint\0A\00", [38 x i8] zeroinitializer }, align 32
@ov5640_probe._entry_ptr.13 = internal global ptr @ov5640_probe._entry.11, section ".printk_index", align 4
@ov5640_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 3114, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported bus type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ov5640_probe._entry_ptr.16 = internal global ptr @ov5640_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xclk\00", [27 x i8] zeroinitializer }, align 32
@ov5640_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 3121, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get xclk\0A\00", [44 x i8] zeroinitializer }, align 32
@ov5640_probe._entry_ptr.20 = internal global ptr @ov5640_probe._entry.18, section ".printk_index", align 4
@ov5640_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 3129, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"xclk frequency out of range: %d Hz\0A\00", [60 x i8] zeroinitializer }, align 32
@ov5640_probe._entry_ptr.23 = internal global ptr @ov5640_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov5640_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov5640_core_ops, ptr null, ptr null, ptr @ov5640_video_ops, ptr null, ptr null, ptr null, ptr @ov5640_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov5640_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sensor->lock\00", [18 x i8] zeroinitializer }, align 32
@ov5640_setting_QQVGA_160_120 = internal constant { [37 x %struct.reg_value], [88 x i8] } { [37 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -101, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -93, i8 0, i32 0 }], [88 x i8] zeroinitializer }, align 32
@ov5640_setting_QCIF_176_144 = internal constant { [40 x %struct.reg_value], [64 x i8] } { [40 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -101, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 53, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -93, i8 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ov5640_setting_QVGA_320_240 = internal constant { [40 x %struct.reg_value], [64 x i8] } { [40 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -101, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 53, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -93, i8 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ov5640_setting_VGA_640_480 = internal constant { [40 x %struct.reg_value], [64 x i8] } { [40 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -101, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 53, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -93, i8 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ov5640_setting_NTSC_720_480 = internal constant { [40 x %struct.reg_value], [64 x i8] } { [40 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -101, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 60, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 53, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -93, i8 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ov5640_setting_PAL_720_576 = internal constant { [40 x %struct.reg_value], [64 x i8] } { [40 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -101, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 56, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 53, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -93, i8 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ov5640_setting_XGA_1024_768 = internal constant { [40 x %struct.reg_value], [64 x i8] } { [40 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -101, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 53, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -93, i8 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ov5640_setting_720P_1280_720 = internal constant { [40 x %struct.reg_value], [64 x i8] } { [40 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 -6, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -87, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -28, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 -68, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 114, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -28, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 55, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 32, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -125, i8 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ov5640_setting_1080P_1920_1080 = internal constant { [70 x %struct.reg_value], [144 x i8] } { [70 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 17, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 17, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -97, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 33, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 18, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 53, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -125, i8 0, i32 0 }, %struct.reg_value { i16 15367, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 15368, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 80, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 -78, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 -17, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 5, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -15, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 43, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 96, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 80, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 24, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 96, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 55, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 32, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 16389, i8 26, i8 0, i32 0 }], [144 x i8] zeroinitializer }, align 32
@ov5640_setting_QSXGA_2592_1944 = internal constant { [40 x %struct.reg_value], [64 x i8] } { [40 x %struct.reg_value] [%struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 17, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 17, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -97, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 33, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 18, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 53, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -125, i8 0, i32 70 }], [64 x i8] zeroinitializer }, align 32
@ov5640_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5640_s_power, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov5640_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5640_s_stream, ptr null, ptr @ov5640_g_frame_interval, ptr @ov5640_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov5640_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov5640_enum_mbus_code, ptr @ov5640_enum_frame_size, ptr @ov5640_enum_frame_interval, ptr @ov5640_get_fmt, ptr @ov5640_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov5640_set_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 1915, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ov5640_set_power_on\00", [44 x i8] zeroinitializer }, align 32
@ov5640_set_power_on._entry_ptr = internal global ptr @ov5640_set_power_on._entry, section ".printk_index", align 4
@ov5640_set_power_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 1923, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to enable regulators\0A\00", [63 x i8] zeroinitializer }, align 32
@ov5640_set_power_on._entry_ptr.31 = internal global ptr @ov5640_set_power_on._entry.29, section ".printk_index", align 4
@ov5640_init_slave_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 649, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: failed with %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov5640_init_slave_id\00", [43 x i8] zeroinitializer }, align 32
@ov5640_init_slave_id._entry_ptr = internal global ptr @ov5640_init_slave_id._entry, section ".printk_index", align 4
@ov5640_mode_init_data = internal constant { %struct.ov5640_mode_info, [60 x i8] } { %struct.ov5640_mode_info { i32 0, i32 0, i32 640, i32 1896, i32 480, i32 984, ptr @ov5640_init_setting_30fps_VGA, i32 237, i32 1 }, [60 x i8] zeroinitializer }, align 32
@ov5640_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 675, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: error: reg=%x, val=%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov5640_write_reg\00", [47 x i8] zeroinitializer }, align 32
@ov5640_write_reg._entry_ptr = internal global ptr @ov5640_write_reg._entry, section ".printk_index", align 4
@ov5640_init_setting_30fps_VGA = internal constant { [237 x %struct.reg_value], [472 x i8] } { [237 x %struct.reg_value] [%struct.reg_value { i16 12547, i8 17, i8 0, i32 0 }, %struct.reg_value { i16 12296, i8 -126, i8 0, i32 5 }, %struct.reg_value { i16 12296, i8 66, i8 0, i32 0 }, %struct.reg_value { i16 12547, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 13872, i8 54, i8 0, i32 0 }, %struct.reg_value { i16 13873, i8 14, i8 0, i32 0 }, %struct.reg_value { i16 13874, i8 -30, i8 0, i32 0 }, %struct.reg_value { i16 13875, i8 18, i8 0, i32 0 }, %struct.reg_value { i16 13857, i8 -32, i8 0, i32 0 }, %struct.reg_value { i16 14084, i8 -96, i8 0, i32 0 }, %struct.reg_value { i16 14083, i8 90, i8 0, i32 0 }, %struct.reg_value { i16 14101, i8 120, i8 0, i32 0 }, %struct.reg_value { i16 14103, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14091, i8 96, i8 0, i32 0 }, %struct.reg_value { i16 14085, i8 26, i8 0, i32 0 }, %struct.reg_value { i16 14597, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 14598, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14593, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14129, i8 18, i8 0, i32 0 }, %struct.reg_value { i16 13824, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 13825, i8 51, i8 0, i32 0 }, %struct.reg_value { i16 12333, i8 96, i8 0, i32 0 }, %struct.reg_value { i16 13856, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14107, i8 32, i8 0, i32 0 }, %struct.reg_value { i16 18204, i8 80, i8 0, i32 0 }, %struct.reg_value { i16 14867, i8 67, i8 0, i32 0 }, %struct.reg_value { i16 14872, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14873, i8 -8, i8 0, i32 0 }, %struct.reg_value { i16 13877, i8 19, i8 0, i32 0 }, %struct.reg_value { i16 13878, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 13876, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 13858, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 15361, i8 -92, i8 0, i32 0 }, %struct.reg_value { i16 15364, i8 40, i8 0, i32 0 }, %struct.reg_value { i16 15365, i8 -104, i8 0, i32 0 }, %struct.reg_value { i16 15366, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 15367, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 15368, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 15369, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 15370, i8 -100, i8 0, i32 0 }, %struct.reg_value { i16 15371, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 14368, i8 65, i8 0, i32 0 }, %struct.reg_value { i16 14369, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14356, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14357, i8 49, i8 0, i32 0 }, %struct.reg_value { i16 14336, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14337, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14338, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14339, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14340, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14341, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 14342, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 14343, i8 -101, i8 0, i32 0 }, %struct.reg_value { i16 14352, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14353, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 14354, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14355, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 13848, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 13842, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 14088, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 14089, i8 82, i8 0, i32 0 }, %struct.reg_value { i16 14092, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14850, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14851, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 14856, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 14857, i8 39, i8 0, i32 0 }, %struct.reg_value { i16 14858, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14859, i8 -10, i8 0, i32 0 }, %struct.reg_value { i16 14862, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14861, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 14868, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 14869, i8 -40, i8 0, i32 0 }, %struct.reg_value { i16 16385, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 16388, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 12288, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 12290, i8 28, i8 0, i32 0 }, %struct.reg_value { i16 12292, i8 -1, i8 0, i32 0 }, %struct.reg_value { i16 12294, i8 -61, i8 0, i32 0 }, %struct.reg_value { i16 12334, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 17152, i8 63, i8 0, i32 0 }, %struct.reg_value { i16 20511, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 17415, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 17422, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 17931, i8 53, i8 0, i32 0 }, %struct.reg_value { i16 17932, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 18487, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 14372, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 20480, i8 -89, i8 0, i32 0 }, %struct.reg_value { i16 20481, i8 -93, i8 0, i32 0 }, %struct.reg_value { i16 20864, i8 -1, i8 0, i32 0 }, %struct.reg_value { i16 20865, i8 -14, i8 0, i32 0 }, %struct.reg_value { i16 20866, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 20867, i8 20, i8 0, i32 0 }, %struct.reg_value { i16 20868, i8 37, i8 0, i32 0 }, %struct.reg_value { i16 20869, i8 36, i8 0, i32 0 }, %struct.reg_value { i16 20870, i8 9, i8 0, i32 0 }, %struct.reg_value { i16 20871, i8 9, i8 0, i32 0 }, %struct.reg_value { i16 20872, i8 9, i8 0, i32 0 }, %struct.reg_value { i16 20873, i8 -120, i8 0, i32 0 }, %struct.reg_value { i16 20874, i8 84, i8 0, i32 0 }, %struct.reg_value { i16 20875, i8 -18, i8 0, i32 0 }, %struct.reg_value { i16 20876, i8 -78, i8 0, i32 0 }, %struct.reg_value { i16 20877, i8 80, i8 0, i32 0 }, %struct.reg_value { i16 20878, i8 52, i8 0, i32 0 }, %struct.reg_value { i16 20879, i8 107, i8 0, i32 0 }, %struct.reg_value { i16 20880, i8 70, i8 0, i32 0 }, %struct.reg_value { i16 20881, i8 -8, i8 0, i32 0 }, %struct.reg_value { i16 20882, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 20883, i8 112, i8 0, i32 0 }, %struct.reg_value { i16 20884, i8 -16, i8 0, i32 0 }, %struct.reg_value { i16 20885, i8 -16, i8 0, i32 0 }, %struct.reg_value { i16 20886, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 20887, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 20888, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 20889, i8 108, i8 0, i32 0 }, %struct.reg_value { i16 20890, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 20891, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 20892, i8 9, i8 0, i32 0 }, %struct.reg_value { i16 20893, i8 43, i8 0, i32 0 }, %struct.reg_value { i16 20894, i8 56, i8 0, i32 0 }, %struct.reg_value { i16 21377, i8 30, i8 0, i32 0 }, %struct.reg_value { i16 21378, i8 91, i8 0, i32 0 }, %struct.reg_value { i16 21379, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 21380, i8 10, i8 0, i32 0 }, %struct.reg_value { i16 21381, i8 126, i8 0, i32 0 }, %struct.reg_value { i16 21382, i8 -120, i8 0, i32 0 }, %struct.reg_value { i16 21383, i8 124, i8 0, i32 0 }, %struct.reg_value { i16 21384, i8 108, i8 0, i32 0 }, %struct.reg_value { i16 21385, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 21386, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 21387, i8 -104, i8 0, i32 0 }, %struct.reg_value { i16 21248, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 21249, i8 48, i8 0, i32 0 }, %struct.reg_value { i16 21250, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 21251, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 21252, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 21253, i8 48, i8 0, i32 0 }, %struct.reg_value { i16 21254, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 21255, i8 22, i8 0, i32 0 }, %struct.reg_value { i16 21257, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 21258, i8 48, i8 0, i32 0 }, %struct.reg_value { i16 21259, i8 4, i8 0, i32 0 }, %struct.reg_value { i16 21260, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 21632, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 21633, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 21634, i8 20, i8 0, i32 0 }, %struct.reg_value { i16 21635, i8 40, i8 0, i32 0 }, %struct.reg_value { i16 21636, i8 81, i8 0, i32 0 }, %struct.reg_value { i16 21637, i8 101, i8 0, i32 0 }, %struct.reg_value { i16 21638, i8 113, i8 0, i32 0 }, %struct.reg_value { i16 21639, i8 125, i8 0, i32 0 }, %struct.reg_value { i16 21640, i8 -121, i8 0, i32 0 }, %struct.reg_value { i16 21641, i8 -111, i8 0, i32 0 }, %struct.reg_value { i16 21642, i8 -102, i8 0, i32 0 }, %struct.reg_value { i16 21643, i8 -86, i8 0, i32 0 }, %struct.reg_value { i16 21644, i8 -72, i8 0, i32 0 }, %struct.reg_value { i16 21645, i8 -51, i8 0, i32 0 }, %struct.reg_value { i16 21646, i8 -35, i8 0, i32 0 }, %struct.reg_value { i16 21647, i8 -22, i8 0, i32 0 }, %struct.reg_value { i16 21648, i8 29, i8 0, i32 0 }, %struct.reg_value { i16 21888, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 21891, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 21892, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 21897, i8 16, i8 0, i32 0 }, %struct.reg_value { i16 21898, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 21899, i8 -8, i8 0, i32 0 }, %struct.reg_value { i16 22528, i8 35, i8 0, i32 0 }, %struct.reg_value { i16 22529, i8 20, i8 0, i32 0 }, %struct.reg_value { i16 22530, i8 15, i8 0, i32 0 }, %struct.reg_value { i16 22531, i8 15, i8 0, i32 0 }, %struct.reg_value { i16 22532, i8 18, i8 0, i32 0 }, %struct.reg_value { i16 22533, i8 38, i8 0, i32 0 }, %struct.reg_value { i16 22534, i8 12, i8 0, i32 0 }, %struct.reg_value { i16 22535, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 22536, i8 5, i8 0, i32 0 }, %struct.reg_value { i16 22537, i8 5, i8 0, i32 0 }, %struct.reg_value { i16 22538, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 22539, i8 13, i8 0, i32 0 }, %struct.reg_value { i16 22540, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 22541, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 22542, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 22543, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 22544, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 22545, i8 9, i8 0, i32 0 }, %struct.reg_value { i16 22546, i8 7, i8 0, i32 0 }, %struct.reg_value { i16 22547, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 22548, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 22549, i8 1, i8 0, i32 0 }, %struct.reg_value { i16 22550, i8 3, i8 0, i32 0 }, %struct.reg_value { i16 22551, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 22552, i8 13, i8 0, i32 0 }, %struct.reg_value { i16 22553, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 22554, i8 5, i8 0, i32 0 }, %struct.reg_value { i16 22555, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 22556, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 22557, i8 14, i8 0, i32 0 }, %struct.reg_value { i16 22558, i8 41, i8 0, i32 0 }, %struct.reg_value { i16 22559, i8 23, i8 0, i32 0 }, %struct.reg_value { i16 22560, i8 17, i8 0, i32 0 }, %struct.reg_value { i16 22561, i8 17, i8 0, i32 0 }, %struct.reg_value { i16 22562, i8 21, i8 0, i32 0 }, %struct.reg_value { i16 22563, i8 40, i8 0, i32 0 }, %struct.reg_value { i16 22564, i8 70, i8 0, i32 0 }, %struct.reg_value { i16 22565, i8 38, i8 0, i32 0 }, %struct.reg_value { i16 22566, i8 8, i8 0, i32 0 }, %struct.reg_value { i16 22567, i8 38, i8 0, i32 0 }, %struct.reg_value { i16 22568, i8 100, i8 0, i32 0 }, %struct.reg_value { i16 22569, i8 38, i8 0, i32 0 }, %struct.reg_value { i16 22570, i8 36, i8 0, i32 0 }, %struct.reg_value { i16 22571, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 22572, i8 36, i8 0, i32 0 }, %struct.reg_value { i16 22573, i8 36, i8 0, i32 0 }, %struct.reg_value { i16 22574, i8 6, i8 0, i32 0 }, %struct.reg_value { i16 22575, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 22576, i8 64, i8 0, i32 0 }, %struct.reg_value { i16 22577, i8 66, i8 0, i32 0 }, %struct.reg_value { i16 22578, i8 36, i8 0, i32 0 }, %struct.reg_value { i16 22579, i8 38, i8 0, i32 0 }, %struct.reg_value { i16 22580, i8 36, i8 0, i32 0 }, %struct.reg_value { i16 22581, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 22582, i8 34, i8 0, i32 0 }, %struct.reg_value { i16 22583, i8 38, i8 0, i32 0 }, %struct.reg_value { i16 22584, i8 68, i8 0, i32 0 }, %struct.reg_value { i16 22585, i8 36, i8 0, i32 0 }, %struct.reg_value { i16 22586, i8 38, i8 0, i32 0 }, %struct.reg_value { i16 22587, i8 40, i8 0, i32 0 }, %struct.reg_value { i16 22588, i8 66, i8 0, i32 0 }, %struct.reg_value { i16 22589, i8 -50, i8 0, i32 0 }, %struct.reg_value { i16 20517, i8 0, i8 0, i32 0 }, %struct.reg_value { i16 14863, i8 48, i8 0, i32 0 }, %struct.reg_value { i16 14864, i8 40, i8 0, i32 0 }, %struct.reg_value { i16 14875, i8 48, i8 0, i32 0 }, %struct.reg_value { i16 14878, i8 38, i8 0, i32 0 }, %struct.reg_value { i16 14865, i8 96, i8 0, i32 0 }, %struct.reg_value { i16 14879, i8 20, i8 0, i32 0 }, %struct.reg_value { i16 12296, i8 2, i8 0, i32 0 }, %struct.reg_value { i16 15360, i8 4, i8 0, i32 300 }], [472 x i8] zeroinitializer }, align 32
@ov5640_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 705, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: error: reg=%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov5640_read_reg\00", [16 x i8] zeroinitializer }, align 32
@ov5640_read_reg._entry_ptr = internal global ptr @ov5640_read_reg._entry, section ".printk_index", align 4
@__const.ov5640_get_sysclk.sclk_rdiv_map = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 4, i32 8], align 4
@ov5640_set_virtual_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 1540, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: wrong virtual_channel parameter, expected (0..3), got %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ov5640_set_virtual_channel\00", [37 x i8] zeroinitializer }, align 32
@ov5640_set_virtual_channel._entry_ptr = internal global ptr @ov5640_set_virtual_channel._entry, section ".printk_index", align 4
@ov5640_formats = internal constant { [11 x %struct.ov5640_pixfmt], [40 x i8] } { [11 x %struct.ov5640_pixfmt] [%struct.ov5640_pixfmt { i32 16385, i32 7 }, %struct.ov5640_pixfmt { i32 8198, i32 8 }, %struct.ov5640_pixfmt { i32 8207, i32 8 }, %struct.ov5640_pixfmt { i32 8200, i32 8 }, %struct.ov5640_pixfmt { i32 8209, i32 8 }, %struct.ov5640_pixfmt { i32 4104, i32 8 }, %struct.ov5640_pixfmt { i32 4103, i32 8 }, %struct.ov5640_pixfmt { i32 12289, i32 8 }, %struct.ov5640_pixfmt { i32 12307, i32 8 }, %struct.ov5640_pixfmt { i32 12290, i32 8 }, %struct.ov5640_pixfmt { i32 12308, i32 8 }], [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DOVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@ov5640_check_chip_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 3029, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to read chip identifier\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov5640_check_chip_id\00", [43 x i8] zeroinitializer }, align 32
@ov5640_check_chip_id._entry_ptr = internal global ptr @ov5640_check_chip_id._entry, section ".printk_index", align 4
@ov5640_check_chip_id._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 3035, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: wrong chip identifier, expected 0x5640, got 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@ov5640_check_chip_id._entry_ptr.48 = internal global ptr @ov5640_check_chip_id._entry.46, section ".printk_index", align 4
@ov5640_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ov5640_g_volatile_ctrl, ptr null, ptr @ov5640_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov5640_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ov5640:2751:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [44 x i8] zeroinitializer }, align 32
@test_pattern_val = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\84\C4\82\C2", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color bars\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Color bars w/ rolling bar\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Color squares\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Color squares w/ rolling bar\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 180]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.56 = internal global [13 x i64] [i64 11, i64 32, i64 4103, i64 4104, i64 8198, i64 8200, i64 8207, i64 8209, i64 12289, i64 12290, i64 12307, i64 12308, i64 16385]
@__sancov_gen_cov_switch_values.57 = internal global [12 x i64] [i64 10, i64 32, i64 4103, i64 4104, i64 8198, i64 8200, i64 8207, i64 8209, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 8, i64 9, i64 11, i64 12]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 9963794, i64 10094849]
@__sancov_gen_cov_switch_values.60 = internal global [12 x i64] [i64 10, i64 32, i64 9963777, i64 9963778, i64 9963779, i64 9963788, i64 9963794, i64 9963796, i64 9963797, i64 9963800, i64 10094849, i64 10422531]
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"virtual_channel\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 153, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"ov5640_i2c_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3208, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3210, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"ov5640_dt_ids\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3202, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"ov5640_id\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3196, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"ov5640_framerates\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 158, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"ov5640_mode_data\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 575, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3082, i32 59 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3092, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3100, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3107, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3114, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3119, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3121, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3128, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3134, i32 51 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3140, i32 52 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"ov5640_subdev_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2998, i32 37 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3159, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [29 x i8] c"ov5640_setting_QQVGA_160_120\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 422, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant [28 x i8] c"ov5640_setting_QCIF_176_144\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 440, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant [28 x i8] c"ov5640_setting_QVGA_320_240\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 403, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant [27 x i8] c"ov5640_setting_VGA_640_480\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 365, i32 31 }
@___asan_gen_.166 = private unnamed_addr constant [28 x i8] c"ov5640_setting_NTSC_720_480\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 459, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant [27 x i8] c"ov5640_setting_PAL_720_576\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 478, i32 31 }
@___asan_gen_.172 = private unnamed_addr constant [28 x i8] c"ov5640_setting_XGA_1024_768\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 384, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant [29 x i8] c"ov5640_setting_720P_1280_720\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 497, i32 31 }
@___asan_gen_.178 = private unnamed_addr constant [31 x i8] c"ov5640_setting_1080P_1920_1080\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 516, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant [31 x i8] c"ov5640_setting_QSXGA_2592_1944\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 547, i32 31 }
@___asan_gen_.184 = private unnamed_addr constant [16 x i8] c"ov5640_core_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2977, i32 42 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"ov5640_video_ops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2984, i32 43 }
@___asan_gen_.190 = private unnamed_addr constant [15 x i8] c"ov5640_pad_ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2990, i32 41 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1914, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1922, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 649, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [22 x i8] c"ov5640_mode_init_data\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 567, i32 38 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 674, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [30 x i8] c"ov5640_init_setting_30fps_VGA\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 281, i32 31 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 704, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1538, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [15 x i8] c"ov5640_formats\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 135, i32 35 }
@___asan_gen_.254 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 998, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 166, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 167, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 168, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3028, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3034, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [16 x i8] c"ov5640_ctrl_ops\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2739, i32 35 }
@___asan_gen_.283 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2751, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [18 x i8] c"test_pattern_menu\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2569, i32 27 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"test_pattern_val\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2590, i32 17 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2570, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2571, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2572, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2573, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [30 x i8] c"../drivers/media/i2c/ov5640.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2574, i32 2 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__UNIQUE_ID_virtual_channel293, ptr @__UNIQUE_ID_virtual_channeltype292, ptr @__exitcall_ov5640_i2c_driver_exit, ptr @__initcall__kmod_ov5640__299_3218_ov5640_i2c_driver_init6, ptr @__param_virtual_channel, ptr @ov5640_check_chip_id._entry, ptr @ov5640_check_chip_id._entry.46, ptr @ov5640_check_chip_id._entry_ptr, ptr @ov5640_check_chip_id._entry_ptr.48, ptr @ov5640_i2c_driver_exit, ptr @ov5640_init_slave_id._entry, ptr @ov5640_init_slave_id._entry_ptr, ptr @ov5640_probe._entry, ptr @ov5640_probe._entry.11, ptr @ov5640_probe._entry.14, ptr @ov5640_probe._entry.18, ptr @ov5640_probe._entry.21, ptr @ov5640_probe._entry.7, ptr @ov5640_probe._entry_ptr, ptr @ov5640_probe._entry_ptr.10, ptr @ov5640_probe._entry_ptr.13, ptr @ov5640_probe._entry_ptr.16, ptr @ov5640_probe._entry_ptr.20, ptr @ov5640_probe._entry_ptr.23, ptr @ov5640_read_reg._entry, ptr @ov5640_read_reg._entry_ptr, ptr @ov5640_set_power_on._entry, ptr @ov5640_set_power_on._entry.29, ptr @ov5640_set_power_on._entry_ptr, ptr @ov5640_set_power_on._entry_ptr.31, ptr @ov5640_set_virtual_channel._entry, ptr @ov5640_set_virtual_channel._entry_ptr, ptr @ov5640_write_reg._entry, ptr @ov5640_write_reg._entry_ptr, ptr @virtual_channel, ptr @ov5640_i2c_driver, ptr @.str, ptr @ov5640_dt_ids, ptr @ov5640_id, ptr @ov5640_framerates, ptr @ov5640_mode_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @ov5640_subdev_ops, ptr @ov5640_probe.__key, ptr @.str.26, ptr @ov5640_setting_QQVGA_160_120, ptr @ov5640_setting_QCIF_176_144, ptr @ov5640_setting_QVGA_320_240, ptr @ov5640_setting_VGA_640_480, ptr @ov5640_setting_NTSC_720_480, ptr @ov5640_setting_PAL_720_576, ptr @ov5640_setting_XGA_1024_768, ptr @ov5640_setting_720P_1280_720, ptr @ov5640_setting_1080P_1920_1080, ptr @ov5640_setting_QSXGA_2592_1944, ptr @ov5640_core_ops, ptr @ov5640_video_ops, ptr @ov5640_pad_ops, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @ov5640_mode_init_data, ptr @.str.34, ptr @.str.35, ptr @ov5640_init_setting_30fps_VGA, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ov5640_formats, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @ov5640_ctrl_ops, ptr @ov5640_init_controls._key, ptr @.str.49, ptr @test_pattern_menu, ptr @test_pattern_val, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtual_channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_framerates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_mode_data to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_QQVGA_160_120 to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_QCIF_176_144 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_QVGA_320_240 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_VGA_640_480 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_NTSC_720_480 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_PAL_720_576 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_XGA_1024_768 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_720P_1280_720 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_1080P_1920_1080 to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_setting_QSXGA_2592_1944 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_set_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_set_power_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_init_slave_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_mode_init_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_init_setting_30fps_VGA to i32), i32 1896, i32 2368, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_set_virtual_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_formats to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_check_chip_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_check_chip_id._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5640_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_pattern_val to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov5640_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov5640_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ov5640_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrls = getelementptr i8, ptr %1, i32 516
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  %lock = getelementptr i8, ptr %1, i32 348
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_probe(ptr noundef %client) #2 align 64 {
entry:
  %rotation = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation) #7
  %0 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rotation, align 4, !annotation !178
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 792, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end48

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end48:                                       ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call.i, align 4
  %fmt2 = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 12
  %code = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8198, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 12, i32 4
  %3 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %colorspace, align 4
  %4 = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 12, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %4, align 4
  %quantization = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 12, i32 7
  %7 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %xfer_func, align 4
  %8 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 640, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 480, ptr %height, align 4
  %field = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 12, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field, align 4
  %frame_interval = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 17
  %11 = ptrtoint ptr %frame_interval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %frame_interval, align 4
  %denominator = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %denominator, align 4
  %current_fr = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 16
  %13 = ptrtoint ptr %current_fr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %current_fr, align 4
  %current_mode = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 14
  %14 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr getelementptr inbounds ([10 x %struct.ov5640_mode_info], ptr @ov5640_mode_data, i32 0, i32 3), ptr %current_mode, align 4
  %last_mode = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 15
  %15 = ptrtoint ptr %last_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds ([10 x %struct.ov5640_mode_info], ptr @ov5640_mode_data, i32 0, i32 3), ptr %last_mode, align 4
  %ae_target = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 23
  %16 = ptrtoint ptr %ae_target to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 52, ptr %ae_target, align 4
  %call54 = tail call ptr @dev_fwnode(ptr noundef %dev1) #7
  %call.i259 = call i32 @fwnode_property_read_u32_array(ptr noundef %call54, ptr noundef nonnull @.str.1, ptr noundef nonnull %rotation, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool56.not = icmp eq i32 %call.i259, 0
  br i1 %tobool56.not, label %if.then57, label %cond.end48.if.end58_crit_edge

cond.end48.if.end58_crit_edge:                    ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then57:                                        ; preds = %cond.end48
  %17 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rotation, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %do.end [
    i32 180, label %sw.bb
    i32 0, label %if.then57.if.end58_crit_edge
  ]

if.then57.if.end58_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

sw.bb:                                            ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %upside_down = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %upside_down to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %upside_down, align 4
  br label %if.end58

do.end:                                           ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %18) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end, %sw.bb, %if.then57.if.end58_crit_edge, %cond.end48.if.end58_crit_edge
  %call60 = call ptr @dev_fwnode(ptr noundef %dev1) #7
  %call61 = call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call60, ptr noundef null) #7
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %do.end66, label %if.end67

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end67:                                         ; preds = %if.end58
  %ep = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 3
  %call68 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call61, ptr noundef %ep) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end74, label %do.end73

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end74:                                         ; preds = %if.end67
  %bus_type = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bus_type, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %22, label %do.end90 [
    i32 1, label %if.end74.if.end93_crit_edge
    i32 5, label %if.end74.if.end93_crit_edge263
    i32 2, label %if.end74.if.end93_crit_edge264
  ]

if.end74.if.end93_crit_edge264:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end74.if.end93_crit_edge263:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end74.if.end93_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

do.end90:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %22) #10
  br label %cleanup

if.end93:                                         ; preds = %if.end74.if.end93_crit_edge, %if.end74.if.end93_crit_edge263, %if.end74.if.end93_crit_edge264
  %call94 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.17) #7
  %xclk = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call94, ptr %xclk, align 4
  %cmp.i = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end100, label %if.end103

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #10
  %25 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xclk, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end103:                                        ; preds = %if.end93
  %call105 = call i32 @clk_get_rate(ptr noundef %call94) #7
  %xclk_freq = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %xclk_freq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call105, ptr %xclk_freq, align 4
  %29 = add i32 %call105, -54000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48000001, i32 %29)
  %30 = icmp ult i32 %29, -48000001
  br i1 %30, label %do.end116, label %if.end118

do.end116:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call105) #10
  br label %cleanup

if.end118:                                        ; preds = %if.end103
  %call119 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef 7) #7
  %pwdn_gpio = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call119, ptr %pwdn_gpio, align 4
  %cmp.i260 = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260, label %if.then122, label %if.end125

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call119 to i32
  br label %cleanup

if.end125:                                        ; preds = %if.end118
  %call126 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call126, ptr %reset_gpio, align 4
  %cmp.i261 = icmp ugt ptr %call126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i261, label %if.then129, label %if.end132

if.then129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call126 to i32
  br label %cleanup

if.end132:                                        ; preds = %if.end125
  %sd = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 1
  call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @ov5640_subdev_ops) #7
  %flags = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %or = or i32 %36, 12
  store i32 %or, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 2
  %flags134 = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %flags134 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %flags134, align 4
  %function = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 131073, ptr %function, align 4
  %call139 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end142:                                        ; preds = %if.end132
  %arrayidx1.i = getelementptr %struct.ov5640_dev, ptr %call.i, i32 0, i32 6, i32 0
  %39 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.41, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.ov5640_dev, ptr %call.i, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.42, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.ov5640_dev, ptr %call.i, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.43, ptr %arrayidx1.2.i, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  %call.i262 = call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef 3, ptr noundef %arrayidx1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool144.not = icmp eq i32 %call.i262, 0
  br i1 %tobool144.not, label %do.body147, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body147:                                       ; preds = %if.end142
  %lock = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @ov5640_probe.__key) #7
  %call150 = call fastcc i32 @ov5640_check_chip_id(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end153, label %do.body147.entity_cleanup_crit_edge

do.body147.entity_cleanup_crit_edge:              ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #9
  br label %entity_cleanup

if.end153:                                        ; preds = %do.body147
  %call154 = call fastcc i32 @ov5640_init_controls(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end157, label %if.end153.entity_cleanup_crit_edge

if.end153.entity_cleanup_crit_edge:               ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %entity_cleanup

if.end157:                                        ; preds = %if.end153
  %call159 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef %sd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end157.cleanup_crit_edge, label %free_ctrls

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

free_ctrls:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %ctrls = getelementptr inbounds %struct.ov5640_dev, ptr %call.i, i32 0, i32 18
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  br label %entity_cleanup

entity_cleanup:                                   ; preds = %free_ctrls, %if.end153.entity_cleanup_crit_edge, %do.body147.entity_cleanup_crit_edge
  %ret.0 = phi i32 [ %call150, %do.body147.entity_cleanup_crit_edge ], [ %call154, %if.end153.entity_cleanup_crit_edge ], [ %call159, %free_ctrls ]
  call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %entity_cleanup, %if.end157.cleanup_crit_edge, %if.end142.cleanup_crit_edge, %if.end132.cleanup_crit_edge, %if.then129, %if.then122, %do.end116, %do.end100, %do.end90, %do.end73, %do.end66, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call68, %do.end73 ], [ -22, %do.end90 ], [ %27, %do.end100 ], [ -22, %do.end116 ], [ %32, %if.then122 ], [ %34, %if.then129 ], [ %ret.0, %entity_cleanup ], [ -22, %do.end66 ], [ -12, %entry.cleanup_crit_edge ], [ %call139, %if.end132.cleanup_crit_edge ], [ %call.i262, %if.end142.cleanup_crit_edge ], [ 0, %if.end157.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation) #7
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
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_check_chip_id(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %chip_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %chip_id) #7
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %chip_id, align 2, !annotation !178
  %call = tail call fastcc i32 @ov5640_set_power_on(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ov5640_read_reg16(ptr noundef %sensor, i16 noundef zeroext 12298, ptr noundef nonnull %chip_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #10
  br label %power_off

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22080, i16 %4)
  %cmp.not = icmp eq i16 %4, 22080
  br i1 %cmp.not, label %if.end4.power_off_crit_edge, label %do.end9

if.end4.power_off_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_off

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %4 to i32
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %conv) #10
  br label %power_off

power_off:                                        ; preds = %do.end9, %if.end4.power_off_crit_edge, %do.end
  %ret.0 = phi i32 [ %call1, %do.end ], [ -6, %do.end9 ], [ 0, %if.end4.power_off_crit_edge ]
  %pwdn_gpio.i.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 8
  %5 = ptrtoint ptr %pwdn_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwdn_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 1) #7
  %supplies.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 6
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  %xclk.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 4
  %7 = ptrtoint ptr %xclk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xclk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %power_off, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %power_off ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %chip_id) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_init_controls(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls1, i32 noundef 32, ptr noundef nonnull @ov5640_init_controls._key, ptr noundef nonnull @.str.49) #7
  %lock = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 10
  %lock2 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 0, i32 1
  %0 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %lock, ptr %lock2, align 4
  %current_mode.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 14
  %1 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_mode.i, align 4
  %vtot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %vtot.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vtot.i, align 4
  %htot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %htot.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %htot.i, align 4
  %mul.i = mul i32 %6, %4
  %conv.i = zext i32 %mul.i to i64
  %current_fr.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 16
  %7 = ptrtoint ptr %current_fr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_fr.i, align 4
  %arrayidx.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %conv2.i = sext i32 %10 to i64
  %mul3.i = mul nsw i64 %conv2.i, %conv.i
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 10422530, i64 noundef 0, i64 noundef 2147483647, i64 noundef 1, i64 noundef %mul3.i) #7
  %pixel_rate = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %pixel_rate, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %12 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %12, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 0) #7
  %blue_balance = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 3, i32 1
  %14 = ptrtoint ptr %blue_balance to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call6, ptr %blue_balance, align 4
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 0) #7
  %red_balance = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 3, i32 2
  %15 = ptrtoint ptr %red_balance to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7, ptr %red_balance, align 4
  %call8 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #7
  %16 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8, ptr %16, align 4
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #7
  %exposure = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 2, i32 1
  %18 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9, ptr %exposure, align 4
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %19 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call10, ptr %19, align 4
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 0) #7
  %gain = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 4, i32 1
  %21 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call11, ptr %gain, align 4
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 64) #7
  %saturation = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 7
  %22 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12, ptr %saturation, align 4
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 359, i64 noundef 1, i64 noundef 0) #7
  %hue = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 9
  %23 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call13, ptr %hue, align 4
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #7
  %contrast = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 8
  %24 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call14, ptr %contrast, align 4
  %call15 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @test_pattern_menu) #7
  %test_pattern = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 10
  %25 = ptrtoint ptr %test_pattern to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call15, ptr %test_pattern, align 4
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %hflip = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 11
  %26 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16, ptr %hflip, align 4
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 12
  %27 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call17, ptr %vflip, align 4
  %call18 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @ov5640_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 1) #7
  %light_freq = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 6
  %28 = ptrtoint ptr %light_freq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call18, ptr %light_freq, align 4
  %error = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 0, i32 9
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pixel_rate, align 4
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %or = or i32 %34, 4
  store i32 %or, ptr %flags, align 4
  %35 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gain, align 4
  %flags22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 20
  %37 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags22, align 4
  %or23 = or i32 %38, 128
  store i32 %or23, ptr %flags22, align 4
  %39 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %exposure, align 4
  %flags25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags25, align 4
  %or26 = or i32 %42, 128
  store i32 %or26, ptr %flags25, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %12, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %19, i8 noundef zeroext 0, i1 noundef zeroext true) #7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %16, i8 noundef zeroext 1, i1 noundef zeroext true) #7
  %ctrl_handler = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 1, i32 8
  %43 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ctrls1, ptr %ctrl_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i174.i.i = alloca %struct.i2c_msg, align 4
  %buf.i175.i.i = alloca [3 x i8], align 1
  %msg.i161.i.i = alloca %struct.i2c_msg, align 4
  %buf.i162.i.i = alloca [3 x i8], align 1
  %msg.i147.i.i = alloca %struct.i2c_msg, align 4
  %buf.i148.i.i = alloca [3 x i8], align 1
  %msg.i134.i.i = alloca %struct.i2c_msg, align 4
  %buf.i135.i.i = alloca [3 x i8], align 1
  %msg.i121.i.i = alloca %struct.i2c_msg, align 4
  %buf.i122.i.i = alloca [3 x i8], align 1
  %msg.i108.i.i = alloca %struct.i2c_msg, align 4
  %buf.i109.i.i = alloca [3 x i8], align 1
  %msg.i95.i.i = alloca %struct.i2c_msg, align 4
  %buf.i96.i.i = alloca [3 x i8], align 1
  %msg.i82.i.i = alloca %struct.i2c_msg, align 4
  %buf.i83.i.i = alloca [3 x i8], align 1
  %msg.i.i35.i = alloca %struct.i2c_msg, align 4
  %buf.i.i36.i = alloca [3 x i8], align 1
  %msg.i77.i.i = alloca %struct.i2c_msg, align 4
  %buf.i78.i.i = alloca [3 x i8], align 1
  %msg.i64.i.i = alloca %struct.i2c_msg, align 4
  %buf.i65.i.i = alloca [3 x i8], align 1
  %msg.i51.i.i = alloca %struct.i2c_msg, align 4
  %buf.i52.i.i = alloca [3 x i8], align 1
  %msg.i38.i.i = alloca %struct.i2c_msg, align 4
  %buf.i39.i.i = alloca [3 x i8], align 1
  %msg.i25.i.i = alloca %struct.i2c_msg, align 4
  %buf.i26.i.i = alloca [3 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %power_count = getelementptr i8, ptr %sd, i32 440
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end7.thread.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call fastcc i32 @ov5640_set_power_on(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.out.thread_crit_edge

if.then.i.out.thread_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end.i:                                         ; preds = %if.then.i
  %call.i.i = tail call fastcc i32 @ov5640_load_regs(ptr noundef %add.ptr.i, ptr noundef nonnull @ov5640_mode_init_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.power_off.i_crit_edge, label %if.end.i.i

if.end.i.power_off.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_off.i

if.end.i.i:                                       ; preds = %if.end.i
  %last_mode.i.i = getelementptr i8, ptr %sd, i32 500
  %2 = ptrtoint ptr %last_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ov5640_mode_init_data, ptr %last_mode.i.i, align 4
  %call1.i.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 12552, i8 noundef zeroext 63, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i.i.power_off.i_crit_edge

if.end.i.i.power_off.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_off.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = tail call fastcc i32 @ov5640_set_mode(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.end3.i.i.power_off.i_crit_edge, label %ov5640_restore_mode.exit.i

if.end3.i.i.power_off.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_off.i

ov5640_restore_mode.exit.i:                       ; preds = %if.end3.i.i
  %fmt.i.i = getelementptr i8, ptr %sd, i32 444
  %call8.i.i = tail call fastcc i32 @ov5640_set_framefmt(ptr noundef %add.ptr.i, ptr noundef %fmt.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool4.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %ov5640_restore_mode.exit.i.power_off.i_crit_edge

ov5640_restore_mode.exit.i.power_off.i_crit_edge: ; preds = %ov5640_restore_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_off.i

if.end7.i:                                        ; preds = %ov5640_restore_mode.exit.i
  %bus_type.i = getelementptr i8, ptr %sd, i32 240
  %3 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp.i = icmp eq i32 %4, 5
  br i1 %cmp.i, label %if.end.i33.i, label %if.end.i48.i

if.end7.thread.i:                                 ; preds = %if.then
  %bus_type60.i = getelementptr i8, ptr %sd, i32 240
  %5 = ptrtoint ptr %bus_type60.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_type60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp61.i = icmp eq i32 %6, 5
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  br i1 %cmp61.i, label %if.then.i.i, label %if.then.i44.i

if.then.i.i:                                      ; preds = %if.end7.thread.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 262143, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i.i) #7
  %11 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %12 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 48, ptr %buf.i.i.i, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 14, ptr %11, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 88, ptr %12, align 1
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i.i.i, align 2
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %msg.i.i.i, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %8, align 8
  %flags7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %flags7.i.i.i, align 2
  %buf8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf.i.i.i, ptr %buf8.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.ov5640_write_reg.exit.i.i_crit_edge

if.then.i.i.ov5640_write_reg.exit.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12302, i32 noundef 88) #10
  br label %ov5640_write_reg.exit.i.i

ov5640_write_reg.exit.i.i:                        ; preds = %do.end.i.i.i, %if.then.i.i.ov5640_write_reg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i25.i.i) #7
  %27 = getelementptr inbounds i8, ptr %msg.i25.i.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 262143, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i26.i.i) #7
  %29 = getelementptr inbounds [3 x i8], ptr %buf.i26.i.i, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i8], ptr %buf.i26.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %buf.i26.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 72, ptr %buf.i26.i.i, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %29, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %30, align 1
  %addr.i27.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %addr.i27.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i27.i.i, align 2
  %36 = ptrtoint ptr %msg.i25.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %msg.i25.i.i, align 4
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %26, align 8
  %flags7.i28.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags7.i28.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %flags7.i28.i.i, align 2
  %buf8.i29.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %buf8.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i26.i.i, ptr %buf8.i29.i.i, align 4
  %adapter.i31.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %41 = ptrtoint ptr %adapter.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i31.i.i, align 8
  %call.i32.i.i = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i25.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i.i)
  %cmp.i33.i.i = icmp slt i32 %call.i32.i.i, 0
  br i1 %cmp.i33.i.i, label %do.end.i35.i.i, label %ov5640_write_reg.exit.i.i.ov5640_write_reg.exit37.i.i_crit_edge

ov5640_write_reg.exit.i.i.ov5640_write_reg.exit37.i.i_crit_edge: ; preds = %ov5640_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit37.i.i

do.end.i35.i.i:                                   ; preds = %ov5640_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i34.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i34.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 18432, i32 noundef 4) #10
  br label %ov5640_write_reg.exit37.i.i

ov5640_write_reg.exit37.i.i:                      ; preds = %do.end.i35.i.i, %ov5640_write_reg.exit.i.i.ov5640_write_reg.exit37.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i26.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i25.i.i) #7
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38.i.i) #7
  %45 = getelementptr inbounds i8, ptr %msg.i38.i.i, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262143, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i39.i.i) #7
  %47 = getelementptr inbounds [3 x i8], ptr %buf.i39.i.i, i32 0, i32 1
  %48 = getelementptr inbounds [3 x i8], ptr %buf.i39.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %buf.i39.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 48, ptr %buf.i39.i.i, align 1
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 25, ptr %47, align 1
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %48, align 1
  %addr.i40.i.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %addr.i40.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr.i40.i.i, align 2
  %54 = ptrtoint ptr %msg.i38.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %msg.i38.i.i, align 4
  %55 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %44, align 8
  %flags7.i41.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %flags7.i41.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %flags7.i41.i.i, align 2
  %buf8.i42.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %buf8.i42.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %buf.i39.i.i, ptr %buf8.i42.i.i, align 4
  %adapter.i44.i.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 3
  %59 = ptrtoint ptr %adapter.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter.i44.i.i, align 8
  %call.i45.i.i = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg.i38.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i.i)
  %cmp.i46.i.i = icmp slt i32 %call.i45.i.i, 0
  br i1 %cmp.i46.i.i, label %do.end.i48.i.i, label %ov5640_write_reg.exit37.i.i.ov5640_write_reg.exit50.i.i_crit_edge

ov5640_write_reg.exit37.i.i.ov5640_write_reg.exit50.i.i_crit_edge: ; preds = %ov5640_write_reg.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit50.i.i

do.end.i48.i.i:                                   ; preds = %ov5640_write_reg.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i47.i.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i47.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12313, i32 noundef 0) #10
  br label %ov5640_write_reg.exit50.i.i

ov5640_write_reg.exit50.i.i:                      ; preds = %do.end.i48.i.i, %ov5640_write_reg.exit37.i.i.ov5640_write_reg.exit50.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i39.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38.i.i) #7
  br label %if.then18.i

if.end.i33.i:                                     ; preds = %if.end7.i
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i51.i.i) #7
  %63 = getelementptr inbounds i8, ptr %msg.i51.i.i, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 262143, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i52.i.i) #7
  %65 = getelementptr inbounds [3 x i8], ptr %buf.i52.i.i, i32 0, i32 1
  %66 = getelementptr inbounds [3 x i8], ptr %buf.i52.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %buf.i52.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 48, ptr %buf.i52.i.i, align 1
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 14, ptr %65, align 1
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 64, ptr %66, align 1
  %addr.i53.i.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 1
  %70 = ptrtoint ptr %addr.i53.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %addr.i53.i.i, align 2
  %72 = ptrtoint ptr %msg.i51.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %msg.i51.i.i, align 4
  %73 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %62, align 8
  %flags7.i54.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %flags7.i54.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %flags7.i54.i.i, align 2
  %buf8.i55.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %buf8.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %buf.i52.i.i, ptr %buf8.i55.i.i, align 4
  %adapter.i57.i.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 3
  %77 = ptrtoint ptr %adapter.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter.i57.i.i, align 8
  %call.i58.i.i = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i51.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i.i)
  %cmp.i59.i.i = icmp slt i32 %call.i58.i.i, 0
  br i1 %cmp.i59.i.i, label %ov5640_write_reg.exit63.i.i, label %if.end6.i.i

ov5640_write_reg.exit63.i.i:                      ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i60.i.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12302, i32 noundef 64) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i52.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i51.i.i) #7
  br label %power_off.i

if.end6.i.i:                                      ; preds = %if.end.i33.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i52.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i51.i.i) #7
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i64.i.i) #7
  %81 = getelementptr inbounds i8, ptr %msg.i64.i.i, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 262143, ptr %81, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i65.i.i) #7
  %83 = getelementptr inbounds [3 x i8], ptr %buf.i65.i.i, i32 0, i32 1
  %84 = getelementptr inbounds [3 x i8], ptr %buf.i65.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %buf.i65.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 72, ptr %buf.i65.i.i, align 1
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %83, align 1
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 36, ptr %84, align 1
  %addr.i66.i.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 1
  %88 = ptrtoint ptr %addr.i66.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %addr.i66.i.i, align 2
  %90 = ptrtoint ptr %msg.i64.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %msg.i64.i.i, align 4
  %91 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %80, align 8
  %flags7.i67.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %flags7.i67.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %flags7.i67.i.i, align 2
  %buf8.i68.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i.i, i32 0, i32 3
  %94 = ptrtoint ptr %buf8.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf.i65.i.i, ptr %buf8.i68.i.i, align 4
  %adapter.i70.i.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 3
  %95 = ptrtoint ptr %adapter.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter.i70.i.i, align 8
  %call.i71.i.i = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i64.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i.i)
  %cmp.i72.i.i = icmp slt i32 %call.i71.i.i, 0
  br i1 %cmp.i72.i.i, label %ov5640_write_reg.exit76.i.i, label %if.end10.i.i

ov5640_write_reg.exit76.i.i:                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i73.i.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i73.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 18432, i32 noundef 36) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i65.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64.i.i) #7
  br label %power_off.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i65.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64.i.i) #7
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i77.i.i) #7
  %99 = getelementptr inbounds i8, ptr %msg.i77.i.i, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 262143, ptr %99, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i78.i.i) #7
  %101 = getelementptr inbounds [3 x i8], ptr %buf.i78.i.i, i32 0, i32 1
  %102 = getelementptr inbounds [3 x i8], ptr %buf.i78.i.i, i32 0, i32 2
  %103 = ptrtoint ptr %buf.i78.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 48, ptr %buf.i78.i.i, align 1
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 25, ptr %101, align 1
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 112, ptr %102, align 1
  %addr.i79.i.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %106 = ptrtoint ptr %addr.i79.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %addr.i79.i.i, align 2
  %108 = ptrtoint ptr %msg.i77.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %msg.i77.i.i, align 4
  %109 = ptrtoint ptr %98 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %98, align 8
  %flags7.i80.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %flags7.i80.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %flags7.i80.i.i, align 2
  %buf8.i81.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %buf8.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %buf.i78.i.i, ptr %buf8.i81.i.i, align 4
  %adapter.i83.i.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 3
  %113 = ptrtoint ptr %adapter.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adapter.i83.i.i, align 8
  %call.i84.i.i = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %msg.i77.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i.i)
  %cmp.i85.i.i = icmp slt i32 %call.i84.i.i, 0
  br i1 %cmp.i85.i.i, label %ov5640_write_reg.exit89.i.i, label %if.end16.i

ov5640_write_reg.exit89.i.i:                      ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i86.i.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i86.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12313, i32 noundef 112) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i78.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i77.i.i) #7
  br label %power_off.i

if.then.i44.i:                                    ; preds = %if.end7.thread.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i35.i) #7
  %115 = getelementptr inbounds i8, ptr %msg.i.i35.i, i32 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 262143, ptr %115, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i36.i) #7
  %117 = getelementptr inbounds [3 x i8], ptr %buf.i.i36.i, i32 0, i32 1
  %118 = getelementptr inbounds [3 x i8], ptr %buf.i.i36.i, i32 0, i32 2
  %119 = ptrtoint ptr %buf.i.i36.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 71, ptr %buf.i.i36.i, align 1
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 48, ptr %117, align 1
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %118, align 1
  %addr.i.i38.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %122 = ptrtoint ptr %addr.i.i38.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %addr.i.i38.i, align 2
  %124 = ptrtoint ptr %msg.i.i35.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %msg.i.i35.i, align 4
  %125 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %8, align 8
  %flags7.i.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i35.i, i32 0, i32 1
  %127 = ptrtoint ptr %flags7.i.i39.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %flags7.i.i39.i, align 2
  %buf8.i.i40.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i35.i, i32 0, i32 3
  %128 = ptrtoint ptr %buf8.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %buf.i.i36.i, ptr %buf8.i.i40.i, align 4
  %adapter.i.i41.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %129 = ptrtoint ptr %adapter.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %adapter.i.i41.i, align 8
  %call.i.i42.i = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %msg.i.i35.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i)
  %cmp.i.i43.i = icmp slt i32 %call.i.i42.i, 0
  br i1 %cmp.i.i43.i, label %do.end.i.i46.i, label %if.then.i44.i.ov5640_write_reg.exit.i47.i_crit_edge

if.then.i44.i.ov5640_write_reg.exit.i47.i_crit_edge: ; preds = %if.then.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit.i47.i

do.end.i.i46.i:                                   ; preds = %if.then.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i45.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i45.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 18224, i32 noundef 0) #10
  br label %ov5640_write_reg.exit.i47.i

ov5640_write_reg.exit.i47.i:                      ; preds = %do.end.i.i46.i, %if.then.i44.i.ov5640_write_reg.exit.i47.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i36.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i35.i) #7
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i82.i.i) #7
  %133 = getelementptr inbounds i8, ptr %msg.i82.i.i, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 262143, ptr %133, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i83.i.i) #7
  %135 = getelementptr inbounds [3 x i8], ptr %buf.i83.i.i, i32 0, i32 1
  %136 = getelementptr inbounds [3 x i8], ptr %buf.i83.i.i, i32 0, i32 2
  %137 = ptrtoint ptr %buf.i83.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 48, ptr %buf.i83.i.i, align 1
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 14, ptr %135, align 1
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 88, ptr %136, align 1
  %addr.i84.i.i = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 1
  %140 = ptrtoint ptr %addr.i84.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %addr.i84.i.i, align 2
  %142 = ptrtoint ptr %msg.i82.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %msg.i82.i.i, align 4
  %143 = ptrtoint ptr %132 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %132, align 8
  %flags7.i85.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %flags7.i85.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %flags7.i85.i.i, align 2
  %buf8.i86.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82.i.i, i32 0, i32 3
  %146 = ptrtoint ptr %buf8.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %buf.i83.i.i, ptr %buf8.i86.i.i, align 4
  %adapter.i88.i.i = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 3
  %147 = ptrtoint ptr %adapter.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %adapter.i88.i.i, align 8
  %call.i89.i.i = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i82.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i.i)
  %cmp.i90.i.i = icmp slt i32 %call.i89.i.i, 0
  br i1 %cmp.i90.i.i, label %do.end.i92.i.i, label %ov5640_write_reg.exit.i47.i.ov5640_write_reg.exit94.i.i_crit_edge

ov5640_write_reg.exit.i47.i.ov5640_write_reg.exit94.i.i_crit_edge: ; preds = %ov5640_write_reg.exit.i47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit94.i.i

do.end.i92.i.i:                                   ; preds = %ov5640_write_reg.exit.i47.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i91.i.i = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i91.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12302, i32 noundef 88) #10
  br label %ov5640_write_reg.exit94.i.i

ov5640_write_reg.exit94.i.i:                      ; preds = %do.end.i92.i.i, %ov5640_write_reg.exit.i47.i.ov5640_write_reg.exit94.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i83.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i82.i.i) #7
  %149 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i95.i.i) #7
  %151 = getelementptr inbounds i8, ptr %msg.i95.i.i, i32 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 262143, ptr %151, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i96.i.i) #7
  %153 = getelementptr inbounds [3 x i8], ptr %buf.i96.i.i, i32 0, i32 1
  %154 = getelementptr inbounds [3 x i8], ptr %buf.i96.i.i, i32 0, i32 2
  %155 = ptrtoint ptr %buf.i96.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 71, ptr %buf.i96.i.i, align 1
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 64, ptr %153, align 1
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 32, ptr %154, align 1
  %addr.i97.i.i = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 1
  %158 = ptrtoint ptr %addr.i97.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %addr.i97.i.i, align 2
  %160 = ptrtoint ptr %msg.i95.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %msg.i95.i.i, align 4
  %161 = ptrtoint ptr %150 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %150, align 8
  %flags7.i98.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i95.i.i, i32 0, i32 1
  %163 = ptrtoint ptr %flags7.i98.i.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %flags7.i98.i.i, align 2
  %buf8.i99.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i95.i.i, i32 0, i32 3
  %164 = ptrtoint ptr %buf8.i99.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %buf.i96.i.i, ptr %buf8.i99.i.i, align 4
  %adapter.i101.i.i = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 3
  %165 = ptrtoint ptr %adapter.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %adapter.i101.i.i, align 8
  %call.i102.i.i = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %msg.i95.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i.i)
  %cmp.i103.i.i = icmp slt i32 %call.i102.i.i, 0
  br i1 %cmp.i103.i.i, label %do.end.i105.i.i, label %ov5640_write_reg.exit94.i.i.ov5640_write_reg.exit107.i.i_crit_edge

ov5640_write_reg.exit94.i.i.ov5640_write_reg.exit107.i.i_crit_edge: ; preds = %ov5640_write_reg.exit94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit107.i.i

do.end.i105.i.i:                                  ; preds = %ov5640_write_reg.exit94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i104.i.i = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i104.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 18240, i32 noundef 32) #10
  br label %ov5640_write_reg.exit107.i.i

ov5640_write_reg.exit107.i.i:                     ; preds = %do.end.i105.i.i, %ov5640_write_reg.exit94.i.i.ov5640_write_reg.exit107.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i96.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i95.i.i) #7
  %167 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i108.i.i) #7
  %169 = getelementptr inbounds i8, ptr %msg.i108.i.i, i32 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 262143, ptr %169, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i109.i.i) #7
  %171 = getelementptr inbounds [3 x i8], ptr %buf.i109.i.i, i32 0, i32 1
  %172 = getelementptr inbounds [3 x i8], ptr %buf.i109.i.i, i32 0, i32 2
  %173 = ptrtoint ptr %buf.i109.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 48, ptr %buf.i109.i.i, align 1
  %174 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 23, ptr %171, align 1
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %172, align 1
  %addr.i110.i.i = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 1
  %176 = ptrtoint ptr %addr.i110.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %addr.i110.i.i, align 2
  %178 = ptrtoint ptr %msg.i108.i.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %msg.i108.i.i, align 4
  %179 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %168, align 8
  %flags7.i111.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i108.i.i, i32 0, i32 1
  %181 = ptrtoint ptr %flags7.i111.i.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %flags7.i111.i.i, align 2
  %buf8.i112.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i108.i.i, i32 0, i32 3
  %182 = ptrtoint ptr %buf8.i112.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %buf.i109.i.i, ptr %buf8.i112.i.i, align 4
  %adapter.i114.i.i = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 3
  %183 = ptrtoint ptr %adapter.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %adapter.i114.i.i, align 8
  %call.i115.i.i = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %msg.i108.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i.i)
  %cmp.i116.i.i = icmp slt i32 %call.i115.i.i, 0
  br i1 %cmp.i116.i.i, label %do.end.i118.i.i, label %ov5640_write_reg.exit107.i.i.ov5640_write_reg.exit120.i.i_crit_edge

ov5640_write_reg.exit107.i.i.ov5640_write_reg.exit120.i.i_crit_edge: ; preds = %ov5640_write_reg.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit120.i.i

do.end.i118.i.i:                                  ; preds = %ov5640_write_reg.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i117.i.i = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i117.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12311, i32 noundef 0) #10
  br label %ov5640_write_reg.exit120.i.i

ov5640_write_reg.exit120.i.i:                     ; preds = %do.end.i118.i.i, %ov5640_write_reg.exit107.i.i.ov5640_write_reg.exit120.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i109.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i108.i.i) #7
  %185 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i121.i.i) #7
  %187 = getelementptr inbounds i8, ptr %msg.i121.i.i, i32 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 262143, ptr %187, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i122.i.i) #7
  %189 = getelementptr inbounds [3 x i8], ptr %buf.i122.i.i, i32 0, i32 1
  %190 = getelementptr inbounds [3 x i8], ptr %buf.i122.i.i, i32 0, i32 2
  %191 = ptrtoint ptr %buf.i122.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 48, ptr %buf.i122.i.i, align 1
  %192 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 24, ptr %189, align 1
  %193 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %190, align 1
  %addr.i123.i.i = getelementptr inbounds %struct.i2c_client, ptr %186, i32 0, i32 1
  %194 = ptrtoint ptr %addr.i123.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %addr.i123.i.i, align 2
  %196 = ptrtoint ptr %msg.i121.i.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %195, ptr %msg.i121.i.i, align 4
  %197 = ptrtoint ptr %186 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %186, align 8
  %flags7.i124.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121.i.i, i32 0, i32 1
  %199 = ptrtoint ptr %flags7.i124.i.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %198, ptr %flags7.i124.i.i, align 2
  %buf8.i125.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121.i.i, i32 0, i32 3
  %200 = ptrtoint ptr %buf8.i125.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %buf.i122.i.i, ptr %buf8.i125.i.i, align 4
  %adapter.i127.i.i = getelementptr inbounds %struct.i2c_client, ptr %186, i32 0, i32 3
  %201 = ptrtoint ptr %adapter.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %adapter.i127.i.i, align 8
  %call.i128.i.i = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %msg.i121.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i.i)
  %cmp.i129.i.i = icmp slt i32 %call.i128.i.i, 0
  br i1 %cmp.i129.i.i, label %do.end.i131.i.i, label %ov5640_write_reg.exit120.i.i.ov5640_write_reg.exit133.i.i_crit_edge

ov5640_write_reg.exit120.i.i.ov5640_write_reg.exit133.i.i_crit_edge: ; preds = %ov5640_write_reg.exit120.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit133.i.i

do.end.i131.i.i:                                  ; preds = %ov5640_write_reg.exit120.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i130.i.i = getelementptr inbounds %struct.i2c_client, ptr %186, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i130.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12312, i32 noundef 0) #10
  br label %ov5640_write_reg.exit133.i.i

ov5640_write_reg.exit133.i.i:                     ; preds = %do.end.i131.i.i, %ov5640_write_reg.exit120.i.i.ov5640_write_reg.exit133.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i122.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i121.i.i) #7
  br label %if.then18.i

if.end.i48.i:                                     ; preds = %if.end7.i
  %bus.i.i = getelementptr i8, ptr %sd, i32 244
  %203 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %bus.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i37.i = icmp eq i32 %4, 2
  %conv.i.i = zext i1 %cmp.i37.i to i8
  %205 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i134.i.i) #7
  %207 = getelementptr inbounds i8, ptr %msg.i134.i.i, i32 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 262143, ptr %207, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i135.i.i) #7
  %209 = getelementptr inbounds [3 x i8], ptr %buf.i135.i.i, i32 0, i32 1
  %210 = getelementptr inbounds [3 x i8], ptr %buf.i135.i.i, i32 0, i32 2
  %211 = ptrtoint ptr %buf.i135.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 71, ptr %buf.i135.i.i, align 1
  %212 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 48, ptr %209, align 1
  %213 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv.i.i, ptr %210, align 1
  %addr.i136.i.i = getelementptr inbounds %struct.i2c_client, ptr %206, i32 0, i32 1
  %214 = ptrtoint ptr %addr.i136.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %addr.i136.i.i, align 2
  %216 = ptrtoint ptr %msg.i134.i.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %msg.i134.i.i, align 4
  %217 = ptrtoint ptr %206 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %206, align 8
  %flags7.i137.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i.i, i32 0, i32 1
  %219 = ptrtoint ptr %flags7.i137.i.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %218, ptr %flags7.i137.i.i, align 2
  %buf8.i138.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i.i, i32 0, i32 3
  %220 = ptrtoint ptr %buf8.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %buf.i135.i.i, ptr %buf8.i138.i.i, align 4
  %adapter.i140.i.i = getelementptr inbounds %struct.i2c_client, ptr %206, i32 0, i32 3
  %221 = ptrtoint ptr %adapter.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %adapter.i140.i.i, align 8
  %call.i141.i.i = call i32 @i2c_transfer(ptr noundef %222, ptr noundef nonnull %msg.i134.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i.i)
  %cmp.i142.i.i = icmp slt i32 %call.i141.i.i, 0
  br i1 %cmp.i142.i.i, label %ov5640_write_reg.exit146.i.i, label %if.end12.i.i

ov5640_write_reg.exit146.i.i:                     ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i143.i.i = getelementptr inbounds %struct.i2c_client, ptr %206, i32 0, i32 4
  %conv11.i.i.i = zext i1 %cmp.i37.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i143.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 18224, i32 noundef %conv11.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i135.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i134.i.i) #7
  br label %power_off.i

if.end12.i.i:                                     ; preds = %if.end.i48.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i135.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i134.i.i) #7
  %223 = trunc i32 %204 to i8
  %224 = lshr i8 %223, 1
  %225 = and i8 %224, 2
  %226 = lshr i8 %223, 5
  %227 = and i8 %226, 1
  %228 = or i8 %227, %225
  %polarities.1.i.i = select i1 %cmp.i37.i, i8 0, i8 %228
  %229 = and i8 %224, 32
  %230 = or i8 %polarities.1.i.i, %229
  %231 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i147.i.i) #7
  %233 = getelementptr inbounds i8, ptr %msg.i147.i.i, i32 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 262143, ptr %233, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i148.i.i) #7
  %235 = getelementptr inbounds [3 x i8], ptr %buf.i148.i.i, i32 0, i32 1
  %236 = getelementptr inbounds [3 x i8], ptr %buf.i148.i.i, i32 0, i32 2
  %237 = ptrtoint ptr %buf.i148.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 71, ptr %buf.i148.i.i, align 1
  %238 = ptrtoint ptr %235 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 64, ptr %235, align 1
  %239 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %230, ptr %236, align 1
  %addr.i149.i.i = getelementptr inbounds %struct.i2c_client, ptr %232, i32 0, i32 1
  %240 = ptrtoint ptr %addr.i149.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %addr.i149.i.i, align 2
  %242 = ptrtoint ptr %msg.i147.i.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %241, ptr %msg.i147.i.i, align 4
  %243 = ptrtoint ptr %232 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %232, align 8
  %flags7.i150.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147.i.i, i32 0, i32 1
  %245 = ptrtoint ptr %flags7.i150.i.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %244, ptr %flags7.i150.i.i, align 2
  %buf8.i151.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147.i.i, i32 0, i32 3
  %246 = ptrtoint ptr %buf8.i151.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %buf.i148.i.i, ptr %buf8.i151.i.i, align 4
  %adapter.i153.i.i = getelementptr inbounds %struct.i2c_client, ptr %232, i32 0, i32 3
  %247 = ptrtoint ptr %adapter.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %adapter.i153.i.i, align 8
  %call.i154.i.i = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %msg.i147.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154.i.i)
  %cmp.i155.i.i = icmp slt i32 %call.i154.i.i, 0
  br i1 %cmp.i155.i.i, label %ov5640_write_reg.exit160.i.i, label %if.end38.i.i

ov5640_write_reg.exit160.i.i:                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i156.i.i = getelementptr inbounds %struct.i2c_client, ptr %232, i32 0, i32 4
  %conv11.i157.i.i = zext i8 %230 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i156.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 18240, i32 noundef %conv11.i157.i.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i148.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i147.i.i) #7
  br label %power_off.i

if.end38.i.i:                                     ; preds = %if.end12.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i148.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i147.i.i) #7
  %249 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i161.i.i) #7
  %251 = getelementptr inbounds i8, ptr %msg.i161.i.i, i32 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 262143, ptr %251, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i162.i.i) #7
  %253 = getelementptr inbounds [3 x i8], ptr %buf.i162.i.i, i32 0, i32 1
  %254 = getelementptr inbounds [3 x i8], ptr %buf.i162.i.i, i32 0, i32 2
  %255 = ptrtoint ptr %buf.i162.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 48, ptr %buf.i162.i.i, align 1
  %256 = ptrtoint ptr %253 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 14, ptr %253, align 1
  %257 = ptrtoint ptr %254 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 24, ptr %254, align 1
  %addr.i163.i.i = getelementptr inbounds %struct.i2c_client, ptr %250, i32 0, i32 1
  %258 = ptrtoint ptr %addr.i163.i.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %addr.i163.i.i, align 2
  %260 = ptrtoint ptr %msg.i161.i.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %259, ptr %msg.i161.i.i, align 4
  %261 = ptrtoint ptr %250 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %250, align 8
  %flags7.i164.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i.i, i32 0, i32 1
  %263 = ptrtoint ptr %flags7.i164.i.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %262, ptr %flags7.i164.i.i, align 2
  %buf8.i165.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i.i, i32 0, i32 3
  %264 = ptrtoint ptr %buf8.i165.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %buf.i162.i.i, ptr %buf8.i165.i.i, align 4
  %adapter.i167.i.i = getelementptr inbounds %struct.i2c_client, ptr %250, i32 0, i32 3
  %265 = ptrtoint ptr %adapter.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %adapter.i167.i.i, align 8
  %call.i168.i.i = call i32 @i2c_transfer(ptr noundef %266, ptr noundef nonnull %msg.i161.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168.i.i)
  %cmp.i169.i.i = icmp slt i32 %call.i168.i.i, 0
  br i1 %cmp.i169.i.i, label %ov5640_write_reg.exit173.i.i, label %if.end42.i.i

ov5640_write_reg.exit173.i.i:                     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i170.i.i = getelementptr inbounds %struct.i2c_client, ptr %250, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i170.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12302, i32 noundef 24) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i162.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i161.i.i) #7
  br label %power_off.i

if.end42.i.i:                                     ; preds = %if.end38.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i162.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i161.i.i) #7
  %conv46.i.i = select i1 %cmp.i37.i, i8 31, i8 127
  %267 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i174.i.i) #7
  %269 = getelementptr inbounds i8, ptr %msg.i174.i.i, i32 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 262143, ptr %269, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i175.i.i) #7
  %271 = getelementptr inbounds [3 x i8], ptr %buf.i175.i.i, i32 0, i32 1
  %272 = getelementptr inbounds [3 x i8], ptr %buf.i175.i.i, i32 0, i32 2
  %273 = ptrtoint ptr %buf.i175.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 48, ptr %buf.i175.i.i, align 1
  %274 = ptrtoint ptr %271 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 23, ptr %271, align 1
  %275 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %conv46.i.i, ptr %272, align 1
  %addr.i176.i.i = getelementptr inbounds %struct.i2c_client, ptr %268, i32 0, i32 1
  %276 = ptrtoint ptr %addr.i176.i.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %addr.i176.i.i, align 2
  %278 = ptrtoint ptr %msg.i174.i.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %277, ptr %msg.i174.i.i, align 4
  %279 = ptrtoint ptr %268 to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %268, align 8
  %flags7.i177.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i.i, i32 0, i32 1
  %281 = ptrtoint ptr %flags7.i177.i.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %280, ptr %flags7.i177.i.i, align 2
  %buf8.i178.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174.i.i, i32 0, i32 3
  %282 = ptrtoint ptr %buf8.i178.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %buf.i175.i.i, ptr %buf8.i178.i.i, align 4
  %adapter.i180.i.i = getelementptr inbounds %struct.i2c_client, ptr %268, i32 0, i32 3
  %283 = ptrtoint ptr %adapter.i180.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %adapter.i180.i.i, align 8
  %call.i181.i.i = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %msg.i174.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i.i)
  %cmp.i182.i.i = icmp slt i32 %call.i181.i.i, 0
  br i1 %cmp.i182.i.i, label %ov5640_write_reg.exit187.i.i, label %if.end50.i.i

ov5640_write_reg.exit187.i.i:                     ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i183.i.i = getelementptr inbounds %struct.i2c_client, ptr %268, i32 0, i32 4
  %conv11.i184.i.i = zext i8 %conv46.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i183.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12311, i32 noundef %conv11.i184.i.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i175.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i174.i.i) #7
  br label %power_off.i

if.end50.i.i:                                     ; preds = %if.end42.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i175.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i174.i.i) #7
  %285 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %287 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 262143, ptr %287, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %289 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %290 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %291 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 48, ptr %buf.i.i, align 1
  %292 = ptrtoint ptr %289 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 24, ptr %289, align 1
  %293 = ptrtoint ptr %290 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -4, ptr %290, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %286, i32 0, i32 1
  %294 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %addr.i.i, align 2
  %296 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %295, ptr %msg.i.i, align 4
  %297 = ptrtoint ptr %286 to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %286, align 8
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %299 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %298, ptr %flags7.i.i, align 2
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %300 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %buf.i.i, ptr %buf8.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %286, i32 0, i32 3
  %301 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %adapter.i.i, align 8
  %call.i55.i = call i32 @i2c_transfer(ptr noundef %302, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %cmp.i56.i = icmp slt i32 %call.i55.i, 0
  br i1 %cmp.i56.i, label %if.end13.i, label %if.end16.thread.i

if.end16.thread.i:                                ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %if.end9

if.end13.i:                                       ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %286, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12312, i32 noundef 252) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %power_off.i

if.end16.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i78.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i77.i.i) #7
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #7
  br label %if.end9

if.then18.i:                                      ; preds = %ov5640_write_reg.exit133.i.i, %ov5640_write_reg.exit50.i.i
  %pwdn_gpio.i.i.i = getelementptr i8, ptr %sd, i32 340
  %303 = ptrtoint ptr %pwdn_gpio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %pwdn_gpio.i.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %304, i32 noundef 1) #7
  %supplies.i.i = getelementptr i8, ptr %sd, i32 300
  %call.i50.i = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i.i) #7
  %xclk.i.i = getelementptr i8, ptr %sd, i32 292
  %305 = ptrtoint ptr %xclk.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %xclk.i.i, align 4
  call void @clk_disable(ptr noundef %306) #7
  call void @clk_unprepare(ptr noundef %306) #7
  br label %if.end9

power_off.i:                                      ; preds = %if.end13.i, %ov5640_write_reg.exit187.i.i, %ov5640_write_reg.exit173.i.i, %ov5640_write_reg.exit160.i.i, %ov5640_write_reg.exit146.i.i, %ov5640_write_reg.exit89.i.i, %ov5640_write_reg.exit76.i.i, %ov5640_write_reg.exit63.i.i, %ov5640_restore_mode.exit.i.power_off.i_crit_edge, %if.end3.i.i.power_off.i_crit_edge, %if.end.i.i.power_off.i_crit_edge, %if.end.i.power_off.i_crit_edge
  %ret.1.i = phi i32 [ %call8.i.i, %ov5640_restore_mode.exit.i.power_off.i_crit_edge ], [ %call.i55.i, %if.end13.i ], [ %call4.i.i, %if.end3.i.i.power_off.i_crit_edge ], [ %call1.i.i, %if.end.i.i.power_off.i_crit_edge ], [ %call.i.i, %if.end.i.power_off.i_crit_edge ], [ %call.i181.i.i, %ov5640_write_reg.exit187.i.i ], [ %call.i168.i.i, %ov5640_write_reg.exit173.i.i ], [ %call.i154.i.i, %ov5640_write_reg.exit160.i.i ], [ %call.i141.i.i, %ov5640_write_reg.exit146.i.i ], [ %call.i84.i.i, %ov5640_write_reg.exit89.i.i ], [ %call.i71.i.i, %ov5640_write_reg.exit76.i.i ], [ %call.i58.i.i, %ov5640_write_reg.exit63.i.i ]
  %pwdn_gpio.i.i51.i = getelementptr i8, ptr %sd, i32 340
  %307 = ptrtoint ptr %pwdn_gpio.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %pwdn_gpio.i.i51.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %308, i32 noundef 1) #7
  %supplies.i52.i = getelementptr i8, ptr %sd, i32 300
  %call.i53.i = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i52.i) #7
  %xclk.i54.i = getelementptr i8, ptr %sd, i32 292
  %309 = ptrtoint ptr %xclk.i54.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %xclk.i54.i, align 4
  call void @clk_disable(ptr noundef %310) #7
  call void @clk_unprepare(ptr noundef %310) #7
  br label %out.thread

if.end9:                                          ; preds = %if.then18.i, %if.end16.i, %if.end16.thread.i, %entry.if.end9_crit_edge
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %311 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %power_count, align 4
  %add = add i32 %312, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp13 = icmp slt i32 %add, 0
  br i1 %cmp13, label %do.end, label %if.end9.out_crit_edge, !prof !179

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2179, i32 noundef 9, ptr noundef null) #7
  br label %out

out.thread:                                       ; preds = %power_off.i, %if.then.i.out.thread_crit_edge
  %ret.1.ph = phi i32 [ %call.i, %if.then.i.out.thread_crit_edge ], [ %ret.1.i, %power_off.i ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %if.end46

out:                                              ; preds = %do.end, %if.end9.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  br i1 %tobool.not, label %out.if.end46_crit_edge, label %land.lhs.true41

out.if.end46_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true41:                                  ; preds = %out
  %313 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %314)
  %cmp43 = icmp eq i32 %314, 1
  br i1 %cmp43, label %if.then44, label %land.lhs.true41.if.end46_crit_edge

land.lhs.true41.if.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  %ctrls = getelementptr i8, ptr %sd, i32 516
  %call45 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true41.if.end46_crit_edge, %out.if.end46_crit_edge, %out.thread
  %ret.2 = phi i32 [ %call45, %if.then44 ], [ 0, %land.lhs.true41.if.end46_crit_edge ], [ 0, %out.if.end46_crit_edge ], [ %ret.1.ph, %out.thread ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_set_power_on(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %xclk = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 4
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
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %supplies = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 6
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #10
  br label %xclk_off

if.end8:                                          ; preds = %if.end
  %reset_gpio.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 7
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i31 = icmp eq ptr %5, null
  br i1 %tobool.not.i31, label %if.end8.ov5640_reset.exit_crit_edge, label %if.end.i32

if.end8.ov5640_reset.exit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_reset.exit

if.end.i32:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #7
  %pwdn_gpio.i.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 8
  %6 = ptrtoint ptr %pwdn_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwdn_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %8 = ptrtoint ptr %pwdn_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwdn_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %10 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %12 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 25000, i32 noundef 2) #7
  br label %ov5640_reset.exit

ov5640_reset.exit:                                ; preds = %if.end.i32, %if.end8.ov5640_reset.exit_crit_edge
  %pwdn_gpio.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 8
  %14 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pwdn_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #7
  %16 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262143, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %21)
  %cmp.i = icmp eq i16 %21, 60
  br i1 %cmp.i, label %ov5640_reset.exit.ov5640_init_slave_id.exit.thread_crit_edge, label %if.end.i34

ov5640_reset.exit.ov5640_init_slave_id.exit.thread_crit_edge: ; preds = %ov5640_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_init_slave_id.exit.thread

if.end.i34:                                       ; preds = %ov5640_reset.exit
  %22 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 49, ptr %buf.i, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %23, align 1
  %conv4.i = trunc i16 %21 to i8
  %shl.i = shl i8 %conv4.i, 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %shl.i, ptr %22, align 1
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 60, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %30 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter.i, align 8
  %call.i33 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp9.i = icmp slt i32 %call.i33, 0
  br i1 %cmp9.i, label %power_off, label %if.end.i34.ov5640_init_slave_id.exit.thread_crit_edge

if.end.i34.ov5640_init_slave_id.exit.thread_crit_edge: ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_init_slave_id.exit.thread

ov5640_init_slave_id.exit.thread:                 ; preds = %if.end.i34.ov5640_init_slave_id.exit.thread_crit_edge, %ov5640_reset.exit.ov5640_init_slave_id.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

power_off:                                        ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %call.i33) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %32 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pwdn_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef 1) #7
  %call15 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %xclk_off

xclk_off:                                         ; preds = %power_off, %do.end6
  %ret.0 = phi i32 [ %call1, %do.end6 ], [ %call.i33, %power_off ]
  %34 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xclk, align 4
  call void @clk_disable(ptr noundef %35) #7
  call void @clk_unprepare(ptr noundef %35) #7
  br label %cleanup

cleanup:                                          ; preds = %xclk_off, %ov5640_init_slave_id.exit.thread, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %xclk_off ], [ 0, %ov5640_init_slave_id.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_load_regs(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_data_size = getelementptr inbounds %struct.ov5640_mode_info, ptr %mode, i32 0, i32 7
  %0 = ptrtoint ptr %reg_data_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp46.not = icmp eq i32 %1, 0
  br i1 %cmp46.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reg_data = getelementptr inbounds %struct.ov5640_mode_info, ptr %mode, i32 0, i32 6
  %2 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_data, align 4
  %bus_type = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 3, i32 1
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %regs.047 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %delay_ms1 = getelementptr inbounds %struct.reg_value, ptr %regs.047, i32 0, i32 3
  %7 = ptrtoint ptr %delay_ms1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay_ms1, align 4
  %9 = ptrtoint ptr %regs.047 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %regs.047, align 4
  %val3 = getelementptr inbounds %struct.reg_value, ptr %regs.047, i32 0, i32 1
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val3, align 2
  %mask4 = getelementptr inbounds %struct.reg_value, ptr %regs.047, i32 0, i32 2
  %13 = ptrtoint ptr %mask4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mask4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 12296, i16 %10)
  %cmp6 = icmp eq i16 %10, 12296
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp9 = icmp eq i8 %12, 2
  %or.cond = select i1 %cmp6, i1 %cmp9, i1 false
  br i1 %or.cond, label %land.lhs.true11, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true11:                                  ; preds = %for.body
  %15 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp12.not = icmp eq i32 %16, 5
  br i1 %cmp12.not, label %land.lhs.true11.if.end_crit_edge, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true11.if.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true11.if.end_crit_edge, %for.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext %10, i8 noundef zeroext %14, i8 noundef zeroext %12)
  br label %if.end16

if.else:                                          ; preds = %if.end
  %17 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %20 = lshr i16 %10, 8
  %conv1.i = trunc i16 %20 to i8
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv3.i = trunc i16 %10 to i8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv3.i, ptr %5, align 1
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %12, ptr %6, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr.i, align 2
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %msg.i, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %18, align 8
  %29 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %flags7.i, align 2
  %30 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i, ptr %buf8.i, align 4
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 3, ptr %4, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.ov5640_write_reg.exit_crit_edge

if.else.ov5640_write_reg.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %10 to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %conv11.i = zext i8 %12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %conv.i, i32 noundef %conv11.i) #10
  br label %ov5640_write_reg.exit

ov5640_write_reg.exit:                            ; preds = %do.end.i, %if.else.ov5640_write_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.else.ov5640_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %if.end16

if.end16:                                         ; preds = %ov5640_write_reg.exit, %if.then14
  %ret.0 = phi i32 [ %call, %if.then14 ], [ %retval.0.i, %ov5640_write_reg.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool17.not = icmp eq i32 %ret.0, 0
  br i1 %tobool17.not, label %if.end19, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not = icmp eq i32 %8, 0
  br i1 %tobool20.not, label %if.end19.for.inc_crit_edge, label %if.then21

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %8, 1000
  %add = add i32 %mul, 100
  call void @usleep_range_state(i32 noundef %mul, i32 noundef %add, i32 noundef 2) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.end19.for.inc_crit_edge, %land.lhs.true11.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %incdec.ptr = getelementptr %struct.reg_value, ptr %regs.047, i32 1
  %34 = ptrtoint ptr %reg_data_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_data_size, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge, %entry.for.end_crit_edge
  %code.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 12, i32 2
  %36 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %37)
  %cmp.i43 = icmp eq i32 %37, 16385
  br i1 %cmp.i43, label %if.then.i, label %for.end.if.end3.i_crit_edge

for.end.if.end3.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %for.end
  %call.i.i = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 18195, i8 noundef zeroext 7, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.ov5640_set_timings.exit_crit_edge, label %if.end.i.i

if.then.i.ov5640_set_timings.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_timings.exit

if.end.i.i:                                       ; preds = %if.then.i
  %hact.i.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %mode, i32 0, i32 2
  %38 = ptrtoint ptr %hact.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hact.i.i, align 4
  %conv.i.i = trunc i32 %39 to i16
  %call1.i.i = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 17922, i16 noundef zeroext %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.ov5640_set_timings.exit_crit_edge, label %ov5640_set_jpeg_timings.exit.i

if.end.i.i.ov5640_set_timings.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_timings.exit

ov5640_set_jpeg_timings.exit.i:                   ; preds = %if.end.i.i
  %vact.i.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %mode, i32 0, i32 4
  %40 = ptrtoint ptr %vact.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vact.i.i, align 4
  %conv6.i.i = trunc i32 %41 to i16
  %call7.i.i = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 17924, i16 noundef zeroext %conv6.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp1.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp1.i, label %ov5640_set_jpeg_timings.exit.i.ov5640_set_timings.exit_crit_edge, label %ov5640_set_jpeg_timings.exit.i.if.end3.i_crit_edge

ov5640_set_jpeg_timings.exit.i.if.end3.i_crit_edge: ; preds = %ov5640_set_jpeg_timings.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

ov5640_set_jpeg_timings.exit.i.ov5640_set_timings.exit_crit_edge: ; preds = %ov5640_set_jpeg_timings.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_timings.exit

if.end3.i:                                        ; preds = %ov5640_set_jpeg_timings.exit.i.if.end3.i_crit_edge, %for.end.if.end3.i_crit_edge
  %hact.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %mode, i32 0, i32 2
  %42 = ptrtoint ptr %hact.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hact.i, align 4
  %conv.i44 = trunc i32 %43 to i16
  %call4.i = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 14344, i16 noundef zeroext %conv.i44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.ov5640_set_timings.exit_crit_edge, label %if.end8.i

if.end3.i.ov5640_set_timings.exit_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_timings.exit

if.end8.i:                                        ; preds = %if.end3.i
  %vact.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %mode, i32 0, i32 4
  %44 = ptrtoint ptr %vact.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vact.i, align 4
  %conv9.i = trunc i32 %45 to i16
  %call10.i = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 14346, i16 noundef zeroext %conv9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end8.i.ov5640_set_timings.exit_crit_edge, label %if.end14.i

if.end8.i.ov5640_set_timings.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_timings.exit

if.end14.i:                                       ; preds = %if.end8.i
  %htot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %mode, i32 0, i32 3
  %46 = ptrtoint ptr %htot.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %htot.i, align 4
  %conv15.i = trunc i32 %47 to i16
  %call16.i = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 14348, i16 noundef zeroext %conv15.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end14.i.ov5640_set_timings.exit_crit_edge, label %if.end20.i

if.end14.i.ov5640_set_timings.exit_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_timings.exit

if.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %vtot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %mode, i32 0, i32 5
  %48 = ptrtoint ptr %vtot.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vtot.i, align 4
  %conv21.i = trunc i32 %49 to i16
  %call22.i = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 14350, i16 noundef zeroext %conv21.i) #7
  br label %ov5640_set_timings.exit

ov5640_set_timings.exit:                          ; preds = %if.end20.i, %if.end14.i.ov5640_set_timings.exit_crit_edge, %if.end8.i.ov5640_set_timings.exit_crit_edge, %if.end3.i.ov5640_set_timings.exit_crit_edge, %ov5640_set_jpeg_timings.exit.i.ov5640_set_timings.exit_crit_edge, %if.end.i.i.ov5640_set_timings.exit_crit_edge, %if.then.i.ov5640_set_timings.exit_crit_edge
  %retval.0.i45 = phi i32 [ %call22.i, %if.end20.i ], [ %call7.i.i, %ov5640_set_jpeg_timings.exit.i.ov5640_set_timings.exit_crit_edge ], [ %call4.i, %if.end3.i.ov5640_set_timings.exit_crit_edge ], [ %call10.i, %if.end8.i.ov5640_set_timings.exit_crit_edge ], [ %call16.i, %if.end14.i.ov5640_set_timings.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.ov5640_set_timings.exit_crit_edge ], [ %call.i.i, %if.then.i.ov5640_set_timings.exit_crit_edge ]
  ret i32 %retval.0.i45
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_mod_reg(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg.i20 = alloca %struct.i2c_msg, align 4
  %buf.i21 = alloca [3 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = lshr i16 %reg, 8
  %conv1.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv3.i = trunc i16 %reg to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %4, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 8
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %flags8.i, align 2
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf10.i, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %2, align 4
  %16 = load i16, ptr %addr.i, align 2
  %arrayidx13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx13.i, align 4
  %18 = load i16, ptr %1, align 8
  %19 = or i16 %18, 1
  %flags19.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %flags19.i, align 2
  %buf22.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %buf22.i, align 4
  %len24.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %len24.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len24.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5640_read_reg.exit, label %if.end

ov5640_read_reg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %reg to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  %neg = xor i8 %mask, -1
  %and = and i8 %26, %neg
  %and518 = and i8 %val, %mask
  %or19 = or i8 %and, %and518
  %27 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i20) #7
  %29 = getelementptr inbounds i8, ptr %msg.i20, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 262143, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i21) #7
  %31 = getelementptr inbounds [3 x i8], ptr %buf.i21, i32 0, i32 1
  %32 = getelementptr inbounds [3 x i8], ptr %buf.i21, i32 0, i32 2
  %33 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv1.i, ptr %buf.i21, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv3.i, ptr %31, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %or19, ptr %32, align 1
  %addr.i24 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %addr.i24 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr.i24, align 2
  %38 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %msg.i20, align 4
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %28, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 1
  %41 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 3
  %42 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf.i21, ptr %buf8.i, align 4
  %adapter.i26 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %43 = ptrtoint ptr %adapter.i26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i26, align 8
  %call.i27 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i20, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp.i28 = icmp slt i32 %call.i27, 0
  br i1 %cmp.i28, label %do.end.i31, label %if.end.ov5640_write_reg.exit_crit_edge

if.end.ov5640_write_reg.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit

do.end.i31:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i29 = zext i16 %reg to i32
  %dev.i30 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %conv11.i = zext i8 %or19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i30, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %conv.i29, i32 noundef %conv11.i) #10
  br label %ov5640_write_reg.exit

ov5640_write_reg.exit:                            ; preds = %do.end.i31, %if.end.ov5640_write_reg.exit_crit_edge
  %retval.0.i32 = phi i32 [ %call.i27, %do.end.i31 ], [ 0, %if.end.ov5640_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i21) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20) #7
  br label %cleanup

cleanup:                                          ; preds = %ov5640_write_reg.exit, %ov5640_read_reg.exit
  %retval.0 = phi i32 [ %retval.0.i32, %ov5640_write_reg.exit ], [ %call.i, %ov5640_read_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_set_mode(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i20.i = alloca %struct.i2c_msg, align 4
  %buf.i21.i = alloca [3 x i8], align 1
  %msg.i.i232 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i233 = alloca [2 x i8], align 1
  %vts.i.i204 = alloca i16, align 2
  %hts.i.i205 = alloca i16, align 2
  %msg.i101.i = alloca %struct.i2c_msg, align 4
  %buf.i102.i = alloca [3 x i8], align 1
  %msg.i87.i = alloca %struct.i2c_msg, align 4
  %buf.i88.i = alloca [3 x i8], align 1
  %msg.i73.i = alloca %struct.i2c_msg, align 4
  %buf.i74.i = alloca [3 x i8], align 1
  %msg.i59.i = alloca %struct.i2c_msg, align 4
  %buf.i60.i = alloca [3 x i8], align 1
  %msg.i.i187 = alloca %struct.i2c_msg, align 4
  %buf.i.i188 = alloca [3 x i8], align 1
  %hts.i.i = alloca i16, align 2
  %vts.i.i = alloca i16, align 2
  %msg.i6.i.i = alloca %struct.i2c_msg, align 4
  %buf.i7.i.i = alloca [3 x i8], align 1
  %msg.i.i265.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i266.i = alloca [2 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [2 x i8], align 1
  %gain.i.i = alloca i16, align 2
  %msg.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %current_mode = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 14
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_mode, align 4
  %last_mode = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 15
  %2 = ptrtoint ptr %last_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last_mode, align 4
  %4 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %9 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 18, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5 = icmp eq i32 %13, 0
  %dn_mode7 = getelementptr inbounds %struct.ov5640_mode_info, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dn_mode7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dn_mode7, align 4
  %dn_mode8 = getelementptr inbounds %struct.ov5640_mode_info, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %dn_mode8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dn_mode8, align 4
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 2, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then.if.end11_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  br i1 %cmp5, label %if.then13, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %call.i159 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool15.not = icmp eq i32 %call.i159, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then13.restore_auto_gain_crit_edge

if.then13.restore_auto_gain_crit_edge:            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_gain

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %18 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %current_mode, align 4
  %vtot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %vtot.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vtot.i, align 4
  %htot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %htot.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %htot.i, align 4
  %current_fr.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 16
  %24 = ptrtoint ptr %current_fr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %current_fr.i, align 4
  %arrayidx.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %21, 4
  %mul3.i = mul i32 %mul.i, %23
  %conv = mul i32 %mul3.i, %27
  %bus_type = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp20 = icmp eq i32 %29, 5
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end18
  %num_data_lanes = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 3, i32 2, i32 2, i32 3
  %30 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_data_lanes, align 1
  %conv24 = zext i8 %31 to i32
  %div = udiv i32 %conv, %conv24
  %dn_mode.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %19, i32 0, i32 1
  %32 = ptrtoint ptr %dn_mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dn_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i = icmp eq i32 %33, 1
  br i1 %cmp.i, label %if.then22.if.end.i_crit_edge, label %lor.lhs.false.i

if.then22.if.end.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp1.i = icmp eq i32 %35, 7
  %spec.select.i = select i1 %cmp1.i, i8 1, i8 2
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i, %if.then22.if.end.i_crit_edge
  %mipi_div.0.i = phi i8 [ 1, %if.then22.if.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %xclk_freq.i.i.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 5
  br label %for.cond2.preheader.i.i

for.cond2.preheader.i.i:                          ; preds = %for.inc39.i.i.for.cond2.preheader.i.i_crit_edge, %if.end.i
  %indvars.iv100.i.i = phi i32 [ 1, %if.end.i ], [ %indvars.iv.next101.i.i, %for.inc39.i.i.for.cond2.preheader.i.i_crit_edge ]
  %best.098.i.i = phi i32 [ -1, %if.end.i ], [ %best.1.lcssa.i.i, %for.inc39.i.i.for.cond2.preheader.i.i_crit_edge ]
  %best_mult.095.i.i = phi i8 [ 1, %if.end.i ], [ %best_mult.1.lcssa.i.i, %for.inc39.i.i.for.cond2.preheader.i.i_crit_edge ]
  %best_sysdiv.094.i.i = phi i8 [ 1, %if.end.i ], [ %best_sysdiv.1.lcssa.i.i, %for.inc39.i.i.for.cond2.preheader.i.i_crit_edge ]
  %36 = trunc i32 %indvars.iv100.i.i to i8
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.inc.i.i.for.body6.i.i_crit_edge, %for.cond2.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 4, %for.cond2.preheader.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body6.i.i_crit_edge ]
  %best.193.i.i = phi i32 [ %best.098.i.i, %for.cond2.preheader.i.i ], [ %best.3.ph.i.i, %for.inc.i.i.for.body6.i.i_crit_edge ]
  %best_mult.190.i.i = phi i8 [ %best_mult.095.i.i, %for.cond2.preheader.i.i ], [ %best_mult.3.ph.i.i, %for.inc.i.i.for.body6.i.i_crit_edge ]
  %best_sysdiv.189.i.i = phi i8 [ %best_sysdiv.094.i.i, %for.cond2.preheader.i.i ], [ %best_sysdiv.3.ph.i.i, %for.inc.i.i.for.body6.i.i_crit_edge ]
  %37 = trunc i32 %indvars.iv.i.i to i8
  %38 = and i8 %37, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %38)
  %.not.i.i = icmp eq i8 %38, -127
  br i1 %.not.i.i, label %for.body6.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body6.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body6.i.i
  %39 = ptrtoint ptr %xclk_freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %xclk_freq.i.i.i, align 4
  %div.i.i.i = udiv i32 %40, 3
  %mul.i.i.i = mul i32 %div.i.i.i, %indvars.iv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000999999, i32 %mul.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %mul.i.i.i, 1000999999
  br i1 %cmp.i.i.i, label %if.end.i.i.for.inc39.i.i_crit_edge, label %ov5640_compute_sys_clk.exit.i.i

if.end.i.i.for.inc39.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.i.i

ov5640_compute_sys_clk.exit.i.i:                  ; preds = %if.end.i.i
  %div5.i.i.i = udiv i32 %mul.i.i.i, %indvars.iv100.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %indvars.iv100.i.i)
  %tobool11.not.i.i = icmp ult i32 %mul.i.i.i, %indvars.iv100.i.i
  br i1 %tobool11.not.i.i, label %ov5640_compute_sys_clk.exit.i.i.for.inc39.i.i_crit_edge, label %if.end13.i.i

ov5640_compute_sys_clk.exit.i.i.for.inc39.i.i_crit_edge: ; preds = %ov5640_compute_sys_clk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.i.i

if.end13.i.i:                                     ; preds = %ov5640_compute_sys_clk.exit.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div5.i.i.i)
  %cmp14.i.i = icmp ugt i32 %div, %div5.i.i.i
  br i1 %cmp14.i.i, label %if.end13.i.i.for.inc.i.i_crit_edge, label %if.end17.i.i

if.end13.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end17.i.i:                                     ; preds = %if.end13.i.i
  %sub.i.i = sub i32 %div, %div5.i.i.i
  %41 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #7
  %sub22.i.i = sub i32 %div, %best.193.i.i
  %42 = tail call i32 @llvm.abs.i32(i32 %sub22.i.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %42)
  %cmp31.i.i = icmp slt i32 %41, %42
  %best_sysdiv.2.i.i = select i1 %cmp31.i.i, i8 %36, i8 %best_sysdiv.189.i.i
  %best_mult.2.i.i = select i1 %cmp31.i.i, i8 %37, i8 %best_mult.190.i.i
  %best.2.i.i = select i1 %cmp31.i.i, i32 %div5.i.i.i, i32 %best.193.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div5.i.i.i)
  %cmp35.i.i = icmp eq i32 %div, %div5.i.i.i
  br i1 %cmp35.i.i, label %if.end17.i.i.ov5640_calc_sys_clk.exit.i_crit_edge, label %if.end17.i.i.for.inc.i.i_crit_edge

if.end17.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end17.i.i.ov5640_calc_sys_clk.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_calc_sys_clk.exit.i

for.inc.i.i:                                      ; preds = %if.end17.i.i.for.inc.i.i_crit_edge, %if.end13.i.i.for.inc.i.i_crit_edge, %for.body6.i.i.for.inc.i.i_crit_edge
  %best_sysdiv.3.ph.i.i = phi i8 [ %best_sysdiv.2.i.i, %if.end17.i.i.for.inc.i.i_crit_edge ], [ %best_sysdiv.189.i.i, %if.end13.i.i.for.inc.i.i_crit_edge ], [ %best_sysdiv.189.i.i, %for.body6.i.i.for.inc.i.i_crit_edge ]
  %best_mult.3.ph.i.i = phi i8 [ %best_mult.2.i.i, %if.end17.i.i.for.inc.i.i_crit_edge ], [ %best_mult.190.i.i, %if.end13.i.i.for.inc.i.i_crit_edge ], [ %best_mult.190.i.i, %for.body6.i.i.for.inc.i.i_crit_edge ]
  %best.3.ph.i.i = phi i32 [ %best.2.i.i, %if.end17.i.i.for.inc.i.i_crit_edge ], [ %best.193.i.i, %if.end13.i.i.for.inc.i.i_crit_edge ], [ %best.193.i.i, %for.body6.i.i.for.inc.i.i_crit_edge ]
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 253
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc39.i.i_crit_edge, label %for.inc.i.i.for.body6.i.i_crit_edge

for.inc.i.i.for.body6.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.i

for.inc.i.i.for.inc39.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.i.i

for.inc39.i.i:                                    ; preds = %for.inc.i.i.for.inc39.i.i_crit_edge, %ov5640_compute_sys_clk.exit.i.i.for.inc39.i.i_crit_edge, %if.end.i.i.for.inc39.i.i_crit_edge
  %best_sysdiv.1.lcssa.i.i = phi i8 [ %best_sysdiv.189.i.i, %if.end.i.i.for.inc39.i.i_crit_edge ], [ %best_sysdiv.189.i.i, %ov5640_compute_sys_clk.exit.i.i.for.inc39.i.i_crit_edge ], [ %best_sysdiv.3.ph.i.i, %for.inc.i.i.for.inc39.i.i_crit_edge ]
  %best_mult.1.lcssa.i.i = phi i8 [ %best_mult.190.i.i, %if.end.i.i.for.inc39.i.i_crit_edge ], [ %best_mult.190.i.i, %ov5640_compute_sys_clk.exit.i.i.for.inc39.i.i_crit_edge ], [ %best_mult.3.ph.i.i, %for.inc.i.i.for.inc39.i.i_crit_edge ]
  %best.1.lcssa.i.i = phi i32 [ %best.193.i.i, %if.end.i.i.for.inc39.i.i_crit_edge ], [ %best.193.i.i, %ov5640_compute_sys_clk.exit.i.i.for.inc39.i.i_crit_edge ], [ %best.3.ph.i.i, %for.inc.i.i.for.inc39.i.i_crit_edge ]
  %indvars.iv.next101.i.i = add nuw nsw i32 %indvars.iv100.i.i, 1
  %exitcond102.not.i.i = icmp eq i32 %indvars.iv.next101.i.i, 17
  br i1 %exitcond102.not.i.i, label %for.inc39.i.i.ov5640_calc_sys_clk.exit.i_crit_edge, label %for.inc39.i.i.for.cond2.preheader.i.i_crit_edge

for.inc39.i.i.for.cond2.preheader.i.i_crit_edge:  ; preds = %for.inc39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader.i.i

for.inc39.i.i.ov5640_calc_sys_clk.exit.i_crit_edge: ; preds = %for.inc39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_calc_sys_clk.exit.i

ov5640_calc_sys_clk.exit.i:                       ; preds = %for.inc39.i.i.ov5640_calc_sys_clk.exit.i_crit_edge, %if.end17.i.i.ov5640_calc_sys_clk.exit.i_crit_edge
  %best_sysdiv.5.i.i = phi i8 [ %best_sysdiv.2.i.i, %if.end17.i.i.ov5640_calc_sys_clk.exit.i_crit_edge ], [ %best_sysdiv.1.lcssa.i.i, %for.inc39.i.i.ov5640_calc_sys_clk.exit.i_crit_edge ]
  %best_mult.5.i.i = phi i8 [ %best_mult.2.i.i, %if.end17.i.i.ov5640_calc_sys_clk.exit.i_crit_edge ], [ %best_mult.1.lcssa.i.i, %for.inc39.i.i.ov5640_calc_sys_clk.exit.i_crit_edge ]
  %call2.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12340, i8 noundef zeroext 15, i8 noundef zeroext 8) #7
  %shl.i = shl i8 %best_sysdiv.5.i.i, 4
  %or.i = or i8 %shl.i, %mipi_div.0.i
  %call5.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12341, i8 noundef zeroext -1, i8 noundef zeroext %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %ov5640_calc_sys_clk.exit.i.if.end31_crit_edge

ov5640_calc_sys_clk.exit.i.if.end31_crit_edge:    ; preds = %ov5640_calc_sys_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end7.i:                                        ; preds = %ov5640_calc_sys_clk.exit.i
  %call8.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12342, i8 noundef zeroext -1, i8 noundef zeroext %best_mult.5.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.if.end31_crit_edge

if.end7.i.if.end31_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end11.i:                                       ; preds = %if.end7.i
  %call15.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12343, i8 noundef zeroext 31, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end11.i.if.end31.sink.split_crit_edge, label %if.end11.i.if.end31_crit_edge

if.end11.i.if.end31_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end11.i.if.end31.sink.split_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

if.else:                                          ; preds = %if.end18
  %bus_width = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 3, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bus_width, align 4
  %conv28 = zext i8 %44 to i32
  %div29 = udiv i32 %conv, %conv28
  %mul1.i.i = shl i32 %div29, 2
  %xclk_freq.i.i.i.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 5
  br label %for.cond2.preheader.i.i.i

for.cond2.preheader.i.i.i:                        ; preds = %for.inc39.i.i.i.for.cond2.preheader.i.i.i_crit_edge, %if.else
  %indvars.iv100.i.i.i = phi i32 [ 1, %if.else ], [ %indvars.iv.next101.i.i.i, %for.inc39.i.i.i.for.cond2.preheader.i.i.i_crit_edge ]
  %best.098.i.i.i = phi i32 [ -1, %if.else ], [ %best.1.lcssa.i.i.i, %for.inc39.i.i.i.for.cond2.preheader.i.i.i_crit_edge ]
  %best_mult.095.i.i.i = phi i8 [ 1, %if.else ], [ %best_mult.1.lcssa.i.i.i, %for.inc39.i.i.i.for.cond2.preheader.i.i.i_crit_edge ]
  %best_sysdiv.094.i.i.i = phi i8 [ 1, %if.else ], [ %best_sysdiv.1.lcssa.i.i.i, %for.inc39.i.i.i.for.cond2.preheader.i.i.i_crit_edge ]
  %45 = trunc i32 %indvars.iv100.i.i.i to i8
  br label %for.body6.i.i.i

for.body6.i.i.i:                                  ; preds = %for.inc.i.i.i.for.body6.i.i.i_crit_edge, %for.cond2.preheader.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 4, %for.cond2.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %for.inc.i.i.i.for.body6.i.i.i_crit_edge ]
  %best.193.i.i.i = phi i32 [ %best.098.i.i.i, %for.cond2.preheader.i.i.i ], [ %best.3.ph.i.i.i, %for.inc.i.i.i.for.body6.i.i.i_crit_edge ]
  %best_mult.190.i.i.i = phi i8 [ %best_mult.095.i.i.i, %for.cond2.preheader.i.i.i ], [ %best_mult.3.ph.i.i.i, %for.inc.i.i.i.for.body6.i.i.i_crit_edge ]
  %best_sysdiv.189.i.i.i = phi i8 [ %best_sysdiv.094.i.i.i, %for.cond2.preheader.i.i.i ], [ %best_sysdiv.3.ph.i.i.i, %for.inc.i.i.i.for.body6.i.i.i_crit_edge ]
  %46 = trunc i32 %indvars.iv.i.i.i to i8
  %47 = and i8 %46, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %47)
  %.not.i.i.i = icmp eq i8 %47, -127
  br i1 %.not.i.i.i, label %for.body6.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i

for.body6.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body6.i.i.i
  %48 = ptrtoint ptr %xclk_freq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xclk_freq.i.i.i.i, align 4
  %div.i.i.i.i = udiv i32 %49, 3
  %mul.i.i.i.i = mul i32 %div.i.i.i.i, %indvars.iv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000999999, i32 %mul.i.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %mul.i.i.i.i, 1000999999
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.for.inc39.i.i.i_crit_edge, label %ov5640_compute_sys_clk.exit.i.i.i

if.end.i.i.i.for.inc39.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.i.i.i

ov5640_compute_sys_clk.exit.i.i.i:                ; preds = %if.end.i.i.i
  %div5.i.i.i.i = udiv i32 %mul.i.i.i.i, %indvars.iv100.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i.i, i32 %indvars.iv100.i.i.i)
  %tobool11.not.i.i.i = icmp ult i32 %mul.i.i.i.i, %indvars.iv100.i.i.i
  br i1 %tobool11.not.i.i.i, label %ov5640_compute_sys_clk.exit.i.i.i.for.inc39.i.i.i_crit_edge, label %if.end13.i.i.i

ov5640_compute_sys_clk.exit.i.i.i.for.inc39.i.i.i_crit_edge: ; preds = %ov5640_compute_sys_clk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.i.i.i

if.end13.i.i.i:                                   ; preds = %ov5640_compute_sys_clk.exit.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i.i, i32 %div5.i.i.i.i)
  %cmp14.i.i.i = icmp ugt i32 %mul1.i.i, %div5.i.i.i.i
  br i1 %cmp14.i.i.i, label %if.end13.i.i.i.for.inc.i.i.i_crit_edge, label %if.end17.i.i.i

if.end13.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.end17.i.i.i:                                   ; preds = %if.end13.i.i.i
  %sub.i.i.i = sub i32 %mul1.i.i, %div5.i.i.i.i
  %50 = tail call i32 @llvm.abs.i32(i32 %sub.i.i.i, i1 false) #7
  %sub22.i.i.i = sub i32 %mul1.i.i, %best.193.i.i.i
  %51 = tail call i32 @llvm.abs.i32(i32 %sub22.i.i.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %51)
  %cmp31.i.i.i = icmp slt i32 %50, %51
  %best_sysdiv.2.i.i.i = select i1 %cmp31.i.i.i, i8 %45, i8 %best_sysdiv.189.i.i.i
  %best_mult.2.i.i.i = select i1 %cmp31.i.i.i, i8 %46, i8 %best_mult.190.i.i.i
  %best.2.i.i.i = select i1 %cmp31.i.i.i, i32 %div5.i.i.i.i, i32 %best.193.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i.i, i32 %div5.i.i.i.i)
  %cmp35.i.i.i = icmp eq i32 %mul1.i.i, %div5.i.i.i.i
  br i1 %cmp35.i.i.i, label %if.end17.i.i.i.if.end.i163_crit_edge, label %if.end17.i.i.i.for.inc.i.i.i_crit_edge

if.end17.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.end17.i.i.i.if.end.i163_crit_edge:             ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i163

for.inc.i.i.i:                                    ; preds = %if.end17.i.i.i.for.inc.i.i.i_crit_edge, %if.end13.i.i.i.for.inc.i.i.i_crit_edge, %for.body6.i.i.i.for.inc.i.i.i_crit_edge
  %best_sysdiv.3.ph.i.i.i = phi i8 [ %best_sysdiv.2.i.i.i, %if.end17.i.i.i.for.inc.i.i.i_crit_edge ], [ %best_sysdiv.189.i.i.i, %if.end13.i.i.i.for.inc.i.i.i_crit_edge ], [ %best_sysdiv.189.i.i.i, %for.body6.i.i.i.for.inc.i.i.i_crit_edge ]
  %best_mult.3.ph.i.i.i = phi i8 [ %best_mult.2.i.i.i, %if.end17.i.i.i.for.inc.i.i.i_crit_edge ], [ %best_mult.190.i.i.i, %if.end13.i.i.i.for.inc.i.i.i_crit_edge ], [ %best_mult.190.i.i.i, %for.body6.i.i.i.for.inc.i.i.i_crit_edge ]
  %best.3.ph.i.i.i = phi i32 [ %best.2.i.i.i, %if.end17.i.i.i.for.inc.i.i.i_crit_edge ], [ %best.193.i.i.i, %if.end13.i.i.i.for.inc.i.i.i_crit_edge ], [ %best.193.i.i.i, %for.body6.i.i.i.for.inc.i.i.i_crit_edge ]
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, 253
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.inc39.i.i.i_crit_edge, label %for.inc.i.i.i.for.body6.i.i.i_crit_edge

for.inc.i.i.i.for.body6.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.i.i

for.inc.i.i.i.for.inc39.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.i.i.i

for.inc39.i.i.i:                                  ; preds = %for.inc.i.i.i.for.inc39.i.i.i_crit_edge, %ov5640_compute_sys_clk.exit.i.i.i.for.inc39.i.i.i_crit_edge, %if.end.i.i.i.for.inc39.i.i.i_crit_edge
  %best_sysdiv.1.lcssa.i.i.i = phi i8 [ %best_sysdiv.189.i.i.i, %if.end.i.i.i.for.inc39.i.i.i_crit_edge ], [ %best_sysdiv.189.i.i.i, %ov5640_compute_sys_clk.exit.i.i.i.for.inc39.i.i.i_crit_edge ], [ %best_sysdiv.3.ph.i.i.i, %for.inc.i.i.i.for.inc39.i.i.i_crit_edge ]
  %best_mult.1.lcssa.i.i.i = phi i8 [ %best_mult.190.i.i.i, %if.end.i.i.i.for.inc39.i.i.i_crit_edge ], [ %best_mult.190.i.i.i, %ov5640_compute_sys_clk.exit.i.i.i.for.inc39.i.i.i_crit_edge ], [ %best_mult.3.ph.i.i.i, %for.inc.i.i.i.for.inc39.i.i.i_crit_edge ]
  %best.1.lcssa.i.i.i = phi i32 [ %best.193.i.i.i, %if.end.i.i.i.for.inc39.i.i.i_crit_edge ], [ %best.193.i.i.i, %ov5640_compute_sys_clk.exit.i.i.i.for.inc39.i.i.i_crit_edge ], [ %best.3.ph.i.i.i, %for.inc.i.i.i.for.inc39.i.i.i_crit_edge ]
  %indvars.iv.next101.i.i.i = add nuw nsw i32 %indvars.iv100.i.i.i, 1
  %exitcond102.not.i.i.i = icmp eq i32 %indvars.iv.next101.i.i.i, 17
  br i1 %exitcond102.not.i.i.i, label %for.inc39.i.i.i.if.end.i163_crit_edge, label %for.inc39.i.i.i.for.cond2.preheader.i.i.i_crit_edge

for.inc39.i.i.i.for.cond2.preheader.i.i.i_crit_edge: ; preds = %for.inc39.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader.i.i.i

for.inc39.i.i.i.if.end.i163_crit_edge:            ; preds = %for.inc39.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i163

if.end.i163:                                      ; preds = %for.inc39.i.i.i.if.end.i163_crit_edge, %if.end17.i.i.i.if.end.i163_crit_edge
  %best_sysdiv.5.i.i.i = phi i8 [ %best_sysdiv.2.i.i.i, %if.end17.i.i.i.if.end.i163_crit_edge ], [ %best_sysdiv.1.lcssa.i.i.i, %for.inc39.i.i.i.if.end.i163_crit_edge ]
  %best_mult.5.i.i.i = phi i8 [ %best_mult.2.i.i.i, %if.end17.i.i.i.if.end.i163_crit_edge ], [ %best_mult.1.lcssa.i.i.i, %for.inc39.i.i.i.if.end.i163_crit_edge ]
  %call2.i161 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12340, i8 noundef zeroext 15, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i161)
  %tobool.not.i162 = icmp eq i32 %call2.i161, 0
  br i1 %tobool.not.i162, label %if.end4.i, label %if.end.i163.if.end31_crit_edge

if.end.i163.if.end31_crit_edge:                   ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end4.i:                                        ; preds = %if.end.i163
  %shl.i164 = shl i8 %best_sysdiv.5.i.i.i, 4
  %call7.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12341, i8 noundef zeroext -1, i8 noundef zeroext %shl.i164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end4.i.if.end31_crit_edge

if.end4.i.if.end31_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end10.i:                                       ; preds = %if.end4.i
  %call11.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12342, i8 noundef zeroext -1, i8 noundef zeroext %best_mult.5.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.end31_crit_edge

if.end10.i.if.end31_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end14.i:                                       ; preds = %if.end10.i
  %call19.i165 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12343, i8 noundef zeroext 31, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i165)
  %tobool20.not.i = icmp eq i32 %call19.i165, 0
  br i1 %tobool20.not.i, label %if.end14.i.if.end31.sink.split_crit_edge, label %if.end14.i.if.end31_crit_edge

if.end14.i.if.end31_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end14.i.if.end31.sink.split_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.end14.i.if.end31.sink.split_crit_edge, %if.end11.i.if.end31.sink.split_crit_edge
  %call36.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12552, i8 noundef zeroext 48, i8 noundef zeroext 0) #7
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.end14.i.if.end31_crit_edge, %if.end10.i.if.end31_crit_edge, %if.end4.i.if.end31_crit_edge, %if.end.i163.if.end31_crit_edge, %if.end11.i.if.end31_crit_edge, %if.end7.i.if.end31_crit_edge, %ov5640_calc_sys_clk.exit.i.if.end31_crit_edge
  %ret.0 = phi i32 [ %call5.i, %ov5640_calc_sys_clk.exit.i.if.end31_crit_edge ], [ %call8.i, %if.end7.i.if.end31_crit_edge ], [ %call15.i, %if.end11.i.if.end31_crit_edge ], [ %call2.i161, %if.end.i163.if.end31_crit_edge ], [ %call7.i, %if.end4.i.if.end31_crit_edge ], [ %call11.i, %if.end10.i.if.end31_crit_edge ], [ %call19.i165, %if.end14.i.if.end31_crit_edge ], [ %call36.i, %if.end31.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp32 = icmp slt i32 %ret.0, 0
  br i1 %cmp32, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp36 = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp38 = icmp eq i32 %17, 1
  %or.cond = select i1 %cmp36, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.end35.if.then45_crit_edge, label %lor.lhs.false

if.end35.if.then45_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp40 = icmp eq i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp43 = icmp eq i32 %17, 0
  %or.cond158 = select i1 %cmp40, i1 %cmp43, i1 false
  br i1 %or.cond158, label %lor.lhs.false.if.then45_crit_edge, label %if.else47

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.end35.if.then45_crit_edge
  %reg_data.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_data.i, align 4
  %tobool.not.i167 = icmp eq ptr %53, null
  br i1 %tobool.not.i167, label %if.then45.restore_auto_exp_gain_crit_edge, label %if.end.i170

if.then45.restore_auto_exp_gain_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end.i170:                                      ; preds = %if.then45
  %call.i168 = tail call fastcc i32 @ov5640_get_exposure(ptr noundef %sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp.i169 = icmp slt i32 %call.i168, 0
  br i1 %cmp.i169, label %if.end.i170.restore_auto_exp_gain_crit_edge, label %if.end2.i

if.end.i170.restore_auto_exp_gain_crit_edge:      ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end2.i:                                        ; preds = %if.end.i170
  %54 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #7
  %56 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %57 = call ptr @memset(ptr %56, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  %58 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 56, ptr %buf.i.i.i, align 1
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 33, ptr %58, align 1
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 1
  %61 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %addr.i.i.i, align 2
  %63 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %msg.i.i.i, align 4
  %64 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %55, align 8
  %flags8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %flags8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %flags8.i.i.i, align 2
  %buf10.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %buf10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buf.i.i.i, ptr %buf10.i.i.i, align 4
  %68 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 2, ptr %56, align 4
  %69 = load i16, ptr %addr.i.i.i, align 2
  %arrayidx13.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %arrayidx13.i.i.i, align 4
  %71 = load i16, ptr %55, align 8
  %72 = or i16 %71, 1
  %flags19.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %flags19.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %flags19.i.i.i, align 2
  %buf22.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %buf22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %buf.i.i.i, ptr %buf22.i.i.i, align 4
  %len24.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1, i32 2
  %75 = ptrtoint ptr %len24.i.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %len24.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 3
  %76 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %msg.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i171 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i171, label %ov5640_get_binning.exit.thread.i, label %ov5640_get_binning.exit.i

ov5640_get_binning.exit.thread.i:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 14369) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #7
  br label %restore_auto_exp_gain

ov5640_get_binning.exit.i:                        ; preds = %if.end2.i
  %78 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %buf.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #7
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool7.not.i = icmp eq i8 %80, 0
  br i1 %tobool7.not.i, label %ov5640_get_binning.exit.i.if.end13.i_crit_edge, label %land.lhs.true.i

ov5640_get_binning.exit.i.if.end13.i_crit_edge:   ; preds = %ov5640_get_binning.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %ov5640_get_binning.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %1, align 4
  %83 = add i32 %82, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %83)
  %switch.i = icmp ult i32 %83, -2
  %mul.i172 = zext i1 %switch.i to i32
  %spec.select.i173 = shl nuw i32 %call.i168, %mul.i172
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i, %ov5640_get_binning.exit.i.if.end13.i_crit_edge
  %prev_shutter.0.i = phi i32 [ %call.i168, %ov5640_get_binning.exit.i.if.end13.i_crit_edge ], [ %spec.select.i173, %land.lhs.true.i ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gain.i.i) #7
  %84 = ptrtoint ptr %gain.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -1, ptr %gain.i.i, align 2, !annotation !178
  %call.i.i = call fastcc i32 @ov5640_read_reg16(ptr noundef %sensor, i16 noundef zeroext 13578, ptr noundef nonnull %gain.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ov5640_get_gain.exit.thread.i, label %ov5640_get_gain.exit.i

ov5640_get_gain.exit.thread.i:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %gain.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %gain.i.i, align 2
  %87 = and i16 %86, 1023
  %and.i259.i = zext i16 %87 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gain.i.i) #7
  br label %if.end17.i

ov5640_get_gain.exit.i:                           ; preds = %if.end13.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gain.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp15.i, label %ov5640_get_gain.exit.i.restore_auto_exp_gain_crit_edge, label %ov5640_get_gain.exit.i.if.end17.i_crit_edge

ov5640_get_gain.exit.i.if.end17.i_crit_edge:      ; preds = %ov5640_get_gain.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

ov5640_get_gain.exit.i.restore_auto_exp_gain_crit_edge: ; preds = %ov5640_get_gain.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end17.i:                                       ; preds = %ov5640_get_gain.exit.i.if.end17.i_crit_edge, %ov5640_get_gain.exit.thread.i
  %retval.0.i261297.i = phi i32 [ %and.i259.i, %ov5640_get_gain.exit.thread.i ], [ %call.i.i, %ov5640_get_gain.exit.i.if.end17.i_crit_edge ]
  %88 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %90 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %91 = call ptr @memset(ptr %90, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %92 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 86, ptr %buf.i.i, align 1
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -95, ptr %92, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %89, i32 0, i32 1
  %95 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %addr.i.i, align 2
  %97 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %msg.i.i, align 4
  %98 = ptrtoint ptr %89 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %89, align 8
  %flags8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %flags8.i.i, align 2
  %buf10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %101 = ptrtoint ptr %buf10.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buf.i.i, ptr %buf10.i.i, align 4
  %102 = ptrtoint ptr %90 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 2, ptr %90, align 4
  %103 = load i16, ptr %addr.i.i, align 2
  %arrayidx13.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %arrayidx13.i.i, align 4
  %105 = load i16, ptr %89, align 8
  %106 = or i16 %105, 1
  %flags19.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 1
  %107 = ptrtoint ptr %flags19.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %flags19.i.i, align 2
  %buf22.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 3
  %108 = ptrtoint ptr %buf22.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %buf.i.i, ptr %buf22.i.i, align 4
  %len24.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 2
  %109 = ptrtoint ptr %len24.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 1, ptr %len24.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %89, i32 0, i32 3
  %110 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adapter.i.i, align 8
  %call.i262.i = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262.i)
  %cmp.i.i = icmp slt i32 %call.i262.i, 0
  br i1 %cmp.i.i, label %ov5640_read_reg.exit.i, label %if.end21.i

ov5640_read_reg.exit.i:                           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %89, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 22177) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  br label %restore_auto_exp_gain

if.end21.i:                                       ; preds = %if.end17.i
  %112 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %buf.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  %114 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i265.i) #7
  %116 = getelementptr inbounds i8, ptr %msg.i.i265.i, i32 4
  %117 = call ptr @memset(ptr %116, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i266.i) #7
  %118 = getelementptr inbounds [2 x i8], ptr %buf.i.i266.i, i32 0, i32 1
  %119 = ptrtoint ptr %buf.i.i266.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 58, ptr %buf.i.i266.i, align 1
  %120 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %118, align 1
  %addr.i.i267.i = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 1
  %121 = ptrtoint ptr %addr.i.i267.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %addr.i.i267.i, align 2
  %123 = ptrtoint ptr %msg.i.i265.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %msg.i.i265.i, align 4
  %124 = ptrtoint ptr %115 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %115, align 8
  %flags8.i.i268.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i265.i, i32 0, i32 1
  %126 = ptrtoint ptr %flags8.i.i268.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %flags8.i.i268.i, align 2
  %buf10.i.i269.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i265.i, i32 0, i32 3
  %127 = ptrtoint ptr %buf10.i.i269.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %buf.i.i266.i, ptr %buf10.i.i269.i, align 4
  %128 = ptrtoint ptr %116 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 2, ptr %116, align 4
  %129 = load i16, ptr %addr.i.i267.i, align 2
  %arrayidx13.i.i270.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i265.i, i32 0, i32 1
  %130 = ptrtoint ptr %arrayidx13.i.i270.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %arrayidx13.i.i270.i, align 4
  %131 = load i16, ptr %115, align 8
  %132 = or i16 %131, 1
  %flags19.i.i271.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i265.i, i32 0, i32 1, i32 1
  %133 = ptrtoint ptr %flags19.i.i271.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %flags19.i.i271.i, align 2
  %buf22.i.i272.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i265.i, i32 0, i32 1, i32 3
  %134 = ptrtoint ptr %buf22.i.i272.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %buf.i.i266.i, ptr %buf22.i.i272.i, align 4
  %len24.i.i273.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i265.i, i32 0, i32 1, i32 2
  %135 = ptrtoint ptr %len24.i.i273.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 1, ptr %len24.i.i273.i, align 4
  %adapter.i.i274.i = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 3
  %136 = ptrtoint ptr %adapter.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %adapter.i.i274.i, align 8
  %call.i.i275.i = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %msg.i.i265.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i275.i)
  %cmp.i.i276.i = icmp slt i32 %call.i.i275.i, 0
  br i1 %cmp.i.i276.i, label %ov5640_set_night_mode.exit.thread.i, label %if.end.i279.i

ov5640_set_night_mode.exit.thread.i:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i277.i = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i277.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 14848) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i266.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i265.i) #7
  br label %restore_auto_exp_gain

if.end.i279.i:                                    ; preds = %if.end21.i
  %138 = ptrtoint ptr %buf.i.i266.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %buf.i.i266.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i266.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i265.i) #7
  %140 = and i8 %139, -5
  %141 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i6.i.i) #7
  %143 = getelementptr inbounds i8, ptr %msg.i6.i.i, i32 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 262143, ptr %143, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i7.i.i) #7
  %145 = getelementptr inbounds [3 x i8], ptr %buf.i7.i.i, i32 0, i32 1
  %146 = getelementptr inbounds [3 x i8], ptr %buf.i7.i.i, i32 0, i32 2
  %147 = ptrtoint ptr %buf.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 58, ptr %buf.i7.i.i, align 1
  %148 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %145, align 1
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %140, ptr %146, align 1
  %addr.i8.i.i = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 1
  %150 = ptrtoint ptr %addr.i8.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %addr.i8.i.i, align 2
  %152 = ptrtoint ptr %msg.i6.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %msg.i6.i.i, align 4
  %153 = ptrtoint ptr %142 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %142, align 8
  %flags7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %flags7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %flags7.i.i.i, align 2
  %buf8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6.i.i, i32 0, i32 3
  %156 = ptrtoint ptr %buf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %buf.i7.i.i, ptr %buf8.i.i.i, align 4
  %adapter.i10.i.i = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 3
  %157 = ptrtoint ptr %adapter.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %adapter.i10.i.i, align 8
  %call.i11.i.i = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %msg.i6.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %cmp.i12.i.i = icmp slt i32 %call.i11.i.i, 0
  br i1 %cmp.i12.i.i, label %ov5640_set_night_mode.exit.thread305.i, label %if.end25.i

ov5640_set_night_mode.exit.thread305.i:           ; preds = %if.end.i279.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i13.i.i = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 4
  %conv11.i.i.i = zext i8 %140 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i13.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 14848, i32 noundef %conv11.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6.i.i) #7
  br label %restore_auto_exp_gain

if.end25.i:                                       ; preds = %if.end.i279.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6.i.i) #7
  %call26.i = call fastcc i32 @ov5640_load_regs(ptr noundef %sensor, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.end25.i.restore_auto_exp_gain_crit_edge, label %if.end29.i

if.end25.i.restore_auto_exp_gain_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end29.i:                                       ; preds = %if.end25.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vts.i.i) #7
  %159 = ptrtoint ptr %vts.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 -1, ptr %vts.i.i, align 2, !annotation !178
  %call.i281.i = call fastcc i32 @ov5640_read_reg16(ptr noundef %sensor, i16 noundef zeroext 14350, ptr noundef nonnull %vts.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281.i)
  %tobool.not.i282.i = icmp eq i32 %call.i281.i, 0
  br i1 %tobool.not.i282.i, label %ov5640_get_vts.exit.thread.i, label %ov5640_get_vts.exit.i

ov5640_get_vts.exit.thread.i:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %vts.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %vts.i.i, align 2
  %conv.i.i = zext i16 %161 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vts.i.i) #7
  br label %if.end33.i

ov5640_get_vts.exit.i:                            ; preds = %if.end29.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vts.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281.i)
  %cmp31.i = icmp slt i32 %call.i281.i, 0
  br i1 %cmp31.i, label %ov5640_get_vts.exit.i.restore_auto_exp_gain_crit_edge, label %ov5640_get_vts.exit.i.if.end33.i_crit_edge

ov5640_get_vts.exit.i.if.end33.i_crit_edge:       ; preds = %ov5640_get_vts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

ov5640_get_vts.exit.i.restore_auto_exp_gain_crit_edge: ; preds = %ov5640_get_vts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end33.i:                                       ; preds = %ov5640_get_vts.exit.i.if.end33.i_crit_edge, %ov5640_get_vts.exit.thread.i
  %retval.0.i284310.i = phi i32 [ %conv.i.i, %ov5640_get_vts.exit.thread.i ], [ %call.i281.i, %ov5640_get_vts.exit.i.if.end33.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hts.i.i) #7
  %162 = ptrtoint ptr %hts.i.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 -1, ptr %hts.i.i, align 2, !annotation !178
  %call.i285.i = call fastcc i32 @ov5640_read_reg16(ptr noundef %sensor, i16 noundef zeroext 14348, ptr noundef nonnull %hts.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285.i)
  %tobool.not.i286.i = icmp eq i32 %call.i285.i, 0
  br i1 %tobool.not.i286.i, label %if.end37.i, label %ov5640_get_hts.exit.i

ov5640_get_hts.exit.i:                            ; preds = %if.end33.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hts.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285.i)
  %cmp35.i = icmp slt i32 %call.i285.i, 0
  br i1 %cmp35.i, label %ov5640_get_hts.exit.i.restore_auto_exp_gain_crit_edge, label %ov5640_get_hts.exit.i.if.end40.i_crit_edge

ov5640_get_hts.exit.i.if.end40.i_crit_edge:       ; preds = %ov5640_get_hts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

ov5640_get_hts.exit.i.restore_auto_exp_gain_crit_edge: ; preds = %ov5640_get_hts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end37.i:                                       ; preds = %if.end33.i
  %163 = ptrtoint ptr %hts.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %hts.i.i, align 2
  %conv.i287.i = zext i16 %164 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hts.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %cmp38.i = icmp eq i16 %164, 0
  br i1 %cmp38.i, label %if.end37.i.restore_auto_exp_gain_crit_edge, label %if.end37.i.if.end40.i_crit_edge

if.end37.i.if.end40.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.end37.i.restore_auto_exp_gain_crit_edge:       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end40.i:                                       ; preds = %if.end37.i.if.end40.i_crit_edge, %ov5640_get_hts.exit.i.if.end40.i_crit_edge
  %retval.0.i289313318.i = phi i32 [ %conv.i287.i, %if.end37.i.if.end40.i_crit_edge ], [ %call.i285.i, %ov5640_get_hts.exit.i.if.end40.i_crit_edge ]
  %call41.i = call fastcc i32 @ov5640_get_sysclk(ptr noundef %sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %if.end40.i.restore_auto_exp_gain_crit_edge, label %if.end44.i

if.end40.i.restore_auto_exp_gain_crit_edge:       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end44.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp45.i = icmp eq i32 %call41.i, 0
  br i1 %cmp45.i, label %if.end44.i.restore_auto_exp_gain_crit_edge, label %if.end47.i

if.end44.i.restore_auto_exp_gain_crit_edge:       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end47.i:                                       ; preds = %if.end44.i
  %call48.i = call fastcc i32 @ov5640_get_light_freq(ptr noundef %sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.end47.i.restore_auto_exp_gain_crit_edge, label %if.end51.i

if.end47.i.restore_auto_exp_gain_crit_edge:       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end51.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %call48.i)
  %cmp52.i = icmp eq i32 %call48.i, 60
  %mul54.i = mul i32 %call41.i, 100
  %div.i = udiv i32 %mul54.i, %retval.0.i289313318.i
  %mul55.i = mul i32 %div.i, 100
  %div56.i = udiv i32 %mul55.i, 120
  %cap_bandfilt.0.i = select i1 %cmp52.i, i32 %div56.i, i32 %div.i
  %prev_sysclk.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 19
  %165 = ptrtoint ptr %prev_sysclk.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %prev_sysclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool60.not.i = icmp eq i32 %166, 0
  br i1 %tobool60.not.i, label %if.then61.i, label %if.end51.i.if.end70.i_crit_edge

if.end51.i.if.end70.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.then61.i:                                      ; preds = %if.end51.i
  %call62.i = call fastcc i32 @ov5640_get_sysclk(ptr noundef %sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %if.then61.i.restore_auto_exp_gain_crit_edge, label %if.end65.i

if.then61.i.restore_auto_exp_gain_crit_edge:      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end65.i:                                       ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp66.i = icmp eq i32 %call62.i, 0
  br i1 %cmp66.i, label %if.end65.i.restore_auto_exp_gain_crit_edge, label %if.end68.i

if.end65.i.restore_auto_exp_gain_crit_edge:       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end68.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %prev_sysclk.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %call62.i, ptr %prev_sysclk.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end68.i, %if.end51.i.if.end70.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cap_bandfilt.0.i)
  %tobool71.not.i = icmp eq i32 %cap_bandfilt.0.i, 0
  br i1 %tobool71.not.i, label %if.end70.i.restore_auto_exp_gain_crit_edge, label %if.end73.i

if.end70.i.restore_auto_exp_gain_crit_edge:       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end73.i:                                       ; preds = %if.end70.i
  %sub.i = add nsw i32 %retval.0.i284310.i, -4
  %conv.i174 = zext i8 %113 to i32
  %ae_low.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 21
  %168 = ptrtoint ptr %ae_low.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ae_low.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %conv.i174)
  %cmp75.i = icmp ult i32 %169, %conv.i174
  br i1 %cmp75.i, label %land.lhs.true77.i, label %if.end73.i.if.else91.i_crit_edge

if.end73.i.if.else91.i_crit_edge:                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else91.i

land.lhs.true77.i:                                ; preds = %if.end73.i
  %ae_high.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 22
  %170 = ptrtoint ptr %ae_high.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ae_high.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %conv.i174)
  %cmp79.i = icmp ugt i32 %171, %conv.i174
  br i1 %cmp79.i, label %if.then81.i, label %land.lhs.true77.i.if.else91.i_crit_edge

land.lhs.true77.i.if.else91.i_crit_edge:          ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else91.i

if.then81.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul82.i = mul i32 %retval.0.i261297.i, %prev_shutter.0.i
  %mul83.i = mul i32 %mul82.i, %call41.i
  %172 = ptrtoint ptr %prev_sysclk.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %prev_sysclk.i, align 4
  %div85.i = udiv i32 %mul83.i, %173
  %prev_hts.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 20
  %174 = ptrtoint ptr %prev_hts.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %prev_hts.i, align 4
  %mul86.i = mul i32 %175, %div85.i
  %div87.i = udiv i32 %mul86.i, %retval.0.i289313318.i
  %ae_target.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 23
  br label %if.end99.i

if.else91.i:                                      ; preds = %land.lhs.true77.i.if.else91.i_crit_edge, %if.end73.i.if.else91.i_crit_edge
  %mul92.i = mul i32 %retval.0.i261297.i, %prev_shutter.0.i
  %mul93.i = mul i32 %mul92.i, %call41.i
  %176 = ptrtoint ptr %prev_sysclk.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %prev_sysclk.i, align 4
  %div95.i = udiv i32 %mul93.i, %177
  %prev_hts96.i = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 20
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else91.i, %if.then81.i
  %prev_hts96.sink.i = phi ptr [ %prev_hts96.i, %if.else91.i ], [ %ae_target.i, %if.then81.i ]
  %div95.sink.i = phi i32 [ %div95.i, %if.else91.i ], [ %div87.i, %if.then81.i ]
  %retval.0.i289313318.sink.i = phi i32 [ %retval.0.i289313318.i, %if.else91.i ], [ %conv.i174, %if.then81.i ]
  %178 = ptrtoint ptr %prev_hts96.sink.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %prev_hts96.sink.i, align 4
  %mul97.i = mul i32 %179, %div95.sink.i
  %div98.i = udiv i32 %mul97.i, %retval.0.i289313318.sink.i
  %mul100.i = shl i32 %cap_bandfilt.0.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div98.i, i32 %mul100.i)
  %cmp101.i = icmp ult i32 %div98.i, %mul100.i
  br i1 %cmp101.i, label %if.then103.i, label %if.else114.i

if.then103.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  %div104258.i = lshr i32 %div98.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div98.i)
  %cmp105.i = icmp ult i32 %div98.i, 16
  %spec.store.select.i = select i1 %cmp105.i, i32 1, i32 %div104258.i
  %div109.i = udiv i32 %div98.i, %spec.store.select.i
  %180 = call i32 @llvm.umax.i32(i32 %div109.i, i32 16) #7
  br label %if.end134.i

if.else114.i:                                     ; preds = %if.end99.i
  %181 = urem i32 %sub.i, %cap_bandfilt.0.i
  %mul115.i = sub i32 %sub.i, %181
  %mul116.i = shl i32 %mul115.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div98.i, i32 %mul116.i)
  %cmp117.i = icmp ugt i32 %div98.i, %mul116.i
  br i1 %cmp117.i, label %if.then119.i, label %if.else125.i

if.then119.i:                                     ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul115.i)
  %tobool121.not.i = icmp eq i32 %mul115.i, 0
  br i1 %tobool121.not.i, label %if.then119.i.restore_auto_exp_gain_crit_edge, label %if.end123.i

if.then119.i.restore_auto_exp_gain_crit_edge:     ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end123.i:                                      ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  %div124.i = udiv i32 %div98.i, %mul115.i
  br label %if.end134.i

if.else125.i:                                     ; preds = %if.else114.i
  %div126257.i = lshr i32 %div98.i, 4
  %182 = urem i32 %div126257.i, %cap_bandfilt.0.i
  %mul128.i = sub nsw i32 %div126257.i, %182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul128.i)
  %tobool129.not.i = icmp eq i32 %mul128.i, 0
  br i1 %tobool129.not.i, label %if.else125.i.restore_auto_exp_gain_crit_edge, label %if.end131.i

if.else125.i.restore_auto_exp_gain_crit_edge:     ; preds = %if.else125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end131.i:                                      ; preds = %if.else125.i
  call void @__sanitizer_cov_trace_pc() #9
  %div132.i = udiv i32 %div98.i, %mul128.i
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.end131.i, %if.end123.i, %if.then103.i
  %cap_shutter.0.i = phi i32 [ %spec.store.select.i, %if.then103.i ], [ %mul115.i, %if.end123.i ], [ %mul128.i, %if.end131.i ]
  %cap_gain16.0.i = phi i32 [ %180, %if.then103.i ], [ %div124.i, %if.end123.i ], [ %div132.i, %if.end131.i ]
  %183 = trunc i32 %cap_gain16.0.i to i16
  %conv2.i.i = and i16 %183, 1023
  %call.i290.i = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 13578, i16 noundef zeroext %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290.i)
  %tobool136.not.i = icmp eq i32 %call.i290.i, 0
  br i1 %tobool136.not.i, label %if.end138.i, label %if.end134.i.if.end49_crit_edge

if.end134.i.if.end49_crit_edge:                   ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end138.i:                                      ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cap_shutter.0.i, i32 %sub.i)
  %cmp140.i = icmp ugt i32 %cap_shutter.0.i, %sub.i
  br i1 %cmp140.i, label %if.then142.i, label %if.end138.i.if.end148.i_crit_edge

if.end138.i.if.end148.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.i

if.then142.i:                                     ; preds = %if.end138.i
  %184 = trunc i32 %cap_shutter.0.i to i16
  %conv.i291.i = add i16 %184, 4
  %call.i292.i = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 14350, i16 noundef zeroext %conv.i291.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292.i)
  %cmp144.i = icmp slt i32 %call.i292.i, 0
  br i1 %cmp144.i, label %if.then142.i.restore_auto_exp_gain_crit_edge, label %if.then142.i.if.end148.i_crit_edge

if.then142.i.if.end148.i_crit_edge:               ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.i

if.then142.i.restore_auto_exp_gain_crit_edge:     ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end148.i:                                      ; preds = %if.then142.i.if.end148.i_crit_edge, %if.end138.i.if.end148.i_crit_edge
  %call149.i = call fastcc i32 @ov5640_set_exposure(ptr noundef %sensor, i32 noundef %cap_shutter.0.i) #7
  br label %if.end49

if.else47:                                        ; preds = %lor.lhs.false
  %reg_data.i176 = getelementptr inbounds %struct.ov5640_mode_info, ptr %1, i32 0, i32 6
  %185 = ptrtoint ptr %reg_data.i176 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %reg_data.i176, align 4
  %tobool.not.i177 = icmp eq ptr %186, null
  br i1 %tobool.not.i177, label %if.else47.restore_auto_exp_gain_crit_edge, label %if.end.i179

if.else47.restore_auto_exp_gain_crit_edge:        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end.i179:                                      ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  %call.i178 = tail call fastcc i32 @ov5640_load_regs(ptr noundef %sensor, ptr noundef %1) #7
  br label %if.end49

if.end49:                                         ; preds = %if.end.i179, %if.end148.i, %if.end134.i.if.end49_crit_edge
  %ret.1 = phi i32 [ %call149.i, %if.end148.i ], [ %call.i290.i, %if.end134.i.if.end49_crit_edge ], [ %call.i178, %if.end.i179 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp50 = icmp slt i32 %ret.1, 0
  br i1 %cmp50, label %if.end49.restore_auto_exp_gain_crit_edge, label %if.end53

if.end49.restore_auto_exp_gain_crit_edge:         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_exp_gain

if.end53:                                         ; preds = %if.end49
  br i1 %cmp, label %if.then55, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %call.i181 = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  br i1 %cmp5, label %if.then59, label %if.end57.if.end61_crit_edge

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %call.i182 = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57.if.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp62 = icmp ne i32 %15, 1
  %conv.i183 = zext i1 %cmp62 to i8
  %call.i184 = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 14369, i8 noundef zeroext 1, i8 noundef zeroext %conv.i183) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool1.not.i = icmp eq i32 %call.i184, 0
  br i1 %tobool1.not.i, label %if.end.i185, label %if.end61.ov5640_set_binning.exit_crit_edge

if.end61.ov5640_set_binning.exit_crit_edge:       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_binning.exit

if.end.i185:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 14368, i8 noundef zeroext 1, i8 noundef zeroext %conv.i183) #7
  br label %ov5640_set_binning.exit

ov5640_set_binning.exit:                          ; preds = %if.end.i185, %if.end61.ov5640_set_binning.exit_crit_edge
  %retval.0.i186 = phi i32 [ %call6.i, %if.end.i185 ], [ %call.i184, %if.end61.ov5640_set_binning.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i186)
  %cmp65 = icmp slt i32 %retval.0.i186, 0
  br i1 %cmp65, label %ov5640_set_binning.exit.cleanup_crit_edge, label %if.end68

ov5640_set_binning.exit.cleanup_crit_edge:        ; preds = %ov5640_set_binning.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %ov5640_set_binning.exit
  %ae_target = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 23
  %187 = ptrtoint ptr %ae_target to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %ae_target, align 4
  %mul.i189 = mul i32 %188, 23
  %div.i190 = sdiv i32 %mul.i189, 25
  %ae_low.i191 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 21
  %189 = ptrtoint ptr %ae_low.i191 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %div.i190, ptr %ae_low.i191, align 4
  %mul1.i = mul i32 %188, 27
  %div2.i = sdiv i32 %mul1.i, 25
  %ae_high.i192 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 22
  %190 = ptrtoint ptr %ae_high.i192 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %div2.i, ptr %ae_high.i192, align 4
  %shl.i193 = shl nsw i32 %div2.i, 1
  %191 = call i32 @llvm.umin.i32(i32 %shl.i193, i32 255) #7
  %shr.i = lshr i32 %div.i190, 1
  %conv.i194 = trunc i32 %div2.i to i8
  %192 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i187) #7
  %194 = getelementptr inbounds i8, ptr %msg.i.i187, i32 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 262143, ptr %194, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i188) #7
  %196 = getelementptr inbounds [3 x i8], ptr %buf.i.i188, i32 0, i32 1
  %197 = getelementptr inbounds [3 x i8], ptr %buf.i.i188, i32 0, i32 2
  %198 = ptrtoint ptr %buf.i.i188 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 58, ptr %buf.i.i188, align 1
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 15, ptr %196, align 1
  %200 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv.i194, ptr %197, align 1
  %addr.i.i195 = getelementptr inbounds %struct.i2c_client, ptr %193, i32 0, i32 1
  %201 = ptrtoint ptr %addr.i.i195 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %addr.i.i195, align 2
  %203 = ptrtoint ptr %msg.i.i187 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %msg.i.i187, align 4
  %204 = ptrtoint ptr %193 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %193, align 8
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i187, i32 0, i32 1
  %206 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %flags7.i.i, align 2
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i187, i32 0, i32 3
  %207 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %buf.i.i188, ptr %buf8.i.i, align 4
  %adapter.i.i196 = getelementptr inbounds %struct.i2c_client, ptr %193, i32 0, i32 3
  %208 = ptrtoint ptr %adapter.i.i196 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %adapter.i.i196, align 8
  %call.i.i197 = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %msg.i.i187, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i197)
  %cmp.i.i198 = icmp slt i32 %call.i.i197, 0
  br i1 %cmp.i.i198, label %ov5640_write_reg.exit.i, label %if.end7.i200

ov5640_write_reg.exit.i:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i199 = getelementptr inbounds %struct.i2c_client, ptr %193, i32 0, i32 4
  %conv11.i.i = and i32 %div2.i, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i199, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 14863, i32 noundef %conv11.i.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i188) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i187) #7
  br label %cleanup

if.end7.i200:                                     ; preds = %if.end68
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i188) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i187) #7
  %210 = ptrtoint ptr %ae_low.i191 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %ae_low.i191, align 4
  %conv9.i = trunc i32 %211 to i8
  %212 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i59.i) #7
  %214 = getelementptr inbounds i8, ptr %msg.i59.i, i32 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 262143, ptr %214, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i60.i) #7
  %216 = getelementptr inbounds [3 x i8], ptr %buf.i60.i, i32 0, i32 1
  %217 = getelementptr inbounds [3 x i8], ptr %buf.i60.i, i32 0, i32 2
  %218 = ptrtoint ptr %buf.i60.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 58, ptr %buf.i60.i, align 1
  %219 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 16, ptr %216, align 1
  %220 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv9.i, ptr %217, align 1
  %addr.i61.i = getelementptr inbounds %struct.i2c_client, ptr %213, i32 0, i32 1
  %221 = ptrtoint ptr %addr.i61.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %addr.i61.i, align 2
  %223 = ptrtoint ptr %msg.i59.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %222, ptr %msg.i59.i, align 4
  %224 = ptrtoint ptr %213 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %213, align 8
  %flags7.i62.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i, i32 0, i32 1
  %226 = ptrtoint ptr %flags7.i62.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %225, ptr %flags7.i62.i, align 2
  %buf8.i63.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i, i32 0, i32 3
  %227 = ptrtoint ptr %buf8.i63.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %buf.i60.i, ptr %buf8.i63.i, align 4
  %adapter.i65.i = getelementptr inbounds %struct.i2c_client, ptr %213, i32 0, i32 3
  %228 = ptrtoint ptr %adapter.i65.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %adapter.i65.i, align 8
  %call.i66.i = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %msg.i59.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %cmp.i67.i = icmp slt i32 %call.i66.i, 0
  br i1 %cmp.i67.i, label %ov5640_write_reg.exit72.i, label %if.end13.i201

ov5640_write_reg.exit72.i:                        ; preds = %if.end7.i200
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i68.i = getelementptr inbounds %struct.i2c_client, ptr %213, i32 0, i32 4
  %conv11.i69.i = and i32 %211, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i68.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 14864, i32 noundef %conv11.i69.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i60.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59.i) #7
  br label %cleanup

if.end13.i201:                                    ; preds = %if.end7.i200
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i60.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59.i) #7
  %230 = ptrtoint ptr %ae_high.i192 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %ae_high.i192, align 4
  %conv15.i = trunc i32 %231 to i8
  %232 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i73.i) #7
  %234 = getelementptr inbounds i8, ptr %msg.i73.i, i32 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 262143, ptr %234, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i74.i) #7
  %236 = getelementptr inbounds [3 x i8], ptr %buf.i74.i, i32 0, i32 1
  %237 = getelementptr inbounds [3 x i8], ptr %buf.i74.i, i32 0, i32 2
  %238 = ptrtoint ptr %buf.i74.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 58, ptr %buf.i74.i, align 1
  %239 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 27, ptr %236, align 1
  %240 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv15.i, ptr %237, align 1
  %addr.i75.i = getelementptr inbounds %struct.i2c_client, ptr %233, i32 0, i32 1
  %241 = ptrtoint ptr %addr.i75.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %addr.i75.i, align 2
  %243 = ptrtoint ptr %msg.i73.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %242, ptr %msg.i73.i, align 4
  %244 = ptrtoint ptr %233 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %233, align 8
  %flags7.i76.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 0, i32 1
  %246 = ptrtoint ptr %flags7.i76.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %245, ptr %flags7.i76.i, align 2
  %buf8.i77.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 0, i32 3
  %247 = ptrtoint ptr %buf8.i77.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %buf.i74.i, ptr %buf8.i77.i, align 4
  %adapter.i79.i = getelementptr inbounds %struct.i2c_client, ptr %233, i32 0, i32 3
  %248 = ptrtoint ptr %adapter.i79.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %adapter.i79.i, align 8
  %call.i80.i = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %msg.i73.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %cmp.i81.i = icmp slt i32 %call.i80.i, 0
  br i1 %cmp.i81.i, label %ov5640_write_reg.exit86.i, label %if.end19.i

ov5640_write_reg.exit86.i:                        ; preds = %if.end13.i201
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i82.i = getelementptr inbounds %struct.i2c_client, ptr %233, i32 0, i32 4
  %conv11.i83.i = and i32 %231, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i82.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 14875, i32 noundef %conv11.i83.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i74.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i73.i) #7
  br label %cleanup

if.end19.i:                                       ; preds = %if.end13.i201
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i74.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i73.i) #7
  %250 = ptrtoint ptr %ae_low.i191 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %ae_low.i191, align 4
  %conv21.i = trunc i32 %251 to i8
  %252 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i87.i) #7
  %254 = getelementptr inbounds i8, ptr %msg.i87.i, i32 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 262143, ptr %254, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i88.i) #7
  %256 = getelementptr inbounds [3 x i8], ptr %buf.i88.i, i32 0, i32 1
  %257 = getelementptr inbounds [3 x i8], ptr %buf.i88.i, i32 0, i32 2
  %258 = ptrtoint ptr %buf.i88.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 58, ptr %buf.i88.i, align 1
  %259 = ptrtoint ptr %256 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 30, ptr %256, align 1
  %260 = ptrtoint ptr %257 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %conv21.i, ptr %257, align 1
  %addr.i89.i = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 1
  %261 = ptrtoint ptr %addr.i89.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %addr.i89.i, align 2
  %263 = ptrtoint ptr %msg.i87.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %262, ptr %msg.i87.i, align 4
  %264 = ptrtoint ptr %253 to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %253, align 8
  %flags7.i90.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 1
  %266 = ptrtoint ptr %flags7.i90.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %265, ptr %flags7.i90.i, align 2
  %buf8.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 3
  %267 = ptrtoint ptr %buf8.i91.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %buf.i88.i, ptr %buf8.i91.i, align 4
  %adapter.i93.i = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 3
  %268 = ptrtoint ptr %adapter.i93.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %adapter.i93.i, align 8
  %call.i94.i = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %msg.i87.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %cmp.i95.i = icmp slt i32 %call.i94.i, 0
  br i1 %cmp.i95.i, label %ov5640_write_reg.exit100.i, label %if.end25.i202

ov5640_write_reg.exit100.i:                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i96.i = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 4
  %conv11.i97.i = and i32 %251, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i96.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 14878, i32 noundef %conv11.i97.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i88.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i87.i) #7
  br label %cleanup

if.end25.i202:                                    ; preds = %if.end19.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i88.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i87.i) #7
  %conv26.i = trunc i32 %191 to i8
  %270 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i101.i) #7
  %272 = getelementptr inbounds i8, ptr %msg.i101.i, i32 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 262143, ptr %272, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i102.i) #7
  %274 = getelementptr inbounds [3 x i8], ptr %buf.i102.i, i32 0, i32 1
  %275 = getelementptr inbounds [3 x i8], ptr %buf.i102.i, i32 0, i32 2
  %276 = ptrtoint ptr %buf.i102.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 58, ptr %buf.i102.i, align 1
  %277 = ptrtoint ptr %274 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 17, ptr %274, align 1
  %278 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %conv26.i, ptr %275, align 1
  %addr.i103.i = getelementptr inbounds %struct.i2c_client, ptr %271, i32 0, i32 1
  %279 = ptrtoint ptr %addr.i103.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %addr.i103.i, align 2
  %281 = ptrtoint ptr %msg.i101.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %280, ptr %msg.i101.i, align 4
  %282 = ptrtoint ptr %271 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %271, align 8
  %flags7.i104.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101.i, i32 0, i32 1
  %284 = ptrtoint ptr %flags7.i104.i to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %283, ptr %flags7.i104.i, align 2
  %buf8.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101.i, i32 0, i32 3
  %285 = ptrtoint ptr %buf8.i105.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %buf.i102.i, ptr %buf8.i105.i, align 4
  %adapter.i107.i = getelementptr inbounds %struct.i2c_client, ptr %271, i32 0, i32 3
  %286 = ptrtoint ptr %adapter.i107.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %adapter.i107.i, align 8
  %call.i108.i = call i32 @i2c_transfer(ptr noundef %287, ptr noundef nonnull %msg.i101.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %cmp.i109.i = icmp slt i32 %call.i108.i, 0
  br i1 %cmp.i109.i, label %ov5640_write_reg.exit114.i, label %if.end30.i

ov5640_write_reg.exit114.i:                       ; preds = %if.end25.i202
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i110.i = getelementptr inbounds %struct.i2c_client, ptr %271, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i110.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 14865, i32 noundef %191) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i102.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i101.i) #7
  br label %cleanup

if.end30.i:                                       ; preds = %if.end25.i202
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i102.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i101.i) #7
  %conv31.i = trunc i32 %shr.i to i8
  %288 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %290 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 262143, ptr %290, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %292 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %293 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %294 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 58, ptr %buf.i, align 1
  %295 = ptrtoint ptr %292 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 31, ptr %292, align 1
  %296 = ptrtoint ptr %293 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv31.i, ptr %293, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %289, i32 0, i32 1
  %297 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %addr.i, align 2
  %299 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %298, ptr %msg.i, align 4
  %300 = ptrtoint ptr %289 to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %289, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %302 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %301, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %303 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %buf.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %289, i32 0, i32 3
  %304 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %adapter.i, align 8
  %call.i255 = call i32 @i2c_transfer(ptr noundef %305, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %cmp.i256 = icmp slt i32 %call.i255, 0
  br i1 %cmp.i256, label %ov5640_set_ae_target.exit.thread265, label %if.end73

ov5640_set_ae_target.exit.thread265:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i257 = getelementptr inbounds %struct.i2c_client, ptr %289, i32 0, i32 4
  %conv11.i = and i32 %shr.i, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i257, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 14879, i32 noundef %conv11.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end73:                                         ; preds = %if.end30.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %call74 = call fastcc i32 @ov5640_get_light_freq(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end73.cleanup_crit_edge, label %if.end78

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  %call.i206 = call fastcc i32 @ov5640_get_sysclk(ptr noundef %sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %cmp.i207 = icmp slt i32 %call.i206, 0
  br i1 %cmp.i207, label %if.end78.cleanup_crit_edge, label %if.end.i209

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i209:                                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %cmp1.i208 = icmp eq i32 %call.i206, 0
  br i1 %cmp1.i208, label %if.end.i209.cleanup_crit_edge, label %if.end3.i

if.end.i209.cleanup_crit_edge:                    ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i209
  %prev_sysclk.i210 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 19
  %306 = ptrtoint ptr %prev_sysclk.i210 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %call.i206, ptr %prev_sysclk.i210, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hts.i.i205) #7
  %307 = ptrtoint ptr %hts.i.i205 to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 -1, ptr %hts.i.i205, align 2, !annotation !178
  %call.i.i211 = call fastcc i32 @ov5640_read_reg16(ptr noundef %sensor, i16 noundef zeroext 14348, ptr noundef nonnull %hts.i.i205) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i211)
  %tobool.not.i.i212 = icmp eq i32 %call.i.i211, 0
  br i1 %tobool.not.i.i212, label %if.end7.i215, label %ov5640_get_hts.exit.i213

ov5640_get_hts.exit.i213:                         ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hts.i.i205) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i211)
  %cmp5.i = icmp slt i32 %call.i.i211, 0
  br i1 %cmp5.i, label %ov5640_get_hts.exit.i213.cleanup_crit_edge, label %ov5640_get_hts.exit.i213.if.end10.i217_crit_edge

ov5640_get_hts.exit.i213.if.end10.i217_crit_edge: ; preds = %ov5640_get_hts.exit.i213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i217

ov5640_get_hts.exit.i213.cleanup_crit_edge:       ; preds = %ov5640_get_hts.exit.i213
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i215:                                     ; preds = %if.end3.i
  %308 = ptrtoint ptr %hts.i.i205 to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %hts.i.i205, align 2
  %conv.i.i214 = zext i16 %309 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hts.i.i205) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %309)
  %cmp8.i = icmp eq i16 %309, 0
  br i1 %cmp8.i, label %if.end7.i215.cleanup_crit_edge, label %if.end7.i215.if.end10.i217_crit_edge

if.end7.i215.if.end10.i217_crit_edge:             ; preds = %if.end7.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i217

if.end7.i215.cleanup_crit_edge:                   ; preds = %if.end7.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.i217:                                    ; preds = %if.end7.i215.if.end10.i217_crit_edge, %ov5640_get_hts.exit.i213.if.end10.i217_crit_edge
  %retval.0.i9295.i = phi i32 [ %conv.i.i214, %if.end7.i215.if.end10.i217_crit_edge ], [ %call.i.i211, %ov5640_get_hts.exit.i213.if.end10.i217_crit_edge ]
  %prev_hts.i216 = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 20
  %310 = ptrtoint ptr %prev_hts.i216 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %retval.0.i9295.i, ptr %prev_hts.i216, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vts.i.i204) #7
  %311 = ptrtoint ptr %vts.i.i204 to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 -1, ptr %vts.i.i204, align 2, !annotation !178
  %call.i85.i = call fastcc i32 @ov5640_read_reg16(ptr noundef %sensor, i16 noundef zeroext 14350, ptr noundef nonnull %vts.i.i204) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool.not.i86.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool.not.i86.i, label %ov5640_get_vts.exit.thread.i218, label %ov5640_get_vts.exit.i219

ov5640_get_vts.exit.thread.i218:                  ; preds = %if.end10.i217
  call void @__sanitizer_cov_trace_pc() #9
  %312 = ptrtoint ptr %vts.i.i204 to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %vts.i.i204, align 2
  %conv.i87.i = zext i16 %313 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vts.i.i204) #7
  br label %if.end14.i225

ov5640_get_vts.exit.i219:                         ; preds = %if.end10.i217
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vts.i.i204) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %cmp12.i = icmp slt i32 %call.i85.i, 0
  br i1 %cmp12.i, label %ov5640_get_vts.exit.i219.cleanup_crit_edge, label %ov5640_get_vts.exit.i219.if.end14.i225_crit_edge

ov5640_get_vts.exit.i219.if.end14.i225_crit_edge: ; preds = %ov5640_get_vts.exit.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i225

ov5640_get_vts.exit.i219.cleanup_crit_edge:       ; preds = %ov5640_get_vts.exit.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.i225:                                    ; preds = %ov5640_get_vts.exit.i219.if.end14.i225_crit_edge, %ov5640_get_vts.exit.thread.i218
  %retval.0.i8998.i = phi i32 [ %conv.i87.i, %ov5640_get_vts.exit.thread.i218 ], [ %call.i85.i, %ov5640_get_vts.exit.i219.if.end14.i225_crit_edge ]
  %314 = ptrtoint ptr %prev_sysclk.i210 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %prev_sysclk.i210, align 4
  %mul.i220 = mul i32 %315, 100
  %316 = ptrtoint ptr %prev_hts.i216 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %prev_hts.i216, align 4
  %div.i221 = udiv i32 %mul.i220, %317
  %mul17.i = mul i32 %div.i221, 100
  %div18.i = udiv i32 %mul17.i, 120
  %conv.i222 = trunc i32 %div18.i to i16
  %call19.i223 = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 14858, i16 noundef zeroext %conv.i222) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i223)
  %tobool.not.i224 = icmp eq i32 %call19.i223, 0
  br i1 %tobool.not.i224, label %if.end21.i226, label %if.end14.i225.ov5640_set_bandingfilter.exit_crit_edge

if.end14.i225.ov5640_set_bandingfilter.exit_crit_edge: ; preds = %if.end14.i225
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_bandingfilter.exit

if.end21.i226:                                    ; preds = %if.end14.i225
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %mul17.i)
  %318 = icmp ult i32 %mul17.i, 120
  br i1 %318, label %if.end21.i226.cleanup_crit_edge, label %if.end24.i

if.end21.i226.cleanup_crit_edge:                  ; preds = %if.end21.i226
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.i:                                       ; preds = %if.end21.i226
  %sub.i227 = add nsw i32 %retval.0.i8998.i, -4
  %div25.i = udiv i32 %sub.i227, %div18.i
  %conv26.i228 = trunc i32 %div25.i to i8
  %call27.i = call fastcc i32 @ov5640_write_reg(ptr noundef %sensor, i16 noundef zeroext 14861, i8 noundef zeroext %conv26.i228) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i230, label %if.end24.i.ov5640_set_bandingfilter.exit_crit_edge

if.end24.i.ov5640_set_bandingfilter.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_bandingfilter.exit

if.end30.i230:                                    ; preds = %if.end24.i
  %319 = ptrtoint ptr %prev_sysclk.i210 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %prev_sysclk.i210, align 4
  %mul32.i = mul i32 %320, 100
  %321 = ptrtoint ptr %prev_hts.i216 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %prev_hts.i216, align 4
  %div34.i = udiv i32 %mul32.i, %322
  %conv35.i = trunc i32 %div34.i to i16
  %call36.i229 = call fastcc i32 @ov5640_write_reg16(ptr noundef %sensor, i16 noundef zeroext 14856, i16 noundef zeroext %conv35.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i229)
  %tobool37.not.i = icmp eq i32 %call36.i229, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end30.i230.ov5640_set_bandingfilter.exit_crit_edge

if.end30.i230.ov5640_set_bandingfilter.exit_crit_edge: ; preds = %if.end30.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_bandingfilter.exit

if.end39.i:                                       ; preds = %if.end30.i230
  call void @__sanitizer_cov_trace_cmp4(i32 %322, i32 %mul32.i)
  %tobool40.not.i = icmp ugt i32 %322, %mul32.i
  br i1 %tobool40.not.i, label %if.end39.i.cleanup_crit_edge, label %if.end42.i

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %div44.i = udiv i32 %sub.i227, %div34.i
  %conv45.i = trunc i32 %div44.i to i8
  %call46.i = call fastcc i32 @ov5640_write_reg(ptr noundef %sensor, i16 noundef zeroext 14862, i8 noundef zeroext %conv45.i) #7
  br label %ov5640_set_bandingfilter.exit

ov5640_set_bandingfilter.exit:                    ; preds = %if.end42.i, %if.end30.i230.ov5640_set_bandingfilter.exit_crit_edge, %if.end24.i.ov5640_set_bandingfilter.exit_crit_edge, %if.end14.i225.ov5640_set_bandingfilter.exit_crit_edge
  %retval.0.i231 = phi i32 [ %call46.i, %if.end42.i ], [ %call19.i223, %if.end14.i225.ov5640_set_bandingfilter.exit_crit_edge ], [ %call27.i, %if.end24.i.ov5640_set_bandingfilter.exit_crit_edge ], [ %call36.i229, %if.end30.i230.ov5640_set_bandingfilter.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i231)
  %cmp80 = icmp slt i32 %retval.0.i231, 0
  br i1 %cmp80, label %ov5640_set_bandingfilter.exit.cleanup_crit_edge, label %if.end83

ov5640_set_bandingfilter.exit.cleanup_crit_edge:  ; preds = %ov5640_set_bandingfilter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %ov5640_set_bandingfilter.exit
  %323 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %sensor, align 4
  %325 = load i32, ptr @virtual_channel, align 4
  %conv1.i = and i32 %325, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.i)
  %cmp.i234 = icmp ugt i32 %conv1.i, 3
  br i1 %cmp.i234, label %do.end.i, label %if.end.i245

do.end.i:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %324, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %conv1.i) #10
  br label %cleanup

if.end.i245:                                      ; preds = %if.end83
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i232) #7
  %326 = getelementptr inbounds i8, ptr %msg.i.i232, i32 4
  %327 = call ptr @memset(ptr %326, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i233) #7
  %328 = getelementptr inbounds [2 x i8], ptr %buf.i.i233, i32 0, i32 1
  %329 = ptrtoint ptr %buf.i.i233 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 72, ptr %buf.i.i233, align 1
  %330 = ptrtoint ptr %328 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 20, ptr %328, align 1
  %addr.i.i235 = getelementptr inbounds %struct.i2c_client, ptr %324, i32 0, i32 1
  %331 = ptrtoint ptr %addr.i.i235 to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %addr.i.i235, align 2
  %333 = ptrtoint ptr %msg.i.i232 to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 %332, ptr %msg.i.i232, align 4
  %334 = ptrtoint ptr %324 to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %324, align 8
  %flags8.i.i236 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i232, i32 0, i32 1
  %336 = ptrtoint ptr %flags8.i.i236 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %335, ptr %flags8.i.i236, align 2
  %buf10.i.i237 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i232, i32 0, i32 3
  %337 = ptrtoint ptr %buf10.i.i237 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %buf.i.i233, ptr %buf10.i.i237, align 4
  %338 = ptrtoint ptr %326 to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 2, ptr %326, align 4
  %339 = load i16, ptr %addr.i.i235, align 2
  %arrayidx13.i.i238 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i232, i32 0, i32 1
  %340 = ptrtoint ptr %arrayidx13.i.i238 to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 %339, ptr %arrayidx13.i.i238, align 4
  %341 = load i16, ptr %324, align 8
  %342 = or i16 %341, 1
  %flags19.i.i239 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i232, i32 0, i32 1, i32 1
  %343 = ptrtoint ptr %flags19.i.i239 to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %342, ptr %flags19.i.i239, align 2
  %buf22.i.i240 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i232, i32 0, i32 1, i32 3
  %344 = ptrtoint ptr %buf22.i.i240 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %buf.i.i233, ptr %buf22.i.i240, align 4
  %len24.i.i241 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i232, i32 0, i32 1, i32 2
  %345 = ptrtoint ptr %len24.i.i241 to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 1, ptr %len24.i.i241, align 4
  %adapter.i.i242 = getelementptr inbounds %struct.i2c_client, ptr %324, i32 0, i32 3
  %346 = ptrtoint ptr %adapter.i.i242 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %adapter.i.i242, align 8
  %call.i.i243 = call i32 @i2c_transfer(ptr noundef %347, ptr noundef nonnull %msg.i.i232, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i243)
  %cmp.i.i244 = icmp slt i32 %call.i.i243, 0
  br i1 %cmp.i.i244, label %ov5640_read_reg.exit.i247, label %if.end5.i

ov5640_read_reg.exit.i247:                        ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i246 = getelementptr inbounds %struct.i2c_client, ptr %324, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i246, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 18452) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i233) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i232) #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i245
  %348 = ptrtoint ptr %buf.i.i233 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %buf.i.i233, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i233) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i232) #7
  %350 = and i8 %349, 63
  %conv1.tr.i = trunc i32 %325 to i8
  %351 = shl i8 %conv1.tr.i, 6
  %conv10.i = or i8 %350, %351
  %352 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i20.i) #7
  %354 = getelementptr inbounds i8, ptr %msg.i20.i, i32 4
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 262143, ptr %354, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i21.i) #7
  %356 = getelementptr inbounds [3 x i8], ptr %buf.i21.i, i32 0, i32 1
  %357 = getelementptr inbounds [3 x i8], ptr %buf.i21.i, i32 0, i32 2
  %358 = ptrtoint ptr %buf.i21.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 72, ptr %buf.i21.i, align 1
  %359 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 20, ptr %356, align 1
  %360 = ptrtoint ptr %357 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %conv10.i, ptr %357, align 1
  %addr.i22.i = getelementptr inbounds %struct.i2c_client, ptr %353, i32 0, i32 1
  %361 = ptrtoint ptr %addr.i22.i to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %addr.i22.i, align 2
  %363 = ptrtoint ptr %msg.i20.i to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 %362, ptr %msg.i20.i, align 4
  %364 = ptrtoint ptr %353 to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %353, align 8
  %flags7.i.i248 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20.i, i32 0, i32 1
  %366 = ptrtoint ptr %flags7.i.i248 to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 %365, ptr %flags7.i.i248, align 2
  %buf8.i.i249 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20.i, i32 0, i32 3
  %367 = ptrtoint ptr %buf8.i.i249 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %buf.i21.i, ptr %buf8.i.i249, align 4
  %adapter.i24.i = getelementptr inbounds %struct.i2c_client, ptr %353, i32 0, i32 3
  %368 = ptrtoint ptr %adapter.i24.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %adapter.i24.i, align 8
  %call.i25.i = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %msg.i20.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp.i26.i = icmp slt i32 %call.i25.i, 0
  br i1 %cmp.i26.i, label %ov5640_set_virtual_channel.exit.thread272, label %if.end88

ov5640_set_virtual_channel.exit.thread272:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i27.i = getelementptr inbounds %struct.i2c_client, ptr %353, i32 0, i32 4
  %conv11.i.i250 = zext i8 %conv10.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i27.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 18452, i32 noundef %conv11.i.i250) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i21.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20.i) #7
  br label %cleanup

if.end88:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i21.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20.i) #7
  %pending_mode_change = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 24
  %370 = ptrtoint ptr %pending_mode_change to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 0, ptr %pending_mode_change, align 4
  %371 = ptrtoint ptr %last_mode to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %1, ptr %last_mode, align 4
  br label %cleanup

restore_auto_exp_gain:                            ; preds = %if.end49.restore_auto_exp_gain_crit_edge, %if.else47.restore_auto_exp_gain_crit_edge, %if.then142.i.restore_auto_exp_gain_crit_edge, %if.else125.i.restore_auto_exp_gain_crit_edge, %if.then119.i.restore_auto_exp_gain_crit_edge, %if.end70.i.restore_auto_exp_gain_crit_edge, %if.end65.i.restore_auto_exp_gain_crit_edge, %if.then61.i.restore_auto_exp_gain_crit_edge, %if.end47.i.restore_auto_exp_gain_crit_edge, %if.end44.i.restore_auto_exp_gain_crit_edge, %if.end40.i.restore_auto_exp_gain_crit_edge, %if.end37.i.restore_auto_exp_gain_crit_edge, %ov5640_get_hts.exit.i.restore_auto_exp_gain_crit_edge, %ov5640_get_vts.exit.i.restore_auto_exp_gain_crit_edge, %if.end25.i.restore_auto_exp_gain_crit_edge, %ov5640_set_night_mode.exit.thread305.i, %ov5640_set_night_mode.exit.thread.i, %ov5640_read_reg.exit.i, %ov5640_get_gain.exit.i.restore_auto_exp_gain_crit_edge, %ov5640_get_binning.exit.thread.i, %if.end.i170.restore_auto_exp_gain_crit_edge, %if.then45.restore_auto_exp_gain_crit_edge
  %ret.1262 = phi i32 [ %ret.1, %if.end49.restore_auto_exp_gain_crit_edge ], [ -22, %if.else47.restore_auto_exp_gain_crit_edge ], [ %call.i11.i.i, %ov5640_set_night_mode.exit.thread305.i ], [ %call.i.i275.i, %ov5640_set_night_mode.exit.thread.i ], [ %call.i.i.i, %ov5640_get_binning.exit.thread.i ], [ %call.i292.i, %if.then142.i.restore_auto_exp_gain_crit_edge ], [ -22, %if.else125.i.restore_auto_exp_gain_crit_edge ], [ -22, %if.then119.i.restore_auto_exp_gain_crit_edge ], [ -22, %if.end70.i.restore_auto_exp_gain_crit_edge ], [ -22, %if.end65.i.restore_auto_exp_gain_crit_edge ], [ %call62.i, %if.then61.i.restore_auto_exp_gain_crit_edge ], [ %call48.i, %if.end47.i.restore_auto_exp_gain_crit_edge ], [ -22, %if.end44.i.restore_auto_exp_gain_crit_edge ], [ %call41.i, %if.end40.i.restore_auto_exp_gain_crit_edge ], [ -22, %if.end37.i.restore_auto_exp_gain_crit_edge ], [ %call.i285.i, %ov5640_get_hts.exit.i.restore_auto_exp_gain_crit_edge ], [ %call.i281.i, %ov5640_get_vts.exit.i.restore_auto_exp_gain_crit_edge ], [ %call26.i, %if.end25.i.restore_auto_exp_gain_crit_edge ], [ %call.i262.i, %ov5640_read_reg.exit.i ], [ %call.i.i, %ov5640_get_gain.exit.i.restore_auto_exp_gain_crit_edge ], [ %call.i168, %if.end.i170.restore_auto_exp_gain_crit_edge ], [ -22, %if.then45.restore_auto_exp_gain_crit_edge ]
  br i1 %cmp5, label %if.then91, label %restore_auto_exp_gain.restore_auto_gain_crit_edge

restore_auto_exp_gain.restore_auto_gain_crit_edge: ; preds = %restore_auto_exp_gain
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_auto_gain

if.then91:                                        ; preds = %restore_auto_exp_gain
  call void @__sanitizer_cov_trace_pc() #9
  %call.i253 = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %restore_auto_gain

restore_auto_gain:                                ; preds = %if.then91, %restore_auto_exp_gain.restore_auto_gain_crit_edge, %if.then13.restore_auto_gain_crit_edge
  %ret.2 = phi i32 [ %call.i159, %if.then13.restore_auto_gain_crit_edge ], [ %ret.1262, %if.then91 ], [ %ret.1262, %restore_auto_exp_gain.restore_auto_gain_crit_edge ]
  br i1 %cmp, label %if.then95, label %restore_auto_gain.cleanup_crit_edge

restore_auto_gain.cleanup_crit_edge:              ; preds = %restore_auto_gain
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then95:                                        ; preds = %restore_auto_gain
  call void @__sanitizer_cov_trace_pc() #9
  %call.i254 = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %restore_auto_gain.cleanup_crit_edge, %if.end88, %ov5640_set_virtual_channel.exit.thread272, %ov5640_read_reg.exit.i247, %do.end.i, %ov5640_set_bandingfilter.exit.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.end21.i226.cleanup_crit_edge, %ov5640_get_vts.exit.i219.cleanup_crit_edge, %if.end7.i215.cleanup_crit_edge, %ov5640_get_hts.exit.i213.cleanup_crit_edge, %if.end.i209.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %ov5640_set_ae_target.exit.thread265, %ov5640_write_reg.exit114.i, %ov5640_write_reg.exit100.i, %ov5640_write_reg.exit86.i, %ov5640_write_reg.exit72.i, %ov5640_write_reg.exit.i, %ov5640_set_binning.exit.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end88 ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ %retval.0.i186, %ov5640_set_binning.exit.cleanup_crit_edge ], [ %call74, %if.end73.cleanup_crit_edge ], [ %retval.0.i231, %ov5640_set_bandingfilter.exit.cleanup_crit_edge ], [ %ret.2, %if.then95 ], [ %ret.2, %restore_auto_gain.cleanup_crit_edge ], [ %call.i255, %ov5640_set_ae_target.exit.thread265 ], [ %call.i25.i, %ov5640_set_virtual_channel.exit.thread272 ], [ %call.i108.i, %ov5640_write_reg.exit114.i ], [ %call.i94.i, %ov5640_write_reg.exit100.i ], [ %call.i80.i, %ov5640_write_reg.exit86.i ], [ %call.i66.i, %ov5640_write_reg.exit72.i ], [ %call.i.i197, %ov5640_write_reg.exit.i ], [ -22, %if.end39.i.cleanup_crit_edge ], [ -22, %if.end21.i226.cleanup_crit_edge ], [ %call.i85.i, %ov5640_get_vts.exit.i219.cleanup_crit_edge ], [ -22, %if.end7.i215.cleanup_crit_edge ], [ %call.i.i211, %ov5640_get_hts.exit.i213.cleanup_crit_edge ], [ -22, %if.end.i209.cleanup_crit_edge ], [ %call.i206, %if.end78.cleanup_crit_edge ], [ %call.i.i243, %ov5640_read_reg.exit.i247 ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_set_framefmt(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %format) unnamed_addr #2 align 64 {
entry:
  %msg.i47 = alloca %struct.i2c_msg, align 4
  %buf.i48 = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 8207, label %entry.sw.epilog_crit_edge
    i32 8198, label %entry.sw.epilog_crit_edge65
    i32 8209, label %entry.sw.bb1_crit_edge
    i32 8200, label %entry.sw.bb1_crit_edge66
    i32 4104, label %sw.bb2
    i32 4103, label %sw.bb3
    i32 16385, label %sw.bb4
    i32 12289, label %sw.bb5
    i32 12307, label %sw.bb6
    i32 12290, label %sw.bb7
    i32 12308, label %sw.bb8
  ]

entry.sw.bb1_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog_crit_edge65:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge66
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge65
  %is_jpeg.0.off0 = phi i1 [ false, %sw.bb8 ], [ false, %sw.bb7 ], [ false, %sw.bb6 ], [ false, %sw.bb5 ], [ true, %sw.bb4 ], [ false, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge65 ]
  %fmt.0 = phi i8 [ 3, %sw.bb8 ], [ 2, %sw.bb7 ], [ 1, %sw.bb6 ], [ 0, %sw.bb5 ], [ 48, %sw.bb4 ], [ 97, %sw.bb3 ], [ 111, %sw.bb2 ], [ 48, %sw.bb1 ], [ 63, %entry.sw.epilog_crit_edge ], [ 63, %entry.sw.epilog_crit_edge65 ]
  %mux.0 = phi i8 [ 3, %sw.bb8 ], [ 3, %sw.bb7 ], [ 3, %sw.bb6 ], [ 3, %sw.bb5 ], [ 0, %sw.bb4 ], [ 1, %sw.bb3 ], [ 1, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge65 ]
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 262143, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 67, ptr %buf.i, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %fmt.0, ptr %8, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.i, align 2
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msg.i, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %4, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5640_write_reg.exit, label %if.end

ov5640_write_reg.exit:                            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv11.i = zext i8 %fmt.0 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 17152, i32 noundef %conv11.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %21 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i47) #7
  %23 = getelementptr inbounds i8, ptr %msg.i47, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 262143, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i48) #7
  %25 = getelementptr inbounds [3 x i8], ptr %buf.i48, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i8], ptr %buf.i48, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i48 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 80, ptr %buf.i48, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 31, ptr %25, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %mux.0, ptr %26, align 1
  %addr.i49 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %addr.i49 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i49, align 2
  %32 = ptrtoint ptr %msg.i47 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msg.i47, align 4
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %22, align 8
  %flags7.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47, i32 0, i32 1
  %35 = ptrtoint ptr %flags7.i50 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %flags7.i50, align 2
  %buf8.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47, i32 0, i32 3
  %36 = ptrtoint ptr %buf8.i51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i48, ptr %buf8.i51, align 4
  %adapter.i53 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %37 = ptrtoint ptr %adapter.i53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i53, align 8
  %call.i54 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i47, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i55 = icmp slt i32 %call.i54, 0
  br i1 %cmp.i55, label %ov5640_write_reg.exit60, label %if.end12

ov5640_write_reg.exit60:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i56 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %conv11.i57 = zext i8 %mux.0 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i56, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 20511, i32 noundef %conv11.i57) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i48) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i48) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47) #7
  %conv = select i1 %is_jpeg.0.off0, i8 32, i8 0
  %call14 = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 14369, i8 noundef zeroext 32, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %conv21 = select i1 %is_jpeg.0.off0, i8 0, i8 28
  %call22 = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12290, i8 noundef zeroext 28, i8 noundef zeroext %conv21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %conv29 = select i1 %is_jpeg.0.off0, i8 40, i8 0
  %call30 = call fastcc i32 @ov5640_mod_reg(ptr noundef %sensor, i16 noundef zeroext 12294, i8 noundef zeroext 40, i8 noundef zeroext %conv29)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %ov5640_write_reg.exit60, %ov5640_write_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %ov5640_write_reg.exit ], [ %call.i54, %ov5640_write_reg.exit60 ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call22, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_write_reg(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %4 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = lshr i16 %reg, 8
  %conv1 = trunc i16 %6 to i8
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %buf, align 1
  %conv3 = trunc i16 %reg to i8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %val, ptr %5, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 2
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msg, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 8
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flags7, align 2
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %16 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %buf8, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3, ptr %len, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %reg to i32
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv11 = zext i8 %val to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %conv11) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_write_reg16(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg.i11 = alloca %struct.i2c_msg, align 4
  %buf.i12 = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %val, 8
  %conv1 = trunc i16 %0 to i8
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 262143, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %7 = lshr i16 %reg, 8
  %conv1.i = trunc i16 %7 to i8
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv3.i = trunc i16 %reg to i8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3.i, ptr %5, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1, ptr %6, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg.i, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %2, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5640_write_reg.exit, label %if.end

ov5640_write_reg.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %reg to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  %conv11.i = zext i16 %0 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %conv.i, i32 noundef %conv11.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %add = add i16 %reg, 1
  %conv5 = trunc i16 %val to i8
  %20 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i11) #7
  %22 = getelementptr inbounds i8, ptr %msg.i11, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262143, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i12) #7
  %24 = getelementptr inbounds [3 x i8], ptr %buf.i12, i32 0, i32 1
  %25 = getelementptr inbounds [3 x i8], ptr %buf.i12, i32 0, i32 2
  %26 = lshr i16 %add, 8
  %conv1.i13 = trunc i16 %26 to i8
  %27 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv1.i13, ptr %buf.i12, align 1
  %conv3.i14 = trunc i16 %add to i8
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv3.i14, ptr %24, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv5, ptr %25, align 1
  %addr.i15 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %addr.i15 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i15, align 2
  %32 = ptrtoint ptr %msg.i11 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msg.i11, align 4
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %21, align 8
  %flags7.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 1
  %35 = ptrtoint ptr %flags7.i16 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %flags7.i16, align 2
  %buf8.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 3
  %36 = ptrtoint ptr %buf8.i17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i12, ptr %buf8.i17, align 4
  %adapter.i19 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 3
  %37 = ptrtoint ptr %adapter.i19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i19, align 8
  %call.i20 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i11, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i21 = icmp slt i32 %call.i20, 0
  br i1 %cmp.i21, label %do.end.i25, label %if.end.ov5640_write_reg.exit27_crit_edge

if.end.ov5640_write_reg.exit27_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit27

do.end.i25:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i22 = zext i16 %add to i32
  %dev.i23 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %conv5.mask = and i16 %val, 255
  %conv11.i24 = zext i16 %conv5.mask to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i23, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %conv.i22, i32 noundef %conv11.i24) #10
  br label %ov5640_write_reg.exit27

ov5640_write_reg.exit27:                          ; preds = %do.end.i25, %if.end.ov5640_write_reg.exit27_crit_edge
  %retval.0.i26 = phi i32 [ %call.i20, %do.end.i25 ], [ 0, %if.end.ov5640_write_reg.exit27_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i12) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i11) #7
  br label %cleanup

cleanup:                                          ; preds = %ov5640_write_reg.exit27, %ov5640_write_reg.exit
  %retval.0 = phi i32 [ %retval.0.i26, %ov5640_write_reg.exit27 ], [ %call.i, %ov5640_write_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_read_reg(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msg = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %4 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %5 = lshr i16 %reg, 8
  %conv1 = trunc i16 %5 to i8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %buf, align 1
  %conv3 = trunc i16 %reg to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %4, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 2
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 8
  %flags8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %flags8, align 2
  %buf10 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buf10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %buf10, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %len, align 4
  %16 = load i16, ptr %addr, align 2
  %arrayidx13 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx13, align 4
  %18 = load i16, ptr %1, align 8
  %19 = or i16 %18, 1
  %flags19 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %flags19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %flags19, align 2
  %buf22 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf22, align 4
  %len24 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %len24 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len24, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %reg to i32
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf, align 1
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_get_light_freq(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %msg.i52 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i53 = alloca [2 x i8], align 1
  %msg.i34 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i35 = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 60, ptr %buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %4, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 8
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %flags8.i, align 2
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf10.i, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %2, align 4
  %15 = load i16, ptr %addr.i, align 2
  %arrayidx13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx13.i, align 4
  %17 = load i16, ptr %1, align 8
  %18 = or i16 %17, 1
  %flags19.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags19.i, align 2
  %buf22.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %buf22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i, ptr %buf22.i, align 4
  %len24.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %len24.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %len24.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5640_read_reg.exit, label %if.end

ov5640_read_reg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 15361) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool1.not = icmp sgt i8 %25, -1
  %26 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sensor, align 4
  br i1 %tobool1.not, label %if.else12, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i34) #7
  %28 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35) #7
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i35, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i35 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 60, ptr %buf.i35, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %30, align 1
  %addr.i36 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %33 = ptrtoint ptr %addr.i36 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.i36, align 2
  %35 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %msg.i34, align 4
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %27, align 8
  %flags8.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %38 = ptrtoint ptr %flags8.i37 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %flags8.i37, align 2
  %buf10.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %39 = ptrtoint ptr %buf10.i38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i35, ptr %buf10.i38, align 4
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2, ptr %28, align 4
  %41 = load i16, ptr %addr.i36, align 2
  %arrayidx13.i40 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i34, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx13.i40 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx13.i40, align 4
  %43 = load i16, ptr %27, align 8
  %44 = or i16 %43, 1
  %flags19.i41 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i34, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %flags19.i41 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %flags19.i41, align 2
  %buf22.i42 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i34, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %buf22.i42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf.i35, ptr %buf22.i42, align 4
  %len24.i43 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i34, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %len24.i43 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %len24.i43, align 4
  %adapter.i44 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %48 = ptrtoint ptr %adapter.i44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter.i44, align 8
  %call.i45 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i34, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %ov5640_read_reg.exit51, label %if.end6

ov5640_read_reg.exit51:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i47 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i47, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 15360) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i34) #7
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %buf.i35 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %buf.i35, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i34) #7
  %52 = and i8 %51, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool9.not = icmp eq i8 %52, 0
  %. = select i1 %tobool9.not, i32 60, i32 50
  br label %cleanup

if.else12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i52) #7
  %53 = getelementptr inbounds i8, ptr %msg.i52, i32 4
  %54 = call ptr @memset(ptr %53, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #7
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %56 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 60, ptr %buf.i53, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 12, ptr %55, align 1
  %addr.i54 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %58 = ptrtoint ptr %addr.i54 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %addr.i54, align 2
  %60 = ptrtoint ptr %msg.i52 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %msg.i52, align 4
  %61 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %27, align 8
  %flags8.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 1
  %63 = ptrtoint ptr %flags8.i55 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %flags8.i55, align 2
  %buf10.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 3
  %64 = ptrtoint ptr %buf10.i56 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i53, ptr %buf10.i56, align 4
  %65 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 2, ptr %53, align 4
  %66 = load i16, ptr %addr.i54, align 2
  %arrayidx13.i58 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i52, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx13.i58 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %arrayidx13.i58, align 4
  %68 = load i16, ptr %27, align 8
  %69 = or i16 %68, 1
  %flags19.i59 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i52, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %flags19.i59 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %flags19.i59, align 2
  %buf22.i60 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i52, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %buf22.i60 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i53, ptr %buf22.i60, align 4
  %len24.i61 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i52, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %len24.i61 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1, ptr %len24.i61, align 4
  %adapter.i62 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %73 = ptrtoint ptr %adapter.i62 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter.i62, align 8
  %call.i63 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i52, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i64 = icmp slt i32 %call.i63, 0
  br i1 %cmp.i64, label %ov5640_read_reg.exit69, label %if.end16

ov5640_read_reg.exit69:                           ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i65 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i65, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 15372) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i52) #7
  br label %cleanup

if.end16:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %buf.i53, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i52) #7
  %77 = and i8 %76, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool19.not = icmp eq i8 %77, 0
  %spec.select = select i1 %tobool19.not, i32 0, i32 50
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %ov5640_read_reg.exit69, %if.end6, %ov5640_read_reg.exit51, %ov5640_read_reg.exit
  %retval.0 = phi i32 [ %call.i, %ov5640_read_reg.exit ], [ %call.i45, %ov5640_read_reg.exit51 ], [ %call.i63, %ov5640_read_reg.exit69 ], [ %., %if.end6 ], [ %spec.select, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_get_exposure(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %msg.i42 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i43 = alloca [2 x i8], align 1
  %msg.i24 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i25 = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 53, ptr %buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %4, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 8
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %flags8.i, align 2
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf10.i, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %2, align 4
  %15 = load i16, ptr %addr.i, align 2
  %arrayidx13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx13.i, align 4
  %17 = load i16, ptr %1, align 8
  %18 = or i16 %17, 1
  %flags19.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags19.i, align 2
  %buf22.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %buf22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i, ptr %buf22.i, align 4
  %len24.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %len24.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %len24.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5640_read_reg.exit, label %if.end

ov5640_read_reg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 13568) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  %26 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i24) #7
  %28 = getelementptr inbounds i8, ptr %msg.i24, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i25) #7
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i25, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 53, ptr %buf.i25, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %30, align 1
  %addr.i26 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %33 = ptrtoint ptr %addr.i26 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.i26, align 2
  %35 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %msg.i24, align 4
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %27, align 8
  %flags8.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 1
  %38 = ptrtoint ptr %flags8.i27 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %flags8.i27, align 2
  %buf10.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 3
  %39 = ptrtoint ptr %buf10.i28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i25, ptr %buf10.i28, align 4
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2, ptr %28, align 4
  %41 = load i16, ptr %addr.i26, align 2
  %arrayidx13.i30 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i24, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx13.i30 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx13.i30, align 4
  %43 = load i16, ptr %27, align 8
  %44 = or i16 %43, 1
  %flags19.i31 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i24, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %flags19.i31 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %flags19.i31, align 2
  %buf22.i32 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i24, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %buf22.i32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf.i25, ptr %buf22.i32, align 4
  %len24.i33 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i24, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %len24.i33 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %len24.i33, align 4
  %adapter.i34 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %48 = ptrtoint ptr %adapter.i34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter.i34, align 8
  %call.i35 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i24, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i36 = icmp slt i32 %call.i35, 0
  br i1 %cmp.i36, label %ov5640_read_reg.exit41, label %if.end4

ov5640_read_reg.exit41:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i37 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i37, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 13569) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i25) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i24) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %50 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %buf.i25, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i25) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i24) #7
  %52 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i42) #7
  %54 = getelementptr inbounds i8, ptr %msg.i42, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i43) #7
  %56 = getelementptr inbounds [2 x i8], ptr %buf.i43, i32 0, i32 1
  %57 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 53, ptr %buf.i43, align 1
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %56, align 1
  %addr.i44 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 1
  %59 = ptrtoint ptr %addr.i44 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %addr.i44, align 2
  %61 = ptrtoint ptr %msg.i42 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %msg.i42, align 4
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %53, align 8
  %flags8.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 1
  %64 = ptrtoint ptr %flags8.i45 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %flags8.i45, align 2
  %buf10.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 3
  %65 = ptrtoint ptr %buf10.i46 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buf.i43, ptr %buf10.i46, align 4
  %66 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 2, ptr %54, align 4
  %67 = load i16, ptr %addr.i44, align 2
  %arrayidx13.i48 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i42, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx13.i48 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %arrayidx13.i48, align 4
  %69 = load i16, ptr %53, align 8
  %70 = or i16 %69, 1
  %flags19.i49 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i42, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %flags19.i49 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %flags19.i49, align 2
  %buf22.i50 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i42, i32 0, i32 1, i32 3
  %72 = ptrtoint ptr %buf22.i50 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buf.i43, ptr %buf22.i50, align 4
  %len24.i51 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i42, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %len24.i51 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %len24.i51, align 4
  %adapter.i52 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 3
  %74 = ptrtoint ptr %adapter.i52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter.i52, align 8
  %call.i53 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i42, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp.i54 = icmp slt i32 %call.i53, 0
  br i1 %cmp.i54, label %ov5640_read_reg.exit59, label %if.end10

ov5640_read_reg.exit59:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i55 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 13570) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i43) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i42) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %buf.i43, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i43) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i42) #7
  %78 = and i8 %25, 15
  %and = zext i8 %78 to i32
  %shl = shl nuw nsw i32 %and, 16
  %conv5 = zext i8 %51 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl6, %shl
  %conv11 = zext i8 %77 to i32
  %or12 = or i32 %or, %conv11
  %79 = lshr i32 %or12, 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %ov5640_read_reg.exit59, %ov5640_read_reg.exit41, %ov5640_read_reg.exit
  %retval.0 = phi i32 [ %79, %if.end10 ], [ %call.i, %ov5640_read_reg.exit ], [ %call.i35, %ov5640_read_reg.exit41 ], [ %call.i53, %ov5640_read_reg.exit59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_get_sysclk(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %msg.i129 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i130 = alloca [2 x i8], align 1
  %msg.i111 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i112 = alloca [2 x i8], align 1
  %msg.i93 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i94 = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %temp1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xclk_freq = getelementptr inbounds %struct.ov5640_dev, ptr %sensor, i32 0, i32 5
  %0 = ptrtoint ptr %xclk_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xclk_freq, align 4
  %div = udiv i32 %1, 10000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp1) #7
  %2 = ptrtoint ptr %temp1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %temp1, align 1, !annotation !178
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %7 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 48, ptr %buf.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 52, ptr %7, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr.i, align 2
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msg.i, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %4, align 8
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flags8.i, align 2
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf10.i, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %5, align 4
  %18 = load i16, ptr %addr.i, align 2
  %arrayidx13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx13.i, align 4
  %20 = load i16, ptr %4, align 8
  %21 = or i16 %20, 1
  %flags19.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %flags19.i, align 2
  %buf22.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %buf22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i, ptr %buf22.i, align 4
  %len24.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len24.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %len24.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5640_read_reg.exit, label %if.end

ov5640_read_reg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 12340) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  %29 = and i8 %28, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %29)
  %switch.selectcmp = icmp eq i8 %29, 10
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %switch.selectcmp91 = icmp eq i8 %29, 8
  %switch.select92 = select i1 %switch.selectcmp91, i32 4, i32 %switch.select
  %30 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i93) #7
  %32 = getelementptr inbounds i8, ptr %msg.i93, i32 4
  %33 = call ptr @memset(ptr %32, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i94) #7
  %34 = getelementptr inbounds [2 x i8], ptr %buf.i94, i32 0, i32 1
  %35 = ptrtoint ptr %buf.i94 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 48, ptr %buf.i94, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 53, ptr %34, align 1
  %addr.i95 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %addr.i95 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i95, align 2
  %39 = ptrtoint ptr %msg.i93 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %msg.i93, align 4
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %31, align 8
  %flags8.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 1
  %42 = ptrtoint ptr %flags8.i96 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %flags8.i96, align 2
  %buf10.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 3
  %43 = ptrtoint ptr %buf10.i97 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf.i94, ptr %buf10.i97, align 4
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %32, align 4
  %45 = load i16, ptr %addr.i95, align 2
  %arrayidx13.i99 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i93, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx13.i99 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx13.i99, align 4
  %47 = load i16, ptr %31, align 8
  %48 = or i16 %47, 1
  %flags19.i100 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i93, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %flags19.i100 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %flags19.i100, align 2
  %buf22.i101 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i93, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %buf22.i101 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf.i94, ptr %buf22.i101, align 4
  %len24.i102 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i93, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %len24.i102 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %len24.i102, align 4
  %adapter.i103 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 3
  %52 = ptrtoint ptr %adapter.i103 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i103, align 8
  %call.i104 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i93, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp.i105 = icmp slt i32 %call.i104, 0
  br i1 %cmp.i105, label %ov5640_read_reg.exit110, label %if.end14

ov5640_read_reg.exit110:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i106 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i106, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 12341) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i94) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i93) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %54 = ptrtoint ptr %buf.i94 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %buf.i94, align 1
  %56 = ptrtoint ptr %temp1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %temp1, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i94) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i93) #7
  %57 = lshr i8 %55, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %55)
  %cmp16 = icmp ult i8 %55, 16
  %narrow = select i1 %cmp16, i8 16, i8 %57
  %spec.store.select = zext i8 %narrow to i32
  %58 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i111) #7
  %60 = getelementptr inbounds i8, ptr %msg.i111, i32 4
  %61 = call ptr @memset(ptr %60, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i112) #7
  %62 = getelementptr inbounds [2 x i8], ptr %buf.i112, i32 0, i32 1
  %63 = ptrtoint ptr %buf.i112 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 48, ptr %buf.i112, align 1
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 54, ptr %62, align 1
  %addr.i113 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 1
  %65 = ptrtoint ptr %addr.i113 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %addr.i113, align 2
  %67 = ptrtoint ptr %msg.i111 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %msg.i111, align 4
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %59, align 8
  %flags8.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 0, i32 1
  %70 = ptrtoint ptr %flags8.i114 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %flags8.i114, align 2
  %buf10.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i111, i32 0, i32 3
  %71 = ptrtoint ptr %buf10.i115 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i112, ptr %buf10.i115, align 4
  %72 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2, ptr %60, align 4
  %73 = load i16, ptr %addr.i113, align 2
  %arrayidx13.i117 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i111, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx13.i117 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %arrayidx13.i117, align 4
  %75 = load i16, ptr %59, align 8
  %76 = or i16 %75, 1
  %flags19.i118 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i111, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %flags19.i118 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %flags19.i118, align 2
  %buf22.i119 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i111, i32 0, i32 1, i32 3
  %78 = ptrtoint ptr %buf22.i119 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %buf.i112, ptr %buf22.i119, align 4
  %len24.i120 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i111, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %len24.i120 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %len24.i120, align 4
  %adapter.i121 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 3
  %80 = ptrtoint ptr %adapter.i121 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter.i121, align 8
  %call.i122 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i111, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp.i123 = icmp slt i32 %call.i122, 0
  br i1 %cmp.i123, label %ov5640_read_reg.exit128, label %if.end23

ov5640_read_reg.exit128:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i124 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i124, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 12342) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i112) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i111) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %82 = ptrtoint ptr %buf.i112 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %buf.i112, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i112) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i111) #7
  %conv24 = zext i8 %83 to i32
  %84 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i129) #7
  %86 = getelementptr inbounds i8, ptr %msg.i129, i32 4
  %87 = call ptr @memset(ptr %86, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i130) #7
  %88 = getelementptr inbounds [2 x i8], ptr %buf.i130, i32 0, i32 1
  %89 = ptrtoint ptr %buf.i130 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 48, ptr %buf.i130, align 1
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 55, ptr %88, align 1
  %addr.i131 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 1
  %91 = ptrtoint ptr %addr.i131 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %addr.i131, align 2
  %93 = ptrtoint ptr %msg.i129 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %msg.i129, align 4
  %94 = ptrtoint ptr %85 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %85, align 8
  %flags8.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 1
  %96 = ptrtoint ptr %flags8.i132 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %flags8.i132, align 2
  %buf10.i133 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 3
  %97 = ptrtoint ptr %buf10.i133 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf.i130, ptr %buf10.i133, align 4
  %98 = ptrtoint ptr %86 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 2, ptr %86, align 4
  %99 = load i16, ptr %addr.i131, align 2
  %arrayidx13.i135 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i129, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx13.i135 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %arrayidx13.i135, align 4
  %101 = load i16, ptr %85, align 8
  %102 = or i16 %101, 1
  %flags19.i136 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i129, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %flags19.i136 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %flags19.i136, align 2
  %buf22.i137 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i129, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %buf22.i137 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %buf.i130, ptr %buf22.i137, align 4
  %len24.i138 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i129, i32 0, i32 1, i32 2
  %105 = ptrtoint ptr %len24.i138 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 1, ptr %len24.i138, align 4
  %adapter.i139 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 3
  %106 = ptrtoint ptr %adapter.i139 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adapter.i139, align 8
  %call.i140 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i129, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp.i141 = icmp slt i32 %call.i140, 0
  br i1 %cmp.i141, label %ov5640_read_reg.exit146, label %if.end28

ov5640_read_reg.exit146:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i142 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i142, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 12343) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i130) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i129) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %108 = ptrtoint ptr %buf.i130 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %buf.i130, align 1
  %110 = ptrtoint ptr %temp1 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %temp1, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i130) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i129) #7
  %conv29 = zext i8 %109 to i32
  %and30 = and i32 %conv29, 15
  %111 = lshr i32 %conv29, 4
  %and33 = and i32 %111, 1
  %add = add nuw nsw i32 %and33, 1
  %call34 = call fastcc i32 @ov5640_read_reg(ptr noundef %sensor, i16 noundef zeroext 12552, ptr noundef nonnull %temp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool41.not = icmp eq i32 %and30, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %narrow)
  %tobool43.not = icmp eq i8 %narrow, 0
  %or.cond = select i1 %tobool41.not, i1 true, i1 %tobool43.not
  br i1 %or.cond, label %if.end37.cleanup_crit_edge, label %if.end49

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %temp1 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %temp1, align 1
  %114 = and i8 %113, 3
  %idxprom = zext i8 %114 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__const.ov5640_get_sysclk.sclk_rdiv_map, i32 0, i32 %idxprom
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx, align 4
  %mul = mul nuw nsw i32 %div, %conv24
  %div50 = udiv i32 %mul, %and30
  %div51 = udiv i32 %div50, %spec.store.select
  %div52 = udiv i32 %div51, %add
  %mul53 = shl nuw nsw i32 %div52, 1
  %div54 = udiv i32 %mul53, %switch.select92
  %div55 = udiv i32 %div54, %116
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end37.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %ov5640_read_reg.exit146, %ov5640_read_reg.exit128, %ov5640_read_reg.exit110, %ov5640_read_reg.exit
  %retval.0 = phi i32 [ %div55, %if.end49 ], [ %call.i, %ov5640_read_reg.exit ], [ %call.i104, %ov5640_read_reg.exit110 ], [ %call.i122, %ov5640_read_reg.exit128 ], [ %call.i140, %ov5640_read_reg.exit146 ], [ %call34, %if.end28.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp1) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_set_exposure(ptr nocapture noundef readonly %sensor, i32 noundef %exposure) unnamed_addr #2 align 64 {
entry:
  %msg.i33 = alloca %struct.i2c_msg, align 4
  %buf.i34 = alloca [3 x i8], align 1
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %buf.i20 = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %exposure, 4
  %conv = trunc i32 %shl to i8
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 262143, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 53, ptr %buf.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %5, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5640_write_reg.exit, label %if.end

ov5640_write_reg.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv11.i = and i32 %shl, 240
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 13570, i32 noundef %conv11.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %shr = lshr i32 %shl, 8
  %conv2 = trunc i32 %shr to i8
  %18 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #7
  %20 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262143, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i20) #7
  %22 = getelementptr inbounds [3 x i8], ptr %buf.i20, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i20, i32 0, i32 2
  %24 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 53, ptr %buf.i20, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %22, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv2, ptr %23, align 1
  %addr.i21 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i21 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i21, align 2
  %29 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %msg.i19, align 4
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %19, align 8
  %flags7.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %32 = ptrtoint ptr %flags7.i22 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %flags7.i22, align 2
  %buf8.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %33 = ptrtoint ptr %buf8.i23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i20, ptr %buf8.i23, align 4
  %adapter.i25 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 3
  %34 = ptrtoint ptr %adapter.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i25, align 8
  %call.i26 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i19, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %ov5640_write_reg.exit32, label %if.end6

ov5640_write_reg.exit32:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i28 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %conv11.i29 = and i32 %shr, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i28, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 13569, i32 noundef %conv11.i29) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i20) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i20) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #7
  %shr7 = lshr i32 %shl, 16
  %36 = trunc i32 %shr7 to i8
  %conv9 = and i8 %36, 15
  %37 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i33) #7
  %39 = getelementptr inbounds i8, ptr %msg.i33, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 262143, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i34) #7
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i34, i32 0, i32 1
  %42 = getelementptr inbounds [3 x i8], ptr %buf.i34, i32 0, i32 2
  %43 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 53, ptr %buf.i34, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %41, align 1
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv9, ptr %42, align 1
  %addr.i35 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %addr.i35 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr.i35, align 2
  %48 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %msg.i33, align 4
  %49 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %38, align 8
  %flags7.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 1
  %51 = ptrtoint ptr %flags7.i36 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %flags7.i36, align 2
  %buf8.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 3
  %52 = ptrtoint ptr %buf8.i37 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buf.i34, ptr %buf8.i37, align 4
  %adapter.i39 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 3
  %53 = ptrtoint ptr %adapter.i39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter.i39, align 8
  %call.i40 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i33, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i41 = icmp slt i32 %call.i40, 0
  br i1 %cmp.i41, label %do.end.i44, label %if.end6.ov5640_write_reg.exit46_crit_edge

if.end6.ov5640_write_reg.exit46_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit46

do.end.i44:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i42 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %conv11.i43 = zext i8 %conv9 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i42, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 13568, i32 noundef %conv11.i43) #10
  br label %ov5640_write_reg.exit46

ov5640_write_reg.exit46:                          ; preds = %do.end.i44, %if.end6.ov5640_write_reg.exit46_crit_edge
  %retval.0.i45 = phi i32 [ %call.i40, %do.end.i44 ], [ 0, %if.end6.ov5640_write_reg.exit46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i34) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i33) #7
  br label %cleanup

cleanup:                                          ; preds = %ov5640_write_reg.exit46, %ov5640_write_reg.exit32, %ov5640_write_reg.exit
  %retval.0 = phi i32 [ %retval.0.i45, %ov5640_write_reg.exit46 ], [ %call.i, %ov5640_write_reg.exit ], [ %call.i26, %ov5640_write_reg.exit32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5640_read_reg16(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msg.i18 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i19 = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = lshr i16 %reg, 8
  %conv1.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv3.i = trunc i16 %reg to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %4, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 8
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %flags8.i, align 2
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf10.i, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %2, align 4
  %16 = load i16, ptr %addr.i, align 2
  %arrayidx13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx13.i, align 4
  %18 = load i16, ptr %1, align 8
  %19 = or i16 %18, 1
  %flags19.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %flags19.i, align 2
  %buf22.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %buf22.i, align 4
  %len24.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %len24.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len24.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ov5640_read_reg.exit, label %if.end

ov5640_read_reg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %reg to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  %add = add i16 %reg, 1
  %27 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sensor, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i18) #7
  %29 = getelementptr inbounds i8, ptr %msg.i18, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i19) #7
  %31 = getelementptr inbounds [2 x i8], ptr %buf.i19, i32 0, i32 1
  %32 = lshr i16 %add, 8
  %conv1.i20 = trunc i16 %32 to i8
  %33 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv1.i20, ptr %buf.i19, align 1
  %conv3.i21 = trunc i16 %add to i8
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv3.i21, ptr %31, align 1
  %addr.i22 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %35 = ptrtoint ptr %addr.i22 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i22, align 2
  %37 = ptrtoint ptr %msg.i18 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msg.i18, align 4
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %28, align 8
  %flags8.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 1
  %40 = ptrtoint ptr %flags8.i23 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %flags8.i23, align 2
  %buf10.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 3
  %41 = ptrtoint ptr %buf10.i24 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i19, ptr %buf10.i24, align 4
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %29, align 4
  %43 = load i16, ptr %addr.i22, align 2
  %arrayidx13.i26 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i18, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx13.i26 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx13.i26, align 4
  %45 = load i16, ptr %28, align 8
  %46 = or i16 %45, 1
  %flags19.i27 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i18, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %flags19.i27 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %flags19.i27, align 2
  %buf22.i28 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i18, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %buf22.i28 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i19, ptr %buf22.i28, align 4
  %len24.i29 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i18, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %len24.i29 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %len24.i29, align 4
  %adapter.i30 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %50 = ptrtoint ptr %adapter.i30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i30, align 8
  %call.i31 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i18, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp.i32, label %ov5640_read_reg.exit38, label %if.end5

ov5640_read_reg.exit38:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i33 = zext i16 %add to i32
  %dev.i34 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i34, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv.i33) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i19) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i18) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %buf.i19, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i19) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i18) #7
  %conv7 = zext i8 %26 to i16
  %shl = shl nuw i16 %conv7, 8
  %conv9 = zext i8 %53 to i16
  %or = or i16 %shl, %conv9
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %or, ptr %val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %ov5640_read_reg.exit38, %ov5640_read_reg.exit
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i, %ov5640_read_reg.exit ], [ %call.i31, %ov5640_read_reg.exit38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %msg.i.i58 = alloca %struct.i2c_msg, align 4
  %buf.i.i59 = alloca [3 x i8], align 1
  %msg.i10.i = alloca %struct.i2c_msg, align 4
  %buf.i11.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %streaming = getelementptr i8, ptr %sd, i32 785
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1 = icmp ne i32 %enable, 0
  %lnot = xor i1 %tobool1, true
  %2 = zext i1 %lnot to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %if.then, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then:                                          ; preds = %entry
  br i1 %tobool1, label %land.lhs.true, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then
  %pending_mode_change = getelementptr i8, ptr %sd, i32 784
  %3 = ptrtoint ptr %pending_mode_change to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pending_mode_change, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %land.lhs.true.land.lhs.true12_crit_edge, label %if.then6

land.lhs.true.land.lhs.true12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true12

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call fastcc i32 @ov5640_set_mode(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.land.lhs.true12_crit_edge, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then6.land.lhs.true12_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.then6.land.lhs.true12_crit_edge, %land.lhs.true.land.lhs.true12_crit_edge
  %pending_fmt_change = getelementptr i8, ptr %sd, i32 492
  %5 = ptrtoint ptr %pending_fmt_change to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pending_fmt_change, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end21_crit_edge, label %if.then15

land.lhs.true12.if.end21_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then15:                                        ; preds = %land.lhs.true12
  %fmt = getelementptr i8, ptr %sd, i32 444
  %call16 = tail call fastcc i32 @ov5640_set_framefmt(ptr noundef %add.ptr.i, ptr noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.out_crit_edge

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pending_fmt_change to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pending_fmt_change, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %land.lhs.true12.if.end21_crit_edge, %if.then.if.end21_crit_edge
  %bus_type = getelementptr i8, ptr %sd, i32 240
  %8 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp22 = icmp eq i32 %9, 5
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  %conv.i = select i1 %tobool1, i8 69, i8 64
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 262143, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %14 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %15 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 48, ptr %buf.i.i, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 14, ptr %14, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %15, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i.i, align 2
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %msg.i.i, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %11, align 8
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %flags7.i.i, align 2
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i.i, ptr %buf8.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end29.thread, label %if.end.i

if.end29.thread:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %conv11.i.i = zext i8 %conv.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12302, i32 noundef %conv11.i.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %out

if.end.i:                                         ; preds = %if.then24
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %conv5.i = select i1 %tobool1, i8 0, i8 15
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i) #7
  %30 = getelementptr inbounds i8, ptr %msg.i10.i, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 262143, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i11.i) #7
  %32 = getelementptr inbounds [3 x i8], ptr %buf.i11.i, i32 0, i32 1
  %33 = getelementptr inbounds [3 x i8], ptr %buf.i11.i, i32 0, i32 2
  %34 = ptrtoint ptr %buf.i11.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 66, ptr %buf.i11.i, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %32, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv5.i, ptr %33, align 1
  %addr.i12.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %addr.i12.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i12.i, align 2
  %39 = ptrtoint ptr %msg.i10.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %msg.i10.i, align 4
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %29, align 8
  %flags7.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 1
  %42 = ptrtoint ptr %flags7.i13.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %flags7.i13.i, align 2
  %buf8.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 3
  %43 = ptrtoint ptr %buf8.i14.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf.i11.i, ptr %buf8.i14.i, align 4
  %adapter.i16.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %44 = ptrtoint ptr %adapter.i16.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i16.i, align 8
  %call.i17.i = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i10.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i18.i = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i18.i, label %do.end.i21.i, label %if.end.i.ov5640_write_reg.exit23.i_crit_edge

if.end.i.ov5640_write_reg.exit23.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit23.i

do.end.i21.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i19.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %conv11.i20.i = zext i8 %conv5.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i19.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 16898, i32 noundef %conv11.i20.i) #10
  br label %ov5640_write_reg.exit23.i

ov5640_write_reg.exit23.i:                        ; preds = %do.end.i21.i, %if.end.i.ov5640_write_reg.exit23.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i17.i, %do.end.i21.i ], [ 0, %if.end.i.ov5640_write_reg.exit23.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i11.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i) #7
  br label %if.end29

if.else:                                          ; preds = %if.end21
  %conv.i60 = select i1 %tobool1, i8 2, i8 66
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i58) #7
  %48 = getelementptr inbounds i8, ptr %msg.i.i58, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 262143, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i59) #7
  %50 = getelementptr inbounds [3 x i8], ptr %buf.i.i59, i32 0, i32 1
  %51 = getelementptr inbounds [3 x i8], ptr %buf.i.i59, i32 0, i32 2
  %52 = ptrtoint ptr %buf.i.i59 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 48, ptr %buf.i.i59, align 1
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %50, align 1
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i60, ptr %51, align 1
  %addr.i.i61 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 1
  %55 = ptrtoint ptr %addr.i.i61 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr.i.i61, align 2
  %57 = ptrtoint ptr %msg.i.i58 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %msg.i.i58, align 4
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %47, align 8
  %flags7.i.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i58, i32 0, i32 1
  %60 = ptrtoint ptr %flags7.i.i62 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %flags7.i.i62, align 2
  %buf8.i.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i58, i32 0, i32 3
  %61 = ptrtoint ptr %buf8.i.i63 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf.i.i59, ptr %buf8.i.i63, align 4
  %adapter.i.i64 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 3
  %62 = ptrtoint ptr %adapter.i.i64 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adapter.i.i64, align 8
  %call.i.i65 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i.i58, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %cmp.i.i66 = icmp slt i32 %call.i.i65, 0
  br i1 %cmp.i.i66, label %do.end.i.i, label %if.else.ov5640_set_stream_dvp.exit_crit_edge

if.else.ov5640_set_stream_dvp.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_stream_dvp.exit

do.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i67 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %conv11.i.i68 = zext i8 %conv.i60 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i67, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 12296, i32 noundef %conv11.i.i68) #10
  br label %ov5640_set_stream_dvp.exit

ov5640_set_stream_dvp.exit:                       ; preds = %do.end.i.i, %if.else.ov5640_set_stream_dvp.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i65, %do.end.i.i ], [ 0, %if.else.ov5640_set_stream_dvp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i59) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i58) #7
  br label %if.end29

if.end29:                                         ; preds = %ov5640_set_stream_dvp.exit, %ov5640_write_reg.exit23.i
  %ret.0 = phi i32 [ %retval.0.i.i, %ov5640_set_stream_dvp.exit ], [ %retval.0.i22.i, %ov5640_write_reg.exit23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool30.not = icmp eq i32 %ret.0, 0
  br i1 %tobool30.not, label %if.then31, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %tobool1 to i8
  %64 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %frombool, ptr %streaming, align 1
  br label %out

out:                                              ; preds = %if.then31, %if.end29.out_crit_edge, %if.end29.thread, %if.then15.out_crit_edge, %if.then6.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %call7, %if.then6.out_crit_edge ], [ %call16, %if.then15.out_crit_edge ], [ %ret.0, %if.end29.out_crit_edge ], [ 0, %if.then31 ], [ 0, %entry.out_crit_edge ], [ %call.i.i, %if.end29.thread ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_g_frame_interval(ptr noundef %sd, ptr nocapture noundef writeonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %frame_interval = getelementptr i8, ptr %sd, i32 508
  %0 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %frame_interval, align 4
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_s_frame_interval(ptr noundef %sd, ptr nocapture noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %streaming = getelementptr i8, ptr %sd, i32 785
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end2:                                          ; preds = %if.end
  %current_mode = getelementptr i8, ptr %sd, i32 496
  %4 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_mode, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %hact = getelementptr inbounds %struct.ov5640_mode_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hact to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hact, align 4
  %vact = getelementptr inbounds %struct.ov5640_mode_info, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %vact to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vact, align 4
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %denominator.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 60, ptr %denominator.i, align 4
  %13 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %interval, align 4
  br label %find_mode.i

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %denominator.i, align 4
  %div1.i = lshr i32 %11, 1
  %add.i = add i32 %15, %div1.i
  %div4.i = udiv i32 %add.i, %11
  %16 = tail call i32 @llvm.umax.i32(i32 %div4.i, i32 15) #7
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 60) #7
  %sub.1.i = sub nsw i32 30, %17
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 true) #7
  %sub23.1.neg.i = add nsw i32 %17, -15
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub23.1.neg.i)
  %cmp31.1.i = icmp ult i32 %18, %sub23.1.neg.i
  %best_fps.1.1.i = select i1 %cmp31.1.i, i32 30, i32 15
  %rate.1.1.i = zext i1 %cmp31.1.i to i32
  %sub.2.i = sub nuw nsw i32 60, %17
  %sub23.2.i = sub nsw i32 %best_fps.1.1.i, %17
  %19 = tail call i32 @llvm.abs.i32(i32 %sub23.2.i, i1 true) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i, i32 %19)
  %cmp31.2.i = icmp ult i32 %sub.2.i, %19
  %best_fps.1.2.i = select i1 %cmp31.2.i, i32 60, i32 %best_fps.1.1.i
  %rate.1.2.i = select i1 %cmp31.2.i, i32 2, i32 %rate.1.1.i
  %20 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %interval, align 4
  %21 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %best_fps.1.2.i, ptr %denominator.i, align 4
  br label %find_mode.i

find_mode.i:                                      ; preds = %if.end.i, %if.then.i
  %rate.2.i = phi i32 [ 2, %if.then.i ], [ %rate.1.2.i, %if.end.i ]
  %call.i.i = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov5640_mode_data, i32 noundef 10, i32 noundef 36, i32 noundef 8, i32 noundef 16, i32 noundef %7, i32 noundef %9) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %find_mode.i.if.then5_crit_edge, label %lor.lhs.false.i.i

find_mode.i.if.then5_crit_edge:                   ; preds = %find_mode.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

lor.lhs.false.i.i:                                ; preds = %find_mode.i
  %hact.i.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %hact.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hact.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %7)
  %cmp.not.i.i = icmp eq i32 %23, %7
  br i1 %cmp.not.i.i, label %lor.lhs.false2.i.i, label %lor.lhs.false.i.i.if.then5_crit_edge

lor.lhs.false.i.i.if.then5_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %vact.i.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %vact.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vact.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %9)
  %cmp3.not.i.i = icmp eq i32 %25, %9
  br i1 %cmp3.not.i.i, label %if.end.i.i, label %lor.lhs.false2.i.i.if.then5_crit_edge

lor.lhs.false2.i.i.if.then5_crit_edge:            ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.i.i:                                       ; preds = %lor.lhs.false2.i.i
  %arrayidx.i.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %rate.2.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %max_fps.i.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %max_fps.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_fps.i.i, align 4
  %arrayidx4.i.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp5.i.i = icmp sgt i32 %27, %31
  br i1 %cmp5.i.i, label %if.end.i.i.if.then5_crit_edge, label %if.end7

if.end.i.i.if.then5_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %if.end.i.i.if.then5_crit_edge, %lor.lhs.false2.i.i.if.then5_crit_edge, %lor.lhs.false.i.i.if.then5_crit_edge, %find_mode.i.if.then5_crit_edge
  %frame_interval = getelementptr i8, ptr %sd, i32 508
  %32 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %frame_interval, align 4
  %34 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %interval, align 4
  br label %out

if.end7:                                          ; preds = %if.end.i.i
  %35 = ptrtoint ptr %hact to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hact, align 4
  %37 = ptrtoint ptr %vact to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vact, align 4
  %call.i = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov5640_mode_data, i32 noundef 10, i32 noundef 36, i32 noundef 8, i32 noundef 16, i32 noundef %36, i32 noundef %38) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.out_crit_edge, label %lor.lhs.false.i

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end7
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %max_fps.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %max_fps.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_fps.i, align 4
  %arrayidx4.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %44)
  %cmp5.i = icmp sgt i32 %40, %44
  br i1 %cmp5.i, label %lor.lhs.false.i.out_crit_edge, label %if.end13

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %lor.lhs.false.i
  %45 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %current_mode, align 4
  %cmp15.not = icmp eq ptr %call.i, %46
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end13.if.then17_crit_edge

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end13
  %current_fr = getelementptr i8, ptr %sd, i32 504
  %47 = ptrtoint ptr %current_fr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %current_fr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.2.i, i32 %48)
  %cmp16.not = icmp eq i32 %rate.2.i, %48
  br i1 %cmp16.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end13.if.then17_crit_edge
  %current_fr18 = getelementptr i8, ptr %sd, i32 504
  %49 = ptrtoint ptr %current_fr18 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %rate.2.i, ptr %current_fr18, align 4
  %frame_interval19 = getelementptr i8, ptr %sd, i32 508
  %50 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %interval, align 4
  %52 = ptrtoint ptr %frame_interval19 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %frame_interval19, align 4
  %53 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %current_mode, align 4
  %pending_mode_change = getelementptr i8, ptr %sd, i32 784
  %54 = ptrtoint ptr %pending_mode_change to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %pending_mode_change, align 4
  %pixel_rate = getelementptr i8, ptr %sd, i32 700
  %55 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pixel_rate, align 4
  %vtot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i, i32 0, i32 5
  %57 = ptrtoint ptr %vtot.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vtot.i, align 4
  %htot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i, i32 0, i32 3
  %59 = ptrtoint ptr %htot.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %htot.i, align 4
  %mul.i = mul i32 %60, %58
  %conv.i = zext i32 %mul.i to i64
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i, align 4
  %conv2.i = sext i32 %62 to i64
  %mul3.i = mul nsw i64 %conv2.i, %conv.i
  %call23 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %56, i64 noundef %mul3.i) #7
  br label %out

out:                                              ; preds = %if.then17, %lor.lhs.false.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.end7.out_crit_edge, %if.then5, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then17 ], [ 0, %lor.lhs.false.out_crit_edge ], [ -16, %if.end.out_crit_edge ], [ -22, %if.end7.out_crit_edge ], [ -22, %lor.lhs.false.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5640_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp1 = icmp ugt i32 %3, 10
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [11 x %struct.ov5640_pixfmt], ptr @ov5640_formats, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code6 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code6, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5640_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp1 = icmp ugt i32 %3, 9
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hact = getelementptr [10 x %struct.ov5640_mode_info], ptr @ov5640_mode_data, i32 0, i32 %3, i32 2
  %4 = ptrtoint ptr %hact to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hact, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %7 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %max_width, align 4
  %vact = getelementptr [10 x %struct.ov5640_mode_info], ptr @ov5640_mode_data, i32 0, i32 %3, i32 4
  %8 = ptrtoint ptr %vact to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vact, align 4
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
define internal i32 @ov5640_enum_frame_interval(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp ugt i32 %3, 2
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %find_mode.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

find_mode.i:                                      ; preds = %if.end
  %arrayidx = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %5, i32 15) #7
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 60) #7
  %sub.1.i = sub nsw i32 30, %11
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 true) #7
  %sub23.1.neg.i = add nsw i32 %11, -15
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub23.1.neg.i)
  %cmp31.1.i = icmp ult i32 %12, %sub23.1.neg.i
  %best_fps.1.1.i = select i1 %cmp31.1.i, i32 30, i32 15
  %rate.1.1.i = zext i1 %cmp31.1.i to i32
  %sub.2.i = sub nuw nsw i32 60, %11
  %sub23.2.i = sub nsw i32 %best_fps.1.1.i, %11
  %13 = tail call i32 @llvm.abs.i32(i32 %sub23.2.i, i1 true) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i, i32 %13)
  %cmp31.2.i = icmp ult i32 %sub.2.i, %13
  %best_fps.1.2.i = select i1 %cmp31.2.i, i32 60, i32 %best_fps.1.1.i
  %rate.1.2.i = select i1 %cmp31.2.i, i32 2, i32 %rate.1.1.i
  %call.i.i = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov5640_mode_data, i32 noundef 10, i32 noundef 36, i32 noundef 8, i32 noundef 16, i32 noundef %7, i32 noundef %9) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %find_mode.i.cleanup_crit_edge, label %lor.lhs.false.i.i

find_mode.i.cleanup_crit_edge:                    ; preds = %find_mode.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %find_mode.i
  %hact.i.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %hact.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hact.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp.not.i.i = icmp eq i32 %15, %7
  br i1 %cmp.not.i.i, label %lor.lhs.false2.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %vact.i.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %vact.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vact.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp3.not.i.i = icmp eq i32 %17, %9
  br i1 %cmp3.not.i.i, label %if.end.i.i, label %lor.lhs.false2.i.i.cleanup_crit_edge

lor.lhs.false2.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false2.i.i
  %arrayidx.i.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %rate.1.2.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %max_fps.i.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %max_fps.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_fps.i.i, align 4
  %arrayidx4.i.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp5.i.i = icmp sgt i32 %19, %23
  br i1 %cmp5.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end8

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %tpf.sroa.8.0.insert.ext = zext i32 %best_fps.1.2.i to i64
  %tpf.sroa.0.0.insert.insert = or i64 %tpf.sroa.8.0.insert.ext, 4294967296
  %24 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %tpf.sroa.0.0.insert.insert, ptr %interval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false2.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %find_mode.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %find_mode.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %5, %conv.i
  br i1 %cmp.not.i, label %if.then2.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !181

if.then2.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then2.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %5, %if.then2.v4l2_subdev_get_try_format.exit_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fmt6 = getelementptr i8, ptr %sd, i32 444
  br label %if.end7

if.end7:                                          ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %fmt.0 = phi ptr [ %arrayidx.i, %v4l2_subdev_get_try_format.exit ], [ %fmt6, %if.else ]
  %format8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format8, ptr %fmt.0, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %streaming = getelementptr i8, ptr %sd, i32 785
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3:                                          ; preds = %if.end
  %current_fr = getelementptr i8, ptr %sd, i32 504
  %4 = ptrtoint ptr %current_fr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_fr, align 4
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format1, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  %call.i.i = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov5640_mode_data, i32 noundef 10, i32 noundef 36, i32 noundef 8, i32 noundef 16, i32 noundef %7, i32 noundef %9) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end3.out_crit_edge, label %lor.lhs.false.i.i

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.i.i:                                ; preds = %if.end3
  %arrayidx.i.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %max_fps.i.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %max_fps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_fps.i.i, align 4
  %arrayidx4.i.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp5.i.i = icmp sgt i32 %11, %15
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.out_crit_edge, label %if.end.i

lor.lhs.false.i.i.out_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %lor.lhs.false.i.i
  %hact.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %hact.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hact.i, align 4
  %18 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %format1, align 4
  %vact.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %call.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %vact.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vact.i, align 4
  %21 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height.i, align 4
  %code7.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %code7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code7.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %23, label %if.end.i.for.end.i_crit_edge [
    i32 12308, label %for.end.fold.split112.i
    i32 8198, label %for.end.fold.split.i
    i32 8207, label %for.end.fold.split104.i
    i32 8200, label %for.end.fold.split105.i
    i32 8209, label %for.end.fold.split106.i
    i32 4104, label %for.end.fold.split107.i
    i32 4103, label %for.end.fold.split108.i
    i32 12289, label %for.end.fold.split109.i
    i32 12307, label %for.end.fold.split110.i
    i32 12290, label %for.end.fold.split111.i
  ]

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split104.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split105.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split106.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split107.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split108.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split109.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split110.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split111.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.fold.split112.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split112.i, %for.end.fold.split111.i, %for.end.fold.split110.i, %for.end.fold.split109.i, %for.end.fold.split108.i, %for.end.fold.split107.i, %for.end.fold.split106.i, %for.end.fold.split105.i, %for.end.fold.split104.i, %for.end.fold.split.i, %if.end.i.for.end.i_crit_edge
  %cmp56.i = phi i16 [ 1, %for.end.fold.split.i ], [ 1, %for.end.fold.split104.i ], [ 1, %for.end.fold.split105.i ], [ 1, %for.end.fold.split106.i ], [ 1, %for.end.fold.split107.i ], [ 1, %for.end.fold.split108.i ], [ 1, %for.end.fold.split109.i ], [ 1, %for.end.fold.split110.i ], [ 1, %for.end.fold.split111.i ], [ 1, %for.end.fold.split112.i ], [ 2, %if.end.i.for.end.i_crit_edge ]
  %cmp11.i = phi i32 [ 1, %for.end.fold.split.i ], [ 2, %for.end.fold.split104.i ], [ 3, %for.end.fold.split105.i ], [ 4, %for.end.fold.split106.i ], [ 5, %for.end.fold.split107.i ], [ 6, %for.end.fold.split108.i ], [ 7, %for.end.fold.split109.i ], [ 8, %for.end.fold.split110.i ], [ 9, %for.end.fold.split111.i ], [ 10, %for.end.fold.split112.i ], [ 0, %if.end.i.for.end.i_crit_edge ]
  %arrayidx14.i = getelementptr [11 x %struct.ov5640_pixfmt], ptr @ov5640_formats, i32 0, i32 %cmp11.i
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14.i, align 4
  %27 = ptrtoint ptr %code7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %code7.i, align 4
  %colorspace.i = getelementptr [11 x %struct.ov5640_pixfmt], ptr @ov5640_formats, i32 0, i32 %cmp11.i, i32 1
  %28 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %colorspace.i, align 4
  %colorspace18.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %colorspace18.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %colorspace18.i, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %31, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %33 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %quantization.i, align 2
  %34 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %29, label %lor.rhs.i [
    i32 9, label %for.end.i.if.end7_crit_edge
    i32 2, label %cond.end65.fold.split.i
    i32 12, label %cond.end65.fold.split99.i
    i32 11, label %cond.end65.fold.split100.i
    i32 8, label %for.end.i.lor.end.i_crit_edge
  ]

for.end.i.lor.end.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

for.end.i.if.end7_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

lor.rhs.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %for.end.i.lor.end.i_crit_edge
  %35 = phi i16 [ %cmp56.i, %lor.rhs.i ], [ 2, %for.end.i.lor.end.i_crit_edge ]
  br label %if.end7

cond.end65.fold.split.i:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

cond.end65.fold.split99.i:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

cond.end65.fold.split100.i:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %cond.end65.fold.split100.i, %cond.end65.fold.split99.i, %cond.end65.fold.split.i, %lor.end.i, %for.end.i.if.end7_crit_edge
  %cond66.i = phi i16 [ 3, %for.end.i.if.end7_crit_edge ], [ %35, %lor.end.i ], [ 4, %cond.end65.fold.split.i ], [ 6, %cond.end65.fold.split99.i ], [ 5, %cond.end65.fold.split100.i ]
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %36 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %cond66.i, ptr %xfer_func.i, align 4
  %37 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp8 = icmp eq i32 %38, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %39 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp.not.i.not = icmp eq i16 %40, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then9.v4l2_subdev_get_try_format.exit_crit_edge, !prof !179

if.then9.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then9.v4l2_subdev_get_try_format.exit_crit_edge
  %41 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_state, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %fmt11 = getelementptr i8, ptr %sd, i32 444
  br label %if.end12

if.end12:                                         ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %fmt.0 = phi ptr [ %42, %v4l2_subdev_get_try_format.exit ], [ %fmt11, %if.else ]
  %43 = call ptr @memcpy(ptr %fmt.0, ptr %format1, i32 48)
  %current_mode = getelementptr i8, ptr %sd, i32 496
  %44 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %current_mode, align 4
  %cmp13.not = icmp eq ptr %call.i.i, %45
  br i1 %cmp13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i, ptr %current_mode, align 4
  %pending_mode_change = getelementptr i8, ptr %sd, i32 784
  %47 = ptrtoint ptr %pending_mode_change to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %pending_mode_change, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %48 = ptrtoint ptr %code7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %code7.i, align 4
  %code18 = getelementptr i8, ptr %sd, i32 452
  %50 = ptrtoint ptr %code18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %code18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp19.not = icmp eq i32 %49, %51
  br i1 %cmp19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %pending_fmt_change = getelementptr i8, ptr %sd, i32 492
  %52 = ptrtoint ptr %pending_fmt_change to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %pending_fmt_change, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %pixel_rate = getelementptr i8, ptr %sd, i32 700
  %53 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pixel_rate, align 4
  %55 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %current_mode, align 4
  %vtot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %vtot.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vtot.i, align 4
  %htot.i = getelementptr inbounds %struct.ov5640_mode_info, ptr %56, i32 0, i32 3
  %59 = ptrtoint ptr %htot.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %htot.i, align 4
  %mul.i = mul i32 %60, %58
  %conv.i48 = zext i32 %mul.i to i64
  %61 = ptrtoint ptr %current_fr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %current_fr, align 4
  %arrayidx.i = getelementptr [3 x i32], ptr @ov5640_framerates, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i, align 4
  %conv2.i = sext i32 %64 to i64
  %mul3.i = mul nsw i64 %conv2.i, %conv.i48
  %call23 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %54, i64 noundef %mul3.i) #7
  br label %out

out:                                              ; preds = %if.end21, %lor.lhs.false.i.i.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end21 ], [ -16, %if.end.out_crit_edge ], [ -22, %if.end3.out_crit_edge ], [ -22, %lor.lhs.false.i.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %gain.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -520
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963794, label %sw.bb
    i32 10094849, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gain.i) #7
  %5 = ptrtoint ptr %gain.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %gain.i, align 2, !annotation !178
  %call.i = call fastcc i32 @ov5640_read_reg16(ptr noundef %add.ptr.i, i16 noundef zeroext 13578, ptr noundef nonnull %gain.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ov5640_get_gain.exit.thread, label %ov5640_get_gain.exit

ov5640_get_gain.exit.thread:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %gain.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gain.i, align 2
  %8 = and i16 %7, 1023
  %and.i = zext i16 %8 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gain.i) #7
  br label %cleanup.sink.split

ov5640_get_gain.exit:                             ; preds = %sw.bb
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gain.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %ov5640_get_gain.exit.cleanup_crit_edge, label %ov5640_get_gain.exit.cleanup.sink.split_crit_edge

ov5640_get_gain.exit.cleanup.sink.split_crit_edge: ; preds = %ov5640_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

ov5640_get_gain.exit.cleanup_crit_edge:           ; preds = %ov5640_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @ov5640_get_exposure(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %sw.bb4.cleanup_crit_edge, label %sw.bb4.cleanup.sink.split_crit_edge

sw.bb4.cleanup.sink.split_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb4.cleanup.sink.split_crit_edge, %ov5640_get_gain.exit.cleanup.sink.split_crit_edge, %ov5640_get_gain.exit.thread
  %.sink = phi i32 [ 212, %ov5640_get_gain.exit.thread ], [ 212, %ov5640_get_gain.exit.cleanup.sink.split_crit_edge ], [ 192, %sw.bb4.cleanup.sink.split_crit_edge ]
  %retval.0.i24.sink = phi i32 [ %and.i, %ov5640_get_gain.exit.thread ], [ %call.i, %ov5640_get_gain.exit.cleanup.sink.split_crit_edge ], [ %call5, %sw.bb4.cleanup.sink.split_crit_edge ]
  %gain = getelementptr i8, ptr %1, i32 %.sink
  %9 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gain, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i24.sink, ptr %val3, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb4.cleanup_crit_edge, %ov5640_get_gain.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %ov5640_get_gain.exit.cleanup_crit_edge ], [ %call5, %sw.bb4.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5640_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %msg.i.i111 = alloca %struct.i2c_msg, align 4
  %buf.i.i112 = alloca [3 x i8], align 1
  %msg.i21.i = alloca %struct.i2c_msg, align 4
  %buf.i22.i = alloca [3 x i8], align 1
  %msg.i.i90 = alloca %struct.i2c_msg, align 4
  %buf.i.i91 = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  %vts.i.i = alloca i16, align 2
  %max_exp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -520
  %power_count = getelementptr i8, ptr %1, i32 -76
  %2 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963794, label %sw.bb
    i32 10094849, label %sw.bb3
    i32 9963788, label %sw.bb6
    i32 9963779, label %sw.bb9
    i32 9963777, label %sw.bb12
    i32 9963778, label %sw.bb15
    i32 10422531, label %sw.bb18
    i32 9963800, label %sw.bb21
    i32 9963796, label %sw.bb24
    i32 9963797, label %sw.bb27
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %9 = getelementptr i8, ptr %1, i32 208
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %is_new.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %is_new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i = load i32, ptr %is_new.i, align 4
  %13 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %conv.i.i = select i1 %tobool.not, i8 2, i8 0
  %call.i.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 13571, i8 noundef zeroext 2, i8 noundef zeroext %conv.i.i) #7
  %14 = or i32 %call.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %if.then.i.land.lhs.true.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.land.lhs.true.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end6.i:                                        ; preds = %sw.bb
  br i1 %tobool.not, label %if.end6.i.land.lhs.true.i_crit_edge, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i.land.lhs.true.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end6.i.land.lhs.true.i_crit_edge, %if.then.i.land.lhs.true.i_crit_edge
  %gain.i = getelementptr i8, ptr %1, i32 212
  %15 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gain.i, align 4
  %is_new8.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %is_new8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load9.i = load i32, ptr %is_new8.i, align 4
  %18 = and i32 %bf.load9.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not.i = icmp eq i32 %18, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then13.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %21 = trunc i32 %20 to i16
  %conv2.i.i = and i16 %21, 1023
  %call.i25.i = tail call fastcc i32 @ov5640_write_reg16(ptr noundef %add.ptr.i, i16 noundef zeroext 13578, i16 noundef zeroext %conv2.i.i) #7
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  %24 = getelementptr i8, ptr %1, i32 188
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %is_new.i53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %is_new.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i54 = load i32, ptr %is_new.i53, align 4
  %28 = and i32 %bf.load.i54, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i55 = icmp eq i32 %28, 0
  br i1 %tobool.not.i55, label %if.end6.i61, label %if.then.i60

if.then.i60:                                      ; preds = %sw.bb3
  %not.on.i.i = xor i1 %cmp.i, true
  %conv.i.i56 = zext i1 %not.on.i.i to i8
  %call.i.i57 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 13571, i8 noundef zeroext 1, i8 noundef zeroext %conv.i.i56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool4.not.i58 = icmp ne i32 %call.i.i57, 0
  %brmerge.i59 = or i1 %cmp.i, %tobool4.not.i58
  br i1 %brmerge.i59, label %if.then.i60.cleanup_crit_edge, label %if.then.i60.land.lhs.true.i65_crit_edge

if.then.i60.land.lhs.true.i65_crit_edge:          ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i65

if.then.i60.cleanup_crit_edge:                    ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i61:                                      ; preds = %sw.bb3
  br i1 %cmp.i, label %if.end6.i61.cleanup_crit_edge, label %if.end6.i61.land.lhs.true.i65_crit_edge

if.end6.i61.land.lhs.true.i65_crit_edge:          ; preds = %if.end6.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i65

if.end6.i61.cleanup_crit_edge:                    ; preds = %if.end6.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i65:                                ; preds = %if.end6.i61.land.lhs.true.i65_crit_edge, %if.then.i60.land.lhs.true.i65_crit_edge
  %exposure.i = getelementptr i8, ptr %1, i32 192
  %29 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %exposure.i, align 4
  %is_new8.i62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %is_new8.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load9.i63 = load i32, ptr %is_new8.i62, align 4
  %32 = and i32 %bf.load9.i63, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool12.not.i64 = icmp eq i32 %32, 0
  br i1 %tobool12.not.i64, label %land.lhs.true.i65.cleanup_crit_edge, label %if.then13.i66

land.lhs.true.i65.cleanup_crit_edge:              ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13.i66:                                    ; preds = %land.lhs.true.i65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_exp.i) #7
  %33 = ptrtoint ptr %max_exp.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %max_exp.i, align 2, !annotation !178
  %call14.i = call fastcc i32 @ov5640_read_reg16(ptr noundef %add.ptr.i, i16 noundef zeroext 13580, ptr noundef nonnull %max_exp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then13.i66.cleanup.i_crit_edge

if.then13.i66.cleanup.i_crit_edge:                ; preds = %if.then13.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end17.i:                                       ; preds = %if.then13.i66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vts.i.i) #7
  %34 = ptrtoint ptr %vts.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %vts.i.i, align 2, !annotation !178
  %call.i51.i = call fastcc i32 @ov5640_read_reg16(ptr noundef %add.ptr.i, i16 noundef zeroext 14350, ptr noundef nonnull %vts.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool.not.i.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool.not.i.i, label %ov5640_get_vts.exit.thread.i, label %ov5640_get_vts.exit.i

ov5640_get_vts.exit.thread.i:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %vts.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vts.i.i, align 2
  %conv.i52.i = zext i16 %36 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vts.i.i) #7
  br label %if.end21.i

ov5640_get_vts.exit.i:                            ; preds = %if.end17.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vts.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %cmp19.i = icmp slt i32 %call.i51.i, 0
  br i1 %cmp19.i, label %ov5640_get_vts.exit.i.cleanup.i_crit_edge, label %ov5640_get_vts.exit.i.if.end21.i_crit_edge

ov5640_get_vts.exit.i.if.end21.i_crit_edge:       ; preds = %ov5640_get_vts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

ov5640_get_vts.exit.i.cleanup.i_crit_edge:        ; preds = %ov5640_get_vts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end21.i:                                       ; preds = %ov5640_get_vts.exit.i.if.end21.i_crit_edge, %ov5640_get_vts.exit.thread.i
  %retval.0.i55.i = phi i32 [ %conv.i52.i, %ov5640_get_vts.exit.thread.i ], [ %call.i51.i, %ov5640_get_vts.exit.i.if.end21.i_crit_edge ]
  %37 = ptrtoint ptr %max_exp.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %max_exp.i, align 2
  %39 = trunc i32 %retval.0.i55.i to i16
  %conv22.i = add i16 %38, %39
  %40 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %exposure.i, align 4
  %val.i67 = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %val.i67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i67, align 4
  %conv24.i = zext i16 %conv22.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv24.i)
  %cmp25.i = icmp slt i32 %43, %conv24.i
  br i1 %cmp25.i, label %if.then27.i, label %if.end21.i.cleanup.thread.i_crit_edge

if.end21.i.cleanup.thread.i_crit_edge:            ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.then27.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = tail call fastcc i32 @ov5640_set_exposure(ptr noundef %add.ptr.i, i32 noundef %43) #7
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then27.i, %if.end21.i.cleanup.thread.i_crit_edge
  %ret.2.ph.i = phi i32 [ 0, %if.end21.i.cleanup.thread.i_crit_edge ], [ %call30.i, %if.then27.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_exp.i) #7
  br label %cleanup

cleanup.i:                                        ; preds = %ov5640_get_vts.exit.i.cleanup.i_crit_edge, %if.then13.i66.cleanup.i_crit_edge
  %retval.0.i68 = phi i32 [ %call14.i, %if.then13.i66.cleanup.i_crit_edge ], [ %call.i51.i, %ov5640_get_vts.exit.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_exp.i) #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i69 = icmp eq i32 %45, 0
  %conv.i = zext i1 %tobool.not.i69 to i8
  %call.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 13318, i8 noundef zeroext 1, i8 noundef zeroext %conv.i) #7
  %46 = or i32 %call.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %if.then3.i, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %sw.bb6
  %red_balance.i = getelementptr i8, ptr %1, i32 204
  %48 = ptrtoint ptr %red_balance.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %red_balance.i, align 4
  %val.i70 = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 22
  %50 = ptrtoint ptr %val.i70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i70, align 4
  %conv4.i = trunc i32 %51 to i16
  %blue_balance.i = getelementptr i8, ptr %1, i32 200
  %52 = ptrtoint ptr %blue_balance.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %blue_balance.i, align 4
  %val6.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %53, i32 0, i32 22
  %54 = ptrtoint ptr %val6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val6.i, align 4
  %call8.i = tail call fastcc i32 @ov5640_write_reg16(ptr noundef %add.ptr.i, i16 noundef zeroext 13312, i16 noundef zeroext %conv4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %cleanup.thread.i71, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.thread.i71:                               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i = trunc i32 %55 to i16
  %call12.i = tail call fastcc i32 @ov5640_write_reg16(ptr noundef %add.ptr.i, i16 noundef zeroext 13316, i16 noundef zeroext %conv7.i) #7
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %56 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i73 = icmp eq i32 %57, 0
  br i1 %tobool.not.i73, label %if.else.i, label %if.then.i75

if.then.i75:                                      ; preds = %sw.bb9
  %call.i74 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 21888, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool1.not.i = icmp eq i32 %call.i74, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i75.cleanup_crit_edge

if.then.i75.cleanup_crit_edge:                    ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i76 = trunc i32 %57 to i16
  %call3.i = tail call fastcc i32 @ov5640_write_reg16(ptr noundef %add.ptr.i, i16 noundef zeroext 21889, i16 noundef zeroext %conv.i76) #7
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 21888, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %58 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i79 = icmp eq i32 %59, 0
  br i1 %tobool.not.i79, label %if.else.i87, label %if.then.i82

if.then.i82:                                      ; preds = %sw.bb12
  %call.i80 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 21888, i8 noundef zeroext 4, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool1.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool1.not.i81, label %if.end.i85, label %if.then.i82.cleanup_crit_edge

if.then.i82.cleanup_crit_edge:                    ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i85:                                       ; preds = %if.then.i82
  %conv.i83 = trunc i32 %59 to i8
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %62 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 262143, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %64 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %65 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 85, ptr %buf.i.i, align 1
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -123, ptr %64, align 1
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i83, ptr %65, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 1
  %69 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %addr.i.i, align 2
  %71 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %msg.i.i, align 4
  %72 = ptrtoint ptr %61 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %61, align 8
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %flags7.i.i, align 2
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %buf.i.i, ptr %buf8.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 3
  %76 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i84 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %cmp.i.i = icmp slt i32 %call.i.i84, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i85.ov5640_write_reg.exit.i_crit_edge

if.end.i85.ov5640_write_reg.exit.i_crit_edge:     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit.i

do.end.i.i:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  %conv11.i.i = and i32 %59, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 21893, i32 noundef %conv11.i.i) #10
  br label %ov5640_write_reg.exit.i

ov5640_write_reg.exit.i:                          ; preds = %do.end.i.i, %if.end.i85.ov5640_write_reg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i84, %do.end.i.i ], [ 0, %if.end.i85.ov5640_write_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %cleanup

if.else.i87:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i86 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 21888, i8 noundef zeroext 4, i8 noundef zeroext 0) #7
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %78 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i92 = icmp eq i32 %79, 0
  br i1 %tobool.not.i92, label %if.else.i108, label %if.then.i95

if.then.i95:                                      ; preds = %sw.bb15
  %call.i93 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 21888, i8 noundef zeroext 2, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool1.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool1.not.i94, label %if.end.i103, label %if.then.i95.cleanup_crit_edge

if.then.i95.cleanup_crit_edge:                    ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i103:                                      ; preds = %if.then.i95
  %conv.i96 = trunc i32 %79 to i8
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i90) #7
  %82 = getelementptr inbounds i8, ptr %msg.i.i90, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 262143, ptr %82, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i91) #7
  %84 = getelementptr inbounds [3 x i8], ptr %buf.i.i91, i32 0, i32 1
  %85 = getelementptr inbounds [3 x i8], ptr %buf.i.i91, i32 0, i32 2
  %86 = ptrtoint ptr %buf.i.i91 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 85, ptr %buf.i.i91, align 1
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -125, ptr %84, align 1
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv.i96, ptr %85, align 1
  %addr.i.i97 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 1
  %89 = ptrtoint ptr %addr.i.i97 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %addr.i.i97, align 2
  %91 = ptrtoint ptr %msg.i.i90 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %msg.i.i90, align 4
  %92 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %81, align 8
  %flags7.i.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i90, i32 0, i32 1
  %94 = ptrtoint ptr %flags7.i.i98 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %flags7.i.i98, align 2
  %buf8.i.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i90, i32 0, i32 3
  %95 = ptrtoint ptr %buf8.i.i99 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %buf.i.i91, ptr %buf8.i.i99, align 4
  %adapter.i.i100 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 3
  %96 = ptrtoint ptr %adapter.i.i100 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adapter.i.i100, align 8
  %call.i.i101 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %msg.i.i90, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %cmp.i.i102 = icmp slt i32 %call.i.i101, 0
  br i1 %cmp.i.i102, label %ov5640_write_reg.exit.i106, label %if.end6.i107

ov5640_write_reg.exit.i106:                       ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i104 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 4
  %conv11.i.i105 = and i32 %79, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i104, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 21891, i32 noundef %conv11.i.i105) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i91) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i90) #7
  br label %cleanup

if.end6.i107:                                     ; preds = %if.end.i103
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i91) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i90) #7
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21.i) #7
  %100 = getelementptr inbounds i8, ptr %msg.i21.i, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 262143, ptr %100, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i22.i) #7
  %102 = getelementptr inbounds [3 x i8], ptr %buf.i22.i, i32 0, i32 1
  %103 = getelementptr inbounds [3 x i8], ptr %buf.i22.i, i32 0, i32 2
  %104 = ptrtoint ptr %buf.i22.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 85, ptr %buf.i22.i, align 1
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -124, ptr %102, align 1
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv.i96, ptr %103, align 1
  %addr.i23.i = getelementptr inbounds %struct.i2c_client, ptr %99, i32 0, i32 1
  %107 = ptrtoint ptr %addr.i23.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %addr.i23.i, align 2
  %109 = ptrtoint ptr %msg.i21.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %msg.i21.i, align 4
  %110 = ptrtoint ptr %99 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %99, align 8
  %flags7.i24.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 0, i32 1
  %112 = ptrtoint ptr %flags7.i24.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %flags7.i24.i, align 2
  %buf8.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 0, i32 3
  %113 = ptrtoint ptr %buf8.i25.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %buf.i22.i, ptr %buf8.i25.i, align 4
  %adapter.i27.i = getelementptr inbounds %struct.i2c_client, ptr %99, i32 0, i32 3
  %114 = ptrtoint ptr %adapter.i27.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %adapter.i27.i, align 8
  %call.i28.i = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %msg.i21.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp.i29.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp.i29.i, label %do.end.i32.i, label %if.end6.i107.ov5640_write_reg.exit34.i_crit_edge

if.end6.i107.ov5640_write_reg.exit34.i_crit_edge: ; preds = %if.end6.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_write_reg.exit34.i

do.end.i32.i:                                     ; preds = %if.end6.i107
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i30.i = getelementptr inbounds %struct.i2c_client, ptr %99, i32 0, i32 4
  %conv11.i31.i = and i32 %79, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i30.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 21892, i32 noundef %conv11.i31.i) #10
  br label %ov5640_write_reg.exit34.i

ov5640_write_reg.exit34.i:                        ; preds = %do.end.i32.i, %if.end6.i107.ov5640_write_reg.exit34.i_crit_edge
  %retval.0.i33.i = phi i32 [ %call.i28.i, %do.end.i32.i ], [ 0, %if.end6.i107.ov5640_write_reg.exit34.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i22.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21.i) #7
  br label %cleanup

if.else.i108:                                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 21888, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %116 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val19, align 4
  %arrayidx.i = getelementptr [5 x i8], ptr @test_pattern_val, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i, align 1
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i111) #7
  %122 = getelementptr inbounds i8, ptr %msg.i.i111, i32 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 262143, ptr %122, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i112) #7
  %124 = getelementptr inbounds [3 x i8], ptr %buf.i.i112, i32 0, i32 1
  %125 = getelementptr inbounds [3 x i8], ptr %buf.i.i112, i32 0, i32 2
  %126 = ptrtoint ptr %buf.i.i112 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 80, ptr %buf.i.i112, align 1
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 61, ptr %124, align 1
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %119, ptr %125, align 1
  %addr.i.i113 = getelementptr inbounds %struct.i2c_client, ptr %121, i32 0, i32 1
  %129 = ptrtoint ptr %addr.i.i113 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %addr.i.i113, align 2
  %131 = ptrtoint ptr %msg.i.i111 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %msg.i.i111, align 4
  %132 = ptrtoint ptr %121 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %121, align 8
  %flags7.i.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i111, i32 0, i32 1
  %134 = ptrtoint ptr %flags7.i.i114 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %flags7.i.i114, align 2
  %buf8.i.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i111, i32 0, i32 3
  %135 = ptrtoint ptr %buf8.i.i115 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %buf.i.i112, ptr %buf8.i.i115, align 4
  %adapter.i.i116 = getelementptr inbounds %struct.i2c_client, ptr %121, i32 0, i32 3
  %136 = ptrtoint ptr %adapter.i.i116 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %adapter.i.i116, align 8
  %call.i.i117 = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %msg.i.i111, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117)
  %cmp.i.i118 = icmp slt i32 %call.i.i117, 0
  br i1 %cmp.i.i118, label %do.end.i.i121, label %sw.bb18.ov5640_set_ctrl_test_pattern.exit_crit_edge

sw.bb18.ov5640_set_ctrl_test_pattern.exit_crit_edge: ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov5640_set_ctrl_test_pattern.exit

do.end.i.i121:                                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i119 = getelementptr inbounds %struct.i2c_client, ptr %121, i32 0, i32 4
  %conv11.i.i120 = zext i8 %119 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i119, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 20541, i32 noundef %conv11.i.i120) #10
  br label %ov5640_set_ctrl_test_pattern.exit

ov5640_set_ctrl_test_pattern.exit:                ; preds = %do.end.i.i121, %sw.bb18.ov5640_set_ctrl_test_pattern.exit_crit_edge
  %retval.0.i.i122 = phi i32 [ %call.i.i117, %do.end.i.i121 ], [ 0, %sw.bb18.ov5640_set_ctrl_test_pattern.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i112) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i111) #7
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %138 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %val22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %139)
  %cmp.i124 = icmp eq i32 %139, 3
  %conv.i125 = select i1 %cmp.i124, i8 0, i8 -128
  %call.i126 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 15361, i8 noundef zeroext -128, i8 noundef zeroext %conv.i125) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i127 = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i127, label %if.end.i129, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i129:                                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp1.i = icmp eq i32 %139, 1
  %conv4.i128 = select i1 %cmp1.i, i8 4, i8 0
  %call5.i = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 15360, i8 noundef zeroext 4, i8 noundef zeroext %conv4.i128) #7
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %140 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %val25, align 4
  %upside_down.i = getelementptr i8, ptr %1, i32 -172
  %142 = ptrtoint ptr %upside_down.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %upside_down.i, align 4, !range !180
  %144 = zext i8 %143 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %144)
  %tobool1.not.i132 = icmp eq i32 %141, %144
  %conv2.i = select i1 %tobool1.not.i132, i8 6, i8 0
  %call.i133 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 14369, i8 noundef zeroext 6, i8 noundef zeroext %conv2.i) #7
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %145 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %val28, align 4
  %upside_down.i134 = getelementptr i8, ptr %1, i32 -172
  %147 = ptrtoint ptr %upside_down.i134 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %upside_down.i134, align 4, !range !180
  %149 = zext i8 %148 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %149)
  %tobool1.not.i135 = icmp eq i32 %146, %149
  %conv2.i136 = select i1 %tobool1.not.i135, i8 0, i8 6
  %call.i137 = tail call fastcc i32 @ov5640_mod_reg(ptr noundef %add.ptr.i, i16 noundef zeroext 14368, i8 noundef zeroext 6, i8 noundef zeroext %conv2.i136) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %sw.bb24, %if.end.i129, %sw.bb21.cleanup_crit_edge, %ov5640_set_ctrl_test_pattern.exit, %if.else.i108, %ov5640_write_reg.exit34.i, %ov5640_write_reg.exit.i106, %if.then.i95.cleanup_crit_edge, %if.else.i87, %ov5640_write_reg.exit.i, %if.then.i82.cleanup_crit_edge, %if.else.i, %if.end.i, %if.then.i75.cleanup_crit_edge, %cleanup.thread.i71, %if.then3.i.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %cleanup.i, %cleanup.thread.i, %land.lhs.true.i65.cleanup_crit_edge, %if.end6.i61.cleanup_crit_edge, %if.then.i60.cleanup_crit_edge, %if.then13.i, %land.lhs.true.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i137, %sw.bb27 ], [ %call.i133, %sw.bb24 ], [ %retval.0.i.i122, %ov5640_set_ctrl_test_pattern.exit ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.then.i.cleanup_crit_edge ], [ 0, %if.end6.i.cleanup_crit_edge ], [ %call.i25.i, %if.then13.i ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ %retval.0.i68, %cleanup.i ], [ %call.i.i57, %if.then.i60.cleanup_crit_edge ], [ 0, %if.end6.i61.cleanup_crit_edge ], [ 0, %land.lhs.true.i65.cleanup_crit_edge ], [ %ret.2.ph.i, %cleanup.thread.i ], [ %call.i, %sw.bb6.cleanup_crit_edge ], [ %call8.i, %if.then3.i.cleanup_crit_edge ], [ %call12.i, %cleanup.thread.i71 ], [ %call.i74, %if.then.i75.cleanup_crit_edge ], [ %call3.i, %if.end.i ], [ %call4.i, %if.else.i ], [ %call.i80, %if.then.i82.cleanup_crit_edge ], [ %retval.0.i.i, %ov5640_write_reg.exit.i ], [ %call4.i86, %if.else.i87 ], [ %call.i93, %if.then.i95.cleanup_crit_edge ], [ %call.i.i101, %ov5640_write_reg.exit.i106 ], [ %retval.0.i33.i, %ov5640_write_reg.exit34.i ], [ %call10.i, %if.else.i108 ], [ %call5.i, %if.end.i129 ], [ %call.i126, %sw.bb21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__param_virtual_channel, !1, !"__param_virtual_channel", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov5640.c", i32 154, i32 1}
!2 = !{ptr @__UNIQUE_ID_virtual_channeltype292, !1, !"__UNIQUE_ID_virtual_channeltype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_virtual_channel293, !4, !"__UNIQUE_ID_virtual_channel293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov5640.c", i32 155, i32 1}
!5 = !{ptr @__initcall__kmod_ov5640__299_3218_ov5640_i2c_driver_init6, !6, !"__initcall__kmod_ov5640__299_3218_ov5640_i2c_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov5640.c", i32 3218, i32 1}
!7 = !{ptr @__exitcall_ov5640_i2c_driver_exit, !6, !"__exitcall_ov5640_i2c_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description300, !9, !"__UNIQUE_ID_description300", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/ov5640.c", i32 3220, i32 1}
!10 = !{ptr @__UNIQUE_ID_file301, !11, !"__UNIQUE_ID_file301", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov5640.c", i32 3221, i32 1}
!12 = !{ptr @__UNIQUE_ID_license302, !11, !"__UNIQUE_ID_license302", i1 false, i1 false}
!13 = !{ptr @virtual_channel, !14, !"virtual_channel", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/ov5640.c", i32 153, i32 21}
!15 = !{ptr @__param_str_virtual_channel, !1, !"__param_str_virtual_channel", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov5640.c", i32 3210, i32 12}
!18 = !{ptr @ov5640_i2c_driver, !19, !"ov5640_i2c_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ov5640.c", i32 3208, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ov5640.c", i32 3082, i32 59}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov5640.c", i32 3092, i32 4}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ov5640_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ov5640_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov5640.c", i32 3100, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ov5640_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ov5640_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ov5640.c", i32 3107, i32 3}
!37 = !{ptr @ov5640_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ov5640_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ov5640.c", i32 3114, i32 3}
!41 = !{ptr @ov5640_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ov5640_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ov5640.c", i32 3119, i32 35}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/ov5640.c", i32 3121, i32 3}
!47 = !{ptr @ov5640_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ov5640_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ov5640.c", i32 3128, i32 3}
!51 = !{ptr @ov5640_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ov5640_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ov5640.c", i32 3134, i32 51}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ov5640.c", i32 3140, i32 52}
!57 = !{ptr @ov5640_probe.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/ov5640.c", i32 3159, i32 2}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ov5640_framerates, !61, !"ov5640_framerates", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov5640.c", i32 158, i32 18}
!62 = !{ptr @ov5640_mode_data, !63, !"ov5640_mode_data", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov5640.c", i32 575, i32 1}
!64 = !{ptr @ov5640_setting_QQVGA_160_120, !65, !"ov5640_setting_QQVGA_160_120", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov5640.c", i32 422, i32 31}
!66 = !{ptr @ov5640_setting_QCIF_176_144, !67, !"ov5640_setting_QCIF_176_144", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov5640.c", i32 440, i32 31}
!68 = !{ptr @ov5640_setting_QVGA_320_240, !69, !"ov5640_setting_QVGA_320_240", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov5640.c", i32 403, i32 31}
!70 = !{ptr @ov5640_setting_VGA_640_480, !71, !"ov5640_setting_VGA_640_480", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov5640.c", i32 365, i32 31}
!72 = !{ptr @ov5640_setting_NTSC_720_480, !73, !"ov5640_setting_NTSC_720_480", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov5640.c", i32 459, i32 31}
!74 = !{ptr @ov5640_setting_PAL_720_576, !75, !"ov5640_setting_PAL_720_576", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov5640.c", i32 478, i32 31}
!76 = !{ptr @ov5640_setting_XGA_1024_768, !77, !"ov5640_setting_XGA_1024_768", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ov5640.c", i32 384, i32 31}
!78 = !{ptr @ov5640_setting_720P_1280_720, !79, !"ov5640_setting_720P_1280_720", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov5640.c", i32 497, i32 31}
!80 = !{ptr @ov5640_setting_1080P_1920_1080, !81, !"ov5640_setting_1080P_1920_1080", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov5640.c", i32 516, i32 31}
!82 = !{ptr @ov5640_setting_QSXGA_2592_1944, !83, !"ov5640_setting_QSXGA_2592_1944", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov5640.c", i32 547, i32 31}
!84 = !{ptr @ov5640_subdev_ops, !85, !"ov5640_subdev_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov5640.c", i32 2998, i32 37}
!86 = !{ptr @ov5640_core_ops, !87, !"ov5640_core_ops", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov5640.c", i32 2977, i32 42}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov5640.c", i32 1914, i32 3}
!90 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ov5640_set_power_on._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ov5640_set_power_on._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov5640.c", i32 1922, i32 3}
!95 = !{ptr @ov5640_set_power_on._entry.29, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ov5640_set_power_on._entry_ptr.31, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov5640.c", i32 649, i32 3}
!99 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ov5640_init_slave_id._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ov5640_init_slave_id._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov5640.c", i32 674, i32 3}
!104 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ov5640_write_reg._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ov5640_write_reg._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @ov5640_mode_init_data, !108, !"ov5640_mode_init_data", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/ov5640.c", i32 567, i32 38}
!109 = !{ptr @ov5640_init_setting_30fps_VGA, !110, !"ov5640_init_setting_30fps_VGA", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov5640.c", i32 281, i32 31}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov5640.c", i32 704, i32 3}
!113 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ov5640_read_reg._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @ov5640_read_reg._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/ov5640.c", i32 1538, i32 3}
!118 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ov5640_set_virtual_channel._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ov5640_set_virtual_channel._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @ov5640_video_ops, !122, !"ov5640_video_ops", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ov5640.c", i32 2984, i32 43}
!123 = !{ptr @ov5640_pad_ops, !124, !"ov5640_pad_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/ov5640.c", i32 2990, i32 41}
!125 = !{ptr @ov5640_formats, !126, !"ov5640_formats", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/ov5640.c", i32 135, i32 35}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/ov5640.c", i32 166, i32 2}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/ov5640.c", i32 167, i32 2}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/ov5640.c", i32 168, i32 2}
!135 = distinct !{null, !136, !"ov5640_supply_name", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/ov5640.c", i32 165, i32 27}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/ov5640.c", i32 3028, i32 3}
!139 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ov5640_check_chip_id._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @ov5640_check_chip_id._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.47, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov5640.c", i32 3034, i32 3}
!144 = !{ptr @ov5640_check_chip_id._entry.46, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ov5640_check_chip_id._entry_ptr.48, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @ov5640_init_controls._key, !147, !"_key", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/ov5640.c", i32 2751, i32 2}
!148 = !{ptr @.str.49, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ov5640_ctrl_ops, !150, !"ov5640_ctrl_ops", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/ov5640.c", i32 2739, i32 35}
!151 = !{ptr @test_pattern_val, !152, !"test_pattern_val", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/ov5640.c", i32 2590, i32 17}
!153 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/ov5640.c", i32 2570, i32 2}
!155 = !{ptr @.str.51, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/ov5640.c", i32 2571, i32 2}
!157 = !{ptr @.str.52, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ov5640.c", i32 2572, i32 2}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/ov5640.c", i32 2573, i32 2}
!161 = !{ptr @.str.54, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/ov5640.c", i32 2574, i32 2}
!163 = !{ptr @test_pattern_menu, !164, !"test_pattern_menu", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/ov5640.c", i32 2569, i32 27}
!165 = !{ptr @ov5640_dt_ids, !166, !"ov5640_dt_ids", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/ov5640.c", i32 3202, i32 34}
!167 = !{ptr @ov5640_id, !168, !"ov5640_id", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/ov5640.c", i32 3196, i32 35}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{!"branch_weights", i32 1, i32 2000}
!180 = !{i8 0, i8 2}
!181 = !{!"branch_weights", i32 2000, i32 1}
