; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov5648.c_pt.bc'
source_filename = "../drivers/media/i2c/ov5648.c"
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
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ov5648_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, [2 x %struct.v4l2_fract], [2 x ptr], ptr, ptr, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.ov5648_pll1_config = type { i32, i32, i32, i32, i32, i32 }
%struct.ov5648_pll2_config = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.ov5648_sensor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_fwnode_endpoint, %struct.v4l2_subdev, %struct.media_pad, %struct.mutex, %struct.ov5648_state, %struct.ov5648_ctrls }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.ov5648_state = type { ptr, i32, i8 }
%struct.ov5648_ctrls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ov5648_register_value = type { i16, i8, i32 }

@__initcall__kmod_ov5648__297_2618_ov5648_driver_init6 = internal global ptr @ov5648_driver_init, section ".initcall6.init", align 4
@ov5648_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov5648_remove, ptr @ov5648_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov5648_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5648_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov5648_driver_exit = internal global ptr @ov5648_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [64 x i8] c"ov5648.author=Paul Kocialkowski <paul.kocialkowski@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [70 x i8] c"ov5648.description=V4L2 driver for the OmniVision OV5648 image sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [37 x i8] c"ov5648.file=drivers/media/i2c/ov5648\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [22 x i8] c"ov5648.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov5648\00", [25 x i8] zeroinitializer }, align 32
@ov5648_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov5648\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov5648_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5648_suspend, ptr @ov5648_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov5648_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to find endpoint node\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5648_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov5648.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov5648_probe._entry_ptr = internal global ptr @ov5648_probe._entry, section ".printk_index", align 4
@ov5648_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to parse endpoint node\0A\00", [33 x i8] zeroinitializer }, align 32
@ov5648_probe._entry_ptr.8 = internal global ptr @ov5648_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@ov5648_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot get DVDD (digital core) regulator\0A\00", [54 x i8] zeroinitializer }, align 32
@ov5648_probe._entry_ptr.14 = internal global ptr @ov5648_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dovdd\00", [26 x i8] zeroinitializer }, align 32
@ov5648_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 2496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot get DOVDD (digital I/O) regulator\0A\00", [54 x i8] zeroinitializer }, align 32
@ov5648_probe._entry_ptr.18 = internal global ptr @ov5648_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@ov5648_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 2504, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no AVDD regulator provided, using internal\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov5648_probe._entry_ptr.23 = internal global ptr @ov5648_probe._entry.20, section ".printk_index", align 4
@ov5648_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get external clock\0A\00", [34 x i8] zeroinitializer }, align 32
@ov5648_probe._entry_ptr.26 = internal global ptr @ov5648_probe._entry.24, section ".printk_index", align 4
@ov5648_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 2519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clock rate %lu Hz is unsupported\0A\00", [62 x i8] zeroinitializer }, align 32
@ov5648_probe._entry_ptr.29 = internal global ptr @ov5648_probe._entry.27, section ".printk_index", align 4
@ov5648_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov5648_subdev_video_ops, ptr null, ptr null, ptr null, ptr @ov5648_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov5648_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sensor->mutex\00", [17 x i8] zeroinitializer }, align 32
@ov5648_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov5648_s_stream, ptr null, ptr @ov5648_g_frame_interval, ptr @ov5648_g_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov5648_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov5648_enum_mbus_code, ptr @ov5648_enum_frame_size, ptr @ov5648_enum_frame_interval, ptr @ov5648_get_fmt, ptr @ov5648_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov5648_write.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov5648_write\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c send error at address %#04x\0A\00", [63 x i8] zeroinitializer }, align 32
@ov5648_mbus_codes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 12289, i32 12295], [24 x i8] zeroinitializer }, align 32
@ov5648_modes = internal constant { [6 x %struct.ov5648_mode], [128 x i8] } { [6 x %struct.ov5648_mode] [%struct.ov5648_mode { i32 16, i32 0, i32 2592, i32 2607, i32 2816, i32 6, i32 0, i32 1944, i32 1949, i32 1984, i8 0, i8 0, i32 1, i32 1, i32 1, i32 1, [2 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 15 }, %struct.v4l2_fract { i32 1, i32 15 }], [2 x ptr] [ptr @ov5648_pll1_config_native_8_bits, ptr @ov5648_pll1_config_native_10_bits], ptr @ov5648_pll2_config_native, ptr null, i32 0 }, %struct.ov5648_mode { i32 512, i32 0, i32 1600, i32 2111, i32 2816, i32 378, i32 0, i32 1200, i32 1577, i32 1984, i8 0, i8 0, i32 1, i32 1, i32 1, i32 1, [2 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 15 }, %struct.v4l2_fract { i32 1, i32 15 }], [2 x ptr] [ptr @ov5648_pll1_config_native_8_bits, ptr @ov5648_pll1_config_native_10_bits], ptr @ov5648_pll2_config_native, ptr null, i32 0 }, %struct.ov5648_mode { i32 352, i32 0, i32 1920, i32 2271, i32 2816, i32 438, i32 0, i32 1080, i32 1517, i32 1984, i8 0, i8 0, i32 1, i32 1, i32 1, i32 1, [2 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 15 }, %struct.v4l2_fract { i32 1, i32 15 }], [2 x ptr] [ptr @ov5648_pll1_config_native_8_bits, ptr @ov5648_pll1_config_native_10_bits], ptr @ov5648_pll2_config_native, ptr null, i32 0 }, %struct.ov5648_mode { i32 16, i32 8, i32 1280, i32 2607, i32 1912, i32 6, i32 6, i32 960, i32 1949, i32 1496, i8 1, i8 0, i32 3, i32 1, i32 3, i32 1, [2 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 30 }, %struct.v4l2_fract { i32 1, i32 30 }], [2 x ptr] [ptr @ov5648_pll1_config_native_8_bits, ptr @ov5648_pll1_config_native_10_bits], ptr @ov5648_pll2_config_native, ptr null, i32 0 }, %struct.ov5648_mode { i32 16, i32 8, i32 1280, i32 2607, i32 1912, i32 254, i32 2, i32 720, i32 1701, i32 1496, i8 1, i8 0, i32 3, i32 1, i32 3, i32 1, [2 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 30 }, %struct.v4l2_fract { i32 1, i32 30 }], [2 x ptr] [ptr @ov5648_pll1_config_native_8_bits, ptr @ov5648_pll1_config_native_10_bits], ptr @ov5648_pll2_config_native, ptr null, i32 0 }, %struct.ov5648_mode { i32 0, i32 8, i32 640, i32 2623, i32 1896, i32 0, i32 2, i32 480, i32 1953, i32 984, i8 1, i8 0, i32 7, i32 1, i32 7, i32 1, [2 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 30 }, %struct.v4l2_fract { i32 1, i32 30 }], [2 x ptr] [ptr @ov5648_pll1_config_native_8_bits, ptr @ov5648_pll1_config_native_10_bits], ptr @ov5648_pll2_config_native, ptr null, i32 0 }], [128 x i8] zeroinitializer }, align 32
@ov5648_pll1_config_native_8_bits = internal constant { %struct.ov5648_pll1_config, [40 x i8] } { %struct.ov5648_pll1_config { i32 3, i32 84, i32 2, i32 1, i32 1, i32 1 }, [40 x i8] zeroinitializer }, align 32
@ov5648_pll1_config_native_10_bits = internal constant { %struct.ov5648_pll1_config, [40 x i8] } { %struct.ov5648_pll1_config { i32 3, i32 105, i32 2, i32 1, i32 1, i32 1 }, [40 x i8] zeroinitializer }, align 32
@ov5648_pll2_config_native = internal constant { %struct.ov5648_pll2_config, [44 x i8] } { %struct.ov5648_pll2_config { i32 3, i32 1, i32 25, i32 1, i32 1 }, [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov5648_read.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.32, i8 0, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov5648_read\00", [20 x i8] zeroinitializer }, align 32
@ov5648_read.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c recv error at address %#04x\0A\00", [63 x i8] zeroinitializer }, align 32
@ov5648_link_freq_menu = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 210000000, i64 168000000], [16 x i8] zeroinitializer }, align 32
@ov5648_state_mipi_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to find %lu clk rate in link freq\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ov5648_state_mipi_configure\00", [36 x i8] zeroinitializer }, align 32
@ov5648_state_mipi_configure._entry_ptr = internal global ptr @ov5648_state_mipi_configure._entry, section ".printk_index", align 4
@ov5648_state_mipi_configure._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 1728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed to find %lu clk rate in endpoint link-frequencies\0A\00", [38 x i8] zeroinitializer }, align 32
@ov5648_state_mipi_configure._entry_ptr.40 = internal global ptr @ov5648_state_mipi_configure._entry.38, section ".printk_index", align 4
@ov5648_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ov5648_g_volatile_ctrl, ptr null, ptr @ov5648_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov5648_ctrls_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ov5648:2040:(handler)->_lock\00", [35 x i8] zeroinitializer }, align 32
@ov5648_test_pattern_menu = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [40 x i8] zeroinitializer }, align 32
@ov5648_test_pattern_bits = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\81\80\C0\82\C2", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Random data\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color bars\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Color bars with rolling bar\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Color squares\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Color squares with rolling bar\00", [33 x i8] zeroinitializer }, align 32
@ov5648_sensor_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 1878, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable DOVDD regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ov5648_sensor_power\00", [44 x i8] zeroinitializer }, align 32
@ov5648_sensor_power._entry_ptr = internal global ptr @ov5648_sensor_power._entry, section ".printk_index", align 4
@ov5648_sensor_power._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 1886, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable AVDD regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@ov5648_sensor_power._entry_ptr.52 = internal global ptr @ov5648_sensor_power._entry.50, section ".printk_index", align 4
@ov5648_sensor_power._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.3, i32 1894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable DVDD regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@ov5648_sensor_power._entry_ptr.55 = internal global ptr @ov5648_sensor_power._entry.53, section ".printk_index", align 4
@ov5648_sensor_power._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.3, i32 1903, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable XVCLK clock\0A\00", [34 x i8] zeroinitializer }, align 32
@ov5648_sensor_power._entry_ptr.58 = internal global ptr @ov5648_sensor_power._entry.56, section ".printk_index", align 4
@ov5648_sensor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1793, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to perform sw reset\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov5648_sensor_init\00", [45 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr = internal global ptr @ov5648_sensor_init._entry, section ".printk_index", align 4
@ov5648_sensor_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 1799, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set sensor standby\0A\00", [34 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr.63 = internal global ptr @ov5648_sensor_init._entry.61, section ".printk_index", align 4
@ov5648_sensor_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 1805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to check sensor chip id\0A\00", [32 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr.66 = internal global ptr @ov5648_sensor_init._entry.64, section ".printk_index", align 4
@ov5648_sensor_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.3, i32 1811, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set internal avdd power\0A\00", [61 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr.69 = internal global ptr @ov5648_sensor_init._entry.67, section ".printk_index", align 4
@ov5648_sensor_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.3, i32 1818, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write init sequence\0A\00", [33 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr.72 = internal global ptr @ov5648_sensor_init._entry.70, section ".printk_index", align 4
@ov5648_sensor_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.3, i32 1824, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to configure pad\0A\00", [39 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr.75 = internal global ptr @ov5648_sensor_init._entry.73, section ".printk_index", align 4
@ov5648_sensor_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.60, ptr @.str.3, i32 1830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to configure MIPI\0A\00", [38 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr.78 = internal global ptr @ov5648_sensor_init._entry.76, section ".printk_index", align 4
@ov5648_sensor_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.60, ptr @.str.3, i32 1836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to configure ISP\0A\00", [39 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr.81 = internal global ptr @ov5648_sensor_init._entry.79, section ".printk_index", align 4
@ov5648_sensor_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.60, ptr @.str.3, i32 1842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to configure black level\0A\00", [63 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr.84 = internal global ptr @ov5648_sensor_init._entry.82, section ".printk_index", align 4
@ov5648_sensor_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.60, ptr @.str.3, i32 1850, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to configure state\0A\00", [37 x i8] zeroinitializer }, align 32
@ov5648_sensor_init._entry_ptr.87 = internal global ptr @ov5648_sensor_init._entry.85, section ".printk_index", align 4
@ov5648_chip_id_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 1078, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"chip id value mismatch: %#x instead of %#x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov5648_chip_id_check\00", [43 x i8] zeroinitializer }, align 32
@ov5648_chip_id_check._entry_ptr = internal global ptr @ov5648_chip_id_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12289, i64 12295]
@__sancov_gen_cov_switch_values.90 = internal global [7 x i64] [i64 5, i64 32, i64 640, i64 1280, i64 1600, i64 1920, i64 2592]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 12289, i64 12295]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 12289, i64 12295]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 168000000, i64 210000000]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 12289, i64 12295]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 12289, i64 12295]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 9963794, i64 10094849]
@__sancov_gen_cov_switch_values.98 = internal global [8 x i64] [i64 6, i64 32, i64 9963788, i64 9963794, i64 9963796, i64 9963797, i64 10094849, i64 10422531]
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"ov5648_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2608, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2610, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"ov5648_of_match\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2602, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"ov5648_pm_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2598, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2455, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2464, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2470, i32 51 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2477, i32 47 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2486, i32 41 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2488, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2494, i32 42 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2496, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2502, i32 50 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2504, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2512, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2519, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"ov5648_subdev_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2364, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2541, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [24 x i8] c"ov5648_subdev_video_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2182, i32 43 }
@___asan_gen_.195 = private unnamed_addr constant [22 x i8] c"ov5648_subdev_pad_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2356, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 997, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"ov5648_mbus_codes\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 928, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant [13 x i8] c"ov5648_modes\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 706, i32 33 }
@___asan_gen_.210 = private unnamed_addr constant [33 x i8] c"ov5648_pll1_config_native_8_bits\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 671, i32 40 }
@___asan_gen_.213 = private unnamed_addr constant [34 x i8] c"ov5648_pll1_config_native_10_bits\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 685, i32 40 }
@___asan_gen_.216 = private unnamed_addr constant [26 x i8] c"ov5648_pll2_config_native\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 698, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 998, i32 6 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 974, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 981, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [22 x i8] c"ov5648_link_freq_menu\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 939, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1722, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1726, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [16 x i8] c"ov5648_ctrl_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2028, i32 35 }
@___asan_gen_.249 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 2040, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [25 x i8] c"ov5648_test_pattern_menu\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 944, i32 26 }
@___asan_gen_.258 = private unnamed_addr constant [25 x i8] c"ov5648_test_pattern_bits\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 953, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 945, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 946, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 947, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 948, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 949, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 950, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1877, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1885, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1893, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1903, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1793, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1799, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1805, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1811, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1818, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1824, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1830, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1836, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1842, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1850, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.376 = private constant [30 x i8] c"../drivers/media/i2c/ov5648.c\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1076, i32 4 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_ov5648_driver_exit, ptr @__initcall__kmod_ov5648__297_2618_ov5648_driver_init6, ptr @ov5648_chip_id_check._entry, ptr @ov5648_chip_id_check._entry_ptr, ptr @ov5648_driver_exit, ptr @ov5648_probe._entry, ptr @ov5648_probe._entry.12, ptr @ov5648_probe._entry.16, ptr @ov5648_probe._entry.20, ptr @ov5648_probe._entry.24, ptr @ov5648_probe._entry.27, ptr @ov5648_probe._entry.6, ptr @ov5648_probe._entry_ptr, ptr @ov5648_probe._entry_ptr.14, ptr @ov5648_probe._entry_ptr.18, ptr @ov5648_probe._entry_ptr.23, ptr @ov5648_probe._entry_ptr.26, ptr @ov5648_probe._entry_ptr.29, ptr @ov5648_probe._entry_ptr.8, ptr @ov5648_sensor_init._entry, ptr @ov5648_sensor_init._entry.61, ptr @ov5648_sensor_init._entry.64, ptr @ov5648_sensor_init._entry.67, ptr @ov5648_sensor_init._entry.70, ptr @ov5648_sensor_init._entry.73, ptr @ov5648_sensor_init._entry.76, ptr @ov5648_sensor_init._entry.79, ptr @ov5648_sensor_init._entry.82, ptr @ov5648_sensor_init._entry.85, ptr @ov5648_sensor_init._entry_ptr, ptr @ov5648_sensor_init._entry_ptr.63, ptr @ov5648_sensor_init._entry_ptr.66, ptr @ov5648_sensor_init._entry_ptr.69, ptr @ov5648_sensor_init._entry_ptr.72, ptr @ov5648_sensor_init._entry_ptr.75, ptr @ov5648_sensor_init._entry_ptr.78, ptr @ov5648_sensor_init._entry_ptr.81, ptr @ov5648_sensor_init._entry_ptr.84, ptr @ov5648_sensor_init._entry_ptr.87, ptr @ov5648_sensor_power._entry, ptr @ov5648_sensor_power._entry.50, ptr @ov5648_sensor_power._entry.53, ptr @ov5648_sensor_power._entry.56, ptr @ov5648_sensor_power._entry_ptr, ptr @ov5648_sensor_power._entry_ptr.52, ptr @ov5648_sensor_power._entry_ptr.55, ptr @ov5648_sensor_power._entry_ptr.58, ptr @ov5648_state_mipi_configure._entry, ptr @ov5648_state_mipi_configure._entry.38, ptr @ov5648_state_mipi_configure._entry_ptr, ptr @ov5648_state_mipi_configure._entry_ptr.40, ptr @ov5648_driver, ptr @.str, ptr @ov5648_of_match, ptr @ov5648_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @ov5648_subdev_ops, ptr @ov5648_probe.__key, ptr @.str.30, ptr @ov5648_subdev_video_ops, ptr @ov5648_subdev_pad_ops, ptr @.str.31, ptr @.str.32, ptr @ov5648_mbus_codes, ptr @ov5648_modes, ptr @ov5648_pll1_config_native_8_bits, ptr @ov5648_pll1_config_native_10_bits, ptr @ov5648_pll2_config_native, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @ov5648_link_freq_menu, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @ov5648_ctrl_ops, ptr @ov5648_ctrls_init._key, ptr @.str.41, ptr @ov5648_test_pattern_menu, ptr @ov5648_test_pattern_bits, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_mbus_codes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_modes to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_pll1_config_native_8_bits to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_pll1_config_native_10_bits to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_pll2_config_native to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_link_freq_menu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_state_mipi_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_state_mipi_configure._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_ctrls_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_test_pattern_menu to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_test_pattern_bits to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_power._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_power._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_power._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_sensor_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov5648_chip_id_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov5648_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov5648_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov5648_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -96
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #8
  %handler = getelementptr i8, ptr %1, i32 368
  tail call void @v4l2_ctrl_handler_free(ptr noundef %handler) #8
  %mutex = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 648, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %i2c_client = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %i2c_client, align 4
  %call3 = tail call ptr @dev_fwnode(ptr noundef %dev1) #8
  %call4 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call3, ptr noundef null) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %endpoint = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 8
  %bus_type = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %bus_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %bus_type, align 4
  %call9 = tail call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call4, ptr noundef %endpoint) #8
  tail call void @fwnode_handle_put(ptr noundef nonnull %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 7) #8
  %powerdown = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %powerdown to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call16, ptr %powerdown, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call16 to i32
  br label %error_endpoint

if.end22:                                         ; preds = %if.end15
  %call23 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 7) #8
  %reset = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call23, ptr %reset, align 4
  %cmp.i179 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call23 to i32
  br label %error_endpoint

if.end29:                                         ; preds = %if.end22
  %call30 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  %dvdd = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %dvdd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call30, ptr %dvdd, align 4
  %cmp.i180 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  %8 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvdd, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %error_endpoint

if.end39:                                         ; preds = %if.end29
  %call40 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  %dovdd = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %dovdd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call40, ptr %dovdd, align 4
  %12 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dvdd, align 4
  %cmp.i181 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %do.end46, label %if.end49

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #11
  %14 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dvdd, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %error_endpoint

if.end49:                                         ; preds = %if.end39
  %call50 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.19) #8
  %avdd = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %avdd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call50, ptr %avdd, align 4
  %cmp.i182 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %do.end56, label %if.end49.if.end58_crit_edge

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21) #11
  %18 = ptrtoint ptr %avdd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %avdd, align 4
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end49.if.end58_crit_edge
  %call59 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %xvclk = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %xvclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call59, ptr %xvclk, align 4
  %cmp.i183 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  %20 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xvclk, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %error_endpoint

if.end68:                                         ; preds = %if.end58
  %call70 = tail call i32 @clk_get_rate(ptr noundef %call59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call70)
  %cmp.not = icmp eq i32 %call70, 24000000
  br i1 %cmp.not, label %if.end75, label %do.end74

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call70) #11
  br label %error_endpoint

if.end75:                                         ; preds = %if.end68
  %subdev76 = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 9
  tail call void @v4l2_i2c_subdev_init(ptr noundef %subdev76, ptr noundef %client, ptr noundef nonnull @ov5648_subdev_ops) #8
  %flags = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 9, i32 4
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 4
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  %25 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 131073, ptr %function, align 4
  %pad77 = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 10
  %flags78 = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 10, i32 4
  %26 = ptrtoint ptr %flags78 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %flags78, align 4
  %call80 = tail call i32 @media_entity_pads_init(ptr noundef %subdev76, i16 noundef zeroext 1, ptr noundef %pad77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.body84, label %if.end75.error_endpoint_crit_edge

if.end75.error_endpoint_crit_edge:                ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_endpoint

do.body84:                                        ; preds = %if.end75
  %mutex = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.30, ptr noundef nonnull @ov5648_probe.__key) #8
  %ctrls1.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13
  %handler2.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 9
  %call.i184 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %handler2.i, i32 noundef 32, ptr noundef nonnull @ov5648_ctrls_init._key, ptr noundef nonnull @.str.41) #8
  %lock.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 9, i32 1
  %27 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mutex, ptr %lock.i, align 4
  %call3.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #8
  %28 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store ptr %call3.i, ptr %ctrls1.i, align 1
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 9963793, i64 noundef 16, i64 noundef 1048575, i64 noundef 16, i64 noundef 512) #8
  %exposure.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %exposure.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store ptr %call4.i, ptr %exposure.i, align 1
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %ctrls1.i, i8 noundef zeroext 1, i1 noundef zeroext true) #8
  %call6.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %gain_auto.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 2
  %30 = ptrtoint ptr %gain_auto.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store ptr %call6.i, ptr %gain_auto.i, align 1
  %call7.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 9963795, i64 noundef 16, i64 noundef 1023, i64 noundef 16, i64 noundef 16) #8
  %gain.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 3
  %31 = ptrtoint ptr %gain.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store ptr %call7.i, ptr %gain.i, align 1
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %gain_auto.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  %call9.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %white_balance_auto.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 4
  %32 = ptrtoint ptr %white_balance_auto.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store ptr %call9.i, ptr %white_balance_auto.i, align 1
  %call10.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 1024) #8
  %red_balance.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 5
  %33 = ptrtoint ptr %red_balance.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store ptr %call10.i, ptr %red_balance.i, align 1
  %call11.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 1024) #8
  %blue_balance.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 6
  %34 = ptrtoint ptr %blue_balance.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store ptr %call11.i, ptr %blue_balance.i, align 1
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %white_balance_auto.i, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  %call13.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call14.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call15.i = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %handler2.i, ptr noundef nonnull @ov5648_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 5, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov5648_test_pattern_menu) #8
  %call16.i = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %handler2.i, ptr noundef null, i32 noundef 10422529, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @ov5648_link_freq_menu) #8
  %link_freq.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 7
  %35 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store ptr %call16.i, ptr %link_freq.i, align 1
  %call17.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2.i, ptr noundef null, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 1) #8
  %pixel_rate.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 8
  %36 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store ptr %call17.i, ptr %pixel_rate.i, align 1
  %error.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 13, i32 9, i32 9
  %37 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %if.end90, label %do.body84.error_mutex_crit_edge

do.body84.error_mutex_crit_edge:                  ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_mutex

if.end90:                                         ; preds = %do.body84
  %39 = ptrtoint ptr %exposure.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load ptr, ptr %exposure.i, align 1
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %42, 128
  store i32 %or.i, ptr %flags.i, align 4
  %43 = ptrtoint ptr %gain.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load ptr, ptr %gain.i, align 1
  %flags21.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %44, i32 0, i32 20
  %45 = ptrtoint ptr %flags21.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags21.i, align 4
  %or22.i = or i32 %46, 128
  store i32 %or22.i, ptr %flags21.i, align 4
  %47 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load ptr, ptr %link_freq.i, align 1
  %flags24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %48, i32 0, i32 20
  %49 = ptrtoint ptr %flags24.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags24.i, align 4
  %or25.i = or i32 %50, 4
  store i32 %or25.i, ptr %flags24.i, align 4
  %51 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load ptr, ptr %pixel_rate.i, align 1
  %flags27.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %52, i32 0, i32 20
  %53 = ptrtoint ptr %flags27.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags27.i, align 4
  %or28.i = or i32 %54, 4
  store i32 %or28.i, ptr %flags27.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ov5648_sensor, ptr %call.i, i32 0, i32 9, i32 8
  %55 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %handler2.i, ptr %ctrl_handler.i, align 4
  %call.i185 = tail call fastcc i32 @ov5648_state_configure(ptr noundef nonnull %call.i, ptr noundef nonnull @ov5648_modes, i32 noundef 12289) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool92.not = icmp eq i32 %call.i185, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.error_mutex_crit_edge

if.end90.error_mutex_crit_edge:                   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_mutex

if.end94:                                         ; preds = %if.end90
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %57) #8
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %call.i186 = tail call i32 @__pm_runtime_set_status(ptr noundef %59, i32 noundef 2) #8
  %call98 = tail call i32 @v4l2_async_register_subdev_sensor(ptr noundef %subdev76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end94.cleanup_crit_edge, label %error_pm

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_pm:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %61, i1 noundef zeroext true) #8
  br label %error_mutex

error_mutex:                                      ; preds = %error_pm, %if.end90.error_mutex_crit_edge, %do.body84.error_mutex_crit_edge
  %ret.1 = phi i32 [ %38, %do.body84.error_mutex_crit_edge ], [ %call.i185, %if.end90.error_mutex_crit_edge ], [ %call98, %error_pm ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %handler2.i) #8
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  br label %error_endpoint

error_endpoint:                                   ; preds = %error_mutex, %if.end75.error_endpoint_crit_edge, %do.end74, %do.end65, %do.end46, %do.end36, %if.then26, %if.then19
  %ret.3 = phi i32 [ %4, %if.then19 ], [ %6, %if.then26 ], [ %10, %do.end36 ], [ %16, %do.end46 ], [ %22, %do.end65 ], [ -22, %do.end74 ], [ %call80, %if.end75.error_endpoint_crit_edge ], [ %ret.1, %error_mutex ]
  tail call void @v4l2_fwnode_endpoint_free(ptr noundef %endpoint) #8
  br label %cleanup

cleanup:                                          ; preds = %error_endpoint, %if.end94.cleanup_crit_edge, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ %ret.3, %error_endpoint ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end94.cleanup_crit_edge ]
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
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_s_stream(ptr noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  br i1 %tobool, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !199
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %mutex = getelementptr i8, ptr %subdev, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %spec.store.select.i = zext i1 %tobool to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %3 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %data.i.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.store.select.i, ptr %4, align 1
  %i2c_client.i.i = getelementptr i8, ptr %subdev, i32 -92
  %8 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end9

do.body.i.i:                                      ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_s_stream, %if.then9.i.i)) #8
          to label %ov5648_sw_standby.exit [label %if.then9.i.i], !srcloc !201

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef 256) #8
  br label %ov5648_sw_standby.exit

ov5648_sw_standby.exit:                           ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  %streaming = getelementptr i8, ptr %subdev, i32 328
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.store.select.i, ptr %streaming, align 4
  br i1 %tobool, label %if.end9.cleanup_crit_edge, label %if.then16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %call.i33 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end9.cleanup_crit_edge, %ov5648_sw_standby.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ov5648_sw_standby.exit ], [ 0, %if.then16 ], [ 0, %if.end9.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_g_frame_interval(ptr noundef %subdev, ptr nocapture noundef writeonly %interval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %subdev, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %state = getelementptr i8, ptr %subdev, i32 320
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %mbus_code = getelementptr i8, ptr %subdev, i32 324
  %2 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbus_code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 12289, label %sw.bb
    i32 12295, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %frame_interval = getelementptr inbounds %struct.ov5648_mode, ptr %1, i32 0, i32 16
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr %struct.ov5648_mode, ptr %1, i32 0, i32 16, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb
  %arrayidx7.sink = phi ptr [ %arrayidx7, %sw.bb4 ], [ %frame_interval, %sw.bb ]
  %interval5.sink = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %interval, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx7.sink to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %arrayidx7.sink, align 4
  %7 = ptrtoint ptr %interval5.sink to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %interval5.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_write(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %address, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %conv = zext i16 %address to i32
  %2 = lshr i16 %address, 8
  %conv1 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %data, align 1
  %conv3 = trunc i16 %address to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %value, ptr %1, align 1
  %i2c_client = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %data, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_write, %if.then9)) #8
          to label %cleanup [label %if.then9], !srcloc !201

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.body ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5648_enum_mbus_code(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code_enum) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code_enum, i32 0, i32 1
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
  %arrayidx = getelementptr [2 x i32], ptr @ov5648_mbus_codes, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code_enum, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov5648_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %size_enum) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size_enum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size_enum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ugt i32 %1, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %output_size_x = getelementptr [6 x %struct.ov5648_mode], ptr @ov5648_modes, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %output_size_x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_size_x, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %size_enum, i32 0, i32 4
  %4 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %max_width, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %size_enum, i32 0, i32 3
  %5 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %min_width, align 4
  %output_size_y = getelementptr [6 x %struct.ov5648_mode], ptr @ov5648_modes, i32 0, i32 %1, i32 7
  %6 = ptrtoint ptr %output_size_y to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output_size_y, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %size_enum, i32 0, i32 6
  %8 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %size_enum, i32 0, i32 5
  %9 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %min_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_enum_frame_interval(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %interval_enum) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %interval_enum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interval_enum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %interval_enum, i32 0, i32 3
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %interval_enum, i32 0, i32 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %3, label %for.cond.preheader.cleanup_crit_edge [
    i32 2592, label %land.lhs.true
    i32 1600, label %land.lhs.true.1
    i32 1920, label %land.lhs.true.2
    i32 1280, label %land.lhs.true.3
    i32 640, label %land.lhs.true.5
  ]

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1944, i32 %6)
  %cmp3 = icmp eq i32 %6, 1944
  br i1 %cmp3, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.1:                                  ; preds = %for.cond.preheader
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %8)
  %cmp3.1 = icmp eq i32 %8, 1200
  br i1 %cmp3.1, label %land.lhs.true.1.if.end13_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1.if.end13_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.2:                                  ; preds = %for.cond.preheader
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %10)
  %cmp3.2 = icmp eq i32 %10, 1080
  br i1 %cmp3.2, label %land.lhs.true.2.if.end13_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.2.if.end13_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.3:                                  ; preds = %for.cond.preheader
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %12)
  %cmp3.3 = icmp eq i32 %12, 960
  br i1 %cmp3.3, label %land.lhs.true.3.if.end13_crit_edge, label %land.lhs.true.4

land.lhs.true.3.if.end13_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %14)
  %cmp3.4 = icmp eq i32 %14, 720
  br i1 %cmp3.4, label %land.lhs.true.4.if.end13_crit_edge, label %land.lhs.true.4.cleanup_crit_edge

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.4.if.end13_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.5:                                  ; preds = %for.cond.preheader
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %16)
  %cmp3.5 = icmp eq i32 %16, 480
  br i1 %cmp3.5, label %land.lhs.true.5.if.end13_crit_edge, label %land.lhs.true.5.cleanup_crit_edge

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.5.if.end13_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.5.if.end13_crit_edge, %land.lhs.true.4.if.end13_crit_edge, %land.lhs.true.3.if.end13_crit_edge, %land.lhs.true.2.if.end13_crit_edge, %land.lhs.true.1.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge
  %mode_index.039.lcssa = phi i32 [ 0, %land.lhs.true.if.end13_crit_edge ], [ 1, %land.lhs.true.1.if.end13_crit_edge ], [ 2, %land.lhs.true.2.if.end13_crit_edge ], [ 3, %land.lhs.true.3.if.end13_crit_edge ], [ 4, %land.lhs.true.4.if.end13_crit_edge ], [ 5, %land.lhs.true.5.if.end13_crit_edge ]
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %interval_enum, i32 0, i32 2
  %17 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %18, label %if.end13.cleanup_crit_edge [
    i32 12289, label %sw.bb
    i32 12295, label %sw.bb15
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %frame_interval = getelementptr [6 x %struct.ov5648_mode], ptr @ov5648_modes, i32 0, i32 %mode_index.039.lcssa, i32 16
  br label %cleanup.sink.split

sw.bb15:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18 = getelementptr [6 x %struct.ov5648_mode], ptr @ov5648_modes, i32 0, i32 %mode_index.039.lcssa, i32 16, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb15, %sw.bb
  %frame_interval.sink = phi ptr [ %frame_interval, %sw.bb ], [ %arrayidx18, %sw.bb15 ]
  %interval.sink = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %interval_enum, i32 0, i32 5
  %20 = ptrtoint ptr %frame_interval.sink to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %frame_interval.sink, align 4
  %22 = ptrtoint ptr %interval.sink to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %interval.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %land.lhs.true.5.cleanup_crit_edge ], [ -22, %land.lhs.true.2.cleanup_crit_edge ], [ -22, %land.lhs.true.4.cleanup_crit_edge ], [ -22, %land.lhs.true.1.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_get_fmt(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %mutex = getelementptr i8, ptr %subdev, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %3, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !202

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %8 = call ptr @memcpy(ptr %format1, ptr %arrayidx.i, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr i8, ptr %subdev, i32 320
  %mbus_code = getelementptr i8, ptr %subdev, i32 324
  %9 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbus_code, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %output_size_x.i = getelementptr inbounds %struct.ov5648_mode, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %output_size_x.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %output_size_x.i, align 4
  %15 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %format1, align 4
  %output_size_y.i = getelementptr inbounds %struct.ov5648_mode, ptr %12, i32 0, i32 7
  %16 = ptrtoint ptr %output_size_y.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %output_size_y.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %10, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 11, ptr %colorspace.i, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %22, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 5, ptr %xfer_func.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_set_fmt(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -96
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %mutex = getelementptr i8, ptr %subdev, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %state = getelementptr i8, ptr %subdev, i32 320
  %streaming = getelementptr i8, ptr %subdev, i32 328
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.complete_crit_edge

entry.complete_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

for.cond.preheader:                               ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12295, i32 %3)
  %cond = icmp eq i32 %3, 12295
  %spec.select = select i1 %cond, i32 12295, i32 12289
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %call = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov5648_modes, i32 noundef 6, i32 noundef 96, i32 noundef 8, i32 noundef 28, i32 noundef %5, i32 noundef %7) #8
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %for.cond.preheader.complete_crit_edge, label %if.end12

for.cond.preheader.complete_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

if.end12:                                         ; preds = %for.cond.preheader
  %output_size_x.i = getelementptr inbounds %struct.ov5648_mode, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %output_size_x.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output_size_x.i, align 4
  %10 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %format1, align 4
  %output_size_y.i = getelementptr inbounds %struct.ov5648_mode, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %output_size_y.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %output_size_y.i, align 4
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height, align 4
  %14 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %code, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 11, ptr %colorspace.i, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %17, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %20 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 5, ptr %xfer_func.i, align 4
  %21 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp13 = icmp eq i32 %22, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %23 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %25 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %24, %conv.i
  br i1 %cmp.not.i, label %if.then14.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !202

if.then14.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then14.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %24, %if.then14.v4l2_subdev_get_try_format.exit_crit_edge ]
  %27 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %28, i32 %spec.select.i
  %29 = call ptr @memcpy(ptr %arrayidx.i, ptr %format1, i32 48)
  br label %complete

if.else:                                          ; preds = %if.end12
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 4
  %cmp18.not = icmp eq ptr %31, %call
  br i1 %cmp18.not, label %lor.lhs.false, label %if.else.if.then22_crit_edge

if.else.if.then22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.else
  %mbus_code20 = getelementptr i8, ptr %subdev, i32 324
  %32 = ptrtoint ptr %mbus_code20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mbus_code20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %spec.select)
  %cmp21.not = icmp eq i32 %33, %spec.select
  br i1 %cmp21.not, label %lor.lhs.false.complete_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false.complete_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.else.if.then22_crit_edge
  %call23 = tail call fastcc i32 @ov5648_state_configure(ptr noundef %add.ptr, ptr noundef nonnull %call, i32 noundef %spec.select)
  br label %complete

complete:                                         ; preds = %if.then22, %lor.lhs.false.complete_crit_edge, %v4l2_subdev_get_try_format.exit, %for.cond.preheader.complete_crit_edge, %entry.complete_crit_edge
  %ret.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ %call23, %if.then22 ], [ 0, %lor.lhs.false.complete_crit_edge ], [ -16, %entry.complete_crit_edge ], [ -22, %for.cond.preheader.complete_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_state_configure(ptr noundef %sensor, ptr noundef %mode, i32 noundef %mbus_code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 12
  %streaming = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 4
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %land.lhs.true.if.end8_crit_edge, label %if.then3

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %land.lhs.true
  %call4 = tail call fastcc i32 @ov5648_mode_configure(ptr noundef %sensor, ptr noundef %mode, i32 noundef %mbus_code)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %7 = zext i32 %mbus_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %mbus_code, label %if.end8.cleanup_crit_edge [
    i32 12289, label %sw.bb.i.i
    i32 12295, label %sw.bb1.i.i
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %pll1_config.i.i = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 17
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i.i = getelementptr %struct.ov5648_mode, ptr %mode, i32 0, i32 17, i32 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %config.0.in.i.i = phi ptr [ %arrayidx3.i.i, %sw.bb1.i.i ], [ %pll1_config.i.i, %sw.bb.i.i ]
  %8 = ptrtoint ptr %config.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %config.0.i.i = load ptr, ptr %config.0.in.i.i, align 4
  %xvclk.i.i.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 7
  %9 = ptrtoint ptr %xvclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xvclk.i.i.i, align 4
  %call.i.i.i = tail call i32 @clk_get_rate(ptr noundef %10) #8
  %pll_mul.i.i.i = getelementptr inbounds %struct.ov5648_pll1_config, ptr %config.0.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %pll_mul.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll_mul.i.i.i, align 4
  %mul.i.i.i = mul i32 %12, %call.i.i.i
  %13 = ptrtoint ptr %config.0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config.0.i.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %14, label %sw.default.i.i.i [
    i32 5, label %sw.bb.i.i.i
    i32 7, label %sw.bb2.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul1.i.i.i = mul i32 %mul.i.i.i, 3
  %div15.i.i.i = lshr i32 %mul1.i.i.i, 1
  br label %ov5648_mode_mipi_clk_rate.exit.i

sw.bb2.i.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul3.i.i.i = mul i32 %mul.i.i.i, 5
  %div414.i.i.i = lshr i32 %mul3.i.i.i, 1
  br label %ov5648_mode_mipi_clk_rate.exit.i

sw.default.i.i.i:                                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div6.i.i.i = udiv i32 %mul.i.i.i, %14
  br label %ov5648_mode_mipi_clk_rate.exit.i

ov5648_mode_mipi_clk_rate.exit.i:                 ; preds = %sw.default.i.i.i, %sw.bb2.i.i.i, %sw.bb.i.i.i
  %pll1_rate.0.i.i.i = phi i32 [ %div6.i.i.i, %sw.default.i.i.i ], [ %div414.i.i.i, %sw.bb2.i.i.i ], [ %div15.i.i.i, %sw.bb.i.i.i ]
  %sys_div.i.i = getelementptr inbounds %struct.ov5648_pll1_config, ptr %config.0.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %sys_div.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sys_div.i.i, align 4
  %div.i.i = udiv i32 %pll1_rate.0.i.i.i, %17
  %mipi_div.i.i = getelementptr inbounds %struct.ov5648_pll1_config, ptr %config.0.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %mipi_div.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mipi_div.i.i, align 4
  %div4.i.i = udiv i32 %div.i.i, %19
  %div510.i.i = lshr i32 %div4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div4.i.i)
  %tobool.not.i33 = icmp ult i32 %div4.i.i, 2
  br i1 %tobool.not.i33, label %ov5648_mode_mipi_clk_rate.exit.i.cleanup_crit_edge, label %for.cond.preheader.i

ov5648_mode_mipi_clk_rate.exit.i.cleanup_crit_edge: ; preds = %ov5648_mode_mipi_clk_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %ov5648_mode_mipi_clk_rate.exit.i
  %conv.i = zext i32 %div510.i.i to i64
  %20 = zext i32 %div510.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %div510.i.i, label %for.end.thread.i [
    i32 210000000, label %for.cond.preheader.i.for.end.i_crit_edge
    i32 168000000, label %for.end.fold.split.i
  ]

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split.i:                             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split.i, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ 1, %for.end.fold.split.i ]
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 8, i32 4
  %21 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp880.not.i = icmp eq i32 %22, 0
  br i1 %cmp880.not.i, label %for.end.i.do.end35.i_crit_edge, label %for.end.i.for.body10.lr.ph.i_crit_edge

for.end.i.for.body10.lr.ph.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.lr.ph.i

for.end.i.do.end35.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i

for.end.thread.i:                                 ; preds = %for.cond.preheader.i
  %nr_of_link_frequencies91.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 8, i32 4
  %23 = ptrtoint ptr %nr_of_link_frequencies91.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_of_link_frequencies91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp880.not92.i = icmp eq i32 %24, 0
  br i1 %cmp880.not92.i, label %for.end.thread.i.do.end.i_crit_edge, label %for.end.thread.i.for.body10.lr.ph.i_crit_edge

for.end.thread.i.for.body10.lr.ph.i_crit_edge:    ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.lr.ph.i

for.end.thread.i.do.end.i_crit_edge:              ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body10.lr.ph.i:                               ; preds = %for.end.thread.i.for.body10.lr.ph.i_crit_edge, %for.end.i.for.body10.lr.ph.i_crit_edge
  %25 = phi i32 [ %24, %for.end.thread.i.for.body10.lr.ph.i_crit_edge ], [ %22, %for.end.i.for.body10.lr.ph.i_crit_edge ]
  %i.0.lcssa95.i = phi i32 [ 2, %for.end.thread.i.for.body10.lr.ph.i_crit_edge ], [ %i.0.lcssa.i, %for.end.i.for.body10.lr.ph.i_crit_edge ]
  %cmp2593.i = phi i1 [ true, %for.end.thread.i.for.body10.lr.ph.i_crit_edge ], [ false, %for.end.i.for.body10.lr.ph.i_crit_edge ]
  %link_frequencies.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 8, i32 3
  %26 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc22.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %j.081.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc23.i, %for.inc22.i.for.body10.i_crit_edge ]
  %arrayidx13.i = getelementptr i64, ptr %27, i32 %j.081.i
  %28 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %conv.i)
  %cmp15.i = icmp eq i64 %29, %conv.i
  br i1 %cmp15.i, label %for.body10.i.for.end24.i_crit_edge, label %for.inc22.i

for.body10.i.for.end24.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24.i

for.inc22.i:                                      ; preds = %for.body10.i
  %inc23.i = add nuw i32 %j.081.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i, %25
  br i1 %exitcond.not.i, label %for.inc22.i.for.end24.i_crit_edge, label %for.inc22.i.for.body10.i_crit_edge

for.inc22.i.for.body10.i_crit_edge:               ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

for.inc22.i.for.end24.i_crit_edge:                ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24.i

for.end24.i:                                      ; preds = %for.inc22.i.for.end24.i_crit_edge, %for.body10.i.for.end24.i_crit_edge
  %j.0.lcssa.i = phi i32 [ %25, %for.inc22.i.for.end24.i_crit_edge ], [ %j.081.i, %for.body10.i.for.end24.i_crit_edge ]
  br i1 %cmp2593.i, label %for.end24.i.do.end.i_crit_edge, label %if.else.i

for.end24.i.do.end.i_crit_edge:                   ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %for.end24.i.do.end.i_crit_edge, %for.end.thread.i.do.end.i_crit_edge
  %30 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.36, i32 noundef %div510.i.i) #11
  br label %if.end40.i

if.else.i:                                        ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %25)
  %cmp30.i = icmp eq i32 %j.0.lcssa.i, %25
  br i1 %cmp30.i, label %if.else.i.do.end35.i_crit_edge, label %if.else37.i

if.else.i.do.end35.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.else.i.do.end35.i_crit_edge, %for.end.i.do.end35.i_crit_edge
  %32 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.39, i32 noundef %div510.i.i) #11
  br label %if.end40.i

if.else37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %link_freq.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 13, i32 7
  %34 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load ptr, ptr %link_freq.i, align 1
  %call38.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %35, i32 noundef %i.0.lcssa95.i) #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else37.i, %do.end35.i, %do.end.i
  %36 = zext i32 %mbus_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %mbus_code, label %if.end40.i.cleanup_crit_edge [
    i32 12289, label %if.end40.i.if.end12_crit_edge
    i32 12295, label %sw.bb41.i
  ]

if.end40.i.if.end12_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb41.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %sw.bb41.i, %if.end40.i.if.end12_crit_edge
  %bits_per_sample.0.i = phi i32 [ 10, %sw.bb41.i ], [ 8, %if.end40.i.if.end12_crit_edge ]
  %num_data_lanes.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 8, i32 2, i32 2, i32 3
  %37 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_data_lanes.i, align 1
  %conv42.i = zext i8 %38 to i32
  %mul.i = and i32 %div4.i.i, -2
  %mul43.i = mul i32 %mul.i, %conv42.i
  %div.i = udiv i32 %mul43.i, %bits_per_sample.0.i
  %conv44.i = zext i32 %div.i to i64
  %pixel_rate.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 13, i32 8
  %39 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load ptr, ptr %pixel_rate.i, align 1
  %call45.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %40, i64 noundef %conv44.i) #8
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %mode, ptr %state, align 4
  %mbus_code16 = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 12, i32 1
  %42 = ptrtoint ptr %mbus_code16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mbus_code, ptr %mbus_code16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end40.i.cleanup_crit_edge, %ov5648_mode_mipi_clk_rate.exit.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -16, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ -22, %ov5648_mode_mipi_clk_rate.exit.i.cleanup_crit_edge ], [ -22, %if.end40.i.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_mode_configure(ptr noundef readonly %sensor, ptr noundef readonly %mode, i32 noundef %mbus_code) unnamed_addr #2 align 64 {
entry:
  %data.i308 = alloca [3 x i8], align 1
  %data.i299 = alloca [3 x i8], align 1
  %data.i290 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %and = lshr i32 %1, 8
  %2 = trunc i32 %and to i8
  %conv = and i8 %2, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 56, ptr %data.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %4, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 14336) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %conv3 = trunc i32 %11 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i290) #8
  %12 = getelementptr inbounds [3 x i8], ptr %data.i290, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i290, i32 0, i32 2
  %14 = ptrtoint ptr %data.i290 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 56, ptr %data.i290, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3, ptr %13, align 1
  %17 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i292 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i290, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i292)
  %cmp.i293 = icmp slt i32 %call.i.i292, 0
  br i1 %cmp.i293, label %do.body.i294, label %if.end7

do.body.i294:                                     ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_configure, %if.then9.i296)) #8
          to label %ov5648_write.exit298 [label %if.then9.i296], !srcloc !201

if.then9.i296:                                    ; preds = %do.body.i294
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i295 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i295, ptr noundef nonnull @.str.32, i32 noundef 14337) #8
  br label %ov5648_write.exit298

ov5648_write.exit298:                             ; preds = %if.then9.i296, %do.body.i294
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i290) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i290) #8
  %offset_x = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 1
  %19 = ptrtoint ptr %offset_x to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset_x, align 4
  %and8 = lshr i32 %20, 8
  %21 = trunc i32 %and8 to i8
  %conv10 = and i8 %21, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i299) #8
  %22 = getelementptr inbounds [3 x i8], ptr %data.i299, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %data.i299, i32 0, i32 2
  %24 = ptrtoint ptr %data.i299 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 56, ptr %data.i299, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %22, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10, ptr %23, align 1
  %27 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i301 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %data.i299, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i301)
  %cmp.i302 = icmp slt i32 %call.i.i301, 0
  br i1 %cmp.i302, label %do.body.i303, label %if.end14

do.body.i303:                                     ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_configure, %if.then9.i305)) #8
          to label %ov5648_write.exit307 [label %if.then9.i305], !srcloc !201

if.then9.i305:                                    ; preds = %do.body.i303
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i304 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i304, ptr noundef nonnull @.str.32, i32 noundef 14352) #8
  br label %ov5648_write.exit307

ov5648_write.exit307:                             ; preds = %if.then9.i305, %do.body.i303
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i299) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i299) #8
  %29 = ptrtoint ptr %offset_x to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset_x, align 4
  %conv17 = trunc i32 %30 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i308) #8
  %31 = getelementptr inbounds [3 x i8], ptr %data.i308, i32 0, i32 1
  %32 = getelementptr inbounds [3 x i8], ptr %data.i308, i32 0, i32 2
  %33 = ptrtoint ptr %data.i308 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 56, ptr %data.i308, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 17, ptr %31, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv17, ptr %32, align 1
  %36 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i310 = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %data.i308, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i310)
  %cmp.i311 = icmp slt i32 %call.i.i310, 0
  br i1 %cmp.i311, label %do.body.i312, label %if.end21

do.body.i312:                                     ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_configure, %if.then9.i314)) #8
          to label %ov5648_write.exit316 [label %if.then9.i314], !srcloc !201

if.then9.i314:                                    ; preds = %do.body.i312
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i313 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i313, ptr noundef nonnull @.str.32, i32 noundef 14353) #8
  br label %ov5648_write.exit316

ov5648_write.exit316:                             ; preds = %if.then9.i314, %do.body.i312
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i308) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i308) #8
  %output_size_x = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 2
  %38 = ptrtoint ptr %output_size_x to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %output_size_x, align 4
  %and22 = lshr i32 %39, 8
  %40 = trunc i32 %and22 to i8
  %conv24 = and i8 %40, 15
  %call25 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14344, i8 noundef zeroext %conv24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %41 = ptrtoint ptr %output_size_x to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %output_size_x, align 4
  %conv31 = trunc i32 %42 to i8
  %call32 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14345, i8 noundef zeroext %conv31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %crop_end_x = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 3
  %43 = ptrtoint ptr %crop_end_x to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crop_end_x, align 4
  %and36 = lshr i32 %44, 8
  %45 = trunc i32 %and36 to i8
  %conv38 = and i8 %45, 15
  %call39 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14340, i8 noundef zeroext %conv38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %46 = ptrtoint ptr %crop_end_x to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %crop_end_x, align 4
  %conv45 = trunc i32 %47 to i8
  %call46 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14341, i8 noundef zeroext %conv45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  %hts = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 4
  %48 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hts, align 4
  %and50 = lshr i32 %49, 8
  %50 = trunc i32 %and50 to i8
  %conv52 = and i8 %50, 31
  %call53 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14348, i8 noundef zeroext %conv52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  %51 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hts, align 4
  %conv59 = trunc i32 %52 to i8
  %call60 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14349, i8 noundef zeroext %conv59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %if.end56
  %crop_start_y = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 5
  %53 = ptrtoint ptr %crop_start_y to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %crop_start_y, align 4
  %and64 = lshr i32 %54, 8
  %55 = trunc i32 %and64 to i8
  %conv66 = and i8 %55, 15
  %call67 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14338, i8 noundef zeroext %conv66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70:                                         ; preds = %if.end63
  %56 = ptrtoint ptr %crop_start_y to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crop_start_y, align 4
  %conv73 = trunc i32 %57 to i8
  %call74 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14339, i8 noundef zeroext %conv73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %if.end70
  %offset_y = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 6
  %58 = ptrtoint ptr %offset_y to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset_y, align 4
  %and78 = lshr i32 %59, 8
  %60 = trunc i32 %and78 to i8
  %conv80 = and i8 %60, 15
  %call81 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14354, i8 noundef zeroext %conv80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84:                                         ; preds = %if.end77
  %61 = ptrtoint ptr %offset_y to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset_y, align 4
  %conv87 = trunc i32 %62 to i8
  %call88 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14355, i8 noundef zeroext %conv87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end91:                                         ; preds = %if.end84
  %output_size_y = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 7
  %63 = ptrtoint ptr %output_size_y to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %output_size_y, align 4
  %and92 = lshr i32 %64, 8
  %65 = trunc i32 %and92 to i8
  %conv94 = and i8 %65, 15
  %call95 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14346, i8 noundef zeroext %conv94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end98:                                         ; preds = %if.end91
  %66 = ptrtoint ptr %output_size_y to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %output_size_y, align 4
  %conv101 = trunc i32 %67 to i8
  %call102 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14347, i8 noundef zeroext %conv101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end105:                                        ; preds = %if.end98
  %crop_end_y = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 8
  %68 = ptrtoint ptr %crop_end_y to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crop_end_y, align 4
  %and106 = lshr i32 %69, 8
  %70 = trunc i32 %and106 to i8
  %conv108 = and i8 %70, 15
  %call109 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14342, i8 noundef zeroext %conv108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end112:                                        ; preds = %if.end105
  %71 = ptrtoint ptr %crop_end_y to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %crop_end_y, align 4
  %conv115 = trunc i32 %72 to i8
  %call116 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14343, i8 noundef zeroext %conv115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end119:                                        ; preds = %if.end112
  %vts = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 9
  %73 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vts, align 4
  %and120 = lshr i32 %74, 8
  %conv122 = trunc i32 %and120 to i8
  %call123 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14350, i8 noundef zeroext %conv122)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end119.cleanup_crit_edge

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end126:                                        ; preds = %if.end119
  %75 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vts, align 4
  %conv129 = trunc i32 %76 to i8
  %call130 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14351, i8 noundef zeroext %conv129)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end126.cleanup_crit_edge

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end133:                                        ; preds = %if.end126
  %binning_y = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 11
  %77 = ptrtoint ptr %binning_y to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %binning_y, align 1, !range !203
  %call137 = call fastcc i32 @ov5648_update_bits(ptr noundef %sensor, i16 noundef zeroext 14368, i8 noundef zeroext 65, i8 noundef zeroext %78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end140:                                        ; preds = %if.end133
  %binning_x = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 10
  %79 = ptrtoint ptr %binning_x to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %binning_x, align 4, !range !203
  %call145 = call fastcc i32 @ov5648_update_bits(ptr noundef %sensor, i16 noundef zeroext 14369, i8 noundef zeroext 1, i8 noundef zeroext %80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end148:                                        ; preds = %if.end140
  %inc_x_odd = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 12
  %81 = ptrtoint ptr %inc_x_odd to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %inc_x_odd, align 4
  %shl = shl i32 %82, 4
  %inc_x_even = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 13
  %83 = ptrtoint ptr %inc_x_even to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %inc_x_even, align 4
  %and150 = and i32 %84, 15
  %or = or i32 %and150, %shl
  %conv151 = trunc i32 %or to i8
  %call152 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14356, i8 noundef zeroext %conv151)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.end148.cleanup_crit_edge

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end155:                                        ; preds = %if.end148
  %inc_y_odd = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 14
  %85 = ptrtoint ptr %inc_y_odd to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %inc_y_odd, align 4
  %shl156 = shl i32 %86, 4
  %inc_y_even = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 15
  %87 = ptrtoint ptr %inc_y_even to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %inc_y_even, align 4
  %and158 = and i32 %88, 15
  %or159 = or i32 %and158, %shl156
  %conv160 = trunc i32 %or159 to i8
  %call161 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14357, i8 noundef zeroext %conv160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.end155.cleanup_crit_edge

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end164:                                        ; preds = %if.end155
  %call165 = call fastcc i32 @ov5648_mode_pll1_configure(ptr noundef %sensor, ptr noundef %mode, i32 noundef %mbus_code)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %if.end164.cleanup_crit_edge

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end168:                                        ; preds = %if.end164
  %call169 = call fastcc i32 @ov5648_mode_pll2_configure(ptr noundef %sensor, ptr noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %if.end168.cleanup_crit_edge

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end172:                                        ; preds = %if.end168
  %register_values = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 19
  %89 = ptrtoint ptr %register_values to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %register_values, align 4
  %tobool173.not = icmp eq ptr %90, null
  br i1 %tobool173.not, label %if.end172.if.end180_crit_edge, label %if.then174

if.end172.if.end180_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

if.then174:                                       ; preds = %if.end172
  %register_values_count = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 20
  %91 = ptrtoint ptr %register_values_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %register_values_count, align 4
  %call176 = call fastcc i32 @ov5648_write_sequence(ptr noundef %sensor, ptr noundef nonnull %90, i32 noundef %92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then174.if.end180_crit_edge, label %if.then174.cleanup_crit_edge

if.then174.cleanup_crit_edge:                     ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then174.if.end180_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

if.end180:                                        ; preds = %if.then174.if.end180_crit_edge, %if.end172.if.end180_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.then174.cleanup_crit_edge, %if.end168.cleanup_crit_edge, %if.end164.cleanup_crit_edge, %if.end155.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %if.end140.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %if.end126.cleanup_crit_edge, %if.end119.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %ov5648_write.exit316, %ov5648_write.exit307, %ov5648_write.exit298, %ov5648_write.exit
  %retval.0 = phi i32 [ 0, %if.end180 ], [ %call.i.i, %ov5648_write.exit ], [ %call.i.i292, %ov5648_write.exit298 ], [ %call.i.i301, %ov5648_write.exit307 ], [ %call.i.i310, %ov5648_write.exit316 ], [ %call25, %if.end21.cleanup_crit_edge ], [ %call32, %if.end28.cleanup_crit_edge ], [ %call39, %if.end35.cleanup_crit_edge ], [ %call46, %if.end42.cleanup_crit_edge ], [ %call53, %if.end49.cleanup_crit_edge ], [ %call60, %if.end56.cleanup_crit_edge ], [ %call67, %if.end63.cleanup_crit_edge ], [ %call74, %if.end70.cleanup_crit_edge ], [ %call81, %if.end77.cleanup_crit_edge ], [ %call88, %if.end84.cleanup_crit_edge ], [ %call95, %if.end91.cleanup_crit_edge ], [ %call102, %if.end98.cleanup_crit_edge ], [ %call109, %if.end105.cleanup_crit_edge ], [ %call116, %if.end112.cleanup_crit_edge ], [ %call123, %if.end119.cleanup_crit_edge ], [ %call130, %if.end126.cleanup_crit_edge ], [ %call137, %if.end133.cleanup_crit_edge ], [ %call145, %if.end140.cleanup_crit_edge ], [ %call152, %if.end148.cleanup_crit_edge ], [ %call161, %if.end155.cleanup_crit_edge ], [ %call165, %if.end164.cleanup_crit_edge ], [ %call169, %if.end168.cleanup_crit_edge ], [ %call176, %if.then174.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_update_bits(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %address, i8 noundef zeroext %mask, i8 noundef zeroext %bits) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %value, align 1
  %call = call fastcc i32 @ov5648_read(ptr noundef %sensor, i16 noundef zeroext %address, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg = xor i8 %mask, -1
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 1
  %and = and i8 %2, %neg
  %or16 = or i8 %and, %bits
  store i8 %or16, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %conv.i = zext i16 %address to i32
  %5 = lshr i16 %address, 8
  %conv1.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %data.i, align 1
  %conv3.i = trunc i16 %address to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or16, ptr %4, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end.ov5648_write.exit_crit_edge

if.end.ov5648_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_update_bits, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef %conv.i) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i, %if.end.ov5648_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.then9.i ], [ 0, %if.end.ov5648_write.exit_crit_edge ], [ %call.i.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5648_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i, %ov5648_write.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_mode_pll1_configure(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %mode, i32 noundef %mbus_code) unnamed_addr #2 align 64 {
entry:
  %data.i74 = alloca [3 x i8], align 1
  %data.i65 = alloca [3 x i8], align 1
  %data.i56 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mbus_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %mbus_code, label %entry.cleanup_crit_edge [
    i32 12289, label %sw.bb
    i32 12295, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pll1_config = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 17
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr %struct.ov5648_mode, ptr %mode, i32 0, i32 17, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %config.0.in = phi ptr [ %arrayidx4, %sw.bb2 ], [ %pll1_config, %sw.bb ]
  %value.0 = phi i8 [ 26, %sw.bb2 ], [ 24, %sw.bb ]
  %1 = ptrtoint ptr %config.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %config.0 = load ptr, ptr %config.0.in, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 48, ptr %data.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 52, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %value.0, ptr %3, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_pll1_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 12340) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %root_div = getelementptr inbounds %struct.ov5648_pll1_config, ptr %config.0, i32 0, i32 3
  %9 = ptrtoint ptr %root_div to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %root_div, align 4
  %sub = shl i32 %10, 4
  %11 = and i32 %sub, 16
  %12 = ptrtoint ptr %config.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config.0, align 4
  %and8 = and i32 %13, 15
  %14 = or i32 %11, %and8
  %15 = trunc i32 %14 to i8
  %conv10 = xor i8 %15, 16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i56) #8
  %16 = getelementptr inbounds [3 x i8], ptr %data.i56, i32 0, i32 1
  %17 = getelementptr inbounds [3 x i8], ptr %data.i56, i32 0, i32 2
  %18 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 48, ptr %data.i56, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 55, ptr %16, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10, ptr %17, align 1
  %21 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i58 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %data.i56, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.i59 = icmp slt i32 %call.i.i58, 0
  br i1 %cmp.i59, label %do.body.i60, label %if.end14

do.body.i60:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_pll1_configure, %if.then9.i62)) #8
          to label %ov5648_write.exit64 [label %if.then9.i62], !srcloc !201

if.then9.i62:                                     ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i61 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i61, ptr noundef nonnull @.str.32, i32 noundef 12343) #8
  br label %ov5648_write.exit64

ov5648_write.exit64:                              ; preds = %if.then9.i62, %do.body.i60
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i56) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i56) #8
  %pll_mul = getelementptr inbounds %struct.ov5648_pll1_config, ptr %config.0, i32 0, i32 1
  %23 = ptrtoint ptr %pll_mul to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pll_mul, align 4
  %conv16 = trunc i32 %24 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i65) #8
  %25 = getelementptr inbounds [3 x i8], ptr %data.i65, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i8], ptr %data.i65, i32 0, i32 2
  %27 = ptrtoint ptr %data.i65 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 48, ptr %data.i65, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 54, ptr %25, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv16, ptr %26, align 1
  %30 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i67 = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %data.i65, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %cmp.i68 = icmp slt i32 %call.i.i67, 0
  br i1 %cmp.i68, label %do.body.i69, label %if.end20

do.body.i69:                                      ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_pll1_configure, %if.then9.i71)) #8
          to label %ov5648_write.exit73 [label %if.then9.i71], !srcloc !201

if.then9.i71:                                     ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i70 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i70, ptr noundef nonnull @.str.32, i32 noundef 12342) #8
  br label %ov5648_write.exit73

ov5648_write.exit73:                              ; preds = %if.then9.i71, %do.body.i69
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i65) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i65) #8
  %sys_div = getelementptr inbounds %struct.ov5648_pll1_config, ptr %config.0, i32 0, i32 2
  %32 = ptrtoint ptr %sys_div to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sys_div, align 4
  %shl21 = shl i32 %33, 4
  %mipi_div = getelementptr inbounds %struct.ov5648_pll1_config, ptr %config.0, i32 0, i32 5
  %34 = ptrtoint ptr %mipi_div to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mipi_div, align 4
  %and23 = and i32 %35, 15
  %or24 = or i32 %and23, %shl21
  %conv25 = trunc i32 %or24 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i74) #8
  %36 = getelementptr inbounds [3 x i8], ptr %data.i74, i32 0, i32 1
  %37 = getelementptr inbounds [3 x i8], ptr %data.i74, i32 0, i32 2
  %38 = ptrtoint ptr %data.i74 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 48, ptr %data.i74, align 1
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 53, ptr %36, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv25, ptr %37, align 1
  %41 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i76 = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %data.i74, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %cmp.i77 = icmp slt i32 %call.i.i76, 0
  br i1 %cmp.i77, label %do.body.i78, label %if.end29

do.body.i78:                                      ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_pll1_configure, %if.then9.i80)) #8
          to label %ov5648_write.exit82 [label %if.then9.i80], !srcloc !201

if.then9.i80:                                     ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i79 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i79, ptr noundef nonnull @.str.32, i32 noundef 12341) #8
  br label %ov5648_write.exit82

ov5648_write.exit82:                              ; preds = %if.then9.i80, %do.body.i78
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i74) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i74) #8
  %sclk_div = getelementptr inbounds %struct.ov5648_pll1_config, ptr %config.0, i32 0, i32 4
  %43 = ptrtoint ptr %sclk_div to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sclk_div, align 4
  %.tr = trunc i32 %44 to i8
  %45 = shl i8 %.tr, 2
  %46 = and i8 %45, 12
  %conv33 = or i8 %46, 1
  %call34 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 12550, i8 noundef zeroext %conv33)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %ov5648_write.exit82, %ov5648_write.exit73, %ov5648_write.exit64, %ov5648_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end29 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %ov5648_write.exit ], [ %call.i.i58, %ov5648_write.exit64 ], [ %call.i.i67, %ov5648_write.exit73 ], [ %call.i.i76, %ov5648_write.exit82 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_mode_pll2_configure(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  %data.i34 = alloca [3 x i8], align 1
  %data.i25 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll2_config = getelementptr inbounds %struct.ov5648_mode, ptr %mode, i32 0, i32 18
  %0 = ptrtoint ptr %pll2_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll2_config, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shl = shl i32 %3, 4
  %and = and i32 %shl, 48
  %plls_div_r = getelementptr inbounds %struct.ov5648_pll2_config, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %plls_div_r to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %plls_div_r, align 4
  %sub = shl i32 %5, 2
  %6 = and i32 %sub, 4
  %7 = or i32 %6, %and
  %sel_div = getelementptr inbounds %struct.ov5648_pll2_config, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %sel_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel_div, align 4
  %and3 = and i32 %9, 3
  %10 = or i32 %7, %and3
  %11 = trunc i32 %10 to i8
  %conv = xor i8 %11, 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %12 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 48, ptr %data.i, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 61, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %13, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %17 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_pll2_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 12349) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %plls_mul = getelementptr inbounds %struct.ov5648_pll2_config, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %plls_mul to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %plls_mul, align 4
  %21 = trunc i32 %20 to i8
  %conv6 = and i8 %21, 31
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i25) #8
  %22 = getelementptr inbounds [3 x i8], ptr %data.i25, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %data.i25, i32 0, i32 2
  %24 = ptrtoint ptr %data.i25 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 48, ptr %data.i25, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 59, ptr %22, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv6, ptr %23, align 1
  %27 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i27 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %data.i25, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %cmp.i28 = icmp slt i32 %call.i.i27, 0
  br i1 %cmp.i28, label %do.body.i29, label %if.end10

do.body.i29:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_pll2_configure, %if.then9.i31)) #8
          to label %ov5648_write.exit33 [label %if.then9.i31], !srcloc !201

if.then9.i31:                                     ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i30 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i30, ptr noundef nonnull @.str.32, i32 noundef 12347) #8
  br label %ov5648_write.exit33

ov5648_write.exit33:                              ; preds = %if.then9.i31, %do.body.i29
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i25) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i25) #8
  %sys_div = getelementptr inbounds %struct.ov5648_pll2_config, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %sys_div to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sys_div, align 4
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 15
  %conv13 = or i8 %32, 16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i34) #8
  %33 = getelementptr inbounds [3 x i8], ptr %data.i34, i32 0, i32 1
  %34 = getelementptr inbounds [3 x i8], ptr %data.i34, i32 0, i32 2
  %35 = ptrtoint ptr %data.i34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 48, ptr %data.i34, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 60, ptr %33, align 1
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv13, ptr %34, align 1
  %38 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i36 = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %data.i34, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %cmp.i37 = icmp slt i32 %call.i.i36, 0
  br i1 %cmp.i37, label %do.body.i38, label %if.end10.ov5648_write.exit42_crit_edge

if.end10.ov5648_write.exit42_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit42

do.body.i38:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mode_pll2_configure, %if.then9.i40)) #8
          to label %ov5648_write.exit42 [label %if.then9.i40], !srcloc !201

if.then9.i40:                                     ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i39 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i39, ptr noundef nonnull @.str.32, i32 noundef 12348) #8
  br label %ov5648_write.exit42

ov5648_write.exit42:                              ; preds = %if.then9.i40, %do.body.i38, %if.end10.ov5648_write.exit42_crit_edge
  %retval.0.i41 = phi i32 [ %call.i.i36, %if.then9.i40 ], [ 0, %if.end10.ov5648_write.exit42_crit_edge ], [ %call.i.i36, %do.body.i38 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i34) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5648_write.exit42, %ov5648_write.exit33, %ov5648_write.exit
  %retval.0 = phi i32 [ %retval.0.i41, %ov5648_write.exit42 ], [ %call.i.i, %ov5648_write.exit ], [ %call.i.i27, %ov5648_write.exit33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_write_sequence(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %sequence, i32 noundef %sequence_count) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sequence_count)
  %cmp20.not = icmp eq i32 %sequence_count, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ov5648_register_value, ptr %sequence, i32 %i.021
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %value = getelementptr %struct.ov5648_register_value, ptr %sequence, i32 %i.021, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %6 = lshr i16 %3, 8
  %conv1.i = trunc i16 %6 to i8
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %data.i, align 1
  %conv3.i = trunc i16 %3 to i8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %5, ptr %1, align 1
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_write_sequence, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.le = zext i16 %3 to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef %conv.i.le) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %delay_ms = getelementptr %struct.ov5648_register_value, ptr %sequence, i32 %i.021, i32 2
  %12 = ptrtoint ptr %delay_ms to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef %13) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %sequence_count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ov5648_write.exit, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %call.i.i, %ov5648_write.exit ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_read(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %address, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %conv = zext i16 %address to i32
  %1 = lshr i16 %address, 8
  %conv1 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %data, align 1
  %conv3 = trunc i16 %address to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  %i2c_client = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %data, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_read, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !201

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_read.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %conv) #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call.i48 = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef %value, i32 noundef 1, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp12 = icmp slt i32 %call.i48, 0
  br i1 %cmp12, label %do.body15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_read.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_read, %if.then27)) #8
          to label %cleanup [label %if.then27], !srcloc !201

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_read.__UNIQUE_ID_ddebug294, ptr noundef %dev28, ptr noundef nonnull @.str.35, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %if.end10.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then8 ], [ %call.i48, %if.then27 ], [ 0, %if.end10.cleanup_crit_edge ], [ %call.i, %do.body ], [ %call.i48, %do.body15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %gain_h.i = alloca i8, align 1
  %gain_l.i = alloca i8, align 1
  %exposure_hh.i = alloca i8, align 1
  %exposure_h.i = alloca i8, align 1
  %exposure_l.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr4 = getelementptr i8, ptr %1, i32 -464
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10094849, label %sw.bb
    i32 9963794, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %exposure = getelementptr i8, ptr %1, i32 -32
  %5 = ptrtoint ptr %exposure to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load ptr, ptr %exposure, align 1
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exposure_hh.i) #8
  %7 = ptrtoint ptr %exposure_hh.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %exposure_hh.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exposure_h.i) #8
  %8 = ptrtoint ptr %exposure_h.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %exposure_h.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exposure_l.i) #8
  %9 = ptrtoint ptr %exposure_l.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %exposure_l.i, align 1
  %call.i = call fastcc i32 @ov5648_read(ptr noundef %add.ptr4, i16 noundef zeroext 13568, ptr noundef nonnull %exposure_hh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.ov5648_exposure_value.exit.thread_crit_edge

sw.bb.ov5648_exposure_value.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_exposure_value.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %call1.i = call fastcc i32 @ov5648_read(ptr noundef %add.ptr4, i16 noundef zeroext 13569, ptr noundef nonnull %exposure_h.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.ov5648_exposure_value.exit.thread_crit_edge

if.end.i.ov5648_exposure_value.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_exposure_value.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc i32 @ov5648_read(ptr noundef %add.ptr4, i16 noundef zeroext 13570, ptr noundef nonnull %exposure_l.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %ov5648_exposure_value.exit, label %if.end4.i.ov5648_exposure_value.exit.thread_crit_edge

if.end4.i.ov5648_exposure_value.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_exposure_value.exit.thread

ov5648_exposure_value.exit.thread:                ; preds = %if.end4.i.ov5648_exposure_value.exit.thread_crit_edge, %if.end.i.ov5648_exposure_value.exit.thread_crit_edge, %sw.bb.ov5648_exposure_value.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i, %if.end4.i.ov5648_exposure_value.exit.thread_crit_edge ], [ %call1.i, %if.end.i.ov5648_exposure_value.exit.thread_crit_edge ], [ %call.i, %sw.bb.ov5648_exposure_value.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exposure_l.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exposure_h.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exposure_hh.i) #8
  br label %cleanup

ov5648_exposure_value.exit:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %exposure_hh.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exposure_hh.i, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %and.i = and i32 %shl.i, 983040
  %12 = ptrtoint ptr %exposure_h.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %exposure_h.i, align 1
  %conv9.i = zext i8 %13 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 8
  %or.i = or i32 %and.i, %shl10.i
  %14 = ptrtoint ptr %exposure_l.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %exposure_l.i, align 1
  %conv12.i = zext i8 %15 to i32
  %or14.i = or i32 %or.i, %conv12.i
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or14.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exposure_l.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exposure_h.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exposure_hh.i) #8
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %gain = getelementptr i8, ptr %1, i32 -24
  %17 = ptrtoint ptr %gain to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load ptr, ptr %gain, align 1
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gain_h.i) #8
  %19 = ptrtoint ptr %gain_h.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %gain_h.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gain_l.i) #8
  %20 = ptrtoint ptr %gain_l.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %gain_l.i, align 1
  %call.i22 = call fastcc i32 @ov5648_read(ptr noundef %add.ptr4, i16 noundef zeroext 13578, ptr noundef nonnull %gain_h.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %sw.bb6.ov5648_gain_value.exit.thread_crit_edge

sw.bb6.ov5648_gain_value.exit.thread_crit_edge:   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_gain_value.exit.thread

if.end.i26:                                       ; preds = %sw.bb6
  %call1.i24 = call fastcc i32 @ov5648_read(ptr noundef %add.ptr4, i16 noundef zeroext 13579, ptr noundef nonnull %gain_l.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %ov5648_gain_value.exit, label %if.end.i26.ov5648_gain_value.exit.thread_crit_edge

if.end.i26.ov5648_gain_value.exit.thread_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_gain_value.exit.thread

ov5648_gain_value.exit.thread:                    ; preds = %if.end.i26.ov5648_gain_value.exit.thread_crit_edge, %sw.bb6.ov5648_gain_value.exit.thread_crit_edge
  %retval.0.i32.ph = phi i32 [ %call1.i24, %if.end.i26.ov5648_gain_value.exit.thread_crit_edge ], [ %call.i22, %sw.bb6.ov5648_gain_value.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gain_l.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gain_h.i) #8
  br label %cleanup

ov5648_gain_value.exit:                           ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %gain_h.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %gain_h.i, align 1
  %conv.i27 = zext i8 %22 to i32
  %shl.i28 = shl nuw nsw i32 %conv.i27, 8
  %and.i29 = and i32 %shl.i28, 768
  %23 = ptrtoint ptr %gain_l.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gain_l.i, align 1
  %conv5.i = zext i8 %24 to i32
  %or.i30 = or i32 %and.i29, %conv5.i
  %25 = ptrtoint ptr %val7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i30, ptr %val7, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gain_l.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gain_h.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5648_gain_value.exit, %ov5648_gain_value.exit.thread, %ov5648_exposure_value.exit, %ov5648_exposure_value.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %ov5648_exposure_value.exit.thread ], [ %retval.0.i32.ph, %ov5648_gain_value.exit.thread ], [ 0, %ov5648_gain_value.exit ], [ 0, %ov5648_exposure_value.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %data.i.i173 = alloca [3 x i8], align 1
  %data.i.i.i156 = alloca [3 x i8], align 1
  %value.i.i157 = alloca i8, align 1
  %data.i.i.i140 = alloca [3 x i8], align 1
  %value.i.i141 = alloca i8, align 1
  %data.i.i = alloca [3 x i8], align 1
  %data.i.i.i121 = alloca [3 x i8], align 1
  %value.i.i122 = alloca i8, align 1
  %data.i.i.i = alloca [3 x i8], align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr4 = getelementptr i8, ptr %1, i32 -464
  %2 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr4, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 10094849, label %sw.bb
    i32 9963794, label %sw.bb20
    i32 9963788, label %sw.bb38
    i32 9963796, label %sw.bb58
    i32 9963797, label %sw.bb66
    i32 10422531, label %sw.bb74
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #8
  %12 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %value.i.i, align 1
  %call.i.i = call fastcc i32 @ov5648_read(ptr noundef %add.ptr4, i16 noundef zeroext 13571, ptr noundef nonnull %value.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %ov5648_exposure_auto_configure.exit.thread

ov5648_exposure_auto_configure.exit.thread:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #8
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %not.enable.i = xor i1 %cmp, true
  %conv.i = zext i1 %not.enable.i to i8
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value.i.i, align 1
  %and.i.i = and i8 %14, -2
  %or16.i.i = or i8 %and.i.i, %conv.i
  store i8 %or16.i.i, ptr %value.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i) #8
  %15 = getelementptr inbounds [3 x i8], ptr %data.i.i.i, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %data.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 53, ptr %data.i.i.i, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or16.i.i, ptr %16, align 1
  %i2c_client.i.i.i = getelementptr i8, ptr %1, i32 -460
  %20 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %data.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end9

do.body.i.i.i:                                    ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_s_ctrl, %if.then9.i.i.i)) #8
          to label %ov5648_exposure_auto_configure.exit [label %if.then9.i.i.i], !srcloc !201

if.then9.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.32, i32 noundef 13571) #8
  br label %ov5648_exposure_auto_configure.exit

ov5648_exposure_auto_configure.exit:              ; preds = %if.then9.i.i.i, %do.body.i.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #8
  br i1 %cmp, label %if.end9.sw.epilog_crit_edge, label %land.lhs.true

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end9
  %exposure = getelementptr i8, ptr %1, i32 -32
  %22 = ptrtoint ptr %exposure to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load ptr, ptr %exposure, align 1
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load = load i32, ptr %is_new, align 4
  %25 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp eq i32 %25, 0
  br i1 %tobool11.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then12

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then12:                                        ; preds = %land.lhs.true
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %26 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val14, align 4
  %call15 = call fastcc i32 @ov5648_exposure_configure(ptr noundef %add.ptr4, i32 noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then12.sw.epilog_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12.sw.epilog_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %28 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not = icmp eq i32 %29, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i122) #8
  %30 = ptrtoint ptr %value.i.i122 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %value.i.i122, align 1
  %call.i.i123 = call fastcc i32 @ov5648_read(ptr noundef %add.ptr4, i16 noundef zeroext 13571, ptr noundef nonnull %value.i.i122) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %call.i.i123, 0
  br i1 %tobool.not.i.i124, label %if.end.i.i131, label %ov5648_gain_auto_configure.exit.thread

ov5648_gain_auto_configure.exit.thread:           ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i122) #8
  br label %cleanup

if.end.i.i131:                                    ; preds = %sw.bb20
  %conv.i125 = select i1 %tobool22.not, i8 2, i8 0
  %31 = ptrtoint ptr %value.i.i122 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %value.i.i122, align 1
  %and.i.i126 = and i8 %32, -3
  %or16.i.i127 = or i8 %and.i.i126, %conv.i125
  store i8 %or16.i.i127, ptr %value.i.i122, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i121) #8
  %33 = getelementptr inbounds [3 x i8], ptr %data.i.i.i121, i32 0, i32 1
  %34 = getelementptr inbounds [3 x i8], ptr %data.i.i.i121, i32 0, i32 2
  %35 = ptrtoint ptr %data.i.i.i121 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 53, ptr %data.i.i.i121, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %33, align 1
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %or16.i.i127, ptr %34, align 1
  %i2c_client.i.i.i128 = getelementptr i8, ptr %1, i32 -460
  %38 = ptrtoint ptr %i2c_client.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_client.i.i.i128, align 4
  %call.i.i.i.i129 = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %data.i.i.i121, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i129)
  %cmp.i.i.i130 = icmp slt i32 %call.i.i.i.i129, 0
  br i1 %cmp.i.i.i130, label %do.body.i.i.i132, label %if.end29

do.body.i.i.i132:                                 ; preds = %if.end.i.i131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_s_ctrl, %if.then9.i.i.i134)) #8
          to label %ov5648_gain_auto_configure.exit [label %if.then9.i.i.i134], !srcloc !201

if.then9.i.i.i134:                                ; preds = %do.body.i.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i133 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i.i133, ptr noundef nonnull @.str.32, i32 noundef 13571) #8
  br label %ov5648_gain_auto_configure.exit

ov5648_gain_auto_configure.exit:                  ; preds = %if.then9.i.i.i134, %do.body.i.i.i132
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i121) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i122) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end.i.i131
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i121) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i122) #8
  br i1 %tobool22.not, label %if.then31, label %if.end29.sw.epilog_crit_edge

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then31:                                        ; preds = %if.end29
  %gain = getelementptr i8, ptr %1, i32 -24
  %40 = ptrtoint ptr %gain to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load ptr, ptr %gain, align 1
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val32, align 4
  %call33 = call fastcc i32 @ov5648_gain_configure(ptr noundef %add.ptr4, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.sw.epilog_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31.sw.epilog_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool40.not = icmp eq i32 %45, 0
  %conv.i138 = select i1 %tobool40.not, i8 8, i8 0
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %46 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %47 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 81, ptr %data.i.i, align 1
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -128, ptr %46, align 1
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i138, ptr %47, align 1
  %i2c_client.i.i = getelementptr i8, ptr %1, i32 -460
  %51 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %52, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end48

do.body.i.i:                                      ; preds = %sw.bb38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_s_ctrl, %if.then9.i.i)) #8
          to label %ov5648_white_balance_auto_configure.exit [label %if.then9.i.i], !srcloc !201

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef 20864) #8
  br label %ov5648_white_balance_auto_configure.exit

ov5648_white_balance_auto_configure.exit:         ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %cleanup

if.end48:                                         ; preds = %sw.bb38
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br i1 %tobool40.not, label %if.then50, label %if.end48.sw.epilog_crit_edge

if.end48.sw.epilog_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then50:                                        ; preds = %if.end48
  %red_balance = getelementptr i8, ptr %1, i32 -16
  %53 = ptrtoint ptr %red_balance to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load ptr, ptr %red_balance, align 1
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val51, align 4
  %blue_balance = getelementptr i8, ptr %1, i32 -12
  %57 = ptrtoint ptr %blue_balance to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load ptr, ptr %blue_balance, align 1
  %val52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %58, i32 0, i32 22
  %59 = ptrtoint ptr %val52 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val52, align 4
  %call53 = call fastcc i32 @ov5648_white_balance_configure(ptr noundef %add.ptr4, i32 noundef %56, i32 noundef %60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then50.sw.epilog_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50.sw.epilog_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end
  %val59 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %61 = ptrtoint ptr %val59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val59, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i141) #8
  %63 = ptrtoint ptr %value.i.i141 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %value.i.i141, align 1
  %call.i.i142 = call fastcc i32 @ov5648_read(ptr noundef %add.ptr4, i16 noundef zeroext 14369, ptr noundef nonnull %value.i.i141) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %tobool.not.i.i143 = icmp eq i32 %call.i.i142, 0
  br i1 %tobool.not.i.i143, label %if.end.i.i149, label %sw.bb58.ov5648_flip_horz_configure.exit_crit_edge

sw.bb58.ov5648_flip_horz_configure.exit_crit_edge: ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_flip_horz_configure.exit

if.end.i.i149:                                    ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool60.not = icmp eq i32 %62, 0
  %spec.select.i = select i1 %tobool60.not, i8 0, i8 6
  %64 = ptrtoint ptr %value.i.i141 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %value.i.i141, align 1
  %and.i.i144 = and i8 %65, -7
  %or16.i.i145 = or i8 %and.i.i144, %spec.select.i
  store i8 %or16.i.i145, ptr %value.i.i141, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i140) #8
  %66 = getelementptr inbounds [3 x i8], ptr %data.i.i.i140, i32 0, i32 1
  %67 = getelementptr inbounds [3 x i8], ptr %data.i.i.i140, i32 0, i32 2
  %68 = ptrtoint ptr %data.i.i.i140 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 56, ptr %data.i.i.i140, align 1
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 33, ptr %66, align 1
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %or16.i.i145, ptr %67, align 1
  %i2c_client.i.i.i146 = getelementptr i8, ptr %1, i32 -460
  %71 = ptrtoint ptr %i2c_client.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_client.i.i.i146, align 4
  %call.i.i.i.i147 = call i32 @i2c_transfer_buffer_flags(ptr noundef %72, ptr noundef nonnull %data.i.i.i140, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i147)
  %cmp.i.i.i148 = icmp slt i32 %call.i.i.i.i147, 0
  br i1 %cmp.i.i.i148, label %do.body.i.i.i150, label %if.end.i.i149.ov5648_write.exit.i.i154_crit_edge

if.end.i.i149.ov5648_write.exit.i.i154_crit_edge: ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit.i.i154

do.body.i.i.i150:                                 ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_s_ctrl, %if.then9.i.i.i152)) #8
          to label %ov5648_write.exit.i.i154 [label %if.then9.i.i.i152], !srcloc !201

if.then9.i.i.i152:                                ; preds = %do.body.i.i.i150
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i151 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i.i151, ptr noundef nonnull @.str.32, i32 noundef 14369) #8
  br label %ov5648_write.exit.i.i154

ov5648_write.exit.i.i154:                         ; preds = %if.then9.i.i.i152, %do.body.i.i.i150, %if.end.i.i149.ov5648_write.exit.i.i154_crit_edge
  %retval.0.i.i.i153 = phi i32 [ %call.i.i.i.i147, %if.then9.i.i.i152 ], [ 0, %if.end.i.i149.ov5648_write.exit.i.i154_crit_edge ], [ %call.i.i.i.i147, %do.body.i.i.i150 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i140) #8
  br label %ov5648_flip_horz_configure.exit

ov5648_flip_horz_configure.exit:                  ; preds = %ov5648_write.exit.i.i154, %sw.bb58.ov5648_flip_horz_configure.exit_crit_edge
  %retval.0.i.i155 = phi i32 [ %call.i.i142, %sw.bb58.ov5648_flip_horz_configure.exit_crit_edge ], [ %retval.0.i.i.i153, %ov5648_write.exit.i.i154 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i141) #8
  br label %cleanup

sw.bb66:                                          ; preds = %if.end
  %val67 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %73 = ptrtoint ptr %val67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val67, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i157) #8
  %75 = ptrtoint ptr %value.i.i157 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %value.i.i157, align 1
  %call.i.i158 = call fastcc i32 @ov5648_read(ptr noundef %add.ptr4, i16 noundef zeroext 14368, ptr noundef nonnull %value.i.i157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %tobool.not.i.i159 = icmp eq i32 %call.i.i158, 0
  br i1 %tobool.not.i.i159, label %if.end.i.i166, label %sw.bb66.ov5648_flip_vert_configure.exit_crit_edge

sw.bb66.ov5648_flip_vert_configure.exit_crit_edge: ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_flip_vert_configure.exit

if.end.i.i166:                                    ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool68.not = icmp eq i32 %74, 0
  %spec.select.i160 = select i1 %tobool68.not, i8 0, i8 6
  %76 = ptrtoint ptr %value.i.i157 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %value.i.i157, align 1
  %and.i.i161 = and i8 %77, -7
  %or16.i.i162 = or i8 %and.i.i161, %spec.select.i160
  store i8 %or16.i.i162, ptr %value.i.i157, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i156) #8
  %78 = getelementptr inbounds [3 x i8], ptr %data.i.i.i156, i32 0, i32 1
  %79 = getelementptr inbounds [3 x i8], ptr %data.i.i.i156, i32 0, i32 2
  %80 = ptrtoint ptr %data.i.i.i156 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 56, ptr %data.i.i.i156, align 1
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 32, ptr %78, align 1
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %or16.i.i162, ptr %79, align 1
  %i2c_client.i.i.i163 = getelementptr i8, ptr %1, i32 -460
  %83 = ptrtoint ptr %i2c_client.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c_client.i.i.i163, align 4
  %call.i.i.i.i164 = call i32 @i2c_transfer_buffer_flags(ptr noundef %84, ptr noundef nonnull %data.i.i.i156, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i164)
  %cmp.i.i.i165 = icmp slt i32 %call.i.i.i.i164, 0
  br i1 %cmp.i.i.i165, label %do.body.i.i.i167, label %if.end.i.i166.ov5648_write.exit.i.i171_crit_edge

if.end.i.i166.ov5648_write.exit.i.i171_crit_edge: ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit.i.i171

do.body.i.i.i167:                                 ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_s_ctrl, %if.then9.i.i.i169)) #8
          to label %ov5648_write.exit.i.i171 [label %if.then9.i.i.i169], !srcloc !201

if.then9.i.i.i169:                                ; preds = %do.body.i.i.i167
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i168 = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i.i168, ptr noundef nonnull @.str.32, i32 noundef 14368) #8
  br label %ov5648_write.exit.i.i171

ov5648_write.exit.i.i171:                         ; preds = %if.then9.i.i.i169, %do.body.i.i.i167, %if.end.i.i166.ov5648_write.exit.i.i171_crit_edge
  %retval.0.i.i.i170 = phi i32 [ %call.i.i.i.i164, %if.then9.i.i.i169 ], [ 0, %if.end.i.i166.ov5648_write.exit.i.i171_crit_edge ], [ %call.i.i.i.i164, %do.body.i.i.i167 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i156) #8
  br label %ov5648_flip_vert_configure.exit

ov5648_flip_vert_configure.exit:                  ; preds = %ov5648_write.exit.i.i171, %sw.bb66.ov5648_flip_vert_configure.exit_crit_edge
  %retval.0.i.i172 = phi i32 [ %call.i.i158, %sw.bb66.ov5648_flip_vert_configure.exit_crit_edge ], [ %retval.0.i.i.i170, %ov5648_write.exit.i.i171 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i157) #8
  br label %cleanup

sw.bb74:                                          ; preds = %if.end
  %val75 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %85 = ptrtoint ptr %val75 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %86)
  %cmp.i174 = icmp ugt i32 %86, 5
  br i1 %cmp.i174, label %sw.bb74.cleanup_crit_edge, label %if.end.i

sw.bb74.cleanup_crit_edge:                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb74
  %arrayidx.i = getelementptr [6 x i8], ptr @ov5648_test_pattern_bits, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i173) #8
  %89 = getelementptr inbounds [3 x i8], ptr %data.i.i173, i32 0, i32 1
  %90 = getelementptr inbounds [3 x i8], ptr %data.i.i173, i32 0, i32 2
  %91 = ptrtoint ptr %data.i.i173 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 80, ptr %data.i.i173, align 1
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 61, ptr %89, align 1
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %88, ptr %90, align 1
  %i2c_client.i.i175 = getelementptr i8, ptr %1, i32 -460
  %94 = ptrtoint ptr %i2c_client.i.i175 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i2c_client.i.i175, align 4
  %call.i.i.i176 = call i32 @i2c_transfer_buffer_flags(ptr noundef %95, ptr noundef nonnull %data.i.i173, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i176)
  %cmp.i.i177 = icmp slt i32 %call.i.i.i176, 0
  br i1 %cmp.i.i177, label %do.body.i.i178, label %if.end.i.ov5648_write.exit.i_crit_edge

if.end.i.ov5648_write.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit.i

do.body.i.i178:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_s_ctrl, %if.then9.i.i180)) #8
          to label %ov5648_write.exit.i [label %if.then9.i.i180], !srcloc !201

if.then9.i.i180:                                  ; preds = %do.body.i.i178
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i179 = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i179, ptr noundef nonnull @.str.32, i32 noundef 20541) #8
  br label %ov5648_write.exit.i

ov5648_write.exit.i:                              ; preds = %if.then9.i.i180, %do.body.i.i178, %if.end.i.ov5648_write.exit.i_crit_edge
  %retval.0.i.i181 = phi i32 [ %call.i.i.i176, %if.then9.i.i180 ], [ 0, %if.end.i.ov5648_write.exit.i_crit_edge ], [ %call.i.i.i176, %do.body.i.i178 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i173) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then50.sw.epilog_crit_edge, %if.end48.sw.epilog_crit_edge, %if.then31.sw.epilog_crit_edge, %if.end29.sw.epilog_crit_edge, %if.then12.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %ov5648_write.exit.i, %sw.bb74.cleanup_crit_edge, %ov5648_flip_vert_configure.exit, %ov5648_flip_horz_configure.exit, %if.then50.cleanup_crit_edge, %ov5648_white_balance_auto_configure.exit, %if.then31.cleanup_crit_edge, %ov5648_gain_auto_configure.exit, %ov5648_gain_auto_configure.exit.thread, %if.then12.cleanup_crit_edge, %ov5648_exposure_auto_configure.exit, %ov5648_exposure_auto_configure.exit.thread, %if.end.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i172, %ov5648_flip_vert_configure.exit ], [ %retval.0.i.i155, %ov5648_flip_horz_configure.exit ], [ 0, %sw.epilog ], [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ %call.i.i.i.i, %ov5648_exposure_auto_configure.exit ], [ %call15, %if.then12.cleanup_crit_edge ], [ %call.i.i.i.i129, %ov5648_gain_auto_configure.exit ], [ %call33, %if.then31.cleanup_crit_edge ], [ %call.i.i.i, %ov5648_white_balance_auto_configure.exit ], [ %call53, %if.then50.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i.i, %ov5648_exposure_auto_configure.exit.thread ], [ %call.i.i123, %ov5648_gain_auto_configure.exit.thread ], [ %retval.0.i.i181, %ov5648_write.exit.i ], [ -22, %sw.bb74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_exposure_configure(ptr nocapture noundef readonly %sensor, i32 noundef %exposure) unnamed_addr #2 align 64 {
entry:
  %data.i32 = alloca [3 x i8], align 1
  %data.i23 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 13
  %0 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %ctrls1, align 1
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %exposure, 16
  %4 = trunc i32 %and to i8
  %conv = and i8 %4, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %5 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 53, ptr %data.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %5, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %6, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end3

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_exposure_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 13568) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %and4 = lshr i32 %exposure, 8
  %conv6 = trunc i32 %and4 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i23) #8
  %12 = getelementptr inbounds [3 x i8], ptr %data.i23, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i23, i32 0, i32 2
  %14 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 53, ptr %data.i23, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6, ptr %13, align 1
  %17 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i25 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i23, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %cmp.i26 = icmp slt i32 %call.i.i25, 0
  br i1 %cmp.i26, label %do.body.i27, label %if.end10

do.body.i27:                                      ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_exposure_configure, %if.then9.i29)) #8
          to label %ov5648_write.exit31 [label %if.then9.i29], !srcloc !201

if.then9.i29:                                     ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i28 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i28, ptr noundef nonnull @.str.32, i32 noundef 13569) #8
  br label %ov5648_write.exit31

ov5648_write.exit31:                              ; preds = %if.then9.i29, %do.body.i27
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i23) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i23) #8
  %conv12 = trunc i32 %exposure to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i32) #8
  %19 = getelementptr inbounds [3 x i8], ptr %data.i32, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %data.i32, i32 0, i32 2
  %21 = ptrtoint ptr %data.i32 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 53, ptr %data.i32, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %19, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv12, ptr %20, align 1
  %24 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i34 = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %data.i32, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp.i35 = icmp slt i32 %call.i.i34, 0
  br i1 %cmp.i35, label %do.body.i36, label %if.end10.ov5648_write.exit40_crit_edge

if.end10.ov5648_write.exit40_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit40

do.body.i36:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_exposure_configure, %if.then9.i38)) #8
          to label %ov5648_write.exit40 [label %if.then9.i38], !srcloc !201

if.then9.i38:                                     ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i37 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i37, ptr noundef nonnull @.str.32, i32 noundef 13570) #8
  br label %ov5648_write.exit40

ov5648_write.exit40:                              ; preds = %if.then9.i38, %do.body.i36, %if.end10.ov5648_write.exit40_crit_edge
  %retval.0.i39 = phi i32 [ %call.i.i34, %if.then9.i38 ], [ 0, %if.end10.ov5648_write.exit40_crit_edge ], [ %call.i.i34, %do.body.i36 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i32) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5648_write.exit40, %ov5648_write.exit31, %ov5648_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i39, %ov5648_write.exit40 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %ov5648_write.exit ], [ %call.i.i25, %ov5648_write.exit31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_gain_configure(ptr nocapture noundef readonly %sensor, i32 noundef %gain) unnamed_addr #2 align 64 {
entry:
  %data.i13 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gain_auto = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %gain_auto to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %gain_auto, align 1
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %gain, 8
  %4 = trunc i32 %and to i8
  %conv = and i8 %4, 3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %5 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 53, ptr %data.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %5, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %6, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end4

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_gain_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 13578) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %conv6 = trunc i32 %gain to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i13) #8
  %12 = getelementptr inbounds [3 x i8], ptr %data.i13, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i13, i32 0, i32 2
  %14 = ptrtoint ptr %data.i13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 53, ptr %data.i13, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 11, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6, ptr %13, align 1
  %17 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i15 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i13, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %cmp.i16 = icmp slt i32 %call.i.i15, 0
  br i1 %cmp.i16, label %do.body.i17, label %if.end4.ov5648_write.exit21_crit_edge

if.end4.ov5648_write.exit21_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit21

do.body.i17:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_gain_configure, %if.then9.i19)) #8
          to label %ov5648_write.exit21 [label %if.then9.i19], !srcloc !201

if.then9.i19:                                     ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i18 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i18, ptr noundef nonnull @.str.32, i32 noundef 13579) #8
  br label %ov5648_write.exit21

ov5648_write.exit21:                              ; preds = %if.then9.i19, %do.body.i17, %if.end4.ov5648_write.exit21_crit_edge
  %retval.0.i20 = phi i32 [ %call.i.i15, %if.then9.i19 ], [ 0, %if.end4.ov5648_write.exit21_crit_edge ], [ %call.i.i15, %do.body.i17 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i13) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5648_write.exit21, %ov5648_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i20, %ov5648_write.exit21 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %ov5648_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_white_balance_configure(ptr nocapture noundef readonly %sensor, i32 noundef %red_balance, i32 noundef %blue_balance) unnamed_addr #2 align 64 {
entry:
  %data.i51 = alloca [3 x i8], align 1
  %data.i42 = alloca [3 x i8], align 1
  %data.i33 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %white_balance_auto = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 13, i32 4
  %0 = ptrtoint ptr %white_balance_auto to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %white_balance_auto, align 1
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %red_balance, 8
  %4 = trunc i32 %and to i8
  %conv = and i8 %4, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %5 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 81, ptr %data.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -122, ptr %5, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %6, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end4

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_white_balance_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 20870) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %conv6 = trunc i32 %red_balance to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i33) #8
  %12 = getelementptr inbounds [3 x i8], ptr %data.i33, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i33, i32 0, i32 2
  %14 = ptrtoint ptr %data.i33 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 81, ptr %data.i33, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -121, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6, ptr %13, align 1
  %17 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i35 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i33, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %cmp.i36 = icmp slt i32 %call.i.i35, 0
  br i1 %cmp.i36, label %do.body.i37, label %if.end10

do.body.i37:                                      ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_white_balance_configure, %if.then9.i39)) #8
          to label %ov5648_write.exit41 [label %if.then9.i39], !srcloc !201

if.then9.i39:                                     ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i38 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i38, ptr noundef nonnull @.str.32, i32 noundef 20871) #8
  br label %ov5648_write.exit41

ov5648_write.exit41:                              ; preds = %if.then9.i39, %do.body.i37
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i33) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i33) #8
  %and11 = lshr i32 %blue_balance, 8
  %19 = trunc i32 %and11 to i8
  %conv13 = and i8 %19, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i42) #8
  %20 = getelementptr inbounds [3 x i8], ptr %data.i42, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %data.i42, i32 0, i32 2
  %22 = ptrtoint ptr %data.i42 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 81, ptr %data.i42, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -118, ptr %20, align 1
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv13, ptr %21, align 1
  %25 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i44 = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %data.i42, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %cmp.i45 = icmp slt i32 %call.i.i44, 0
  br i1 %cmp.i45, label %do.body.i46, label %if.end17

do.body.i46:                                      ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_white_balance_configure, %if.then9.i48)) #8
          to label %ov5648_write.exit50 [label %if.then9.i48], !srcloc !201

if.then9.i48:                                     ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i47 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i47, ptr noundef nonnull @.str.32, i32 noundef 20874) #8
  br label %ov5648_write.exit50

ov5648_write.exit50:                              ; preds = %if.then9.i48, %do.body.i46
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i42) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i42) #8
  %conv19 = trunc i32 %blue_balance to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i51) #8
  %27 = getelementptr inbounds [3 x i8], ptr %data.i51, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %data.i51, i32 0, i32 2
  %29 = ptrtoint ptr %data.i51 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 81, ptr %data.i51, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -117, ptr %27, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv19, ptr %28, align 1
  %32 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i53 = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %data.i51, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %cmp.i54 = icmp slt i32 %call.i.i53, 0
  br i1 %cmp.i54, label %do.body.i55, label %if.end17.ov5648_write.exit59_crit_edge

if.end17.ov5648_write.exit59_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit59

do.body.i55:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_white_balance_configure, %if.then9.i57)) #8
          to label %ov5648_write.exit59 [label %if.then9.i57], !srcloc !201

if.then9.i57:                                     ; preds = %do.body.i55
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i56 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i56, ptr noundef nonnull @.str.32, i32 noundef 20875) #8
  br label %ov5648_write.exit59

ov5648_write.exit59:                              ; preds = %if.then9.i57, %do.body.i55, %if.end17.ov5648_write.exit59_crit_edge
  %retval.0.i58 = phi i32 [ %call.i.i53, %if.then9.i57 ], [ 0, %if.end17.ov5648_write.exit59_crit_edge ], [ %call.i.i53, %do.body.i55 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i51) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5648_write.exit59, %ov5648_write.exit50, %ov5648_write.exit41, %ov5648_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i58, %ov5648_write.exit59 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %ov5648_write.exit ], [ %call.i.i35, %ov5648_write.exit41 ], [ %call.i.i44, %ov5648_write.exit50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %data.i.i22 = alloca [3 x i8], align 1
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -96
  %mutex = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streaming = getelementptr i8, ptr %1, i32 328
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %4 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %data.i.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %5, align 1
  %i2c_client.i.i = getelementptr i8, ptr %1, i32 -92
  %9 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %ov5648_sw_standby.exit.thread

ov5648_sw_standby.exit.thread:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %if.end8

do.body.i.i:                                      ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_suspend, %if.then9.i.i)) #8
          to label %ov5648_sw_standby.exit [label %if.then9.i.i], !srcloc !201

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef 256) #8
  br label %ov5648_sw_standby.exit

ov5648_sw_standby.exit:                           ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %complete

if.end8:                                          ; preds = %ov5648_sw_standby.exit.thread, %entry.if.end8_crit_edge
  %call9 = call fastcc i32 @ov5648_sensor_power(ptr noundef %add.ptr3, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.complete_crit_edge, label %if.then11

if.end8.complete_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

if.then11:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i22) #8
  %11 = getelementptr inbounds [3 x i8], ptr %data.i.i22, i32 0, i32 1
  %12 = getelementptr inbounds [3 x i8], ptr %data.i.i22, i32 0, i32 2
  %13 = ptrtoint ptr %data.i.i22 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %data.i.i22, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %11, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %12, align 1
  %i2c_client.i.i23 = getelementptr i8, ptr %1, i32 -92
  %16 = ptrtoint ptr %i2c_client.i.i23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client.i.i23, align 4
  %call.i.i.i24 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %data.i.i22, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i24)
  %cmp.i.i25 = icmp slt i32 %call.i.i.i24, 0
  br i1 %cmp.i.i25, label %do.body.i.i26, label %if.then11.ov5648_sw_standby.exit30_crit_edge

if.then11.ov5648_sw_standby.exit30_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_sw_standby.exit30

do.body.i.i26:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_suspend, %if.then9.i.i28)) #8
          to label %ov5648_sw_standby.exit30 [label %if.then9.i.i28], !srcloc !201

if.then9.i.i28:                                   ; preds = %do.body.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i27 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i27, ptr noundef nonnull @.str.32, i32 noundef 256) #8
  br label %ov5648_sw_standby.exit30

ov5648_sw_standby.exit30:                         ; preds = %if.then9.i.i28, %do.body.i.i26, %if.then11.ov5648_sw_standby.exit30_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i22) #8
  br label %complete

complete:                                         ; preds = %ov5648_sw_standby.exit30, %if.end8.complete_crit_edge, %ov5648_sw_standby.exit
  %ret.0 = phi i32 [ %call.i.i.i, %ov5648_sw_standby.exit ], [ %call9, %ov5648_sw_standby.exit30 ], [ 0, %if.end8.complete_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov5648_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -96
  %mutex = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call5 = tail call fastcc i32 @ov5648_sensor_power(ptr noundef %add.ptr3, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.complete_crit_edge

entry.complete_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

if.end:                                           ; preds = %entry
  %call6 = tail call fastcc i32 @ov5648_sensor_init(ptr noundef %add.ptr3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.error_power_crit_edge

if.end.error_power_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power

if.end9:                                          ; preds = %if.end
  %handler = getelementptr i8, ptr %1, i32 368
  %call10 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.error_power_crit_edge

if.end9.error_power_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power

if.end13:                                         ; preds = %if.end9
  %streaming = getelementptr i8, ptr %1, i32 328
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool14.not = icmp eq i8 %3, 0
  br i1 %tobool14.not, label %if.end13.complete_crit_edge, label %if.then15

if.end13.complete_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %4 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %data.i.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %5, align 1
  %i2c_client.i.i = getelementptr i8, ptr %1, i32 -92
  %9 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %ov5648_sw_standby.exit.thread

ov5648_sw_standby.exit.thread:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %complete

do.body.i.i:                                      ; preds = %if.then15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_resume, %if.then9.i.i)) #8
          to label %ov5648_sw_standby.exit [label %if.then9.i.i], !srcloc !201

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef 256) #8
  br label %ov5648_sw_standby.exit

ov5648_sw_standby.exit:                           ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %error_power

error_power:                                      ; preds = %ov5648_sw_standby.exit, %if.end9.error_power_crit_edge, %if.end.error_power_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.error_power_crit_edge ], [ %call10, %if.end9.error_power_crit_edge ], [ %call.i.i.i, %ov5648_sw_standby.exit ]
  %call21 = call fastcc i32 @ov5648_sensor_power(ptr noundef %add.ptr3, i1 noundef zeroext false)
  br label %complete

complete:                                         ; preds = %error_power, %ov5648_sw_standby.exit.thread, %if.end13.complete_crit_edge, %entry.complete_crit_edge
  %ret.1 = phi i32 [ %call5, %entry.complete_crit_edge ], [ %ret.0, %error_power ], [ 0, %if.end13.complete_crit_edge ], [ 0, %ov5648_sw_standby.exit.thread ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_sensor_power(ptr nocapture noundef readonly %sensor, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %on, label %if.then, label %entry.disable_crit_edge

entry.disable_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable

if.then:                                          ; preds = %entry
  %reset = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 2
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #8
  %powerdown = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 3
  %2 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerdown, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #8
  %dovdd = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 6
  %4 = ptrtoint ptr %dovdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dovdd, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.disable.sink.split_crit_edge

if.then.disable.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable.sink.split

if.end:                                           ; preds = %if.then
  %avdd = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 4
  %6 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %avdd, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @regulator_enable(ptr noundef nonnull %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end14_crit_edge, label %if.then4.disable.sink.split_crit_edge

if.then4.disable.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable.sink.split

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.then4.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %dvdd = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 5
  %8 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvdd, align 4
  %call15 = tail call i32 @regulator_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %if.end14.disable.sink.split_crit_edge

if.end14.disable.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable.sink.split

if.end22:                                         ; preds = %if.end14
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %xvclk = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 7
  %10 = ptrtoint ptr %xvclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xvclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.disable.sink.split_crit_edge

if.end22.disable.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable.sink.split

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %disable.sink.split

if.end30:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #8
  %14 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %powerdown, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 25000, i32 noundef 2) #8
  br label %if.end46

disable.sink.split:                               ; preds = %if.then3.i, %if.end22.disable.sink.split_crit_edge, %if.end14.disable.sink.split_crit_edge, %if.then4.disable.sink.split_crit_edge, %if.then.disable.sink.split_crit_edge
  %.str.57.sink = phi ptr [ @.str.48, %if.then.disable.sink.split_crit_edge ], [ @.str.51, %if.then4.disable.sink.split_crit_edge ], [ @.str.54, %if.end14.disable.sink.split_crit_edge ], [ @.str.57, %if.end22.disable.sink.split_crit_edge ], [ @.str.57, %if.then3.i ]
  %ret.0.ph = phi i32 [ %call, %if.then.disable.sink.split_crit_edge ], [ %call6, %if.then4.disable.sink.split_crit_edge ], [ %call15, %if.end14.disable.sink.split_crit_edge ], [ %call.i, %if.end22.disable.sink.split_crit_edge ], [ %call1.i, %if.then3.i ]
  %16 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull %.str.57.sink) #11
  br label %disable

disable:                                          ; preds = %disable.sink.split, %entry.disable_crit_edge
  %ret.0 = phi i32 [ 0, %entry.disable_crit_edge ], [ %ret.0.ph, %disable.sink.split ]
  %powerdown33 = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 3
  %18 = ptrtoint ptr %powerdown33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %powerdown33, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 1) #8
  %reset34 = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 2
  %20 = ptrtoint ptr %reset34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset34, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %21, i32 noundef 1) #8
  %xvclk35 = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 7
  %22 = ptrtoint ptr %xvclk35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xvclk35, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  %dvdd36 = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 5
  %24 = ptrtoint ptr %dvdd36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvdd36, align 4
  %call37 = tail call i32 @regulator_disable(ptr noundef %25) #8
  %avdd38 = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 4
  %26 = ptrtoint ptr %avdd38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %avdd38, align 4
  %tobool39.not = icmp eq ptr %27, null
  br i1 %tobool39.not, label %disable.if.end43_crit_edge, label %if.then40

disable.if.end43_crit_edge:                       ; preds = %disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %disable
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 @regulator_disable(ptr noundef nonnull %27) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %disable.if.end43_crit_edge
  %dovdd44 = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 6
  %28 = ptrtoint ptr %dovdd44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dovdd44, align 4
  %call45 = tail call i32 @regulator_disable(ptr noundef %29) #8
  br label %if.end46

if.end46:                                         ; preds = %if.end43, %if.end30
  %ret.1 = phi i32 [ %ret.0, %if.end43 ], [ 0, %if.end30 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_sensor_init(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %data.i.i133 = alloca [3 x i8], align 1
  %data.i.i124 = alloca [3 x i8], align 1
  %value.i = alloca i8, align 1
  %data.i.i116 = alloca [3 x i8], align 1
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %data.i.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %1, align 1
  %i2c_client.i.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end

do.body.i.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_sensor_init, %if.then9.i.i)) #8
          to label %do.end [label %if.then9.i.i], !srcloc !201

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef 259) #8
  br label %do.end

do.end:                                           ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i116) #8
  %7 = getelementptr inbounds [3 x i8], ptr %data.i.i116, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %data.i.i116, i32 0, i32 2
  %9 = ptrtoint ptr %data.i.i116 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %data.i.i116, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %8, align 1
  %12 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i118 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %data.i.i116, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i118)
  %cmp.i.i119 = icmp slt i32 %call.i.i.i118, 0
  br i1 %cmp.i.i119, label %do.body.i.i120, label %if.end8

do.body.i.i120:                                   ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_sensor_init, %if.then9.i.i122)) #8
          to label %do.end6 [label %if.then9.i.i122], !srcloc !201

if.then9.i.i122:                                  ; preds = %do.body.i.i120
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i121 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i121, ptr noundef nonnull @.str.32, i32 noundef 256) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then9.i.i122, %do.body.i.i120
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i116) #8
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i116) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %value.i, align 1, !annotation !204
  %call.i = call fastcc i32 @ov5648_read(ptr noundef %sensor, i16 noundef zeroext 12298, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end8.do.end14_crit_edge, label %if.end.i

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

for.cond.i:                                       ; preds = %if.end.i
  %call.1.i = call fastcc i32 @ov5648_read(ptr noundef %sensor, i16 noundef zeroext 12299, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %for.cond.i.do.end14_crit_edge, label %if.end.1.i

for.cond.i.do.end14_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.end.1.i:                                       ; preds = %for.cond.i
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %16)
  %cmp4.not.1.i = icmp eq i8 %16, 72
  br i1 %cmp4.not.1.i, label %if.end16, label %if.end.1.i.do.end.i_crit_edge

if.end.1.i.do.end.i_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %18)
  %cmp4.not.i = icmp eq i8 %18, 86
  br i1 %cmp4.not.i, label %for.cond.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.1.i.do.end.i_crit_edge
  %.lcssa23.i = phi i8 [ %18, %if.end.i.do.end.i_crit_edge ], [ %16, %if.end.1.i.do.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ 86, %if.end.i.do.end.i_crit_edge ], [ 72, %if.end.1.i.do.end.i_crit_edge ]
  %conv.i = zext i8 %.lcssa23.i to i32
  %19 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sensor, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.88, i32 noundef %conv.i, i32 noundef %.lcssa.i) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end.i, %for.cond.i.do.end14_crit_edge, %if.end8.do.end14_crit_edge
  %retval.0.i.ph = phi i32 [ %call.1.i, %for.cond.i.do.end14_crit_edge ], [ %call.i, %if.end8.do.end14_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end.1.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  %avdd = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 4
  %21 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %avdd, align 4
  %tobool17.not.not = icmp eq ptr %22, null
  %conv.i125 = select i1 %tobool17.not.not, i8 0, i8 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i124) #8
  %23 = getelementptr inbounds [3 x i8], ptr %data.i.i124, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %data.i.i124, i32 0, i32 2
  %25 = ptrtoint ptr %data.i.i124 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 48, ptr %data.i.i124, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 19, ptr %23, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i125, ptr %24, align 1
  %28 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i127 = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %data.i.i124, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i127)
  %cmp.i.i128 = icmp slt i32 %call.i.i.i127, 0
  br i1 %cmp.i.i128, label %do.body.i.i129, label %if.end25

do.body.i.i129:                                   ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_sensor_init, %if.then9.i.i131)) #8
          to label %do.end23 [label %if.then9.i.i131], !srcloc !201

if.then9.i.i131:                                  ; preds = %do.body.i.i129
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i130 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i130, ptr noundef nonnull @.str.32, i32 noundef 12307) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then9.i.i131, %do.body.i.i129
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i124) #8
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.end16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i124) #8
  %30 = getelementptr inbounds [3 x i8], ptr %data.i.i133, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i8], ptr %data.i.i133, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i133) #8
  %32 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 63, ptr %data.i.i133, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %30, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 13, ptr %31, align 1
  %35 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i136 = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %data.i.i133, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i136)
  %cmp.i.i137 = icmp slt i32 %call.i.i.i136, 0
  br i1 %cmp.i.i137, label %if.end25.do.body.i.i138_crit_edge, label %for.inc.i

if.end25.do.body.i.i138_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i138

do.body.i.i138:                                   ; preds = %for.inc.i.do.body.i.i138_crit_edge, %if.end25.do.body.i.i138_crit_edge
  %.lcssa159 = phi i32 [ 16129, %if.end25.do.body.i.i138_crit_edge ], [ 16143, %for.inc.i.do.body.i.i138_crit_edge ]
  %.lcssa = phi ptr [ %36, %if.end25.do.body.i.i138_crit_edge ], [ %41, %for.inc.i.do.body.i.i138_crit_edge ]
  %call.i.i.i136.lcssa = phi i32 [ %call.i.i.i136, %if.end25.do.body.i.i138_crit_edge ], [ %call.i.i.i136.1, %for.inc.i.do.body.i.i138_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_sensor_init, %if.then9.i.i140)) #8
          to label %do.end31 [label %if.then9.i.i140], !srcloc !201

if.then9.i.i140:                                  ; preds = %do.body.i.i138
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i139 = getelementptr inbounds %struct.i2c_client, ptr %.lcssa, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i139, ptr noundef nonnull @.str.32, i32 noundef %.lcssa159) #8
  br label %do.end31

for.inc.i:                                        ; preds = %if.end25
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i133) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i133) #8
  %37 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 63, ptr %data.i.i133, align 1
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 15, ptr %30, align 1
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -11, ptr %31, align 1
  %40 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i136.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %data.i.i133, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i136.1)
  %cmp.i.i137.1 = icmp slt i32 %call.i.i.i136.1, 0
  br i1 %cmp.i.i137.1, label %for.inc.i.do.body.i.i138_crit_edge, label %for.inc.i.1

for.inc.i.do.body.i.i138_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i138

for.inc.i.1:                                      ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i133) #8
  %call34 = call fastcc i32 @ov5648_pad_configure(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %for.inc.i.1.cleanup.sink.split_crit_edge

for.inc.i.1.cleanup.sink.split_crit_edge:         ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end31:                                         ; preds = %if.then9.i.i140, %do.body.i.i138
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i133) #8
  br label %cleanup.sink.split

if.end41:                                         ; preds = %for.inc.i.1
  %call42 = call fastcc i32 @ov5648_mipi_configure(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end49, label %if.end41.cleanup.sink.split_crit_edge

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end49:                                         ; preds = %if.end41
  %call50 = call fastcc i32 @ov5648_isp_configure(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %if.end49.cleanup.sink.split_crit_edge

if.end49.cleanup.sink.split_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end57:                                         ; preds = %if.end49
  %call58 = call fastcc i32 @ov5648_black_level_configure(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %if.end57.cleanup.sink.split_crit_edge

if.end57.cleanup.sink.split_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end65:                                         ; preds = %if.end57
  %state = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 12
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state, align 4
  %mbus_code = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 12, i32 1
  %44 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mbus_code, align 4
  %call67 = call fastcc i32 @ov5648_state_configure(ptr noundef %sensor, ptr noundef %43, i32 noundef %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end65.cleanup_crit_edge, label %if.end65.cleanup.sink.split_crit_edge

if.end65.cleanup.sink.split_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end65.cleanup.sink.split_crit_edge, %if.end57.cleanup.sink.split_crit_edge, %if.end49.cleanup.sink.split_crit_edge, %if.end41.cleanup.sink.split_crit_edge, %do.end31, %for.inc.i.1.cleanup.sink.split_crit_edge, %do.end23, %do.end14, %do.end6, %do.end
  %.str.86.sink = phi ptr [ @.str.71, %do.end31 ], [ @.str.68, %do.end23 ], [ @.str.65, %do.end14 ], [ @.str.62, %do.end6 ], [ @.str.59, %do.end ], [ @.str.74, %for.inc.i.1.cleanup.sink.split_crit_edge ], [ @.str.77, %if.end41.cleanup.sink.split_crit_edge ], [ @.str.80, %if.end49.cleanup.sink.split_crit_edge ], [ @.str.83, %if.end57.cleanup.sink.split_crit_edge ], [ @.str.86, %if.end65.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i.i136.lcssa, %do.end31 ], [ %call.i.i.i127, %do.end23 ], [ %retval.0.i.ph, %do.end14 ], [ %call.i.i.i118, %do.end6 ], [ %call.i.i.i, %do.end ], [ %call34, %for.inc.i.1.cleanup.sink.split_crit_edge ], [ %call42, %if.end41.cleanup.sink.split_crit_edge ], [ %call50, %if.end49.cleanup.sink.split_crit_edge ], [ %call58, %if.end57.cleanup.sink.split_crit_edge ], [ %call67, %if.end65.cleanup.sink.split_crit_edge ]
  %46 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sensor, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull %.str.86.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end65.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_pad_configure(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
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
  store i8 48, ptr %data.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %1, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_pad_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 12289) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i11) #8
  %7 = getelementptr inbounds [3 x i8], ptr %data.i11, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %data.i11, i32 0, i32 2
  %9 = ptrtoint ptr %data.i11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 48, ptr %data.i11, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %8, align 1
  %12 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i13 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %data.i11, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %cmp.i14 = icmp slt i32 %call.i.i13, 0
  br i1 %cmp.i14, label %do.body.i15, label %if.end4

do.body.i15:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_pad_configure, %if.then9.i17)) #8
          to label %ov5648_write.exit19 [label %if.then9.i17], !srcloc !201

if.then9.i17:                                     ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i16 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i16, ptr noundef nonnull @.str.32, i32 noundef 12290) #8
  br label %ov5648_write.exit19

ov5648_write.exit19:                              ; preds = %if.then9.i17, %do.body.i15
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
  store i8 17, ptr %14, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %15, align 1
  %19 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i22 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %data.i20, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i23 = icmp slt i32 %call.i.i22, 0
  br i1 %cmp.i23, label %do.body.i24, label %if.end4.ov5648_write.exit28_crit_edge

if.end4.ov5648_write.exit28_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit28

do.body.i24:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_pad_configure, %if.then9.i26)) #8
          to label %ov5648_write.exit28 [label %if.then9.i26], !srcloc !201

if.then9.i26:                                     ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i25 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i25, ptr noundef nonnull @.str.32, i32 noundef 12305) #8
  br label %ov5648_write.exit28

ov5648_write.exit28:                              ; preds = %if.then9.i26, %do.body.i24, %if.end4.ov5648_write.exit28_crit_edge
  %retval.0.i27 = phi i32 [ %call.i.i22, %if.then9.i26 ], [ 0, %if.end4.ov5648_write.exit28_crit_edge ], [ %call.i.i22, %do.body.i24 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i20) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5648_write.exit28, %ov5648_write.exit19, %ov5648_write.exit
  %retval.0 = phi i32 [ %retval.0.i27, %ov5648_write.exit28 ], [ %call.i.i, %ov5648_write.exit ], [ %call.i.i13, %ov5648_write.exit19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_mipi_configure(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %data.i9 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_data_lanes = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 8, i32 2, i32 2, i32 3
  %0 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_data_lanes, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %data.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 36, ptr %3, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mipi_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 18432) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %shl = shl i8 %1, 5
  %or1 = or i8 %shl, 12
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i9) #8
  %9 = getelementptr inbounds [3 x i8], ptr %data.i9, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i8], ptr %data.i9, i32 0, i32 2
  %11 = ptrtoint ptr %data.i9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 48, ptr %data.i9, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 24, ptr %9, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or1, ptr %10, align 1
  %14 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i11 = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %data.i9, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %cmp.i12 = icmp slt i32 %call.i.i11, 0
  br i1 %cmp.i12, label %do.body.i13, label %if.end.ov5648_write.exit17_crit_edge

if.end.ov5648_write.exit17_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit17

do.body.i13:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_mipi_configure, %if.then9.i15)) #8
          to label %ov5648_write.exit17 [label %if.then9.i15], !srcloc !201

if.then9.i15:                                     ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i14 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i14, ptr noundef nonnull @.str.32, i32 noundef 12312) #8
  br label %ov5648_write.exit17

ov5648_write.exit17:                              ; preds = %if.then9.i15, %do.body.i13, %if.end.ov5648_write.exit17_crit_edge
  %retval.0.i16 = phi i32 [ %call.i.i11, %if.then9.i15 ], [ 0, %if.end.ov5648_write.exit17_crit_edge ], [ %call.i.i11, %do.body.i13 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i9) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5648_write.exit17, %ov5648_write.exit
  %retval.0 = phi i32 [ %retval.0.i16, %ov5648_write.exit17 ], [ %call.i.i, %ov5648_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_isp_configure(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %data.i65 = alloca [3 x i8], align 1
  %data.i56 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  %data.i.i = alloca [3 x i8], align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %value.i, align 1
  %call.i = call fastcc i32 @ov5648_read(ptr noundef %sensor, i16 noundef zeroext 20480, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ov5648_update_bits.exit.thread

ov5648_update_bits.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value.i, align 1
  %or16.i = or i8 %2, 6
  store i8 %or16.i, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %3 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 80, ptr %data.i.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or16.i, ptr %4, align 1
  %i2c_client.i.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end

do.body.i.i:                                      ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_isp_configure, %if.then9.i.i)) #8
          to label %ov5648_update_bits.exit [label %if.then9.i.i], !srcloc !201

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef 20480) #8
  br label %ov5648_update_bits.exit

ov5648_update_bits.exit:                          ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %10 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 80, ptr %data.i, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %10, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %11, align 1
  %15 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end4

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_isp_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 20481) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i56) #8
  %17 = getelementptr inbounds [3 x i8], ptr %data.i56, i32 0, i32 1
  %18 = getelementptr inbounds [3 x i8], ptr %data.i56, i32 0, i32 2
  %19 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 80, ptr %data.i56, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %17, align 1
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 65, ptr %18, align 1
  %22 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i58 = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %data.i56, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.i59 = icmp slt i32 %call.i.i58, 0
  br i1 %cmp.i59, label %do.body.i60, label %if.end8

do.body.i60:                                      ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_isp_configure, %if.then9.i62)) #8
          to label %ov5648_write.exit64 [label %if.then9.i62], !srcloc !201

if.then9.i62:                                     ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i61 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i61, ptr noundef nonnull @.str.32, i32 noundef 20482) #8
  br label %ov5648_write.exit64

ov5648_write.exit64:                              ; preds = %if.then9.i62, %do.body.i60
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i56) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i56) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i65) #8
  %24 = getelementptr inbounds [3 x i8], ptr %data.i65, i32 0, i32 1
  %25 = getelementptr inbounds [3 x i8], ptr %data.i65, i32 0, i32 2
  %26 = ptrtoint ptr %data.i65 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 80, ptr %data.i65, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %24, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 10, ptr %25, align 1
  %29 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i67 = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %data.i65, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %cmp.i68 = icmp slt i32 %call.i.i67, 0
  br i1 %cmp.i68, label %do.body.i69, label %if.end12

do.body.i69:                                      ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_isp_configure, %if.then9.i71)) #8
          to label %ov5648_write.exit73 [label %if.then9.i71], !srcloc !201

if.then9.i71:                                     ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i70 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i70, ptr noundef nonnull @.str.32, i32 noundef 20483) #8
  br label %ov5648_write.exit73

ov5648_write.exit73:                              ; preds = %if.then9.i71, %do.body.i69
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i65) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i65) #8
  %call13 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 20484, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 20511, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 20555, i8 noundef zeroext 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 14848, i8 noundef zeroext 72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = call fastcc i32 @ov5648_write(ptr noundef %sensor, i16 noundef zeroext 13571, i8 noundef zeroext 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %ov5648_write.exit73, %ov5648_write.exit64, %ov5648_write.exit, %ov5648_update_bits.exit, %ov5648_update_bits.exit.thread
  %retval.0 = phi i32 [ %call29, %if.end28 ], [ %call.i.i.i, %ov5648_update_bits.exit ], [ %call.i.i, %ov5648_write.exit ], [ %call.i.i58, %ov5648_write.exit64 ], [ %call.i.i67, %ov5648_write.exit73 ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call.i, %ov5648_update_bits.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov5648_black_level_configure(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %data.i.i = alloca [3 x i8], align 1
  %value.i = alloca i8, align 1
  %data.i27 = alloca [3 x i8], align 1
  %data.i18 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %data.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %1, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov5648_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_black_level_configure, %if.then9.i)) #8
          to label %ov5648_write.exit [label %if.then9.i], !srcloc !201

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef 16385) #8
  br label %ov5648_write.exit

ov5648_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i18) #8
  %7 = getelementptr inbounds [3 x i8], ptr %data.i18, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %data.i18, i32 0, i32 2
  %9 = ptrtoint ptr %data.i18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %data.i18, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 69, ptr %8, align 1
  %12 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i20 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %data.i18, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp.i21 = icmp slt i32 %call.i.i20, 0
  br i1 %cmp.i21, label %do.body.i22, label %if.end4

do.body.i22:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_black_level_configure, %if.then9.i24)) #8
          to label %ov5648_write.exit26 [label %if.then9.i24], !srcloc !201

if.then9.i24:                                     ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i23 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i23, ptr noundef nonnull @.str.32, i32 noundef 16386) #8
  br label %ov5648_write.exit26

ov5648_write.exit26:                              ; preds = %if.then9.i24, %do.body.i22
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i18) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i18) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i27) #8
  %14 = getelementptr inbounds [3 x i8], ptr %data.i27, i32 0, i32 1
  %15 = getelementptr inbounds [3 x i8], ptr %data.i27, i32 0, i32 2
  %16 = ptrtoint ptr %data.i27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %data.i27, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %14, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %15, align 1
  %19 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i29 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %data.i27, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i30, label %do.body.i31, label %if.end8

do.body.i31:                                      ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_black_level_configure, %if.then9.i33)) #8
          to label %ov5648_write.exit35 [label %if.then9.i33], !srcloc !201

if.then9.i33:                                     ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i32 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i32, ptr noundef nonnull @.str.32, i32 noundef 16388) #8
  br label %ov5648_write.exit35

ov5648_write.exit35:                              ; preds = %if.then9.i33, %do.body.i31
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i27) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i27) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %value.i, align 1
  %call.i = call fastcc i32 @ov5648_read(ptr noundef %sensor, i16 noundef zeroext 16389, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.ov5648_update_bits.exit_crit_edge

if.end8.ov5648_update_bits.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_update_bits.exit

if.end.i:                                         ; preds = %if.end8
  %22 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %value.i, align 1
  %or16.i = or i8 %23, 2
  store i8 %or16.i, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %24 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %25 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 64, ptr %data.i.i, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 5, ptr %24, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %or16.i, ptr %25, align 1
  %29 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.ov5648_write.exit.i_crit_edge

if.end.i.ov5648_write.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov5648_write.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov5648_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov5648_black_level_configure, %if.then9.i.i)) #8
          to label %ov5648_write.exit.i [label %if.then9.i.i], !srcloc !201

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov5648_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef 16389) #8
  br label %ov5648_write.exit.i

ov5648_write.exit.i:                              ; preds = %if.then9.i.i, %do.body.i.i, %if.end.i.ov5648_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %if.then9.i.i ], [ 0, %if.end.i.ov5648_write.exit.i_crit_edge ], [ %call.i.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %ov5648_update_bits.exit

ov5648_update_bits.exit:                          ; preds = %ov5648_write.exit.i, %if.end8.ov5648_update_bits.exit_crit_edge
  %retval.0.i36 = phi i32 [ %call.i, %if.end8.ov5648_update_bits.exit_crit_edge ], [ %retval.0.i.i, %ov5648_write.exit.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ov5648_update_bits.exit, %ov5648_write.exit35, %ov5648_write.exit26, %ov5648_write.exit
  %retval.0 = phi i32 [ %retval.0.i36, %ov5648_update_bits.exit ], [ %call.i.i, %ov5648_write.exit ], [ %call.i.i20, %ov5648_write.exit26 ], [ %call.i.i29, %ov5648_write.exit35 ]
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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @__initcall__kmod_ov5648__297_2618_ov5648_driver_init6, !1, !"__initcall__kmod_ov5648__297_2618_ov5648_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov5648.c", i32 2618, i32 1}
!2 = !{ptr @__exitcall_ov5648_driver_exit, !1, !"__exitcall_ov5648_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov5648.c", i32 2620, i32 1}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov5648.c", i32 2621, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov5648.c", i32 2622, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov5648.c", i32 2610, i32 11}
!12 = !{ptr @ov5648_driver, !13, !"ov5648_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov5648.c", i32 2608, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov5648.c", i32 2455, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov5648_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov5648_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov5648.c", i32 2464, i32 3}
!24 = !{ptr @ov5648_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ov5648_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov5648.c", i32 2470, i32 51}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/ov5648.c", i32 2477, i32 47}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov5648.c", i32 2486, i32 41}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ov5648.c", i32 2488, i32 3}
!34 = !{ptr @ov5648_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ov5648_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov5648.c", i32 2494, i32 42}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/ov5648.c", i32 2496, i32 3}
!40 = !{ptr @ov5648_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ov5648_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/ov5648.c", i32 2502, i32 50}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ov5648.c", i32 2504, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ov5648_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ov5648_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ov5648.c", i32 2512, i32 3}
!51 = !{ptr @ov5648_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ov5648_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ov5648.c", i32 2519, i32 3}
!55 = !{ptr @ov5648_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ov5648_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ov5648_probe.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/ov5648.c", i32 2541, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ov5648_subdev_ops, !61, !"ov5648_subdev_ops", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov5648.c", i32 2364, i32 37}
!62 = !{ptr @ov5648_subdev_video_ops, !63, !"ov5648_subdev_video_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov5648.c", i32 2182, i32 43}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov5648.c", i32 997, i32 3}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ov5648_write.__UNIQUE_ID_ddebug295, !65, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!68 = !{ptr @ov5648_subdev_pad_ops, !69, !"ov5648_subdev_pad_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov5648.c", i32 2356, i32 41}
!70 = !{ptr @ov5648_mbus_codes, !71, !"ov5648_mbus_codes", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov5648.c", i32 928, i32 18}
!72 = !{ptr @ov5648_modes, !73, !"ov5648_modes", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov5648.c", i32 706, i32 33}
!74 = !{ptr @ov5648_pll1_config_native_8_bits, !75, !"ov5648_pll1_config_native_8_bits", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov5648.c", i32 671, i32 40}
!76 = !{ptr @ov5648_pll1_config_native_10_bits, !77, !"ov5648_pll1_config_native_10_bits", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ov5648.c", i32 685, i32 40}
!78 = !{ptr @ov5648_pll2_config_native, !79, !"ov5648_pll2_config_native", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov5648.c", i32 698, i32 40}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov5648.c", i32 974, i32 3}
!84 = !{ptr @ov5648_read.__UNIQUE_ID_ddebug293, !83, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/ov5648.c", i32 981, i32 3}
!87 = !{ptr @ov5648_read.__UNIQUE_ID_ddebug294, !86, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov5648.c", i32 1722, i32 3}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ov5648_state_mipi_configure._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ov5648_state_mipi_configure._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov5648.c", i32 1726, i32 3}
!95 = !{ptr @ov5648_state_mipi_configure._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ov5648_state_mipi_configure._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @ov5648_link_freq_menu, !98, !"ov5648_link_freq_menu", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov5648.c", i32 939, i32 18}
!99 = !{ptr @ov5648_ctrls_init._key, !100, !"_key", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ov5648.c", i32 2040, i32 2}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ov5648_ctrl_ops, !103, !"ov5648_ctrl_ops", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov5648.c", i32 2028, i32 35}
!104 = !{ptr @ov5648_test_pattern_bits, !105, !"ov5648_test_pattern_bits", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ov5648.c", i32 953, i32 17}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ov5648.c", i32 945, i32 2}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ov5648.c", i32 946, i32 2}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ov5648.c", i32 947, i32 2}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/ov5648.c", i32 948, i32 2}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/ov5648.c", i32 949, i32 2}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/ov5648.c", i32 950, i32 2}
!118 = !{ptr @ov5648_test_pattern_menu, !119, !"ov5648_test_pattern_menu", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/ov5648.c", i32 944, i32 26}
!120 = !{ptr @ov5648_of_match, !121, !"ov5648_of_match", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/ov5648.c", i32 2602, i32 34}
!122 = !{ptr @ov5648_pm_ops, !123, !"ov5648_pm_ops", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ov5648.c", i32 2598, i32 32}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov5648.c", i32 1877, i32 4}
!126 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ov5648_sensor_power._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @ov5648_sensor_power._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/ov5648.c", i32 1885, i32 5}
!131 = !{ptr @ov5648_sensor_power._entry.50, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ov5648_sensor_power._entry_ptr.52, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/ov5648.c", i32 1893, i32 4}
!135 = !{ptr @ov5648_sensor_power._entry.53, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ov5648_sensor_power._entry_ptr.55, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/ov5648.c", i32 1903, i32 4}
!139 = !{ptr @ov5648_sensor_power._entry.56, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @ov5648_sensor_power._entry_ptr.58, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/ov5648.c", i32 1793, i32 3}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @ov5648_sensor_init._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @ov5648_sensor_init._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/ov5648.c", i32 1799, i32 3}
!148 = !{ptr @ov5648_sensor_init._entry.61, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ov5648_sensor_init._entry_ptr.63, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/ov5648.c", i32 1805, i32 3}
!152 = !{ptr @ov5648_sensor_init._entry.64, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ov5648_sensor_init._entry_ptr.66, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/ov5648.c", i32 1811, i32 3}
!156 = !{ptr @ov5648_sensor_init._entry.67, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ov5648_sensor_init._entry_ptr.69, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/ov5648.c", i32 1818, i32 3}
!160 = !{ptr @ov5648_sensor_init._entry.70, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ov5648_sensor_init._entry_ptr.72, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/ov5648.c", i32 1824, i32 3}
!164 = !{ptr @ov5648_sensor_init._entry.73, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @ov5648_sensor_init._entry_ptr.75, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/ov5648.c", i32 1830, i32 3}
!168 = !{ptr @ov5648_sensor_init._entry.76, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ov5648_sensor_init._entry_ptr.78, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/ov5648.c", i32 1836, i32 3}
!172 = !{ptr @ov5648_sensor_init._entry.79, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @ov5648_sensor_init._entry_ptr.81, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/ov5648.c", i32 1842, i32 3}
!176 = !{ptr @ov5648_sensor_init._entry.82, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @ov5648_sensor_init._entry_ptr.84, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/ov5648.c", i32 1850, i32 3}
!180 = !{ptr @ov5648_sensor_init._entry.85, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @ov5648_sensor_init._entry_ptr.87, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/ov5648.c", i32 1076, i32 4}
!184 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ov5648_chip_id_check._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @ov5648_chip_id_check._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = distinct !{null, !188, !"ov5648_init_sequence", i1 false, i1 false}
!188 = !{!"../drivers/media/i2c/ov5648.c", i32 933, i32 43}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{i64 2148304853}
!199 = !{i64 789676, i64 789701, i64 789723, i64 789739, i64 789751, i64 789771, i64 789795, i64 789811, i64 789823}
!200 = !{i64 2148305041}
!201 = !{i64 2148787249, i64 2148787254, i64 2148787267, i64 2148787311, i64 2148787345, i64 2148787366}
!202 = !{!"branch_weights", i32 2000, i32 1}
!203 = !{i8 0, i8 2}
!204 = !{!"auto-init"}
